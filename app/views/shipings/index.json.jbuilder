json.array!(@shipings) do |shiping|
  json.extract! shiping, :id, :title, :description, :dizhi, :user_id
  json.url shiping_url(shiping, format: :json)
end
