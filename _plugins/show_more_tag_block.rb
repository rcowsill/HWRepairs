module Jekyll
  class ShowMoreTagBlock < Liquid::Block
  include Jekyll::Filters

    def render(context)
      text = super
      "<details><summary>More...</summary>#{markdownify(text)}</details>"
    end

  end
end

Liquid::Template.register_tag('show_more', Jekyll::ShowMoreTagBlock)
