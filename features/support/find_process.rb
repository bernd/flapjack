def find_process(command)
  ps_command = 'ps -eo cmd'

  case RUBY_PLATFORM
    when /openbsd/
      ps_command = 'ps -axo command'
  end

  `#{ps_command} | grep #{command} | grep -v -e grep -e cucumber`
end
