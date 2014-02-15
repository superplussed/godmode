module Godmode
  module Actions

    def file_exists? path
      Pathname.new(path).exists?
    end
  end
end
