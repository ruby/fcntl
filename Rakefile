require "bundler/gem_tasks"

name = "fcntl"

require 'rake/extensiontask'
extask = Rake::ExtensionTask.new(name) do |x|
  x.lib_dir << "/#{RUBY_VERSION}/#{x.platform}"
end

require "rdoc/task"
RDoc::Task.new do |rdoc|
  File.read(File.join(__dir__, ".document")).gsub(/#.*/, "").split.each do |pattern|
    rdoc.rdoc_files.concat(Dir.glob(pattern, base: __dir__))
  end
end

task :default => :compile
