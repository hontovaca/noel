rc.sshd:merge {
  type = "longrun",
  producer_for = "sshd-log",
  run = util.realign [[
    #!/usr/bin/execlineb -P
    fdmove -c 2 1
    if { ssh-keygen -A }
    /usr/sbin/sshd -De
  ]],
}

rc.sshd_log:merge {
  type = "longrun",
  consumer_for = "sshd",
  run = util.realign [[
    #!/usr/bin/execlineb -P
    s6-setuidgid daemon
    s6-log 1 t /var/log/sshd
  ]],
}
