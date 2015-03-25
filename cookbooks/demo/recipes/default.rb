#
# Cookbook Name:: demo
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

# Install httpd
package "httpd" do
	action :install
end


# Start apache service
# make sure the service starts on reboot
service "httpd" do
	action [:start, :enable]
end

# Write our cgi script
cookbook_file "/var/www/cgi-bin/evenodd.py" do
	source "evenodd.py"
	mode "0755"
end
