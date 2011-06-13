require File.dirname(__FILE__) + '/../test_helper'
# require 'test_helper'
 
class GlosentryTest < ActiveSupport::TestCase
 
  test "short_explanation should shorten explanation" do
    g = Glosentry.create({:keyword => "sample", 
      :explanation => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."})
    assert_equal "Lorem...", g.short_explanation(8) 
    assert_equal "Lorem ipsum d...", g.short_explanation(16)
    assert_equal "Lorem ipsum dolor...", g.short_explanation(20)
  end
 
  test "short_explanation should not change already short explanation" do
    g = Glosentry.create({:keyword => "sample", :explanation => "Lorem ipsum"})
    assert_equal "Lorem ipsum", g.short_explanation(11)
    assert_equal "Lorem ipsum", g.short_explanation(26)
  end
 
  test "short_explanation default length should be 20" do
    g = Glosentry.create({:keyword => "sample", :explanation => "Lorem ipsum dolor sit amet"})
    assert_equal "Lorem ipsum dolor...", g.short_explanation
  end
 
end
