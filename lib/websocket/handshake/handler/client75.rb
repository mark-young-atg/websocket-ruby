module WebSocket
  module Handshake
    module Handler
      module Client75

        include Client

        private

        def header_line
          "GET #{@path} HTTP/1.1"
        end

        def handshake_keys
          keys = [
            ["Upgrade", "WebSocket"],
            ["Connection", "Upgrade"]
          ]
          host = @host
          host += ":#{@port}" if @port
          keys << ["Host", host]
          keys << ["Origin", @origin] if @origin
          keys
        end

      end
    end
  end
end
