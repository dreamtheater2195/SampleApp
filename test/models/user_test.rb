require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user1 = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end
  # presence validation
  test "should be valid" do
    assert @user1.valid?
  end
  test "name should be present" do
    @user1.name = "     "
    assert_not @user1.valid?
  end

  test "email should be present" do
    @user1.email = "     "
    assert_not @user1.valid?
  end
  # length validation
  test "name should not be too long" do
    @user1.name = "a" * 51
    assert_not @user1.valid?
  end

  test "email should not be too long" do
    @user1.email = "a" * 256
    assert_not @user1.valid?
  end
  #format validation
  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user1.email = valid_address
      assert @user1.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user1.email = invalid_address
      assert_not @user1.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  # Validating the uniqueness of email addresses, ignoring case.
  test "email addresses should be unique" do
    duplicate_user = @user1.dup
    duplicate_user.email = @user1.email.upcase
    @user1.save
    assert_not duplicate_user.valid?
  end

  #test password length
  test "password should have a minimum length" do
    @user1.password = @user1.password_confirmation = "a" * 5
    assert_not @user1.valid?
  end
end
