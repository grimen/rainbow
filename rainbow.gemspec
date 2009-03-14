# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rainbow}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonas Grimfelt"]
  s.date = %q{2009-03-14}
  s.default_executable = %q{rainbow}
  s.description = %q{An efficient MD5 hash lookup based on one of the biggest rainbow lookup tables available.}
  s.email = %q{grimen@gmail.com}
  s.executables = ["rainbow"]
  s.extra_rdoc_files = ["README.textile"]
  s.files = ["MIT-LICENSE", "README.textile", "Rakefile", "rails/init.rb", "bin/rainbow", "lib/rainbow.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/grimen/rainbow/tree/master}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{An efficient MD5 hash lookup based on one of the biggest rainbow lookup tables available.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
