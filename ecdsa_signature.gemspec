
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ecdsa_signature/version"

Gem::Specification.new do |spec|
  spec.name          = "ecdsa_signature"
  spec.version       = EcdsaSignature::VERSION
  spec.authors       = ["manikimpinge"]
  spec.email         = ["manik.impinge@gmail.com"]

  spec.summary       = %q{Generate an ecdsa signature by an ethereum private key.}
  spec.description   = %q{A gem to generate an ecdsa signature by an ethereum private key.}
  spec.homepage      = "https://github.com/manikimpinge/ecdsa_signature"
  spec.license       = "MIT"
  spec.add_development_dependency "rspec", "~> 3.2"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
