require "bundler/gem_tasks"

task :default => :spec

desc "#Ejecutar build "
task :build do
  sh "gem build prct06.gemspec"
end

desc "#Instalar la gema en el sistema"
task :install do
    sh "gem install ./prct06-0.1.0.gem"
end

desc "#Crear el paquete y pushear a RubyGems "
task :release do
  sh "gem build prct06.gemspec"
  sh "gem push prct06-0.1.0.gem"
end

desc "#Ejecutar codigo de ejemplo con RSpec "
task :spec do
  sh "rspec -I. spec/bibliografia_spec.rb"
  sh "rspec -I. spec/lista_spec.rb"	
  sh "rspec -I. spec/herencia_spec.rb"	
end
