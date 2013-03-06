default['tmux']['install_method'] = if(node['platform_family'] == 'rhel')
  'source'
else
  'package'
end
default['tmux']['version'] = '1.6'
default['tmux']['checksum'] = 'faee08ba1bd8c22537cd5b7458881d1bdb4985df88ed6bc5967c56881a7efbd6'

default['tmux']['server_opts']['buffer-limit'] = 20
default['tmux']['server_opts']['escape-time'] = 1
default['tmux']['server_opts']['exit-unattached'] = 'off'
default['tmux']['server_opts']['quiet'] = 'off'
default['tmux']['server_opts']['set-clipboard'] = 'on'

default['tmux']['global_opts']['base-index'] = 1
default['tmux']['global_opts']['bell-action'] = 'any'
default['tmux']['global_opts']['bell-on-alert'] = 'off'
default['tmux']['global_opts']['default-command'] = '""'
default['tmux']['global_opts']['default-path'] = '""'
default['tmux']['global_opts']['default-shell'] = "\"#{ENV['SHELL']}\""
default['tmux']['global_opts']['default-terminal'] = '"screen"'
default['tmux']['global_opts']['destroy-unattached'] = 'off'
default['tmux']['global_opts']['detach-on-destroy'] = 'on'
default['tmux']['global_opts']['display-panes-active-colour'] = 'red'
default['tmux']['global_opts']['display-panes-colour'] = 'blue'
default['tmux']['global_opts']['display-panes-time'] = 1000
default['tmux']['global_opts']['display-time'] = 750
default['tmux']['global_opts']['history-limit'] = 2000
default['tmux']['global_opts']['lock-after-time'] = 0
default['tmux']['global_opts']['lock-command'] = '"lock -np"'
default['tmux']['global_opts']['lock-server'] = 'on'
default['tmux']['global_opts']['message-attr'] = 'none'
default['tmux']['global_opts']['message-bg'] = 'yellow'
default['tmux']['global_opts']['message-command-attr'] = 'none'
default['tmux']['global_opts']['message-command-bg'] = 'black'
default['tmux']['global_opts']['message-command-fg'] = 'yellow'
default['tmux']['global_opts']['message-fg'] = 'black'
default['tmux']['global_opts']['message-limit'] = 20
default['tmux']['global_opts']['mouse-resize-pane'] = 'off'
default['tmux']['global_opts']['mouse-select-pane'] = 'off'
default['tmux']['global_opts']['mouse-select-window'] = 'off'
default['tmux']['global_opts']['mouse-utf8'] = 'on'
default['tmux']['global_opts']['pane-active-border-bg'] = 'default'
default['tmux']['global_opts']['pane-active-border-fg'] = 'green'
default['tmux']['global_opts']['pane-base-index'] = 1
default['tmux']['global_opts']['prefix'] = 'C-a'
default['tmux']['global_opts']['repeat-time'] = 500
default['tmux']['global_opts']['set-remain-on-exit'] = 'off'
default['tmux']['global_opts']['set-titles'] = 'off'
default['tmux']['global_opts']['set-titles-string'] = '"#S:#I:#W - "#T""'
default['tmux']['global_opts']['status'] = 'on'
default['tmux']['global_opts']['status-attr'] = 'none'
default['tmux']['global_opts']['status-bg'] = 'colour0'
default['tmux']['global_opts']['status-fg'] = 'white'
default['tmux']['global_opts']['status-interval'] = 15
default['tmux']['global_opts']['status-justify'] = 'left'
default['tmux']['global_opts']['status-keys'] = 'vi'
default['tmux']['global_opts']['status-left'] = nil
default['tmux']['global_opts']['status-left-attr'] = 'none'
default['tmux']['global_opts']['status-left-bg'] = 'default'
default['tmux']['global_opts']['status-left-fg'] = 'default'
default['tmux']['global_opts']['status-left-length'] = 10
default['tmux']['global_opts']['status-right'] = nil
default['tmux']['global_opts']['status-right-attr'] = 'none'
default['tmux']['global_opts']['status-right-bg'] = 'default'
default['tmux']['global_opts']['status-right-fg'] = 'default'
default['tmux']['global_opts']['status-right-length'] = 150
default['tmux']['global_opts']['status-utf8'] = 'on'
default['tmux']['global_opts']['terminal-overrides'] = '"*88col*:colors=88,*256col*:colors=256,xterm*:XT"'
default['tmux']['global_opts']['update-environment'] = '"DISPLAY SSH_ACKPASS SSH_AUTH_SOCK SSH_AGENT_PID SSH_CONNECTION WINDOWID XAUTHORITY"'
default['tmux']['global_opts']['visual-activity'] = 'off'
default['tmux']['global_opts']['visual-bell'] = 'off'
default['tmux']['global_opts']['visual-content'] = 'off'
default['tmux']['global_opts']['visual-silence'] = 'off'
default['tmux']['global_opts']['word-separators'] = '" -_@"'

