json.array!(@my_diamonds) do |my_diamond|
  json.extract! my_diamond, :id, :price, :carat, :shape, :template_id
  json.url my_diamond_url(my_diamond, format: :json)
end
