class Author < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :user_id, :project_id, :mod ,:approved
  belongs_to :user
  belongs_to :project
  has_many :author_cites
  has_many :citations, :through => :author_cites, :dependent => :destroy

  validates :first_name, :presence => true
  validates :last_name, :presence => true 
  
  def listing_name
  	"#{self.last_name} #{self.first_name}"
  end
  
end

