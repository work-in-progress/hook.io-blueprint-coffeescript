vows = require 'vows'
assert = require 'assert'
nock = require 'nock'

main = require '../lib/index'

specHelper = require './spec_helper'

# TODO: Add your specs.

vows.describe("blueprint_coffeescript")
  .addBatch
    "CLEANUP TEMP":
      topic: () ->
        specHelper.cleanTmpFiles [] # Add your files to clean
      "THEN IT SHOULD BE CLEAN :)": () ->
        assert.isTrue true        
  .addBatch
    "SETUP HOOK" :
      topic: () -> 
        specHelper.setup @callback
        return
      "THEN IT SHOULD SET UP :)": () ->
        assert.isTrue true
  .addBatch 
    "WHEN sending the foo message": 
      topic:  () ->
        specHelper.hookMeUp @callback
        specHelper.hook.emit "blueprint-coffeescript::foo",
          messagetext : "Whatever"
        return # IMPORTANT FOR ASYNC - NEVER FORGET THAT
      "THEN it must receive the bar event": (err,event,data) ->
        assert.equal event,"blueprint-coffeescript::bar"
      "THEN it must contain a messagetext": (err,event,data) ->
        assert.equal data.messagetext,"Whatever"
         
  .export module
