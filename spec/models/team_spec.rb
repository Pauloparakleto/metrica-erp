require 'rails_helper'

RSpec.describe Team, type: :model do
  context 'when create' do
    it 'valid' do
      team = Team.create(name: 'flamengo')
      expect(team.name).to eq('flamengo')
    end

    it 'nil name' do
      team = Team.new(name: nil)
      expect(team.valid?).to eq(false)
    end

    it 'nil name message' do
      team = Team.new(name: nil)
      team.save
      expect(team.errors.full_messages).to eq(["Name não pode ficar em branco"])
    end

    it 'duplicated invalid' do
      team = FactoryBot.create(:team, name: 'flamengo')
      team_second = FactoryBot.build(:team, name: 'flamengo')

      expect(team_second.valid?).to eq(false)
    end

    it 'duplicated invalid message' do
      team = FactoryBot.create(:team, name: 'flamengo')
      team_second = FactoryBot.build(:team, name: 'flamengo')

      team_second.save

      expect(team_second.errors.full_messages).to eq(["Name já está em uso"])
    end
  end
end
