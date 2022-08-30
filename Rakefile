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
  next unless config['number']
  sh "ruby solutions/ruby/#{config['number']}.rb"
end

desc "change the number in the spec"
task :number, [:number] do |t, args|
  template = "solutions/ruby/template.rb"
  filename = "solutions/ruby/#{args["number"]}.rb"
  sh "cp #{template} #{filename}" unless File.exists?(filename)
  File.open('.euler_config.yml', 'w') do |file|
    file.write("number: #{args[:number]}/n")
  end
end
