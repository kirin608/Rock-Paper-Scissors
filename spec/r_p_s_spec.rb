require_relative '../r_p_s_play'

RSpec.describe '#r_p_s_play'  do
describe 'r_p_s_play' do
  it "returns true if rock is the object and scissors is the argument" do
      expect(r_p_s_play("rock scissors")).to(eq((true)))
    end

    it "returns true if rock is the object and scissors is the argument" do
      expect(r_p_s_play("scissors rock")).to(eq((false)))
    end
  end
end