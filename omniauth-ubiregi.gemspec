require File.expand_path('../lib/omniauth-ubiregi/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Masahiro Saito"]
  gem.email         = ["camelmasa@gmail.com"]
  gem.description   = %q{OmniAuth strategy for Ubiregi.}
  gem.summary       = %q{OmniAuth strategy for Ubiregi.}
  gem.homepage      = "https://github.com/stockflow/omniauth-ubiregi"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-ubiregi"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Ubiregi::VERSION

  gem.add_dependency 'omniauth'
  # Nothing lower than omniauth-oauth2 1.1.1
  # http://www.rubysec.com/advisories/CVE-2012-6134/
  gem.add_dependency 'omniauth-oauth2', '>= 1.1.1'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
