default['tmux']['install_method'] = if(node['platform_family'] == 'rhel')
  'source'
else
  'package'
end
default['tmux']['version'] = '1.6'
default['tmux']['checksum'] = '8756f6bcecb18102b87e5d6f5952ba2541f68ed3'
