json.array! @view_model.data_objects do |data_object|
  json.(data_object, :_id, :body, :created_at)
end


