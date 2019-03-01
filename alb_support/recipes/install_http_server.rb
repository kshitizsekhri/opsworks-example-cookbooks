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
  ignore_failure true
end
execute "sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm" do
  command "sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm"
  ignore_failure true
end
execute "sudo yum install -y mod_php71w php71w-cli php71w-common php71w-gd php71w-mbstring php71w-mcrypt php71w-mysqlnd php71w-xml php71w-intl" do
  command "sudo yum install -y mod_php71w php71w-cli php71w-common php71w-gd php71w-mbstring php71w-mcrypt php71w-mysqlnd php71w-xml php71w-intl"
  ignore_failure true
end
execute "sudo cp /etc/php.ini /etc/php.ini.bak" do
  command "sudo cp /etc/php.ini /etc/php.ini.bak"
end
execute "sudo systemctl restart httpd.service" do
  command "sudo systemctl restart httpd.service"
end
execute "sudo yum -y install vim" do
  command "sudo yum -y install vim"
  ignore_failure true
end
execute "sudo yum -y install nano" do
  command "sudo yum -y install nano"
  ignore_failure true
end
execute "php -r \"copy('https://getcomposer.org/installer', 'composer-setup.php');\"" do
  command "php -r \"copy('https://getcomposer.org/installer', 'composer-setup.php');\""
end
execute "php -r \"if (hash_file('SHA384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;\"" do
  command "php -r \"if (hash_file('SHA384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;\""
end
execute "php composer-setup.php" do
  command "php composer-setup.php"
end
execute "php -r \"unlink('composer-setup.php');\"" do
  command "php -r \"unlink('composer-setup.php');\""
end
execute "sudo mv composer.phar /usr/local/bin/composer" do
  command "sudo mv composer.phar /usr/local/bin/composer"
end
execute "sudo setsebool httpd_can_network_connect 1" do
  command "sudo setsebool httpd_can_network_connect 1"
end
execute "sudo setsebool httpd_can_network_connect_db 1" do
  command "sudo setsebool httpd_can_network_connect_db 1"
end
execute "sudo setsebool -P httpd_unified 1" do
  command "sudo setsebool -P httpd_unified 1"
end
# execute "chcon unconfined_u:object_r:httpd_sys_rw_content_t:s0 webroot/" do
#   command "chcon unconfined_u:object_r:httpd_sys_rw_content_t:s0 webroot/"
# # end
# execute "sudo vim /etc/httpd/conf/httpd.conf" do
#   command "sudo vim /etc/httpd/conf/httpd.conf"
# end
execute "sed -i \"/<Directory '\/var\/www\/html'>/,/<\/Directory>/ s/AllowOverride None/AllowOverride all/\" /etc/httpd/conf/httpd.conf" do
  command "sed -i \"/<Directory '\/var\/www\/html'>/,/<\/Directory>/ s/AllowOverride None/AllowOverride all/\" /etc/httpd/conf/httpd.conf"
end
