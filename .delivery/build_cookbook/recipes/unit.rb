#
# Cookbook:: build_cookbook
# Recipe:: unit
#
# Copyright:: 2017, The Authors, All Rights Reserved.

link "#{delivery_workspace_repo}/.kitchen.local.yml" do
  to "#{delivery_workspace_repo}/.kitchen.ec2.yml"
end

delivery_test_kitchen 'unit_create' do
  driver 'ec2'
  options '--log-level=debug'
  suite 'standalone-postgresql-ubuntu-1404'
  repo_path delivery_workspace_repo
  action :create
end

include_recipe 'delivery-truck::unit'
