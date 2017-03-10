#
# Cookbook:: build_cookbook
# Recipe:: quality
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'delivery-truck::quality'

# Test-converge on our most common platform
delivery_test_kitchen 'quality_converge_destroy_ubuntu_1404' do
  driver 'dokken'
  # Avoid `--parallel` just in case
  options '--concurrency=4'
  yaml '.kitchen.docker.yml'
  suite 'ubuntu-1404'
  action [:converge, :destroy]
end
