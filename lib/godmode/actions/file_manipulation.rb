module Godmode
  module Actions

    def add_environment_variable variable, str
      result = question(str)
      append_to_file "config/application.yml" do
        "#{variable.upcase}: '#{result}'"
      end
    end

    def add_environment_variables *args
      str = ""
      args.each do |arg|
        result = question(arg[1])
        str += "#{arg[0].upcase}: '#{result}'\n"
      end
      append_to_file "config/application.yml", str
    end
    
  end
end