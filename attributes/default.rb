default['tmux']['install_method'] = if(node['platform_family'] == 'rhel')
  'source'
else
  'package'
end
default['tmux']['version'] = '1.6'
default['tmux']['checksum'] = 'faee08ba1bd8c22537cd5b7458881d1bdb4985df88ed6bc5967c56881a7efbd6'

default['tmux']['server_opts']['escape-time'] = 1

default['tmux']['session_opts']['base-index'] = 1
default['tmux']['session_opts']['prefix'] = 'C-a'

default['tmux']['window_opts']['pane-base-index'] = 1

