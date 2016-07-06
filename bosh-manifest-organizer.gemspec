# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bosh/manifest/organizer/version'

Gem::Specification.new do |spec|
  spec.name = 'bosh-manifest-organizer'
  spec.version = Bosh::Manifest::Organizer::VERSION
  spec.authors = ['Jean de Klerk']
  spec.email = ['jadekler@gmail.com']

  spec.summary = %q{Organize your bosh manifests!}
  spec.description = %q{Organize your bosh manifests!}
  spec.homepage = "https://github.com/jadekler/bosh-manifest-organizer"
  spec.license = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'bin'
  spec.executables = ['bosh-manifest-organizer']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
