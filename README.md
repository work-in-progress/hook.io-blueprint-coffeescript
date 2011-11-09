## About hook.io-blueprint-coffeescript

A blueprint for your own hook.io hooks using Coffeescript and Vows

![BlueprintCoffeescript Icon](http://github.com/scottyapp/hook.io-blueprint-coffeescript/raw/master/assets/blueprint-coffeescript114x114.png)

[![Build Status](https://secure.travis-ci.org/scottyapp/hook.io-blueprint-coffeescript.png)](http://travis-ci.org/scottyapp/hook.io-blueprint-coffeescript.png)

Please note that travis-ci.org does not build this correctly because the module requires node v 0.4.11 but travis has 0.4.8 installed at this point.

## Install

npm install -g hook.io-blueprint-coffeescript

## Usage

	./bin/hookio-blueprint-coffeescript 

This starts a hook and reads the local config.json. Messages will be sent.

### Messages

blueprint-coffeescript::foo [in]

	message: a text message
	
blueprint-coffeescript::error [out]

	error: Would contain errors if we had them
	
blueprint-coffeescript::bar [out]

	message : a text message

### Hook.io Schema support 

The package config contains experimental hook.io schema definitions. The definition is also exported as hook.

### Coffeescript

	BlueprintCoffeescript = require("hook.io-blueprint-coffeescript").BlueprintCoffeescript
	hook = new BlueprintCoffeescript(name: 'blueprint-coffeescript')
 
### Javascript

	var BlueprintCoffeescript = require("hook.io-blueprint-coffeescript").BlueprintCoffeescript;
	var hook = new BlueprintCoffeescript({ name: 'blueprint-coffeescript' });

## Advertising :)

Check out 

* http://scottyapp.com

Follow us on Twitter at 

* @getscottyapp
* @martin_sunset

and like us on Facebook please. Every mention is welcome and we follow back.

## Trivia

Listened to lots of Rage Against the Machine while writing this. Feeling very old now...

## Release Notes

### 0.0.2

* Fixed placement of .on
* Improved usage of Coffeescript

### 0.0.1

* First version

## Internal Stuff

* npm run-script watch

# Publish new version

* Change version in package.json
* git tag -a v0.0.2 -m 'version 0.0.2'
* git push --tags
* npm publish

## Contributing to hook.io-blueprint-coffeescript
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the package.json, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 Martin Wawrusch. See LICENSE for
further details.


