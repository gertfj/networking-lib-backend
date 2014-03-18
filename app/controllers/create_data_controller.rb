class CreateDataController < ApiController
  
  def single_object
    render json: { status: "generic" }
  end
  
  def bad_request
    render json: { status: "bad_request" }
  end
  
  def unprocessable_entity
    render json: { status: "unprocessable_entity" }
  end
  
end
