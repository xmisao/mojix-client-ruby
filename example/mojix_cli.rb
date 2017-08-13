require 'mojix'

client_normal = Mojix::Client.new(mode: :normal)
client_search = Mojix::Client.new(mode: :search)
client_extended = Mojix::Client.new(mode: :extended)

if ARGV.count == 0
  STDOUT.puts 'Usage: ruby mojix_cli.rb "もう何も恐くない"'
  exit
end

ARGV.each{|text|
  puts ":normal => #{client_normal.tokenize_simply(text).inspect}"
  puts ":search => #{client_search.tokenize_simply(text).inspect}"
  puts ":extended => #{client_extended.tokenize_simply(text).inspect}"
}
