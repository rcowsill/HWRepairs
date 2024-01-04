module Jekyll
  class ShowMoreTagBlock < Liquid::Block

    def render(context)
      site = context.registers[:site]
      converter = site.find_converter_instance(::Jekyll::Converters::Markdown)
      text = converter.convert(super)
      "<details><summary>More...</summary>#{text}</details>"
    end

  end
end

Liquid::Template.register_tag('show_more', Jekyll::ShowMoreTagBlock)
