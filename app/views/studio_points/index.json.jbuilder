json.array!(@studio_points) do |studio_point|
  json.extract! studio_point, :id, :lat, :lon, :studio_id, :street, :city, :zip, :state
  json.url studio_point_url(studio_point, format: :json)
end
