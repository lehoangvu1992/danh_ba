class Contact < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 20 }
  validates :number, presence: true, length: { maximum: 11 }
  validates :address, presence: true, length: {maximum: 20}
  validates :note, presence: true, length: {maximum: 50}
	belongs_to :user

	paginates_per 5
	
	has_attached_file :image , styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	
	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			csv << column_names
			csv.each do |contact|
				csv << contact.attributes.valuse_at(*column_names)
			end
		end
	end  
end
