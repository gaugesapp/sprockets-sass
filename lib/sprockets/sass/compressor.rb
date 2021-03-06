require 'sass'

module Sprockets
  module Sass
    class Compressor
      def compress(css)
        if css.count("\n") > 2
          ::Sass::Engine.new(css,
                           :syntax => :scss,
                           :cache => false,
                           :read_cache => false,
                           :style => :compressed).render
        else
          css
        end
      end
    end
  end
end