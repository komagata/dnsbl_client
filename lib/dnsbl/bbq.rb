module DNSBL
  class BBQ
    URL = 'niku.2ch.net'

    def self.listed?(address)
      DNSBL::Client.new(URL).listed?(address)
    end
  end
end
