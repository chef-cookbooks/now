#
include_recipe_now

file '/tmp/an_thing' do
  owner 'root'
  content 'an thing'
end
