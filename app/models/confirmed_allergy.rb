class ConfirmedAllergy < ApplicationRecord
  belongs_to :user
  belongs_to :allergy
end
