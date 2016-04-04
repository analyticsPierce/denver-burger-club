FactoryGirl.define do
  factory :review do
    restaurant
    judge
    meat_flavor 6
    meat_done 7
    bun 8
    toppings 10
    sides 7
    presentation 3
    service 5
    atmosphere 7
    comment "wonderful burger"
  end

end
