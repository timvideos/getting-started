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
      
      def title
        if @title.nil?
          if not @match.nil?
            match_title @match
          else
            @name
          end  
        else
          @title
        end
      end

      def match_title(m)
	if not m.data.nil? and m.data.include? 'title'
	  m.data['title']
	end
      end
      
      def url
        @match.url
      end
      
      def has_match?
        not @match.nil?
      end
      
      def match_post(posts)
        @match = posts.find { |p| p.slug.downcase == @name.downcase or match_title(p) == name }
      end
      
      def match_page(pages)
        @match = pages.find { |p| p.basename.downcase == @name.downcase or match_title(p) == name }
      end
      
      def markdown
        @match.nil? ? "\\[\\[#{title}\\]\\]" : "[#{title}](#{url})"
      end
    end
  end
  
  module Convertible
    alias old_transform transform

    def transform
      if converter.instance_of? MarkdownConverter
        pat = /\[\[(.+?)\]\]/
        @content = @content.gsub(pat) do |m|
          wl = Wikilinks::Wikilink.parse(m)
          wl.match_page(site.pages)
          wl.match_post(site.posts) unless wl.has_match?
          wl.markdown
        end
      end
      old_transform
    end
  end
end
