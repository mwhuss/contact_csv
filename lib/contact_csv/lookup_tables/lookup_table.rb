# === LookupTable
#
#  This class is so users can define their own lookup tables if it isn't supported natively. The headers is an 
#  Array of Strings that define the column names for the CSV file. Legend is a hash that maps the column strings 
#  to a Contact class attribute. Look at the Contact class for a list of available attributes.  
#
#
class ContactCsv::LookupTables::LookupTable
  
  attr_accessor :legend, :headers

  # Initializes a LookupTable taking an Array of headers and a Hash that maps the column headers to the Contact object attributes
  def initialize(headers, legend)
    raise InvalidInputFormatError unless headers.is_a?(Array) && legend.is_a?(Hash)
    @headers = headers
    @legend = legend
  end


  # Returns the corresponding Contact attribute mapped to the specific Outlook CSV column name
  def lookup(column)
    @legend[column]
  end
  
  class InvalidInputFormatError < StandardError; end
  
end