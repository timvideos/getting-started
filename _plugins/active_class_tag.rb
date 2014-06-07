module Jekyll
  class ActiveClassTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      page = context.registers[:page]

      if !page['tags'].nil? && page['tags'].include?(@text.downcase.strip)
        'active'
      else
        ''
      end
    end
  end
end

Liquid::Template.register_tag('active_class', Jekyll::ActiveClassTag)
