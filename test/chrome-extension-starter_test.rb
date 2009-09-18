require File.dirname(__FILE__) + '/test_helper.rb'

require "test/unit"
class ChromeExtensionStarterTest < Test::Unit::TestCase
  def test_new
    assert ChromeExtensionStarter.new('a')
  end
end
