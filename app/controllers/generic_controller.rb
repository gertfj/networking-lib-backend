class GenericController < ApiController
  
  def unauthorized
    respond_with_unauthorized
  end
  
  def forbidden
    respond_with_forbidden
  end
  
  def not_found
    respond_with_not_found
  end
  
  def generic_error
    respond_with_error
  end
  
  def internal_error
    respond_with_exception
  end
  
end
