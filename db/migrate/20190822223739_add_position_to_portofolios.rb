class AddPositionToPortofolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portofolios, :position, :integer
  end
end
