# アプリケーション名
SORENARA

# アプリケーション概要
本アプリは奈良県に特化した口コミサイトです。
奈良県の観光名所やグルメに関する投稿が出来、それを他のユーザーに見てもらったり、他の人の投稿を見ることで奈良県の魅力をより深く知ることが出来ます

# URL
http://35.73.193.144/

# テスト用アカウント
## Basic認証用ID
tester01

## Basic認証用パスワード
password

## ログインID
tester00@gmail.com

## パスワード
tester00

# 挙動確認用動画
## 口コミ投稿機能
[![](https://img.youtube.com/vi/3VIJTKQ-WuA/0.jpg)](https://www.youtube.com/watch?v=3VIJTKQ-WuA)

## 投稿した住所がGoogleMapに表示される機能
[![](https://img.youtube.com/vi/F05S4qigqm4/0.jpg)](https://www.youtube.com/watch?v=F05S4qigqm4)

# 利用方法
①テスト用アカウントでログイン


# 目指した問題解決

# 洗い出した要件
## トップページ

## 口コミ投稿ページ

## 口コミ詳細ページ

# 実装した機能の説明

# 実装予定の機能

# テーブル設計

## users テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| nickname         | string  | null: false |
| email            | string  | null: false |
| password         | string  | null: false |

### Association

- has_many :items

## items テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| image         | string     | null: false                    |
| name          | string     | null: false                    |
| address       | string     | null: false,                   |
| information   | text       | null: false                    |
| category_id   | integer    | null: false,                   |
| user          | references | null: false, foreign_key: true |



### Association

- belongs_to :users

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
