class TrackerSerializer < ActiveModel::Serializer
  attributes :id, :date, :language, :length, :notes
end
