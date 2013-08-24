json.array!(@whatanideas) do |whatanidea|
  json.extract! whatanidea, :name, :address, :description, :picture
  json.url whatanidea_url(whatanidea, format: :json)
end
