require "rails_helper"

#As a user,
#When I visit a mechanic show page
#I see their name, years of experience, and the names of rides they’re working on
#And I only see rides that are open
#And the rides are listed by thrill rating in descending order (most thrills first)
RSpec.describe("Mechanic Show page") do
  it("can list names,years and ride working on") do
    six_flags = AmusementPark.create!(    name: "Six Flags",     admission_cost: 75)
    hurler = six_flags.rides.create!(    name: "The Hurler",     thrill_rating: 7,     open: true)
    scrambler = six_flags.rides.create!(    name: "The Scrambler",     thrill_rating: 4,     open: true)

    #ferris = six_flags.rides.create!(    name: "Ferris Wheel",     thrill_rating: 7,     open: false)
    mechanic1 = Mechanic.create!(    name: "A",     years_experience: 1)
    mechanic2 = Mechanic.create!(    name: "B",     years_experience: 2)
    MechanicRide.create(    mechanic_id: mechanic1.id,     ride_id: hurler.id)
    MechanicRide.create(    mechanic_id: mechanic1.id,     ride_id: scrambler.id)
    visit("/mechanics/#{mechanic1.id}")
    expect(page).to(have_content("Name:A"))
    expect(page).to(have_content("Years of experience:1"))
    expect(page).to(have_content("name of ride(s) working on: The Hurler"))
  end
end
