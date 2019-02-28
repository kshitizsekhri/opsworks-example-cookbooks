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
execute "sudo yum -y update" do
  command "sudo yum -y update"
end
execute "sudo yum -y install httpd" do
  command "sudo yum -y install httpd"
end
execute "sudo systemctl start httpd.service" do
  command "sudo systemctl start httpd.service"
end
execute "sudo systemctl enable httpd.service" do
  command "sudo systemctl enable httpd.service"
end
execute "sudo yum -y install git" do
  command "sudo yum -y install git"
end
execute "sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm" do
  command "sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm"
end
execute "sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm" do
  command "sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm"
end
execute "sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm" do
  command "sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm"
end
execute "sudo yum install -y mod_php71w php71w-cli php71w-common php71w-gd php71w-mbstring php71w-mcrypt php71w-mysqlnd php71w-xml php71w-intl" do
  command "sudo yum install -y mod_php71w php71w-cli php71w-common php71w-gd php71w-mbstring php71w-mcrypt php71w-mysqlnd php71w-xml php71w-intl"
end
execute "sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm" do
  command "sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm"
end
execute "sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm" do
  command "sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm"
end
execute "sudo setsebool httpd_can_network_connect 1" do
  command "setsebool httpd_can_network_connect 1"
end
execute "sudo setsebool httpd_can_network_connect_db 1" do
  command "setsebool httpd_can_network_connect_db 1"
end
