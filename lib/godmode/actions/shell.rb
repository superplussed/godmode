module Godmode
  module Actions
    def summarize str
      say("#{padding}#{Godmode::SUMMARIZE_ICON} #{str}\n", :yellow)
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

    def install_gem
      gem this_method_name
    end

  end
end