rc.syslogd:merge {
  type = "longrun",
  run = realign [[
    #!/usr/bin/execlineb -P
    fdmove -c 2 1
    syslogd -nO-
  ]],
}
