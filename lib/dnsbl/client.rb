require 'resolv'

module DNSBL
  class Client
    def initialize(*dnsbl_urls)
      @dnsbl_urls = dnsbl_urls
    end

    def listed?(address)
      @dnsbl_urls.any? {|url| match?(url, address) }
    end

    private
    def ip_reverse(ip)
      ip.split('.').reverse.join('.')
    end

    def match?(url, address)
      puts "url: #{url}" if $DEBUG
      puts "address: #{address}" if $DEBUG
      if /^127\.0\.0\.[0-9]{0,3}$/ =~ Resolv.getaddress(ip_reverse(address)+'.'+url).to_s
        true
      else
        false
      end
    rescue
      false
    end
  end
end
