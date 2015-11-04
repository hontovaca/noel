local function install(s, ...)
  for i,b in global.ipairs({...}) do
    rc[b]:merge { contents = s }
  end
end

install("syslogd", 1, 2, 3)
install("crond", 2, 3)
install("sshd", 3)
