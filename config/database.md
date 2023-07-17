
# 1. GET /api/tree
def get_tree
  nodes = Node.includes(:children).where(parent_id: nil).map do |node|
    build_node_structure(node)
  end
  render json: nodes
end

def build_node_structure(node)
  children = node.children.map do |child|
    build_node_structure(child)
  end
  {
    node.id => {
      label: node.label,
      children: children
    }
  }
end

# 2. POST /api/tree
def create_node
  parent = Node.find(params[:parent])
  new_node = Node.create(label: params[:label])
  Edge.create(parent_id: parent.id, child_id: new_node.id)
  render json: { success: true }
end
