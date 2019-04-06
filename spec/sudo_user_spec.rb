# frozen_string_literal: true

require 'spec_helper'
require 'serverspec_extra_types/types/sudo_user'

context 'sudo user type' do
  module Serverspec::Type
    class SudoUser
      class Leek
        attr_accessor :stdout
        def initialize(text)
          @stdout = text
        end
      end
      def get_inspection
        op = <<~HEREDOC
          Matching Defaults entries for user1 on a03e5c9c0992:
              env_reset, mail_badpass,
              secure_path=/usr/local/sbin\:/usr/local/bin\:/usr/sbin\:/usr/bin\:/sbin\:/bin

          User user1 may run the following commands on a03e5c9c0992:
              (ALL : ALL) ALL
              (group3) NOPASSWD: ALL
              (ALL) ALL
              (ALL) /usr/bin/leek leek
              (ALL) NOPASSWD: /usr/bin/leek sheek
              (ALL : ALL) NOPASSWD: /usr/bin/leek meek
        HEREDOC
        Leek.new(op)
      end
    end
  end
  describe '#inspecion' do
    before(:all) do
      @su = Serverspec::Type::SudoUser.new('user1')
    end

    it 'should be able to split types with a host in  group' do
      expect(@su.inspection[:permissions][0][:command]).to eq 'ALL'
    end

    it 'should be able to split types with NOPASSWD' do
      expect(@su.inspection[:permissions][1][:command]).to eq 'ALL'
    end
    it 'should be able to split types with a single group' do
      expect(@su.inspection[:permissions][2][:command]).to eq 'ALL'
    end

    it 'should be able to split types with parameterized command' do
      expect(@su.inspection[:permissions][3][:command]).to eq '/usr/bin/leek leek'
    end

    it 'should be able to split types with parameterized command and no passwd' do
      expect(@su.inspection[:permissions][4][:command]).to eq '/usr/bin/leek sheek'
    end

    it 'should be able to split types with host in group, parameterized command and no passwd' do
      expect(@su.inspection[:permissions][5][:command]).to eq '/usr/bin/leek meek'
    end

    it 'should set a host when user has : in it' do
      expect(@su.inspection[:permissions][0][:group]).to eq 'ALL'
    end
  end
end
