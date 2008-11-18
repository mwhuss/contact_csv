# === Contact
#
#   Object that represents a Contact from an address book. This class is meant to support the most common attributes.
#
class ContactCsv::Contact
  
  attr_accessor :first_name, :middle_name, :last_name, :email, :title, :extras
  
  # Initializes a Contact objest and will take a hash of the attributes with values
  #
  # Contact.new(:first_name => "Willy", :last_name => "Wonka") 
  def initialize(attributes={})
    @extras = {}
    @first_name = attributes[:first_name]
    @middle_name = attributes[:middle_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
    @title = attributes[:title]
  end
  
  # Returns a hash of all attributes that could not be mapped to a Contact class attribute
  def extras
    @extras
  end
  
  # Adds an unmappable attribute
  def add_extra(extra)
    @extras.merge!(extra)
  end
  
  # First name and last name
  def full_name
    [@first_name, @last_name].join(' ')
  end
  
end