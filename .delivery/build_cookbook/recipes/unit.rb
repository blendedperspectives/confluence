#
# Cookbook:: build_cookbook
# Recipe:: unit
#
# Copyright:: 2017, The Authors, All Rights Reserved.

delivery_test_kitchen 'unit_create' do
  driver 'dokken'
  yaml '.kitchen.docker.yml'
  suite 'standalone-postgresql-centos-7'
  action [:converge, :destroy]
end

include_recipe 'delivery-truck::unit'
