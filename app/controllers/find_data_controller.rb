class FindDataController < ApiController
  
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
  
  def multiple_objects
    @view_model = OpenStruct.new(
      data_view: "api/index",
      data_objects: [
        OpenStruct.new(
          _id: 1,
          body: "This is the body.",
          created_at: "2013-12-10T15:13:22Z"
        ),
        OpenStruct.new(
          _id: 2,
          body: "This is the second body.",
          created_at: "2014-12-10T15:13:22Z"
        )
      ]
    )
    
    render partial: "api/success_response", locals: { view_model: @view_model }
  end
  
end
