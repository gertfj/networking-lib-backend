class ApiController < ApplicationController
  respond_to :json
  protect_from_forgery with: :null_session
  
  # Render http 200 OK
  def respond_with_ok
    render json: ""
    return false
  end
  
  # Render http 204 No Content (update/destroy)
  def respond_with_no_content
    render nothing: true, status: 204
    return false
  end
  
  # Render http 401 Unauthorized
  def respond_with_unauthorized(message: "Unauthorized", error_code: "unauthorized")
    render partial: "api/error", locals: { message: message, error_code: error_code }, status: 401
    return false
  end
  
  # Render error message with custom http status
  def respond_with_error(message: "Not specified", error_code: "not_specified", status: 400)
    render partial: "api/error", locals: { message: message, error_code: error_code }, status: status
    return false
  end
  
  # Render error message including model validation errors
  def respond_with_model_error(message: "Invalid", error_code: "invalid", model_errors: nil, status: 422)
    render partial: "api/error", locals: { message: message, error_code: error_code, model_errors: model_errors }, status: status
    return false
  end
  
  # Render http 403 Forbidden (rescue_from)
  def respond_with_forbidden(exception = nil, error_code = "forbidden")
    msg = exception ? exception.message : "Forbidden"
    render partial: "api/error", locals: { message: msg, error_code: error_code }, status: 403
    return false
  end
  
  # Render http 400 for missing parameters (rescue_from)
  def respond_with_param_missing(exception = nil)
    msg = exception ? exception.message : "Parameter missing"
    render partial: "api/error", locals: { message: msg, error_code: "param_missing" }, status: 400
    return false
  end
  
  # Render http 404 Not found (rescue_from)
  def respond_with_not_found(exception = nil, error_code = "not_found")
    msg = exception ? exception.message : "Not Found"
    render partial: "api/error", locals: { message: msg, error_code: error_code }, status: 404
    return false
  end
  
  # Render generic 500 error message (rescue_from)
  def respond_with_exception(exception = nil)
    msg = exception ? exception.message : "Internal Server Error"
    render partial: "api/error", locals: { message: msg, error_code: "exception" }, status: 500
    return false
  end
  
end
