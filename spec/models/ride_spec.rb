require "rails_helper"


RSpec.describe(Ride, type: :model) do
  describe("relationships") do
    it { should(belong_to(:amusement_park)) }
  end

  it("model test for thrill rate") do
    six_flags = AmusementPark.create!(    name: "Six Flags",     admission_cost: 75)
    hurler = six_flags.rides.create!(    name: "The Hurler",     thrill_rating: 7,     open: true)
    scrambler = six_flags.rides.create!(    name: "The Scrambler",     thrill_rating: 4,     open: true)
    expect(hurler.order_by_thrill).to(eq(7))
  end
end
