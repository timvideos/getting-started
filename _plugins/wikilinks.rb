module Jekyll
  module Wikilinks
    class Wikilink
      def self.parse(text)
        inner = text[2..-3]
        name, title = inner.split('|', 2)
        self.new(name, title)
      end
      
      attr_accessor :name, :title
      attr_reader :match
      
      def initialize(name, title)
        @name = name.strip
        @title = title
      end
      
      def get_title
        if @title.nil?
          if not match.nil?
            match_title match
          else
            name
          end  
        else
          @title
        end
      end

      def match_title(m)
        if not m['data'].nil? and m['data'].key? 'title'
          m['data']['title']
        end
      end
      
      def get_url
        match['url']
      end
      
      def has_match?
        not match.nil?
      end
      
      def match_post(posts)
        @match = posts.find { |p| p['slug'].downcase == name.downcase or match_title(p) == name }
      end
      
      def match_page(pages)
        @match = pages.find { |p| p['basename'].downcase == name.downcase or match_title(p) == name }
      end
      
      def markdown
        match.nil? ? "\\[\\[#{get_title}\\]\\]" : "[#{get_title}](#{get_url})"
      end
    end
  end
  
  module Converters
    class Markdown < Converter
      alias origin_convert convert

      def convert(content)
        @@pages_path ||= File.join(@config['source'], 'pages.json')
        @@pages_info ||= File.open(@@pages_path, 'r') { |f| JSON.load(f) }

        pat = /\[\[(.+?)\]\]/
        new_content = content.gsub(pat) do |m|
          wl = Wikilinks::Wikilink.parse(m)
          wl.match_page(@@pages_info['pages'])
          wl.match_post(@@pages_info['posts']) unless wl.has_match?
          wl.markdown
        end

        origin_convert(new_content)
      end
    end
  end
end
