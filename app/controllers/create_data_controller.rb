class CreateDataController < ApiController
  
  def single_object
    @view_model = OpenStruct.new(
      data_view: "api/show",
      data_object: OpenStruct.new(
        _id: 1,
        body: "This is the body.",
        created_at: "2013-12-10T15:13:22Z"
      )
    )
    
    render partial: "api/success_response", locals: { view_model: @view_model }
  end
  
  def bad_request
    respond_with_param_missing
  end
  
  def unprocessable_entity
    respond_with_model_error
  end
  
end
