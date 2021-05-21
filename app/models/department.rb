class Department < ApplicationRecord
    has_many:students , dependent: :destroy
    has_many:courses , dependent: :destroy
end
