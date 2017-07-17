class CardSerializer < ActiveModel::Serializer
  attributes :id, :shape, :color, :number, :shading, :img
end
