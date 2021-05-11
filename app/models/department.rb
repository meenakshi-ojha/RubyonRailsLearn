class Department < ApplicationRecord
    has_many:student
    has_many:course
end
