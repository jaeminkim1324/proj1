class Pokemon < ActiveRecord::Base
	validates :name, presence: true
	validates_uniqueness_of :name
	belongs_to :trainer, :foreign_key => "trainer_id", :class_name => "Trainer"
end
