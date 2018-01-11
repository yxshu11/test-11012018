json.owner_name @owner.name
json.articles @articles.each do |a|
  json.id a.id
  json.name a.name
  json.price a.price
  json.description a.description
end
