NetworkingLibBackend::Application.routes.draw do
  
  # Statuses client always must be prepared to handle
  scope path: "/generic", controller: "generic", defaults: { format: "json" } do
    get "unauthorized"
    get "forbidden"
    get "not-found",      action: "not_found",      as: "not_found"
    get "generic-error" , action: "generic_error",  as: "generic_error"
    get "internal-error", action: "internal_error", as: "internal_error"
  end
  
  # Statuses specific for finding data
  scope path: "/data/find", controller: "find_data", defaults: { format: "json" } do
    get "single-object",    action: "single_object",    as: "find_single_obect"
    get "multiple-objects", action: "multiple_objects", as: "find_multiple_objects"
  end
  
  # Statuses specific for creating data
  scope path: "/data/create", controller: "create_data", defaults: { format: "json" } do
    post "single-object",        action: "single_object",        as: "create_single_object"
    post "bad-request",          action: "bad_request",          as: "create_bad_request"
    post "unprocessable-entity", action: "unprocessable_entity", as: "create_unprocessable_entity"
  end
  
  # Statuses specific for updating data
  scope path: "/data/update", controller: "update_data", defaults: { format: "json" } do
    put "single-object",        action: "single_object",        as: "update_single_object"
    put "bad-request",          action: "bad_request",          as: "update_bad_request"
    put "unprocessable-entity", action: "unprocessable_entity", as: "update_unprocessable_entity"
  end
  
  # Statuses specific for deleting data
  scope path: "/data/delete", controller: "delete_data", defaults: { format: "json" } do
    delete "single-object", action: "single_object", as: "delete_single_object"
  end
  
  root to: "api#index"
end
