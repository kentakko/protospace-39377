# テーブル設計

## users テーブル

| Column             | Type   | Options          |
| ------------------ | ------ | ---------------- |
| email              | string | NOT NULL, UNIQUE |
| encrypted_password | string | NOT NULL         |
| name               | string | NOT NULL         |
| profile            | text   | NOT NULL         |
| occupation         | text   | NOT NULL         |
| position           | text   | NOT NULL         |


## prototypes テーブル

| Column             | Type       | Options      |
| ------------------ | ---------- | ------------ |
| title              | string     | NOT NULL     |
| catch_copy         | text       | NOT NULL     |
| concept            | text       | NOT NULL     |
| user               | references | NOT NULL     |

## comments テーブル

| Column             | Type       | Options      |
| ------------------ | ---------- | ------------ |
| content            | text       | NOT NULL     |
| prototype          | references | NOT NULL     |

