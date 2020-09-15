class CreateTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
      t.string :title
      t.datetime :airtime
      t.text :description
      t.boolean :favourite
      t.references :channel, index: true, foreign_key: true
      t.timestamps
    end
  end
end
