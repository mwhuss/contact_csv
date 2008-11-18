# === ContactCsv
#
# ==== Supported CSV
#   * Outlook 2003 CSV (Windows)
# 
# ==== Reading in CSV
#
#   To import contacts you use a ContactManager...
#
#
#   contact_manager = ContactCsv::ContactManager.new
#
#   contact_manager.read('/path/to/file.csv')
#   or
#   contact_manager.parse('csv,data,string')
#
#
# ==== Getting the contacts
#
#   contact_manager.contacts.each do |contact|
#     puts contact.name
#     puts contact.email
#     puts contact.extras['Spouse']
#   end
#
#   See the Contact class for a complete list of attributes.
#
#
# ==== Lookup Tables
#
#   A lookup table is used to map the csv columns to Contact class attributes. You can create your own lookup tables
#   by using the LookupTable class and passing it in inside an array to the ContactManager class.
#
#   # These are the column headers in the csv
#   headers = ["First Name","Last Name","Email Address"]
#
#   # These map the column headers to the attribute of the Contact class
#   legend = { 
#     'First Name'    => :first_name,
#     'Last Name '    => :last_name,
#     'Email Address' => :email
#   }
#
#   lookup_table = LookupTable.new(headers, legend)
#
#   # The lookup table is passed into the ContactManager
#   contact_manager = ContactCsv::ContactManager.new([lookup_table])
#   or
#   contact_manager.lookup_tables << lookup_table
#
#
#   If you think you have composed a good lookup table email it to me (mwhuss@gmail.com) and I will include it in the gem.
#
#
# ==== To Do
#  * Add lookup table for Outlook 2003 CSV (DOS)
#  * Add lookup table for GMail CSV
#
#
#



