class RemoveSpecialtyFromDoctors < ActiveRecord::Migration[5.2]
  def change
    remove_column :doctors, :specialty, :string
  end
end

# rails generate migration removeSpecialtyFromDoctors specialty:string
# supprime la colonne specialty