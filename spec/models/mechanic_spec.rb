require "rails_helper"


RSpec.describe(Mechanic, type: :model) do
  it("average year model method") do
    mechanic1 = Mechanic.create!(    name: "A",     years_experience: 1)
    mechanic2 = Mechanic.create!(    name: "B",     years_experience: 2)
    mechanic3 = Mechanic.create!(    name: "C",     years_experience: 3)
    expect(Mechanic.years_experience_ave).to(eq(2))
  end
end
