class AddMensajeToVelas < ActiveRecord::Migration[7.2]
  def change
    add_column :velas, :mensaje, :string
  end
end
