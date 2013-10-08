class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message, null: false    #メッセージ
      t.integer :limit, null: false     #制限時間
      t.datetime :opendate, null:true  #開封時間
      t.timestamps
    end
  end
end
