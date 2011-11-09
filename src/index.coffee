Hook = require('hook.io').Hook
util = require('util')
colors = require('colors')    
url = require 'url'

require('pkginfo')(module,'version','hook')

class exports.BlueprintCoffeescript extends Hook
  constructor: (options) ->  
    Hook.call @, options

    @on "blueprint-coffeescript::foo", (data) =>
      @_foo(data)
  
    @.on "hook::ready", =>
      for message in (@messages || [])
        @emit "blueprint-coffeescript::foo",
          messagetext : message.messagetext # Obviously we could just pass message, just illustrating a point here


  _foo : (data) =>
    console.log "Sending message blueprint-coffeescript::bar with content #{data.messagetext}".cyan
  
    if data.messagetext
      @emit "blueprint-coffeescript::bar", 
        messagetext : data.messagetext
        head : false
    else
      @emit "blueprint-coffeescript::error", 
        error : "Might consider handing me a message"
