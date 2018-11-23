class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :account_name, :company_name, :first_name, :surname_name, :address, :postcode, :telephone_number, :mobile_number, :email_address
end
