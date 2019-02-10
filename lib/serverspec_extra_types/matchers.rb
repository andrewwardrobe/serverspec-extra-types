# frozen_string_literal: true

#--- Docker Matchers
require 'serverspec_extra_types/matchers/be_active'
require 'serverspec_extra_types/matchers/be_a_manager_node'
require 'serverspec_extra_types/matchers/be_a_worker_node'
require 'serverspec_extra_types/matchers/have_domain_name'
require 'serverspec_extra_types/matchers/have_engine_version'
require 'serverspec_extra_types/matchers/have_placement_constraint'
require 'serverspec_extra_types/matchers/have_hostname'
require 'serverspec_extra_types/matchers/have_host'
require 'serverspec_extra_types/matchers/have_image'
require 'serverspec_extra_types/matchers/have_label'
require 'serverspec_extra_types/matchers/have_image_sha'
require 'serverspec_extra_types/matchers/have_restart_limit'
require 'serverspec_extra_types/matchers/have_restart_policy'
require 'serverspec_extra_types/matchers/have_environment_variable'
require 'serverspec_extra_types/matchers/have_user'
require 'serverspec_extra_types/matchers/have_mount'
require 'serverspec_extra_types/matchers/publish_all_ports'
require 'serverspec_extra_types/matchers/map_port'
require 'serverspec_extra_types/matchers/be_active'
require 'serverspec_extra_types/matchers/include_regex'
require 'serverspec_extra_types/matchers/have_network'
require 'serverspec_extra_types/matchers/have_replica_count'

#--- RabbitMQ Matchers
require 'serverspec_extra_types/matchers/have_ha_mode'
require 'serverspec_extra_types/matchers/have_ha_nodes'
require 'serverspec_extra_types/matchers/have_vhost'
require 'serverspec_extra_types/matchers/have_ha_sync_mode'
require 'serverspec_extra_types/matchers/mirror_all'
require 'serverspec_extra_types/matchers/read_from_queue'
require 'serverspec_extra_types/matchers/write_to_queue'
require 'serverspec_extra_types/matchers/configure_queue'
require 'serverspec_extra_types/matchers/have_count'

require 'serverspec_extra_types/matchers/url_matchers'

#--- sudo matchers
require 'serverspec_extra_types/matchers/allowed_to_run_command'
require 'serverspec_extra_types/matchers/allowed_to_run_anything'