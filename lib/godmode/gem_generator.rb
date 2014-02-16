module Godmode
  class GemGenerator < Thor
    include ::Thor::Actions
    include ::Godmode::Actions
    include ::Rails::Generators::Actions

    source_root File.expand_path('../templates', __FILE__)

    desc "fog", "The Ruby cloud services library"
    def fog
      install_gem
      summarize("fog has been installed")
    end

    desc "figaro", "Simple Rails app configuration"
    def figaro
      install_gem
      bundle
      template("gem/figaro/application.yml", "config/application.yml")
      summarize("figaro has been installed")
    end

    desc "carrierwave", "Classier solution for file uploads for Rails, Sinatra and other Ruby web frameworks"
    def carrierwave
      require_figaro
      install_gem
      add_environment_variables(
        [:aws_access_key_id, "What is your AWS access key ID?"],
        [:aws_secret_access_key, "What is your AWS secret access key?"],
        [:bucket_name, "What is your bucket name?"]
      )
      template("gem/carrierwave/initializer.rb", "config/initializers/carrierwave.rb")
      summarize("carrierwave has been installed")
    end

  private

    def require_figaro
      state_dependency("figaro")
      if file_exists?("config/application.yml")
        say("figaro exists")
      else
        gdd "gem figaro"
      end
    end

  end
end