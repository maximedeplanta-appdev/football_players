class Position < ApplicationRecord
  # Direct associations

  has_many   :defenders,
             :dependent => :destroy

  has_many   :goalkeepers,
             :dependent => :destroy

  has_many   :players,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
