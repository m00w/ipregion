# frozen_string_literal: true

require_relative "lib/ipregion/version"

Gem::Specification.new do |spec|
  spec.name = "ipregion"
  spec.version = Ipregion::VERSION
  spec.authors = ["m00w/Matheus V."]
  spec.email = ["mooww.m00w@gmail.com"]

  spec.summary = "this simple gem has the objective of geolocating an IP"
  spec.description = %Q(
    "this simple gem has the objective of geolocating an IP. It brings the follo
wing information: country, city. region, latitude, longitude, org.")
  spec.homepage = "https://github.com/m00w/ipregion"
  spec.license = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rake", "~> 13.0"
  spec.add_dependency "faraday", "~> 2.7", ">= 2.7.4"
  spec.add_dependency "ipaddress", "~> 0.8.3"

end
