FactoryGirl.define do
  factory :user do
	  name                  "Gus"
		email								  "gus@example.com"
		password              "foobar"
		password_confirmation "foobar"
	end
end