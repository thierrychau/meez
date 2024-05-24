# == Schema Information
#
# Table name: recipe_modifiers
#
#  id           :integer          not null, primary key
#  description  :text
#  image        :string
#  measurements :string
#  name         :string
#  recipe       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#
class RecipeModifier < ApplicationRecord
   # Associations
   belongs_to :user

   # Validations
   validates :user, presence: true
   validates :name, presence: true
   validates :description, presence: true
   validates :recipe, presence: true
   validates :measurements, presence: true
 
   

   mount_uploader :image, ImageUploader
end
