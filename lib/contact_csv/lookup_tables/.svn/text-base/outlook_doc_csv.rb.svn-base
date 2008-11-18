# === OutlookDosCsv
#
#  Basic class to define the headers and legend for reading Outlook 2003 CSV (DOS) files
#
#
class ContactCsv::LookupTables::OutlookDosCsv
   include ContactCsv::LookupTables
   
   # Returns a Hash of how the columns map to the Contact attributes
   def self.legend
     {
       'Title'             => :title,
       'FirstName'         => :first_name,
       'MiddleName'        => :middle_name,
       'LastName'          => :last_name,
       'EmailAddress'      => :email
     }
   end 
  
  # Returns an Array of all the headers for a Outlook CSV file
  def self.headers
    [ "Title",
      "FirstName",
      "MiddleName",
      "LastName",
      "Suffix",
      "Company",
      "Department",
      "JobTitle",
      "BusinessStreet",
      "BusinessStreet2",
      "BusinessStreet3",
      "BusinessCity",
      "BusinessState",
      "BusinessPostalCode",
      "BusinessCountry",
      "HomeStreet",
      "HomeStreet2",
      "HomeStreet3",
      "HomeCity",
      "HomeState",
      "HomePostalCode",
      "HomeCountry",
      "OtherStreet",
      "OtherStreet2",
      "OtherStreet3",
      "OtherCity",
      "OtherState",
      "OtherPostalCode",
      "OtherCountry",
      "AssistantsPhone",
      "BusinessFax",
      "BusinessPhone",
      "BusinessPhone2",
      "Callback",
      "CarPhone",
      "CompanyMainPhone",
      "HomeFax",
      "HomePhone",
      "HomePhone2",
      "ISDN",
      "MobilePhone",
      "OtherFax",
      "OtherPhone",
      "Pager",
      "PrimaryPhone",
      "RadioPhone",
      "TTYTDDPhone",
      "Telex",
      "Account",
      "Anniversary",
      "AssistantsName",
      "BillingInformation",
      "Birthday",
      "BusinessAddressPOBox",
      "Categories",
      "Children",
      "DirectoryServer",
      "EmailAddress",
      "EmailType",
      "EmailDisplayName",
      "Email2Address",
      "Email2Type",
      "Email2DisplayName",
      "Email3Address",
      "Email3Type",
      "Email3DisplayName",
      "Gender",
      "GovernmentIDNumber",
      "Hobby",
      "HomeAddressPOBox",
      "Initials",
      "InternetFreeBusy",
      "Keywords",
      "Language1",
      "Location",
      "ManagersName",
      "Mileage",
      "Notes",
      "OfficeLocation",
      "OrganizationalIDNumber",
      "OtherAddressPOBox",
      "Priority",
      "Private",
      "Profession",
      "ReferredBy",
      "Sensitivity",
      "Spouse",
      "User1",
      "User2",
      "User3",
      "User4",
      "WebPage"
    ]
  end

  # Returns a LookupTable object
  def self.lookup_table
    LookupTable.new(self.headers, self.legend)
  end

end
