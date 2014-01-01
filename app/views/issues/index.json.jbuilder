json.array!(@issues) do |issue|
  json.extract! issue, :id, :title, :description, :is_reproducible, :category
  json.url issue_url(issue, format: :json)
end
