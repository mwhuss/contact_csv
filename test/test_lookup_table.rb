require File.dirname(__FILE__) + '/test_helper.rb'

class TestLookupTable < Test::Unit::TestCase

  def setup
    @headers = ["First Name", "Last Name", "Email"]
    
    @legend = {
      'First Name'      => :first_name,
      'Last Name'       => :last_name,
      'Email'           => :email
    }
  end
  
  def test_nothing_raised
    assert_nothing_raised do  
      headers = []
      legend = {}
      lookup_table = ContactCsv::LookupTables::LookupTable.new(headers, legend)
    end
  end
  
  def test_error_raised_on_header_type
    assert_raise ContactCsv::LookupTables::LookupTable::InvalidInputFormatError do
      headers = {}
      legend = {}
      lookup_table = ContactCsv::LookupTables::LookupTable.new(headers, legend)
    end
  end
  
  def test_error_raised_on_legend_type
    assert_raise ContactCsv::LookupTables::LookupTable::InvalidInputFormatError do
      headers = []
      legend = []
      lookup_table = ContactCsv::LookupTables::LookupTable.new(headers, legend)
    end
  end
  
  def test_headers
    lookup_table = ContactCsv::LookupTables::LookupTable.new(@headers, @legend)
    assert_equal 3, lookup_table.headers.size
  end
  
  def test_legend
    lookup_table = ContactCsv::LookupTables::LookupTable.new(@headers, @legend)
    assert_equal 3, lookup_table.legend.size
  end
  
  def test_lookup
    lookup_table = ContactCsv::LookupTables::LookupTable.new(@headers, @legend)
    assert_equal :first_name, lookup_table.lookup("First Name")
  end
  
  def test_bad_lookup
    lookup_table = ContactCsv::LookupTables::LookupTable.new(@headers, @legend)
    assert_nil lookup_table.lookup("Bogus")
  end
  
end
