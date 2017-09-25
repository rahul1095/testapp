class Answer < ApplicationRecord
 belongs_to :question, optional: true
 belongs_to :user, optional: true
 # validates :question, presence: true, allow_nil: true  
end
