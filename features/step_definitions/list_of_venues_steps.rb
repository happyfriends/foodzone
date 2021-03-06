Given(/^I live at "(.*?)" address$/) do |address|
  @address = Venues::Address.from_str(address)
end

Given(/^a venue with the name "(.*?)" exists$/) do |venue_name|
  Venues::Creator.execute(
    venue_repository: Venue,
    venue_name: venue_name
  )
end

Given(/^the venue with the name "(.*?)" has the following branches:$/) do |venue_name, branches|
  venue = Venues::Finder.find(repository: Venue, term: venue_name)
  branches.hashes.each do |branch_attrs|
    Venues::AddBranch.execute(venue: venue, branch_attrs: branch_attrs)
  end
end

Given(/^there are no venues near "(.*?)"$/) do |address|
end

When(/^I view the list of venues$/) do
  @list_of_venues = Venues::ListRetriever.execute(venue_repository: Venue)
end

Then(/^I should see the following message "(.*?)"$/) do |msg|
  expect(@list_of_venues.message).to eql msg
end

Then(/^I should see the following information for venues:$/) do |branches_info|
  branches_info.hashes.each_with_index do |branch_info, idx|
    expect(branch_info.symbolize_keys).to eql @list_of_venues[idx].to_h
  end
end
