require "socket"

module GetLocalIP
  def self.local_ip
    orig, Socket.do_not_reverse_lookup = Socket.do_not_reverse_lookup, true
    UDPSocket.open do |s|
      s.connect "8.8.8.8", 1
      s.addr.last
    end
  ensure
    Socket.do_not_reverse_lookup = orig
  end
end
