require 'rails_helper'

RSpec.describe 'Product Team' do
  context 'when it is a team' do
    it 'should has a team' do
      team = FactoryBot.create(:team, name: 'flamengo')
      product = FactoryBot.create(:product, team: team)

      expect(product.team.name).to eq('flamengo')
    end

    it 'should has a team optional' do
      product = FactoryBot.create(:product, team: nil)

      expect(product.team_id).to eq(nil)
    end
  end
end
