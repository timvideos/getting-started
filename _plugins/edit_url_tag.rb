module Jekyll
  class EditUrlTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @filename = text
    end

    def render(context)
      site = context.registers[:site]

      edit_interface_link(site.config['edit_interface_link'], @filename)
    end

    private

    def edit_interface_link(link, filename)
      link.gsub('((filename))', "#{filename}")
    end
  end
end

Liquid::Template.register_tag('edit_url', Jekyll::EditUrlTag)
