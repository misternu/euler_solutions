require 'yaml'

CONFIG_PATH = '.euler_config.yml'

if File.exists?(CONFIG_PATH)
  config = YAML.load_file(File.join(File.path(__dir__), CONFIG_PATH))
else
  config = {}
end

# Run Solution
desc "run solution defined in config"
task :default do
  next unless config['directory'] && config['ruby']
  sh "ruby #{config['directory']}/#{config['ruby']}"
end

desc "run rspec defined in config"
task :spec do
  next unless config['directory']
  unless Dir.exist?("#{config['directory']}/spec")
    puts "No spec folder for #{config['directory']}"
    next
  end
  sh "rspec #{config['directory']}/spec"
end
