#
# Cookbook:: build_cookbook
# Recipe:: unit
#
# Copyright:: 2017, The Authors, All Rights Reserved.

delivery_test_kitchen 'unit_create' do
  driver 'ec2'
  yaml "#{delivery_workspace_repo}/.delivery/.kitchen.ec2.yml"
  options '--log-level=debug'
  suite 'standalone-postgresql-ubuntu-1404'
  action :create
end

include_recipe 'delivery-truck::unit'
