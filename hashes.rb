require "pry"
require "./swapi_people"

Hash.new

holidays = {
    :winter => {
        :christmas => ["tree", "presents"],
        :new_years => ["party hats", "champagne"]
    },
    :spring => {
        :memorial_day => ["credit card"],
        :easter => ["eggs", "basket", "chocolate"]
    },
    :summer => {
        :fourth_of_july => ["fireworks", "picnic"]
    }, 
    :fall => {
        :thanksgiving => ["food, lots of food"]
    }
}

items_for_easter = holidays[:spring][:easter]

# add Halloween to Fall
holidays[:fall][:halloween] = ["costume", "pumpkins", "candy"]

RESPONSE.keys #=> return array of all keys in hash
RESPONSE.values #=> return array of all values in hash


# DIG

h = { foo: {bar: {baz: 1}}} #=> {:foo=>{:bar=>{:baz=>1}}} 
h[:foo][:bar][:baz] #=> 1 

#> h[:foo][:bars][:baz]
# Traceback (most recent call last):
#         4: from /Users/laura/.rvm/rubies/ruby-2.6.1/bin/irb:23:in `<main>'
#         3: from /Users/laura/.rvm/rubies/ruby-2.6.1/bin/irb:23:in `load'
#         2: from /Users/laura/.rvm/rubies/ruby-2.6.1/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
#         1: from (irb):3
# NoMethodError (undefined method `[]' for nil:NilClass)

h.dig(:foo, :bars, :baz) #=> nil 

# Iterators
{
    name: "Laura", :job => "cohort lead"
}.each do |key, value|
    puts "#{key}: #{value}"
end

# Conditions
RESPONSE.has_key?(:results)
RESPONSE.has_value?(1)
{}.empty?


binding.pry