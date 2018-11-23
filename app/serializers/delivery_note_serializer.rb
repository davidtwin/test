class DeliveryNoteSerializer < ActiveModel::Serializer
  attributes :id, :delivery_number, :item, :quantity, :purchase_order, :date_ordered, :date_due, :date_date, :delivered, :time_delivered, :notes, :driver
  has_one :water
  has_one :customer
end
