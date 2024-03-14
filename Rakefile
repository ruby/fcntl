require "bundler/gem_tasks"

name = "fcntl"

require 'rake/extensiontask'
extask = Rake::ExtensionTask.new(name) do |x|
  x.lib_dir << "/#{RUBY_VERSION}/#{x.platform}"
end

task :default => :compile
