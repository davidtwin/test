class WaterSerializer < ActiveModel::Serializer
  attributes :id, :address, :postcode, :telephone_number, :mobile_number, :email_address
  has_one :customer
end
