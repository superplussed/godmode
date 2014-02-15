require 'pathname'

module Godmode
  module Actions

    def file_exists? path
      Pathname.new(path).exist?
    end
  end
end
