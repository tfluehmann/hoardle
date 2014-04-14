json.array!(@links) do |link|
  json.extract! link, :id, :link, :category_id
  json.url link_url(link, format: :json)
end
