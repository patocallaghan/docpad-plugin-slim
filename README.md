# Slim Plugin for [DocPad](http://docpad.org)

[![Build Status](https://secure.travis-ci.org/docpad/docpad-plugin-slim.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-slim "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-slim.png)](https://npmjs.org/package/docpad-plugin-slim "View this project on NPM")
[![Gittip donate button](http://badgr.co/gittip/docpad.png)](https://www.gittip.com/docpad/ "Donate weekly to this project using Gittip")
[![Flattr donate button](https://raw.github.com/balupton/flattr-buttons/master/badge-89x18.gif)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://www.paypalobjects.com/en_AU/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")

Convert any of your templates to HTML from the Slim template syntax

Convention:  `.anything.(slim)`



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



## License
This plugin is made ["public domain"](http://en.wikipedia.org/wiki/Public_domain) using the [Creative Commons Zero](http://creativecommons.org/publicdomain/zero/1.0/), as such before you publish your plugin you should place your desired license here and within the `LICENSE.md` file.

If you are wanting to close-source your plugin, we suggest using the following:

```
Copyright [Pat O'Callaghan](https://github.com/patocallaghan). All rights reserved.
```

If you are wanting to open-source your plugin, we suggest using the following:

```
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; YEAR+ [NAME](URL)
```
