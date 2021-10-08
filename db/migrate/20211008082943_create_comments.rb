class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :user
      t.references :article
      t.string :text

      t.timestamps
    end
  end
end
