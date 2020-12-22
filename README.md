# アプリ名

## Cultuer_Critic

# 概要

## 映画や音楽など様々なカルチャーをユーザーが5段階で評価し、共有するアプリです。

# 本番環境


# 工夫したポイント


# 使用技術（開発環境）


# 課題・今後実装したい機能


# DB設計

## usersテーブル

|Column            |Type   |Options                  |
|------------------|-------|-------------------------|
|nickname          |string |null: false              |
|email             |string |null: false, unique: true|
|encrypted_password|string |null: false              |


### Association

- has_many :comments


## commentsテーブル

|Column     |Type      |Options                        |
|-----------|----------|-------------------------------|
|title      |string    |null: false                    |
|genre_id   |integer   |null: false                    |
|artwork    |string    |null: false                    |
|evaluation |integer   |                               |
|text       |text      |null: false                    |


### Association

- belongs_to :user


