require "bundler/gem_tasks"
require "rubygems/package_task"
require "rake/extensiontask"
require "rake/testtask"
require "rspec/core/rake_task"
require "rake/clean"

CLEAN.include(
  "ext/ruby_csv_parser/*.o",
  "ext/ruby_csv_parser/*.bundle"
)

CLOBBER.include(
  "ext/ruby_csv_parser/Makefile",
  "pkg"
)

BUILD_DIR = 'build'

def gem_spec
  @gem_spec ||= Gem::Specification.load('ruby_csv_parser.gemspec')
end

Gem::PackageTask.new(gem_spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end

Rake::ExtensionTask.new("ruby_csv_parser", gem_spec) do |ext|
  ext.ext_dir = './ext/ruby_csv_parser'
  ext.tmp_dir = BUILD_DIR
  ext.config_script = "extconf.rb"
end

RSpec::Core::RakeTask.new(:spec)
task :build   => [:clean, :compile]
task :default => [:build, :spec]