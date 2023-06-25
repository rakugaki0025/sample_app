class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :title       # t.データ型名 :カラム名
      t.string :body        # t.データ型名 :カラム名
      t.timestamps
    end
  end
end
