module Godmode
  class GemGenerator < Thor
    include ::Thor::Actions
    include ::Godmode::Actions
    include ::Rails::Generators::Actions

    source_root File.expand_path('../templates', __FILE__)

    desc "rails_admin", "A Rails engine that provides an easy-to-use interface for managing your data"
    def rails_admin
      gem "rails_admin"
      gem "rails_admin_toggleable"
      gem "rails_admin_link_to_edit"
      gem "cancan"
      install_initializer "rails_admin"
    end

    desc "fog", "The Ruby cloud services library"
    def fog
      gem "fog"
      summarize "fog"
    end

    desc "figaro", "Simple Rails app configuration"
    def figaro
      gem "figaro"
      bundle
      template "gem/figaro/application.yml", "config/application.yml"
      summarize "figaro"
    end

    desc "carrierwave", "Classier solution for file uploads for Rails, Sinatra and other Ruby web frameworks"
    def carrierwave
      require_figaro
      gem "carrierwave"
      add_environment_variables(
        [:aws_access_key_id, "What is your AWS access key ID?"],
        [:aws_secret_access_key, "What is your AWS secret access key?"],
        [:bucket_name, "What is your bucket name?"]
      )
      install_initializer "carrierwave"
      summarize "carrierwave"
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