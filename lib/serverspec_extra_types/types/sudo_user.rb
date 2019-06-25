# frozen_string_literal: true

require 'serverspec'
require 'serverspec/type/base'
require 'multi_json'
require 'serverspec_extra_types/helpers/properties'

module Serverspec::Type
  class SudoUser < Base
    def initialize(name)
      super
      @user = name
    end

    def exist?
      if get_inspection.success? && /User #{@user} may run the following commands/.match(@get_inspection.stdout)
        true
      else
        false
      end
    end

    def allowed_to_run_command?(command, user = nil, checkpw = false)
      perm = permission(command)
      if user
        if checkpw
          perm[:user] == user && perm[:nopasswd]
        else
          perm[:user] == user
        end
      else
        checkpw ? perm && perm[:nopasswd] : perm
      end
    end

    def permission(command)
      permissions.find { |x| x[:command].include?(command) }
    end

    def permissions
      inspection[:permissions]
    end

    def has_sudo_disabled?
      /User #{@user} is not allowed to run sudo/.match(@get_inspection.stdout)
    end

    def inspection
      @inspection ||= get_sudo_perms(get_inspection.stdout)
    end

    private

    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      @get_inspection ||= @runner.run_command("sudo -l -U #{@user}")
    end
    # rubocop:enable Naming/AccessorMethodName

    def chunk_permission(perm)
      chunks = {}
      parts = perm.sub(' : ', ':').split(/\s+/).reject { |x| x == '' || x == "\n" }
      user = parts[0].sub('(', '').sub(')', '')
      chunk(chunks, parts, perm, user)
      chunks
    end

    def chunk(chunks, parts, perm, user)
      if user.include?(':')
        chunks[:user] = user.split(':')[0]
        chunks[:group] = user.split(':')[1]
      else
        chunks[:user] = user
      end
      if /NOPASSWD:/.match? perm
        chunks[:nopasswd] = true
        chunks[:command] = parts[2..-1].join(' ').split(',').map(&:strip)
      else
        chunks[:nopasswd] = false
        chunks[:command] = parts[1..-1].join(' ').split(',').map(&:strip)
      end
    end

    def get_sudo_perms(output)
      matches = /Matching Defaults entries for #{@user} on .*\n(.*)\n/.match output
      defaults = matches ? matches[1].split(', ').map(&:strip) : {}
      matches = /User #{@user} may run the following commands on .*\n((\W.*\n)*)/.match output

      permissions = matches ? matches[1].split("\n").map { |x| chunk_permission(x.strip) } : {}
      { defaults: defaults, permissions: permissions }
    end
  end
end
