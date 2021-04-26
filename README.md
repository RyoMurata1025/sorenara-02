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
②ページ右下の『投稿する』ボタンから投稿を行う
③投稿が完了しトップページにて自分の投稿が確認出来たら、そこをクリックし詳細ページに行く
④詳細ページにて自分の投稿を確認出来、またその投稿の編集/削除が可能である

# 目指した問題解決
奈良県の魅力を多くの人に伝える為に作成しました。
奈良県は大阪府と京都市という観光客が多く集まる府に挟まれております。
大阪府ほど都会ではなく、京都府ほど神社仏閣で有名な場所がない県と長年言われてきました。
それ故に奈良県に住む人ですら『奈良県には魅力がない』と自虐的に話すほどになっています。
しかし実際に奈良県在住の私から見ると、奈良県には多くの魅力があり、多くの人がそれに気が付いていないのです。
その現状を打破すべく、奈良県の魅力を多くの人に伝えることができるアプリを目指しました。

# 洗い出した要件
## トップページ
【ボタン】
（未ログイン時）ログインボタンをクリックするとログインページに遷移する。
（未ログイン時）サインアップボタンをクリックするとサインアップページに遷移する。
（ログイン時）ログアウトボタンをクリックするとロウアウト出来る。
（ログイン時）ユーザー名をクリックするとユーザー情報編集ページへ遷移する。
（投稿が一つでもある場合）投稿名を押すと投稿詳細ページへ遷移する。
（ログイン時）『投稿する』ボタンを押すと新規投稿ページに遷移する。

【表示】

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
