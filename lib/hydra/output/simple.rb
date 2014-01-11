module Hydra
  module Output
    class Simple
      include Hydra::Erbable

      def initialize(files)
        @files = files
        @tpl_dir = File.join(File.dirname(__FILE__), 'templates')
        @html_t = self.load_erb(@tpl_dir, 'simple-html.erb')
      end

      def render

        @header = YAML.load_file('header.yml')
        @h = Hydra::Header::Header.new(@header)

        puts @html_t

        @files[:html].puts @html_t.result binding
      end
    end
  end
end
