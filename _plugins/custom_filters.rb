module StringFilter
  def start_with?(input, search)
    input.start_with?(search)
  end
end

Liquid::Template.register_filter(StringFilter)
