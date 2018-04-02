require 'minitest/autorun'
require 'active_support/core_ext/string'

class PresentAndAnyTest < MiniTest::Test
  def test_present_and_any
    assert_equal ![].empty?, [].present?
    assert_equal ![nil].empty?, [nil].present?
    assert_equal ![1].empty?, [1].present?
    assert_equal ![''].empty?, [''].present?
    assert_equal !['', ' '].empty?, ['', ' '].present?
  end
end
