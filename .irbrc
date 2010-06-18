IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "~/.irb_history"
IRB.conf[:EVAL_HISTORY] = 200
IRB.conf[:AUTO_INDENT] = true
begin
  # load wirble
  require 'rubygems' rescue nil
  require 'wirble'

  # start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
end