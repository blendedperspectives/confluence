#
# Cookbook:: build_cookbook
# Recipe:: unit
#
# Copyright:: 2017, The Authors, All Rights Reserved.

delivery_test_kitchen 'unit_create' do
  driver 'dokken'
  options '--log-level=debug'
  yaml '.kitchen.docker.yml'
  suite 'default'
  action :create
end

include_recipe 'delivery-truck::unit'
