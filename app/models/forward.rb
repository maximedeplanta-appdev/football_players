class Forward < ApplicationRecord
  # Direct associations

  belongs_to :forward,
             :class_name => "Position",
             :foreign_key => "position_id"

  # Indirect associations

  # Validations

end
