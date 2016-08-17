require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = users(:one)
  end

  test "validando que no sea usuario null" do
  	assert_not_nil(@user, 'El usuario es null')
  end

  test "valda que el nombre sea unico" do
  	assert_not_empty(@user.name, 'El usuario es vacio')
  end
end
