# frozen_string_literal: false

RSpec::Matchers.define :have_mount do |source, target|
  chain :type, :type
  match do |actual|
    @type ||= source.include?('/') ? 'bind' : 'volume'
    actual.has_mount?(source, target, @type)
  end
  description do
    @type ||= source.include?('/') ? 'bind' : 'volume'
    "#{@type == 'bind' ? 'bind' : 'mount volume'} #{source} on host to #{target} in container"
  end
  failure_message do |actual|
    @type ||= source.include?('/') ? 'bind' : 'volume'
    "expected #{actual.mounts} to contain {'Target' => #{target}, 'Source' => #{source}, 'Type' => #{@type}}"
  end
end

RSpec::Matchers.define :have_volume_mount do |name|
  chain :with_mount_path, :path
  chain :mounted_at, :path
  match do |actual|
    actual.has_volume_mount? name, @path
  end

  description do
    msg =  "mount volume #{name}"
    msg << %( to #{@path})
    msg
  end

  failure_message do
    msg =  "expected volume #{name} to be mounted"
    msg << %( at #{@path})
    msg
  end
end