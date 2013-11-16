# Export Plugin
module.exports = (BasePlugin) ->
	# Requires
	safeps = require('safeps')
	{TaskGroup} = require('taskgroup')

	# Define Plugin
	class SlimPlugin extends BasePlugin
		# Plugin name
		name: 'slim'

		# Plugin config
		# Only on the development environment use pretty printed html, otherwise use minified
		config:
			pretty: false
			bundler: false
			environments:
				development:
					pretty: true

		# Locale
		locale:
			slimNotInstalled: 'Slim does not appear to be available on your system'

		# Generate Before
		generateBefore: (opts,next) ->
			# Prepare
			config = @config

			# Group
			tasks = new TaskGroup().setConfig(concurrency:0).once('complete',next)

			# Determine if bundler is installed
			unless config.bundler?
				tasks.addTask (complete) ->
					safeps.getExecPath 'bundle', (err,path) ->
						config.bundler = path?
						return complete()

			# Determine slim executable path
			execsNeeded = ['slimrb']
			execsNeeded.push('bundle') if config.bundler
			execsNeeded.forEach (thing) ->
				unless config[thing+'Path']?
					tasks.addTask (complete) ->
						safeps.getExecPath thing, (err,path) ->
							config[thing+'Path'] = path ? false
							return complete()

			# Fire tasks
			tasks.run()

		# Prevent underscore
		extendCollections: (opts) ->
			# Prepare
			config = @config
			docpad = @docpad

		# Render some content
		render: (opts,next) ->
			# Prepare
			config = @config
			locale = @locale
			{inExtension,outExtension,file} = opts

			# If Slim then render
			if inExtension in ['slim']
				# Fetch useful paths
				fullDirPath = file.get('fullDirPath')

				# Prepare the command and options
				commandOpts = {stdin:opts.content}
				execPath = config['slimrbPath']
				if config.bundler
					bundlePath = config['bundlePath'];

				# Check if we have the executable for that extension
				return next(new Error(locale[inExtension+'NotInstalled']))  unless execPath

				# Build our command
				command = [execPath, '--stdin']
				if config.pretty
					command.push('--pretty')
				if config.bundler
					command.unshift('exec')
					command.unshift(bundlePath)

				# Spawn the appropriate process to render the content
				safeps.spawn command, commandOpts, (err,stdout,stderr,code,signal) ->
					return next(err)  if err
					opts.content = stdout
					return next()

			else
				# Done, return back to DocPad
				return next()

