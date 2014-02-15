module Godmode
  class GemGenerator < Thor
    include ::Thor::Actions
    include ::Godmode::Actions
    include ::Rails::Generators::Actions

    source_root File.expand_path('templates', __FILE__)

    desc "fog", "The Ruby cloud services library"
    def fog
      require_figaro
      gem "fog"
      add_environment_variables(
        [:aws_access_key_id, "What is your AWS access key ID?"],
        [:aws_secret_access_key, "What is your AWS secret access key?"],
        [:bucket_name, "What is your bucket name?"]
      )
      summarize("fog has been installed")
    end

    desc "figaro", "Simple Rails app configuration"
    def figaro
      gem "figaro"
      run "bundle"
      generate "figaro:install"
      summarize("figaro has been installed")
    end

  private

    def require_figaro
      unless file_exists?("config/application.yml")
        gdd "gem figaro"
      end
    end

  end
end