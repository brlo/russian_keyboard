Gem::Specification.new do |s|
  s.name        = 'russian_keyboard'
  s.version     = '0.0.2'
  s.date        = '2019-02-04'
  s.summary     = 'The tool which fix your wrong keyboard layout.'
  s.description = 'Repair original text which was written at wrong keyboard layout.'
  s.license     = 'MIT'
  s.authors     = ['Rodion V']
  s.email       = 'rodion.v@devaer.com'
  s.homepage    = 'https://github.com/brlo/capsula'
  s.license     = 'MIT'

  all_files     = `git ls-files`.split('\n')
  test_files    = `git ls-files -- {test,spec,features}/*`.split('\n')

  s.files         = all_files - test_files
  s.test_files    = test_files
  s.require_paths = ['lib']
end
