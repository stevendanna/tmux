default['tmux']['install_method'] = if(node['platform_family'] == 'rhel')
  'source'
else
  'package'
end
default['tmux']['version'] = '1.8'
default['tmux']['checksum'] = 'f265401ca890f8223e09149fcea5abcd6dfe75d597ab106e172b01e9d0c9cd44'

default['tmux']['server_opts']['escape-time'] = 1

default['tmux']['session_opts']['base-index'] = 1
default['tmux']['session_opts']['prefix'] = 'C-a'

default['tmux']['window_opts']['pane-base-index'] = 1

