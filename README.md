# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| name               | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column    | Type      | Options     |
| ----------| ----------|-------------|
| title     | string    | READMEにマークダウン記法で記述 |
| catch-copy| text      | null: false |
| consept   | text      | null: false |
| user      | references| null: false |

### Association
- has_many :comments

## comment テーブル

| Column   | Type       | Options                        |
| ---------| -----------|------------------------------- |
| content  | text       | null: false,                   |
| prototype| references | null: false, foreign_key: true |
| user     | references | null: false, foreign_key: true |

- belongs_to :room
- belongs_to :user

