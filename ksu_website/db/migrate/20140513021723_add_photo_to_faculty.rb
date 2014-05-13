class AddPhotoToFaculty < ActiveRecord::Migration
  def change
    add_column :faculties, :image_uid,  :string
  end
end
