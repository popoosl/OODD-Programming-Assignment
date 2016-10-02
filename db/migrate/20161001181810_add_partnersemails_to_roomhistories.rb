class AddPartnersemailsToRoomhistories < ActiveRecord::Migration[5.0]
  def change
    add_column :roomhistories, :partnersemails, :string
  end
end
