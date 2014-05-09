class GenericController < ApiController
  
  def unauthorized
    ShpApi::JsonResponder.new(self).unauthorized
  end
  
  def forbidden
    ShpApi::JsonResponder.new(self).forbidden
  end
  
  def not_found
    raise ActiveRecord::RecordNotFound
  end
  
  def generic_error
    ShpApi::JsonResponder.new(self).error
  end
  
  def internal_error
    raise "Internal Error"
  end
  
end
