module ApplicationHelper
  def markdown(text)
    renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(hard_wrap: true, filter_html:true), underline: true, quote: true, highlight: true, strikethrough: true, autolink: true)
    renderer.render(text).html_safe
  end 
end


