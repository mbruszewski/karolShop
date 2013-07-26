FactoryGirl.define do
  factory :user do
    sequence(:login) { |n| "person_#{n}@example.com"}   
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

	factory :address do
		city "Bialystok"
		street_and_number "Tab 11"
		post_code "15-666"
		user
  end

=begin
  factory :micropost do
    content "Lorem ipsum"
    user
  end
=end
end
