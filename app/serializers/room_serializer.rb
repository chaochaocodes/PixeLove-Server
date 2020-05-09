class RoomSerializer < ActiveModel::Serializer
  attributes :id, :cells

  def cells
    ActiveModel::SerializableResource.new(object.cells,  each_serializer: CellSerializer)
end
  
end
