module Jekyll
  class PageUrlTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      site = context.registers[:site]

      site.pages.each do |p|
        if p.basename.downcase == @text.downcase.strip
          return p.url
        end
      end

      '/'
    end
  end
end

Liquid::Template.register_tag('page_url', Jekyll::PageUrlTag)
