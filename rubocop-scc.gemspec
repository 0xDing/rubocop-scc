# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'rubocop-scc'
  s.version = '0.1.0'
  s.summary = 'RuboCop SCC'
  s.description = 'Code style checking for Sequoia Capital China Ruby projects'
  s.homepage = 'https://github.com/sequoia-china/rubocop-scc'
  s.license = 'MIT'

  s.files = Dir['README.md', 'STYLEGUIDE.md', 'LICENSE', 'config/*.yml', 'lib/**/*.rb', 'guides/*.md']

  s.add_dependency 'rubocop', '~> 0.52'

  s.add_development_dependency 'actionview', '~> 5.1'
  s.add_development_dependency 'erubis', '~> 2.7'
  s.add_development_dependency 'minitest', '~> 5.11'
  s.add_development_dependency 'rake', '~> 12.3'

  s.required_ruby_version = '>= 2.5.0'

  s.email = 'lding@sequoiacap.com'
  s.authors = 'borisding'
end
