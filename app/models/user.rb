class User < ApplicationRecord
  VALID_GENDERS = ['Male', 'Female'].freeze

  validates :gender, inclusion: { in: VALID_GENDERS, message: "must be either 'Male' or 'Female'" }
end
