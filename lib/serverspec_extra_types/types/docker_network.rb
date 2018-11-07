require 'serverspec'

module Serverspec::Type
  # This class  monkey patches serverspec's docker container type with some more method to be used in matchers
  class DockerNetwork < DockerBase

    def name
      inspection['Name']
    end

    def id
      inspection['Id']
    end

    private


    def get_inspection
      @get_inspection ||= @runner.run_command("docker network inspect #{@name}")
    end
  end
end
