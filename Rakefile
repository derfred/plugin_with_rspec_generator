begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "plugin_with_rspec_generator"
    s.summary = %Q{Rails generator that creates a plugin with full rspec testing support}
    s.email = "ich@derfred.com"
    s.homepage = "http://github.com/derfred/plugin-with-rspec"
    s.description = "Rails generator that creates a plugin with full rspec testing support"
    s.authors = ["Frederik Fix"]
    s.files.include %w(plugin_with_rspec_generator.rb USAGE templates/**/*)
    s.add_dependency 'rspec'
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
