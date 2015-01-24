$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "russian_keyboard/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "russian_keyboard"
  s.version     = RussianKeyboard::VERSION
  s.authors     = ["Rodion V"]
  s.email       = ["rodion.v@devaer.com"]
  s.homepage    = "http://rvlasov.ru/"
  s.summary     = "The tool which fix your wrong keyboard layout."
  s.description = "Repair original text which was written at wrong keyboard layout."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.9"

  s.add_development_dependency "sqlite3"
end
