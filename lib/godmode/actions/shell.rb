module Godmode
  module Actions
    def summarize str
      say("#{spacing}#{Godmode::SUMMARIZE_ICON} #{str}\n", :yellow)
    end

    def question str
      padding = Godmode::PADDING
      ask("#{spacing}#{Godmode::ASK_ICON} #{str}")
    end

    def spacing
      ' ' * Godmode::PADDING
    end

  end
end