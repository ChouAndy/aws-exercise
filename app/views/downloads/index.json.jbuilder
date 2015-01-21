json.array!(@downloads) do |download|
  json.extract! download, :id, :title, :upload
  json.url download_url(download, format: :json)
end
