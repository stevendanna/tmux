@test "it installs installed the tmux binary" {
  export PATH=$PATH:/usr/local/bin
  which tmux
}
