require_relative 'lib/hello_work/version'

Gem::Specification.new do |spec|
  spec.name          = "hello_work"
  spec.version       = HelloWork::VERSION
  spec.authors       = ["someone"]
  spec.email         = ["someone@gmail.com"]

  spec.summary       = %q{Nothing going on here}
  spec.homepage      = "https://github.com/oolkhovoy/hello_work"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/oolkhovoy/hello_work"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
