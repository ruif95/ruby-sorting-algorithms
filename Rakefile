# Rakefile

require 'bundler/setup'
require 'rspec/core/rake_task'

# Define the RSpec task
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

task default: :spec
