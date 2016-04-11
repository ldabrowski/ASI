json.array!(@rakieties) do |rakiety|
  json.extract! rakiety, :id, :marka, :model
  json.url rakiety_url(rakiety, format: :json)
end
