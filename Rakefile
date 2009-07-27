require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "talkedbun"
    gem.summary = %Q{Talkedbun is japanese text-to-speech server.}
    gem.email = "komagata@gmail.com"
    gem.homepage = "http://github.com/komagata/talkedbun"
    gem.authors = ["Masaki Komagata"]
    gem.files = FileList["lib/*.rb", "bin/*", "*.ru", "*.rb", "views/*", "public/images/*"].to_a
    gem.add_dependency('sinatra', '>= 0.9.2')
    gem.add_dependency('haml', '>= 2.0.9')
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end

rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end


task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION.yml')
    config = YAML.load(File.read('VERSION.yml'))
    version = "#{config[:major]}.#{config[:minor]}.#{config[:patch]}"
  else
    version = "0.1.0"
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "talkedbun #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
  rdoc.options = ["--charset", "utf-8", "--line-numbers"]
end
