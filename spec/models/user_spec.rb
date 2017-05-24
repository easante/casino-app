require 'rails_helper'

RSpec.describe User, :type => :model do
  before do
    # create a user in memory
    @john = User.new(email: 'john@example.com', password: 'password')
  end

  it "signs a user up with valid email address and password" do
    expect(@john).to be_valid
    expect(@john.errors[:email].any?).to be_falsey
  end

  it "requires an email address" do
    # Set email to nil
    @john.email = nil

    expect(@john).not_to be_valid
    expect(@john.errors[:email].any?).to be_truthy
  end

  it "requires a password" do
    # Set password to nil
    @john.password = nil

    expect(@john).not_to be_valid
    expect(@john.errors[:password].any?).to be_truthy
  end
end
