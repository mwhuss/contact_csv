# === ContctManager
#
#  The ContactManager handles finding the appropriate lookup table and creating the array of Contact objects
#
#
class ContactCsv::ContactManager
  include ContactCsv
  include ContactCsv::LookupTables
  
  attr_accessor :contacts, :lookup_tables
  
  # Initializes a ContactManager, accepts an Array of LookupTables
  def initialize(lookup_tables=[])
    @lookup_tables = lookup_tables + [OutlookCsv.lookup_table]
    @contacts = []
  end
  
  # Reads a CSV file and creates a contact list
  def read(file_path)
    csv = FasterCSV.read(file_path, :headers => true)
    create_contacts(csv)
  end

  # Reads a CSV string and creates a contact list
  def parse(csv_string)
    csv = FasterCSV.parse(csv_string, :headers => true)
    create_contacts(csv)
  end
  
  
  private
  
  # Creates a contact list from a CSV object
  def create_contacts(csv)
    @contacts = []
    lookup_table = find_lookup_table(csv, lookup_tables)
    raise LookupTableNotFoundError if lookup_table.nil?
    csv.each do |row|
      c = Contact.new
      row.each do |r|
        col = lookup_table.lookup(r[0])
        c.send("#{col.to_s}=", r[1]) if !col.nil? && c.respond_to?(col.to_sym)
        c.add_extra({ r[0] => r[1] })
      end
      @contacts << c
    end
  end
  
  
  # Determines the lookup table that matches the file
  def find_lookup_table(csv, lookup_tables)
    tables = lookup_tables + [OutlookCsv.lookup_table]
    tables.each do |table|
      return table if table.headers == csv.headers
    end
    return nil
  end
  
  class LookupTableNotFoundError < StandardError; end

end