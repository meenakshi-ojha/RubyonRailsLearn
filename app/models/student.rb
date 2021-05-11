class Student < ApplicationRecord
    validates:name, presence:true
    validates:contact, presence:true ,length: {is:10}
    validates:email, presence:true
    validates:department, presence:true
    validates:course, presence:true

    belongs_to:department
    belongs_to:course
end
