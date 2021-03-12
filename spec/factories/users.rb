FactoryBot.define do
    factory :user do
        name { 'Jorge' } 
        email { "user#{rand(1..1000)}@user.com" }
        phone { '999999999' }
        avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png') }
        password { '1234567' }
    end
end