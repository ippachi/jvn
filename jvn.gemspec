require_relative 'lib/jvn/version'

Gem::Specification.new do |spec|
  spec.name          = "jvn"
  spec.version       = Jvn::VERSION
  spec.authors       = ["ippachi"]
  spec.email         = ["ippachi1018@gmail.com"]

  spec.summary       = %q{Japan Vulnerability Notes API library}
  spec.description   = %q{Japan Vulnerability Notes API library}
  spec.homepage      = "https://github.com/ippachi/jvn"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ippachi/jvn"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
