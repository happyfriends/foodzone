Given(/^a venue name "([^"]*)"$/) do |venue_name|
  Foodzone::Contexts::AddVenue.call(
    venue_name: venue_name,
    venue_repository: Foodzone::Repositories::VenueRepository
  )
end

When(/^I add a new branch for the venue "([^"]*)" with the following information:$/) do |venue_name, branch_info|
  venue = Foodzone::Repositories::VenueRepository.find_by_name(venue_name)

  Foodzone::Contexts::AddBranchToVenue.call(
    venue: venue,
    branch_attributes: branch_info.hashes.first,
    branch_repository: Foodzone::Repositories::BranchRepository
  )
end

Then(/^I view the following branch information:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end
