require 'socket'

server = TCPServer.new 11211

# Dummy "memcached" server which replies to a version operation and then does
# nothing.
loop do
  Thread.start(server.accept) do |client|
    client.read(24)

    client.print [0, 0, 0, 1].pack("@4CCnN")
    client.print "x" * 12

    client.print "1"

    sleep 5

    client.close
  end
end
