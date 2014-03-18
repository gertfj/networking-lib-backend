json.status "success"

if view_model.try(:meta_view)
  json.meta do
    json.partial! view_model.meta_view
  end
end

if view_model.try(:data_view)
  json.data do
    json.partial! view_model.data_view
  end
end
