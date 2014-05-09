class UpdateDataController < ApiController
  
  def single_object
    ShpApi::JsonResponder.new(self).no_content
  end
  
  def bad_request
    ShpApi::JsonResponder.new(self).param_missing
  end
  
  def unprocessable_entity
    ShpApi::JsonResponder.new(self).model_error
  end
  
end
