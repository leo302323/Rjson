require "bundler/gem_tasks"
task :default => :spec

rule '.rb' => '.y' do |t|
  sh "racc -l -o #{t.name} #{t.source}"
end

task :compile => 'lib/Rjson/parser.rb'