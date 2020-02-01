class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string    :title
      t.string    :type
      t.integer   :money
      t.datetime  :period
      t.text      :comment
      t.timestamps
    end
  end
end
