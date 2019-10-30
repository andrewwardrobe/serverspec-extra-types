# frozen_string_literal: true

RSpec::Matchers.define :have_replica_count do |count|
  match do |actual|
    actual.replicas == count
  end
  description do
    "have #{count} replica#{count != 1 ? 's' : ''}"
  end
end

RSpec::Matchers.define :have_ready_replica_count do |count|
  match do |actual|
    actual.ready_replicas == count
  end
  description do
    "have #{count} ready replica#{count != 1 ? 's' : ''}"
  end
end

RSpec::Matchers.define :have_available_replica_count do |count|
  match do |actual|
    actual.replicas == count
  end
  description do
    "have #{count} available replica#{count != 1 ? 's' : ''}"
  end
end

RSpec::Matchers.define :have_updated_replica_count do |count|
  match do |actual|
    actual.replicas == count
  end
  description do
    "have #{count} updated replica#{count != 1 ? 's' : ''}"
  end
end
