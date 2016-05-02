json.array!(@terms) do |term|
  json.extract! term, :id, :name
  json.url term_url(term, format: :json)
end
