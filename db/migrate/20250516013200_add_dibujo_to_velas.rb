class AddDibujoToVelas < ActiveRecord::Migration[7.2]
  def change
    add_column :velas, :dibujo, :string
  end
end
