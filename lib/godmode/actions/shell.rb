module Godmode
  module Actions
    def summarize str
      say("#{padding}#{Godmode::SUMMARIZE_ICON} #{str} has been installed\n", :yellow)
    end

    def question str
      padding = Godmode::PADDING
      ask("#{padding}#{Godmode::ASK_ICON} #{str}")
    end

    def gdd str
      run "gdd #{str}"
    end

    def padding
      ' ' * Godmode::PADDING
    end

    def state_dependency str
      say_status("dependency", str)
    end

    def bundle
      run "bundle", verbose: false
    end

    def install_initializer gem_name
      template("gem/#{gem_name}/initializer.rb", "config/initializer/#{gem_name}.rb")
    end

  end
end