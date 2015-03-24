class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
			t.string :title
			t.string :thumburl
			t.string :director
			t.string :year
      t.timestamps null: false
    end
  end
end
