#
# Cookbook:: build_cookbook
# Recipe:: unit
#
# Copyright:: 2017, The Authors, All Rights Reserved.

delivery_test_kitchen 'unit_create' do
  driver 'ec2'
  yaml '.delivery/.kitchen.ec2.yml'
  suite 'standalone-postgresql-ubuntu-1404'
  action [:create, :destroy]
end

include_recipe 'delivery-truck::unit'
