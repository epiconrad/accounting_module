class Cashadvance < ActiveRecord::Base
	validates_presence_of :date_from, :date_to, :client, :branch, :bus_unit
end
