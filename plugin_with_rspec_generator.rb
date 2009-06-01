class PluginWithRspecGenerator < Rails::Generator::NamedBase

  def manifest
    record do |m|
      # top level files
      m.directory "vendor/plugins/#{file_name}"
      m.file     "init.rb",       "vendor/plugins/#{file_name}/init.rb"
      m.file     "install.rb",    "vendor/plugins/#{file_name}/install.rb"
      m.file     "uninstall.rb",  "vendor/plugins/#{file_name}/uninstall.rb"
      m.file     "Rakefile",      "vendor/plugins/#{file_name}/Rakefile"
      m.template "README.erb",    "vendor/plugins/#{file_name}/README"

      # lib directory
      m.directory "vendor/plugins/#{file_name}/lib"
      m.file      "lib/plugin.rb", "vendor/plugins/#{file_name}/lib/#{file_name}.rb"

      # specs directory, this will contain a mini Rails app
      m.directory "vendor/plugins/#{file_name}/spec/app"
      m.directory "vendor/plugins/#{file_name}/spec/app/controllers"
      m.directory "vendor/plugins/#{file_name}/spec/config"
      m.directory "vendor/plugins/#{file_name}/spec/config/environments"
      m.directory "vendor/plugins/#{file_name}/spec/spec"

      m.file      "spec/app/controllers/application.rb", "vendor/plugins/#{file_name}/spec/app/controllers/application.rb"
      m.file      "spec/config/boot.rb",                 "vendor/plugins/#{file_name}/spec/config/boot.rb"
      m.template  "spec/config/database.yml.erb",        "vendor/plugins/#{file_name}/spec/config/database.yml"
      m.template  "spec/config/environment.rb.erb",      "vendor/plugins/#{file_name}/spec/config/environment.rb"
      m.file      "spec/config/environments/test.rb",    "vendor/plugins/#{file_name}/spec/config/environments/test.rb"
      m.file      "spec/config/routes.rb",               "vendor/plugins/#{file_name}/spec/config/routes.rb"
      m.file      "spec/config/schema.rb",               "vendor/plugins/#{file_name}/spec/config/schema.rb"

      m.file      "spec/spec/extensions.rb",             "vendor/plugins/#{file_name}/spec/spec/extensions.rb"
      m.file      "spec/spec/mocks.rb",                  "vendor/plugins/#{file_name}/spec/spec/mocks.rb"
      m.template  "spec/spec/spec_helper.rb.erb",        "vendor/plugins/#{file_name}/spec/spec/spec_helper.rb"
      m.file      "spec/spec/valid_params.rb",           "vendor/plugins/#{file_name}/spec/spec/valid_params.rb"
    end
  end

end
