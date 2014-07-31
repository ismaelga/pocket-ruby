require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -I lib -r pocket.rb"
end

namespace :doc do
  begin
    require 'yard'
  rescue LoadError
    # ignore
  else
    YARD::Rake::YardocTask.new do |task|
      task.files   = ['HISTORY.mkd', 'LICENSE.mkd', 'lib/**/*.rb']
      task.options = [
        '--protected',
        '--output-dir', 'doc/yard',
        '--tag', 'format:Supported formats',
        '--tag', 'authenticated:Requires Authentication',
        '--tag', 'rate_limited:Rate Limited',
        '--markup', 'markdown',
      ]
    end
  end
end
