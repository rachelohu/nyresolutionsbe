class CreateResolutions < ActiveRecord::Migration[6.1]
  def change
    create_table :resolutions do |t|
      t.string :subject
      t.string :details

      t.timestamps
    end
  end
end
