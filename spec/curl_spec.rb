require 'spec_helper'


context "Curl Matchers" do
  include WebserverHelper
  before(:all) do
    start_webserver
  end

  (1..5).to_a.each { |num| include_examples "HTTP::#{num}XX" }

  after(:all) do
    stop_webserver
  end
end