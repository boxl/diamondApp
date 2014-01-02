json.array!(@templates) do |template|
  json.extract! template, :id, :name, :description, :min_color, :min_cut, :min_clarity, :min_polish, :min_symmetry, :min_flour
  json.url template_url(template, format: :json)
end
