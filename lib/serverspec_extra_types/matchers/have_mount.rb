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
