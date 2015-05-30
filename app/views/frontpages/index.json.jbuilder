json.array!(@frontpages) do |frontpage|
  json.extract! frontpage, :id, :title, :desc, :upvotes
  json.url frontpage_url(frontpage, format: :json)
end
