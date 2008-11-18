require File.dirname(__FILE__) + '/test_helper.rb'

class TestContactManager < Test::Unit::TestCase

  def setup
    @cm = ContactCsv::ContactManager.new
    @cm.read('test/outlook_contacts.csv')
  end
  
  def test_new
    assert_not_nil ContactCsv::ContactManager.new
  end
  
  def test_read_contacts
    assert_equal 5, @cm.contacts.size
  end
  
  def test_first_contact
    assert_equal "Michael", @cm.contacts.first.first_name
  end
  
  def test_extra_field
    assert_equal "http://www.www.com", @cm.contacts.first.extras['Web Page']
  end
  
end
