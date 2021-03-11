require 'rails_helper'

RSpec.describe User, type: :model do
  include ActionDispatch::TestProcess::FixtureFile
  
  it "user is valid" do
    user = User.new(
      name: "Jorge",
      email: "user@teste.com", 
      phone: "919191919",
      avatar: fixture_file_upload(Rails.root.join('spec', 'support', 'test-avatar.png'), "image/png"),
      password: "123456"
    )

    expect(user).to be_valid
  end

  it "user is not valid" do
    user = User.new(
      name: "Jorge",
      email: "user@teste.com", 
      phone: "919191919",
      password: "123456"
    )

    expect(user).to_not be_valid
  end
end
