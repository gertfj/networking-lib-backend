class DeleteDataController < ApiController
  
  def single_object
    ShpApi::JsonResponder.new(self).no_content
  end
  
end
