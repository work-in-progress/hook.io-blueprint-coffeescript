(function() {
  var Hook, colors, url, util;
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; }, __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) {
    for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; }
    function ctor() { this.constructor = child; }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor;
    child.__super__ = parent.prototype;
    return child;
  };
  Hook = require('hook.io').Hook;
  util = require('util');
  colors = require('colors');
  url = require('url');
  require('pkginfo')(module, 'version', 'hook');
  exports.BlueprintCoffeescript = (function() {
    __extends(BlueprintCoffeescript, Hook);
    function BlueprintCoffeescript(options) {
      this._foo = __bind(this._foo, this);
      var self;
      self = this;
      Hook.call(self, options);
      self.on("hook::ready", function() {
        var message, _i, _len, _ref, _results;
        self.on("blueprint-coffeescript::foo", function(data) {
          return self._foo(data);
        });
        _ref = self.messages || [];
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          message = _ref[_i];
          _results.push(self.emit("blueprint-coffeescript::foo", {
            messagetext: message.messagetext
          }));
        }
        return _results;
      });
    }
    BlueprintCoffeescript.prototype._foo = function(data) {
      console.log(("Sending message blueprint-coffeescript::bar with content " + data.messagetext).cyan);
      if (data.messagetext) {
        return this.emit("blueprint-coffeescript::bar", {
          messagetext: data.messagetext,
          head: false
        });
      } else {
        return this.emit("blueprint-coffeescript::error", {
          error: "Might consider handing me a message"
        });
      }
    };
    return BlueprintCoffeescript;
  })();
}).call(this);
