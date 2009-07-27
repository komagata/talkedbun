# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{talkedbun}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Masaki Komagata"]
  s.date = %q{2009-07-27}
  s.default_executable = %q{talkedbun}
  s.email = %q{komagata@gmail.com}
  s.executables = ["talkedbun"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "bin/talkedbun",
     "config.ru",
     "lib/talker.rb",
     "public/images/body.jpg",
     "talkedbun.rb",
     "views/index.haml",
     "views/style.sass"
  ]
  s.homepage = %q{http://github.com/komagata/talkedbun}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Talkedbun is japanese text-to-speech server.}
  s.test_files = [
    "test/talkedbun_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, [">= 0.9.2"])
      s.add_runtime_dependency(%q<haml>, [">= 2.0.9"])
    else
      s.add_dependency(%q<sinatra>, [">= 0.9.2"])
      s.add_dependency(%q<haml>, [">= 2.0.9"])
    end
  else
    s.add_dependency(%q<sinatra>, [">= 0.9.2"])
    s.add_dependency(%q<haml>, [">= 2.0.9"])
  end
end
