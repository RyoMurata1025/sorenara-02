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
- （未ログイン時）ログインボタンをクリックするとログインページに遷移する。
- （未ログイン時）サインアップボタンをクリックするとサインアップページに遷移する。
- （ログイン時）ログアウトボタンをクリックするとロウアウト出来る。
- （ログイン時）ユーザー名をクリックするとユーザー情報編集ページへ遷移する。
- （投稿が一つでもある場合）投稿名を押すと投稿詳細ページへ遷移する。
- （ログイン時）『投稿する』ボタンを押すと新規投稿ページに遷移する。

【表示】
- 投稿の一覧を確認することができる

## 口コミ投稿ページ
【ボタン】
- 『ファイルを選択する』ボタンをクリックするとローカルにある写真を選択することができる
- 『投稿する』ボタンをクリックすると投稿が完了する

【表示】
- 自分の投稿したい内容を確認することが出来る

## 口コミ詳細ページ
【ボタン】
- （ログイン時）『投稿の編集』ボタンをクリックすると投稿編集ページに遷移する
- （ログイン時）削除ボタンをクリックすると投稿を削除できる

【表示】
- 投稿の詳細な情報を確認することができる

# 実装した機能の説明
①ユーザー管理機能
サインアップ、ログイン、ログアウトが可能です。

②クチコミの投稿、編集、削除機能
投稿者はクチコミを投稿し、その編集、削除を行う事ができます。

③GoogleAPI実装
投稿された場所の住所をGpogleMapにピン留めします。
『東大寺』のように観光名所の名前だけで登録をしてもGoogleMapへの表示が可能です。

# 実装予定の機能
①いいね機能
別のユーザーの投稿にいいねを押すことが出来るようにします。
これによって、
- 自分がいいねした投稿のみを表示させる
- いいねが多いものから順に表示させる
機能の実装も行います。

②ビューの調整
HTML, CSS, Vue.jsの技術を高めより見栄えを良くします。

# テーブル設計

## users テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| nickname         | string  | null: false |
| email            | string  | null: false |
| password         | string  | null: false |
| family_name      | string  | null: false |
| first_name       | string  | null: false |
| family_name_kana | string  | null: false |
| first_name_kana  | string  | null: false |
| birth_day        | date    | null: false |

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
| latitude      | references |                                |
| longitude     | references |                                |


### Association

- belongs_to :users

# ローカル環境
## Rubyのver
ver2.6.5

## データベース環境
Mysql

## 使用したGEM
- rspec
- Factory_bot
- Capistrano
- rubocop
- Active_Hash
- devise
- pry_rails
- mini_magick
- image_processing
- aws-sdk-s3
- unicorn
- geocoder
- gon

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
