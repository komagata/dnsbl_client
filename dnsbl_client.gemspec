Gem::Specification.new do |s|
  s.author = 'Masaki Komagata'
  s.description = <<-EOF
    DNSBL Client is simple solution for spam blocking.
    (What is DNSBL? http://en.wikipedia.org/wiki/Dnsbl)
  EOF
  s.email = 'komagata@gmail.com'
  s.homepage = 'http://github.com/komagata/dnsbl_client/tree'
  s.name = 'dnsbl_client'
  s.required_ruby_version = '>= 1.8.5'
  s.rubyforge_project = 'dnsbl_client'
  s.summary = 'DNSBL Client is simple solution for spam blocking.'
  s.version = '0.0.1'
  s.files = %w[README lib/dnsbl.rb lib/dnsbl/client.rb lib/dnsbl/bbq.rb]
  s.has_rdoc = true
end
