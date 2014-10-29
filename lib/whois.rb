#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2014 Simone Carletti <weppos@weppos.net>
#++


require 'active_support/core_ext/array/extract_options'
require 'active_support/core_ext/array/wrap'
require 'active_support/core_ext/class/attribute'
require 'active_support/core_ext/kernel/singleton_class'
require 'active_support/core_ext/object/blank'
require 'active_support/core_ext/time/calculations'

require 'whois/version'
require 'whois/errors'
require 'whois/client'
require 'whois/server'
require 'whois/record'


module Whois

  class << self

    # Queries the WHOIS server for <tt>object</tt> and returns
    # the response from the server.
    #
    # @param  [String] object The string to be sent as query parameter.
    # @return [Whois::Record] The record containing the response from the WHOIS server.
    #
    # @example
    #   Whois.lookup("google.com")
    #   # => #<Whois::Record>
    #
    #   # Equivalent to
    #   Whois::Client.new.lookup("google.com")
    #
    def lookup(object)
      Client.new.lookup(object)
    end

    alias_method :whois, :lookup

    def query(object)
      deprecate("Whois.query is now Whois.lookup")
      lookup(object)
    end

    # Checks whether the object represented by <tt>object</tt> is available.
    #
    # Warning: this method is only available if a Whois parser exists
    # for the top level domain of <tt>object</tt>.
    # If no parser exists for <tt>object</tt>, you'll receive a
    # warning message and the method will return <tt>nil</tt>.
    # This is a technical limitation. Browse the lib/whois/record/parsers
    # folder to view all available parsers.
    #
    # @param  [String] object The string to be sent as query parameter.
    #         It is intended to be a domain name, otherwise this method
    #         may return unexpected responses.
    # @return [Boolean]
    #
    # @example
    #   Whois.available?("google.com")
    #   # => false
    #
    # @example
    #   Whois.available?("google-is-not-available-try-again-later.com")
    #   # => true
    #
    def available?(object)
      result = lookup(object).available?
      if result.nil?
        warn  "This method is not supported for this kind of object.\n" +
              "Use Whois.lookup('#{object}') instead."
      end
      result
    end

    # Checks whether the object represented by <tt>object</tt> is registered.
    #
    # Warning: this method is only available if a Whois parser exists
    # for the top level domain of <tt>object</tt>.
    # If no parser exists for <tt>object</tt>, you'll receive a warning message
    # and the method will return <tt>nil</tt>.
    # This is a technical limitation. Browse the lib/whois/record/parsers folder
    # to view all available parsers.
    #
    # @param  [String] object The string to be sent as query parameter.
    #         It is intended to be a domain name, otherwise this method
    #         may return unexpected responses.
    # @return [Boolean]
    #
    # @example
    #   Whois.registered?("google.com")
    #   # => true
    #
    # @example
    #   Whois.registered?("google-is-not-available-try-again-later.com")
    #   # => false
    #
    def registered?(object)
      result = lookup(object).registered?
      if result.nil?
        warn  "This method is not supported for this kind of object.\n" +
              "Use Whois.lookup('#{object}') instead."
      end
      result
    end


    # Echoes a deprecation warning message.
    #
    # @param  [String] message The message to display.
    # @return [void]
    #
    # @api private
    # @private
    def deprecate(message = nil, callstack = caller)
      message ||= "You are using deprecated behavior which will be removed from the next major or minor release."
      # warn("DEPRECATION WARNING: #{message} #{deprecation_caller_message(callstack)}")
      warn("DEPRECATION WARNING: #{message}")
    end

    # Appends <em>Please report issue to</em> to the message
    # and raises a new +error+ with the final message.
    #
    # @param  [Exception] error
    # @param  [String] message
    # @return [void]
    #
    # @api private
    # @private
    def bug!(error, message)
      raise error, message.dup        <<
        " Please report the issue at" <<
        " http://github.com/weppos/whois/issues"
    end

  private

    def deprecation_caller_message(callstack)
      file, line, method = extract_callstack(callstack)
      if file
        if line && method
          "(called from #{method} at #{file}:#{line})"
        else
          "(called from #{file}:#{line})"
        end
      end
    end

    def extract_callstack(callstack)
      gem_root = File.expand_path("../../../", __FILE__) + "/"
      offending_line = callstack.find { |line| !line.start_with?(gem_root) } || callstack.first
      if offending_line
        if md = offending_line.match(/^(.+?):(\d+)(?::in `(.*?)')?/)
          md.captures
        else
          offending_line
        end
      end
    end
  end

end

c = Whois::Client.new



whois = c.lookup("google.com")
#whois = c.lookup("mangareader.net")

test = whois

#puts test
#puts test.properties

puts "##############################"
puts "##############################"
puts "##############################"

puts "domain : " + test.domain.to_s
puts "status : " + test.status.to_s
puts "available? : " + test.available?.to_s
puts "registered? : " + test.registered?.to_s
puts "created on : " + test.created_on.to_s
puts "updated on : " + test.updated_on.to_s
puts "expires_on : " + test.expires_on.to_s
puts "registrar (hash) : " + test.registrar.to_s
puts "registrant contact (hash) : " + test.registrant_contacts.to_s
puts "admin contact (hash) : " + test.admin_contacts.to_s
puts "technical contact (hash) : " + test.technical_contacts.to_s
puts "name servers (hash) : " + test.nameservers.to_s


#puts test