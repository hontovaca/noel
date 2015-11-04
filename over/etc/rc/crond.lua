rc.crond:merge {
  type = "longrun",
  run = util.realign [[
    #!/usr/bin/execlineb -P
    fdmove -c 2 1
    crond -fd8
  ]],
}
