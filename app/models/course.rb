class Course < ApplicationRecord
    has_many:student
    belongs_to:department
end
