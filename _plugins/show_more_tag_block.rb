module Jekyll
  class ShowMoreTagBlock < Liquid::Block

    def render(context)
      text = super
      "<details><summary>More...</summary>#{text}</details>"
    end

  end
end

Liquid::Template.register_tag('show_more', Jekyll::ShowMoreTagBlock)
