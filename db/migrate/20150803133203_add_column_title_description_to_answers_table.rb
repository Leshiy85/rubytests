class AddColumnTitleDescriptionToAnswersTable < ActiveRecord::Migration
  def change
  	add_column :answers, :title, :string
  	add_column :answers, :description, :text
  end
end
