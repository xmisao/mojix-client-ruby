# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mojix/version"

Gem::Specification.new do |spec|
  spec.name          = "mojix"
  spec.version       = Mojix::VERSION
  spec.authors       = ["xmisao"]
  spec.email         = ["mail@xmisao.com"]

  spec.summary       = %q{Mojix client for Ruby.}
  spec.description   = %q{Mojix gRPC client for Ruby. Mojix is micro-service oriented kuromoji gRPC server.}
  spec.homepage      = "https://github.com/xmisao/mojix-client-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "grpc-tools", "~> 1.4.5"
  spec.add_dependency "google-protobuf", "~> 3.3.0"
  spec.add_dependency "grpc", "~> 1.4.5"
end
