class AddTypeIdToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :type_id, :integer
    add_index :movies, :type_id
  end
end
