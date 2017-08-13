require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

desc 'Generate gRPC code'
task(:grpc) do |t|
  sh 'grpc_tools_ruby_protoc -I proto --ruby_out=lib/mojix/generated --grpc_out=lib/mojix/generated proto/tokenizer.proto'
end

task :default => :test
