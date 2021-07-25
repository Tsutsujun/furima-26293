# FURIMA DataBase-design


## users-table
|Column            |Type   |Options                               |
|------------------|-------|--------------------------------------|
|nickname          |string |null: false, unique: true, index: true|
|email             |string |null: false, unique: true, index: true|
|encrypted_password|string |null: false                           |
|family_name       |string |null: false                           |
|given_name        |string |null: false                           |
|family_name_kana  |string |null: false                           |
|given_name_kana   |string |null: false                           |
|born_year_id      |integer|null: false                           |
|born_month_id     |integer|null: false                           |
|born_day_id       |integer|null: false                           |

### Association
- has many :items
- has many :receipts
