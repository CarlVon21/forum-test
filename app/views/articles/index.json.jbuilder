json.array!(@articles) do |article|
  json.extract! article, :id, :title, :permalink, :summary, :content, :author, :rating, :category
  json.url article_url(article, format: :json)
end
