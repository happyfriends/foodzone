Given(/^I live at "(.*?)" address$/) do |address|
  @address = Venues::Address.from_str(address)
end

Given(/^there are no venues near "(.*?)"$/) do |address|
end

When(/^I view the list of venues$/) do
  @list_of_venues = Venues::ListRetriever.execute
end

Then(/^I should see the following message "(.*?)"$/) do |msg|
  expect(@list_of_venues.message).to eql msg
end
