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
 has_many :addresses
 has_many :purchases
 
 ## items テーブル

 | Column                 | Type       | Options                       |
 | ---------------------- | ---------- | ----------------------------- |
 | items_name             | string     | null: false                   |
 | detail                 | text       | null: false                   |
 | category_id            | integer    | null: false                   |
 | condition_id           | integer    | null: false                   |
 | delivery_charge_id     | integer    | null: false                   |
 | prefectures_id         | integer    | null: false                   |
 | send_day_id            | integer    | null: false                   |
 | price                  | integer    | null: false                   |
 | user                   | references | null: false, foreign_key: true|

 ### Association

 belongs_to :users
 has_one :addresses
 has_one :purchases

## addresses テーブル

| Column                    | Type           | Options                        |
| ------------------------- | -------------- | ------------------------------ |
| post_code                 | string         | null: false                    |
| prefectures_id            | integer        | null: false                    |
| municipalities            | string         | null: false                    |
| address                   | string         | null: false                    |
| building_name             | string         |                                |
| telephone_number          | string         | null: false                    |
| user                      | references     | null: false, foreign_key: true |

### Association
belongs_to :users
belongs_to :items
belongs_to :purchases

## purchases テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| addresses      | references | null: false, foreign_key: true |