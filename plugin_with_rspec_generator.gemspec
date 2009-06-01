# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{plugin_with_rspec_generator}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Frederik Fix"]
  s.date = %q{2009-06-01}
  s.description = %q{Rails generator that creates a plugin with full rspec testing support}
  s.email = %q{ich@derfred.com}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "README",
     "USAGE",
     "VERSION",
     "plugin_with_rspec_generator.rb",
     "templates/README.erb",
     "templates/Rakefile",
     "templates/init.rb",
     "templates/install.rb",
     "templates/lib/plugin.rb",
     "templates/spec/app/controllers/application.rb",
     "templates/spec/config/boot.rb",
     "templates/spec/config/database.yml.erb",
     "templates/spec/config/environment.rb.erb",
     "templates/spec/config/environments/test.rb",
     "templates/spec/config/routes.rb",
     "templates/spec/config/schema.rb",
     "templates/spec/spec/extensions.rb",
     "templates/spec/spec/mocks.rb",
     "templates/spec/spec/spec_helper.rb.erb",
     "templates/spec/spec/valid_params.rb",
     "templates/uninstall.rb"
  ]
  s.homepage = %q{http://github.com/derfred/plugin-with-rspec}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Rails generator that creates a plugin with full rspec testing support}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
