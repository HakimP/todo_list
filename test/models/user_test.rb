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

  test "valida que el campo nombre no sea vacio" do
  	assert_not_empty(@user.name, 'El usuario es vacio')
  end

  test "valida que el campo no se repita" do
  	users.each do |x|
	  assert_not_same(@user.name, x.name, 'el usuario ya existe')
	end
  end
end
