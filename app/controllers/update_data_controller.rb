class UpdateDataController < ApiController
  
  def single_object
    respond_with_no_content
  end
  
  def bad_request
    respond_with_param_missing
  end
  
  def unprocessable_entity
    respond_with_model_error
  end
  
end
