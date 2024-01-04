module Jekyll
  class ShowMoreTagBlock < Liquid::Block

    def initialize(tag_name, markup, tokens)
      super
      @summary = markup.strip
      @summary = "More..." if @summary.nil? || @summary.empty?
    end

    def render(context)
      site = context.registers[:site]
      converter = site.find_converter_instance(::Jekyll::Converters::Markdown)
      text = converter.convert(super)
      "<details><summary>#{@summary}</summary>#{text}</details>"
    end

  end
end

Liquid::Template.register_tag('show_more', Jekyll::ShowMoreTagBlock)
