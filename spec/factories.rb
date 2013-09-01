# -*- encoding : utf-8 -*-
FactoryGirl.define do
  factory :user do
    sequence(:login) { |n| "person_#{n}@example.com" }    
    password "foobar"
    password_confirmation "foobar"

    trait :admin do
     	admin true
    end
	end

	factory :address do
		sequence(:city) { |n| "city_#{n}" }
		street_and_number "Tab 11"
		post_code "15-666"
    
    trait :normal_address do
      user
    end
    
    trait :admin_address do
      association :user, :admin
    end

  end
	
	factory :brand do	
		sequence(:name) { |n| "brand_#{n}" }
	end

	factory :company do
    sequence(:name) { |n| "company_#{n}" }
    image_url "url.jakistam.pl"
	end

	factory :model do
		sequence(:name) { |n| "model_#{n}" }		
		company
	end

	factory :version do
		sequence(:name) { |n| "version_#{n}" }
		model
	end

	factory :product do
		sequence(:name) { |n| "product_#{n}" }
		description "abc"
		price 12.50 
		category
		brand
	end

	factory :category do
    sequence(:name) { |n| "category_#{n}" }
	end

	factory :order do
    trait :normal_order do
      user
      association :address,:normal_address
    end

    trait :admin_order do
      association :user,:admin
      association :address,:admin_address
    end
	end

	factory :order_item do
		sequence(:name) { |n| "order_item_#{n}" }
		price 9.12
		count 19
		order
		product
	end

  factory :products_car do
    product
    company
    model
    version
  end

end
