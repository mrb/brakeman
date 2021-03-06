require './lib/brakeman/version'
gem_priv_key = File.expand_path("~/.ssh/gem-private_key.pem")

Gem::Specification.new do |s|
  s.name = %q{brakeman}
  s.version = Brakeman::Version
  s.authors = ["Justin Collins"]
  s.email = "gem@brakeman.org"
  s.summary = "Security vulnerability scanner for Ruby on Rails."
  s.description = "Brakeman detects security vulnerabilities in Ruby on Rails applications via static analysis."
  s.homepage = "http://brakemanscanner.org"
  s.files = ["bin/brakeman", "CHANGES", "WARNING_TYPES", "FEATURES", "README.md"] + Dir["lib/**/*"]
  s.executables = ["brakeman"]
  s.license = "MIT"
  s.cert_chain  = ['brakeman-public_cert.pem']
  s.signing_key = gem_priv_key if File.exist? gem_priv_key and $0 =~ /gem\z/
  s.add_development_dependency "test-unit"
  s.add_dependency "ruby_parser", "~>3.7.0"
  s.add_dependency "ruby2ruby", ">=2.1.1", "<2.3.0"
  s.add_dependency "terminal-table", "~>1.4"
  s.add_dependency "fastercsv", "~>1.5"
  s.add_dependency "highline", "~>1.6"
  s.add_dependency "erubis", "~>2.6"
  s.add_dependency "haml", ">=3.0", "<5.0"
  s.add_dependency "sass", "~>3.0"
  s.add_dependency "slim", ">=1.3.6", "<4.0"
  s.add_dependency "multi_json", "~>1.2"
  s.add_dependency "safe_yaml"
end
