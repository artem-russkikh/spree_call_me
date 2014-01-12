class CreateSpreeCallBacks < ActiveRecord::Migration
  def change
    create_table :spree_call_backs do |t|
      t.string :name
      t.string :phone
      t.text :comment

      t.timestamps
    end
  end
end
