module Kernel
private
    def this_method_name
      p caller[0]
      p caller[1]
      caller[0][/`([^']*)'/, 1]
    end
end