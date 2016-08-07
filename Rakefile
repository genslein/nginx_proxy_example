require 'rake'
require 'rake/testtask'
require 'rspec/core/rake_task'
require 'kitchen/rake_tasks'

Kitchen::RakeTasks.new
desc 'Alias for kitchen:all'
task integration: 'kitchen:all'

desc 'Alias for kitchen converge'
task :converge do
  exec 'kitchen converge'
end

desc 'Alias for kitchen destroy'
task :destroy do
  exec 'kitchen destroy'
end

desc 'Alias for kitchen verify'
task :verify do
  exec 'kitchen verify'
end