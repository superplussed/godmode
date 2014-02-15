require File.expand_path(File.join('..', 'godmode', 'gem_generator'), File.dirname(__FILE__))

module Godmode
  class Cli < Thor
    register(GemGenerator, 'gem', 'gem <name>', 'Add a gem')
  end
end