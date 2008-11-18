require File.dirname(__FILE__) + '/test_helper.rb'

class TestContact < Test::Unit::TestCase

  def setup
    @contact = ContactCsv::Contact.new
  end
  
  def test_empty_extras
    assert_equal 0, @contact.extras.size
  end
  
  def text_add_extra
    key = "E Mail"
    value = "mwhuss@gmail.com"
    @contact.add_extra(key, value)
    assert_equal value, @contact.extras[key]
    assert_equal 1, @contact.extras.size
  end
  
  def test_send_method
    key = "email="
    value = "mwhuss@gmail.com"
    @contact.send(key, value)
    assert_equal value, @contact.email
  end
  
  def test_full_name
    @contact.first_name = "Britany"
    @contact.last_name = "Spears"
    assert_equal "Britany Spears", @contact.full_name
  end

  
end
