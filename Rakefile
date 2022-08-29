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

desc "change the number in the spec"
task :number, [:number] do |t, args|
  unless File.exists?("#{args["number"]}/solution.rb")
    sh "mkdir #{args[:number]}; touch #{args["number"]}/solution.rb"
  end
  File.open('.euler_config.yml', 'w') do |file|
    file.write("directory: #{args[:number]}\nruby: solution.rb")
  end
end
