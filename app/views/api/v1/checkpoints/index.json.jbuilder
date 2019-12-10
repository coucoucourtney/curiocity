json.checkpoint do
  json.array! @checkpoints do |checkpoint|
    json.extract! checkpoint, :id, :route_id, :building_id
  end
end
