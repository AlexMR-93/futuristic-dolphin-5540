require "rails_helper"

#Story 1 - Mechanic Index Page
#As a user,
#When I visit the mechanics index page
#I see a header saying “All Mechanics”
#And I see a list of all mechanic’s names and their years of experience
#And I see the average years of experience across all mechanics
RSpec.describe("Mechanic Index page") do
  it("can list all mechanics names,years and average") do
    mechanic1 = Mechanic.create!(    name: "A",     years_experience: 1)
    mechanic2 = Mechanic.create!(    name: "B",     years_experience: 2)
    mechanic3 = Mechanic.create!(    name: "C",     years_experience: 3)
    visit("/mechanics")
    expect(page).to(have_content("All Mechanics"))
    expect(page).to(have_content("Name:A"))
    expect(page).to(have_content("Years of experience:1"))
    expect(page).to(have_content("Average years of all Mechanics:"))
  end
end
