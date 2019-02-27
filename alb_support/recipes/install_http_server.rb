#
# Cookbook Name:: alb_support
# Recipe:: install_http_server
#
# Copyright 2017 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.
#

# if node['platform'] == 'centos' || node['platform'] == 'ubuntu'
#  execute "apt-get update" do
#    command "apt-get update"
#  end
# end
package "epel-release" do
  action :install
  only_if { node[:platform] == "centos" }
end

# apt_package "vim" do
#  action :install
# end

# execute "apt-get update" do
#  command "apt-get update"
# end

# package "apache2" do
#   action :install
# end

# service "apache2" do
#   action [:enable, :start]
# end
