class AddTeamRefToProduct < ActiveRecord::Migration[6.0]
  def change
    add_belongs_to :products, :team
  end
end
