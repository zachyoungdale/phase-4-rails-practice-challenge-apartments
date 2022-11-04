class Tenant < ApplicationRecord
    has_many :leases
    has_many :apartments, through: :leases
    validates_presence_of :name, :age
    validates :age, numericality: {minimum: 18}
end
