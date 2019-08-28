# frozen_string_literal: false

require 'serverspec'
require 'serverspec/type/base'
require 'serverspec_extra_types/helpers/properties'

module Serverspec::Type
  class UnixPam < Base
    def initialize(name = nil, dir = '/etc/pam.d', options = {})
      super(name, options)
      @name = name
      @dir = dir
    end

    def exists?
      get_inspection.success?
    end

    def auths
      inspection['auth']
    end

    def auth(auth)
      auths[auth]
    end

    def sessions
      inspection['session']
    end

    def session(ses)
      sessions[ses]
    end

    def accounts
      inspection['account']
    end

    def account(acc)
      accounts[acc]
    end

    def passwords
      inspection['password']
    end

    def password(passwd)
      passwords[passwd]
    end

    def includes
      inspection['include']
    end

    def include(inc)
      includes.include? inc
    end

    def include?(inc)
      !self.include(inc).nil?
    end

    def has_include?(inc)
      include? inc
    end

    def has_account?(account, control = nil, args = nil)
      acc = self.account(account)
      check(acc, control, args)
    end

    def has_auth?(auth, control = nil, args = nil)
      ath = self.auth(auth)
      check(ath, control, args)
    end

    def has_session?(session, control = nil, args = nil)
      ses = self.session(session)
      check(ses, control, args)
    end

    def has_password?(password, control = nil, args = nil)
      psw = self.password(password)
      check(psw, control, args)
    end



    def host(host_id)
      hosts[host_id]
    end

    def inspection
      unless @inspection
        config = {}
        get_inspection.stdout.each_line do |line|
          if line.start_with?(/[a-z]/)
            parts = %r{^([a-z]+)(?:\s+)([a-z]+|\[[a-z0-9= _]*\])(?:\s+)([a-z_\.]+)(?:\s?)(.*)}.match line
            next unless parts
            config[parts[1]] = {} unless config[parts[1]]
            if config.dig(parts[1],parts[3])
              data = {'flag' =>  parts[2] }
              data['args'] = parts[4].split unless [nil, '' ].include?(parts[4])
              config[parts[1]][parts[3]] << data
            else
              config[parts[1]][parts[3]] = []
              data = {'flag' => parts[2] }
              data['args'] = parts[4].split unless [nil, '' ].include?(parts[4])
              config[parts[1]][parts[3]] << data
            end
          elsif line.start_with? '@inc'
            parts = %r{^@[a-z]+(?:\s+)([a-z\-]+|\[[a-z0-9_=\-]*\])}.match line
            next unless parts
            config['include'] = [] unless config['include']
            config['include'] << parts[1]
          end
        end
        @inspection = config
      end
      @inspection
    end

    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      command = "cat #{@dir}/#{@name}"
      @get_inspection ||= @runner.run_command(command)
    end
    # rubocop:enable Naming/AccessorMethodName

    private

    def check(mod, control = nil, args = nil )
      if args && control
        check_args(args, mod) && check_flags(control, mod)
      elsif args
        check_args(args, mod)
      elsif control
        check_flags(control, mod)
      else
        !mod.nil?
      end
    end

    def check_flags(control, mod)
      mod.find {|a| a['flag'] == control}
    end

    def check_args(args, mod)
      if args.is_a? Array
        mod.find {|a| (a['args'] - args).empty?}
      else
        mod.find {|a| a['args'].include? args}
      end
    end

    def check_options(host_id, opts)
      options = opts.include?(',') ? opts.spilt(',') : opts
      if options.is_a? Array
        host(host_id).split(',').include?(options)
      else
        host(host_id).include?(options)
      end
   end
  end
end
