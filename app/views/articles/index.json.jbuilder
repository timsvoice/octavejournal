json.array!(@articles) do |article|
  json.extract! article, :id, :title, :introduction, :author
  json.url article_url(article, format: :json)
end
