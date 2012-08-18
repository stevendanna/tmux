#
# Cookbook Name:: tmux
# Recipe:: default
#
# Copyright 2010, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
#

if node['platform'] == 'centos'
  Chef::Log.info('There is not a tmux package for CentOS. Compiling from source...')
  package 'libevent-devel'
  package 'ncurses-devel'

  tar_name = "tmux-#{node['tmux']['version']}"
  remote_file "#{Chef::Config['file_cache_path']}/#{tar_name}.tar.gz" do
    source "http://downloads.sourceforge.net/tmux/#{tar_name}.tar.gz"
    checksum node['tmux']['checksum']
    notifies :run, 'bash[install_tmux]', :immediately
  end

  bash 'install_tmux' do
    user 'root'
    cwd Chef::Config['file_cache_path']
    code <<-EOH
      tar -zxf #{tar_name}.tar.gz
      (cd #{tar_name} && ./configure && make && make install)
    EOH
    action :nothing
  end
else
  package 'tmux'
end

template '/etc/tmux.conf' do
  source 'tmux.conf'
  mode 0644
end
