class Thor
  module Shell
    class Basic 

      def ask(statement, *args)
        statement = "\t#{statement}"
        super
      end

      def say(message = '', color = nil, force_new_line = (message.to_s !~ /( |\t)\Z/))
        message = "\t#{message}"
        super
      end

    end
  end
end