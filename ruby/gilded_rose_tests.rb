require File.join(File.dirname(__FILE__), 'gilded_rose')
require 'test/unit'

class TestUntitled < Test::Unit::TestCase

  def test_foo
    items = [Item.new("Conjured Mana Cake", -1, 3)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].name, "Conjured Mana Cake"
    assert_equal items[0].sell_in, -2
    assert_equal items[0].quality, 0
  end

end
