# frozen_string_literal: false

RSpec::Matchers.define :map_port do |host, container|
  match do |actual|
    @protocol ||= 'tcp'
    if @mode
      actual.map_port? host, container, @protocol, @mode
    else
      actual.map_port? host, container, @protocol
    end
  end
  description do
    msg = "map container port #{container} to host port #{host}"
    msg << %( using the "#{@protocol}" protocol) if @protocol
    msg << %( in "#{@mode}" mode) if @mode
    msg
  end
  failure_message do |actual|
    @protocol ||= 'tcp'
    "expected #{actual.port_map} to contain {\"#{container}/#{@protocol}\"=>[{\"HostPort\"=>\"#{host}\"}] }"
  end

  chain :using_protocol, :protocol
  chain :with_mode, :mode
end

RSpec::Matchers.define :expose_port do |port|
  @protocol ||= 'TCP'
  match do |actual|
    actual.has_port?(port, @name, @nodePort, @targetPort, @protocol)
  end
  description do
    msg = "expose port #{port}"
    msg << %( targeting to container port #{@targetPort}) if @targetPort
    msg << %( available at node port  #{@nodePort}) if @nodePort
    msg << %( using protocol  #{@protocol}) if @protocol
    msg << %( with name "#{@name}" ) if @name
    msg
  end

  chain :using_protocol, :protocol
  chain :with_name, :name
  chain :targeting, :targetPort
  chain :at_node_port, :nodePort
end


