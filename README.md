# テーブル設計

## users テーブル

| Column              | Type      | | Options                    |
| ------------------- | --------- | | -------------------------- |
| nickname            | string    | | null: false                |
| email               | string    | | null: false, unique: true  |
| encrypted_password  | string    | | null: false                |
| last_name           | string    | | null: false                |
| first_name          | string    | | null: false                |
| last_name_kana      | string    | | null: false                |
| first_name_kana     | string    | | null: false                |
| birth_day           | date      | | null: false                |

### Association
 has_many :items
 has_many :buyer
 has_many :comments

 
 ## items テーブル

 | Column                 | Type       | Options                       |
 | ---------------------- | ---------- | ----------------------------- |
 | items_name             | string     | null: false                   |
 | detail                 | text       | null: false                   |
 | category               | string     | null: false                   |
 | condition              | string     | null: false                   |
 | delivery_charge        | string     | null: false                   |
 | shipment_source        | string     | null: false                   |
 | send_day               | string     | null: false                   |
 | price                  | string     | null: false                   |
 | user                   | references | null: false, foreign_key: true|

 ### Association

 belongs_to :users
 has_many :comments
 has_one :buyer

 ## comments テーブル

| Column               | Type                 | Options                        |
| -------------------- | -------------------- | ------------------------------ |
| content              | text                 | null: false                    |
| item                 | references           | null: false, foreign_key: true |
| user                 | references           | null: false, foreign_key: true |


### Association

belongs_to :users
belongs_to :items

## buyer テーブル

| Column                    | Type           | Options                        |
| ------------------------- | -------------- | ------------------------------ |
| post_code                 | string         | null: false                    |
| prefectures               | string         | null: false                    |
| municipalities            | string         | null: false                    |
| address                   | string         | null: false                    |
| building_name             | string         |                                |
| telephone_number          | string         | null: false                    |
| user                      | references     | null: false, foreign_key: true |


### Association
belongs_to :users
has_one :items

