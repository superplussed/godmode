module Kernel
private
    def this_method_name
      caller[0][/`([^']*)'/, 1]
    end
end