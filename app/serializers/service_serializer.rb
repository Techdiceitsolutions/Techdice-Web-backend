class ServiceSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :duration, :vacancy, :image_url
end
