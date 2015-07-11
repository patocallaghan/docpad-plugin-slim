# Slim Plugin for [DocPad](http://docpad.org)

[![Build Status](https://secure.travis-ci.org/docpad/docpad-plugin-slim.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-slim "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-slim.png)](https://npmjs.org/package/docpad-plugin-slim "View this project on NPM")

Convert any of your templates to HTML from the Slim template syntax

Convention:  `.anything.(slim)`

*NOTE:* If calling metadata in your `.slim` templates you need to call it using `= document["title"]` as slim doesn't understand dot notation, i.e. `document.title`

## Install

1. [Install Ruby](http://www.ruby-lang.org/en/downloads/)

1. [Install the Slim gem](http://rubygems.org/gems/slim/)

1. Install this plugin

	```
	docpad install slim
	```

### Output Style
In default mode the output HTML will be in a minified state. You can *prettify* the HTML by setting the `pretty` config to `true`. When Docpad is in the `development` mode `pretty` is set to `true`.

### Bundler Support
If you use [Bundler](http://bundler.io/) to manage your rubygems, you can execute the Slim compilation using `bundle exec` by setting the `bundler` option to `true`. By default it is set to `false`.

## History
You can discover the history inside the `History.md` file


##Note
This plugin is **heavily** influenced by [Balupton](https://github.com/balupton)'s awesome Sass [Docpad plugin](https://github.com/docpad/docpad-plugin-sass)


## License
Copyright [Pat O'Callaghan](https://github.com/patocallaghan). All rights reserved.

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2013 + [Pat O'Callaghan](https://github.com/patocallaghan)
