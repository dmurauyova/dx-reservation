require 'csv'

class Guest
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :status, type: Mongoid::Boolean

  validates_presence_of :first_name, :last_name, :email
  validates :status, inclusion: [true, false]

  def self.to_csv(options = {})
  	desired_columns = ["First Name", "Last Name", "Email", "RSVP"]
    CSV.generate(options) do |csv|
        csv << desired_columns
        all.each do |guest|
          case guest.status
	          when true
	          	guest_status = "Yes"
	          when false
	            guest_status = "No"
	          else 
	            guest_status = ""
          end 
          csv << [guest.first_name, guest.last_name, guest.email, guest_status]
        end
      end
    end
end
