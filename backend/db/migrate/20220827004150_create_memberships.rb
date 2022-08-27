class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.references :user
      t.references :team
      t.integer :role, default: 0, null: false

      t.timestamps
    end
  end
end
