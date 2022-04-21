# frozen_string_literal: true

%w[
  zeitwerk
].each(&method(:require))

# This is the main module for the hello library.
module Hello
  class << self
    def world
      World.world
    end
  end
end

Zeitwerk::Loader
  .for_gem
  .tap(&:setup)
  .tap(&:eager_load)
