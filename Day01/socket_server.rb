require 'socket'

server = TCPServer.new 1983

loop do
  client = server.accept
  puts "Client is on board " if client
  client.puts "Hello, who are you?"
  client.puts "Time is #{Time.now}"
  client.close
  puts "Someone is disconnect!" unless client
end

# Create client
client = TCPSocket.new 'localhost', 1983

# read from server
client.gets


