class Project < ActiveRecord::Base
  has_many :interviews  
  validates :pname, presence: true
  validates :objective, presence: true                  
end
