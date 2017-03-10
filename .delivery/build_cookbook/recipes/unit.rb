#
# Cookbook:: build_cookbook
# Recipe:: unit
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Test-converge on our most common platform
delivery_test_kitchen 'quality_converge_destroy_ubuntu_1404' do
  driver 'dokken'
  # Avoid `--parallel` just in case
  options '--concurrency=4'
  yaml '.kitchen.docker.yml'
  #suite 'ubuntu-1404'
  suite 'standalone-postgresql-ubuntu-1404'
  action [:converge, :destroy]
end

include_recipe 'delivery-truck::unit'
