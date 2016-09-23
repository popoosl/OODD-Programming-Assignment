require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  def setup
    @member = Member.new(username: "Example User", email: "user@example.com",
    password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @member.valid?
  end
  # test "the truth" do
  #   assert true
  # end

  test "username should be present" do
    @member.username = "     "
    assert_not @member.valid?
  end

  test "email should be present" do
    @member.email = "     "
    assert_not @member.valid?
  end

  test "username should not be too long" do
    @member.username = "a" * 51
    assert_not @member.valid?
  end

  test "email should not be too long" do
    @member.email = "a" * 244 + "@example.com"
    assert_not @member.valid?
  end

  test "email addresses should be unique" do
    duplicate_member = @member.dup
    duplicate_member.email = @member.email.upcase
    @member.save
    assert_not duplicate_member.valid?
  end
  test "password should be present (nonblank)" do
    @member.password = @member.password_confirmation = " " * 6
    assert_not @member.valid?
  end

  test "password should have a minimum length" do
    @member.password = @member.password_confirmation = "a" * 5
    assert_not @member.valid?
  end



end
