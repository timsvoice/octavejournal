json.array!(@issues) do |issue|
  json.extract! issue, :id, :title, :feature_image, :introduction, :summary
  json.url issue_url(issue, format: :json)
end
