class TreesController < ApplicationController
	  protect_from_forgery with: :null_session

  def index
    render json: your_tree_data
  end

   def create
    # Extract the payload from the request body
    
    payload = JSON.parse(request.body.read)

    # Generate a new unique ID for the new node
    new_id = generate_unique_id()

    # Process the payload, add the new node to the tree, and update the tree structure accordingly

    render json: { success: true }
  end

  def your_tree_data

  [
  {
    "1": {
      "label": "root",
      "children": [
        {
          "2": {
            "label": "ant",
            "children": []
          }
        },
        {
          "3": {
            "label": "bear",
            "children": [
              {
                "4": {
                  "label": "cat",
                  "children": []
                }
              },
              {
                "5": {
                  "label": "dog",
                  "children": [
                    {
                      "6": {
                        "label": "elephant",
                        "children": []
                      }
                    }
                  ]
                }
              }
            ]
          }
        },
        {
          "7": {
            "label": "frog",
            "children": []
          }
        }
      ]
    }
  }
]
 


  end
end
