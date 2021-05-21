# ⚽️Soccer Matching App
### アマチュアのサッカーチーム（他のスポーツも可）が気軽に練習試合の相手を探すことのできるマッチングするアプリケーション
トップページの画像貼る

<br>
<br>
<br>
<br>

# 📕概要
説明

<br>
<br>
<br>
<br>

# 🌏URL
https://soccer-matching-app.herokuapp.com/

<br>
<br>
<br>
<br>

# 🖋テスト用アカウント
・ユーザー名　　神奈川FC  
・メール　　　　kanagawa@kanagawa  
・パスワード　　kanagawa  
・認証名前　　　aihara  
・認証パス　　　051305130513

<br>
<br>
<br>
<br>

# 📘機能一覧
| 機能　　　　　　　　　　 | 概要　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　 |  
| :--------------------|:---------------------------------------------------------- |  
| ユーザー管理機能　　　　 | 新規登録・ログイン・ログアウト　　　　　　　　　　　　　　　　　　　　 |  
| ユーザー詳細表示機能　　 | 各ユーザーのプロフィール　　　　　　　　　　　　　　　　　　　　　　　 |  
| ユーザー情報編集機能　　 | ログイン中のユーザーでアカウント本人であればプロフィール編集が可能　　 |  
| 投稿機能　　　　　　　　 | 試合情報の投稿　　　　　　　　　　　　　　　　　　　　　　　　　　　　 |  
| 投稿詳細表示機能　　　　 | 各投稿詳細を詳細ページで閲覧　　　　　　　　　　　　　　　　　　　　　 |  
| 投稿編集・削除機能　　　 | 編集・削除は投稿者のみ可能　　　　　　　　　　　　　　　　　　　　　　 |  
| 検索機能　　　　　　　　 | 検索フォームから日付の検索が可能　　　　　　　　　　　　　　　　　　　 |  

<br>
<br>
<br>
<br>

# 📖利用方法

## 🔵ログインしていないユーザーでも出来る機能

### 🔶ログインしていないユーザーはヘッダーに"新規登録"と"ログイン"ボタンがある
画像

### 🔶"新規登録"を押すと新規登録ページへ遷移する
動画

### 🔶新規登録フォームを入力後実行するとトップページへ遷移する
動画

### 🔶"Home"をクリックするとトップページへ遷移する
動画

### 🔶"Post list"をクリックすると投稿一覧ページへ遷移する
動画

### 🔶投稿一覧ページでは各投稿を日付と時間が新しい順に閲覧できる
画像

### 🔶各投稿の日付をクリックすると投稿詳細ページに遷移する
動画

### 🔶投稿詳細ページには投稿者名が表示される
画像

### 🔶投稿者名をクリックすると投稿者詳細ページへ遷移する
動画

<br>
<br>


## 🔵ログイン済みのユーザーしか出来ない機能

### 🔶ログインフォームを入力し、実行するとトップページへ遷移する
動画

### 🔶ログイン後ヘッダーに"ユーザー名"と"Log out"と"Post"が現れる
画像

### 🔶ヘッダーの"ユーザー名"をクリックするとユーザー編集ページへ遷移する
動画

### 🔶ヘッダーの"ログアウト"をクリックでログアウトし、トップページに遷移する
動画

### 🔶"Post"をクリックすると投稿ページに遷移する
動画

### 🔶投稿ページで必要事項を入力し、実行すると投稿一覧ページへ遷移する
動画

### 🔶投稿詳細ページで投稿者にのみ"編集"、"削除"ボタンが現れる
画像

### 🔶"編集"をクリックすると投稿編集ページへ遷移する
動画

### 🔶変更事項を入力し、実行すると投稿一覧ページへ遷移する
動画

### 🔶削除をクリックすると、投稿が削除され、投稿一覧ページへ遷移する
動画

<br>
<br>
<br>
<br>

# ✅目指した課題解決
## 課題
課題
## 解決
解決

<br>
<br>
<br>
<br>



# ⛏開発環境
## バックエンド
・Ruby  
・Ruby on Rails
<br>
<br>

## フロントエンド
・HTML  
・CSS
<br>
<br>

## データベース
・MySQL  
・SequelPro
<br>
<br>

## インフラ
・Heroku  
<br>
<br>

## ソース管理
・GitHub  
・GitHubDesktop
<br>
<br>

## テスト
・RSpec
<br>
<br>

## エディタ
・VSCode
<br>
<br>
<br>
<br>

# 🖇ローカルでの動作方法
% git clone https://github.com:M-Katayama-10/soccer.git  
% cd soccer  
% bundle install  
% rails db:create  
% rails db:migrate  
% rails s
### ⭐️http://localhost:3000

<br>
<br>
<br>
<br>

# 📋DB設計
## usersテーブル

| Column      | Type       | Options        |
| ----------- | ---------- | -------------- |
| email       | string     | null false     |
| password    | string     | null false     |
| name        | string     | null false     |
| belongs     | string     | null false     |
| category_id | integer    | null false     |
| hometown    | string     | null false     |
| homepage    | string     | null false     |

### Association
- has_many :posts, dependent: :destroy
- has_many :messages, dependent: :destroy
- has_many :entries, dependent: :destroy
- has_many :favorites
- has_many :favorite_posts, through: favorites

<br>
<br>

## postsテーブル

| Column       | Type       | Options                       |
| ------------ | ---------- | ----------------------------- |
| days         | date       | null false                    |
| dayofweek_id | integer    | null false                    |
| starttime    | text       |                               |
| endtime      | text       |                               |
| place        | string     |                               |
| supplement   | text       |                               |
| user         | references | null false, foreign_key: true |

### Association
- belongs_to :user
- has_many :favorites

<br>
<br>

## favoritesテーブル

| Column   | Type    | Options    |
| -------- | ------- | ---------- |
| user     | integer | null false |
| post     | integer | null false |

### Association
- belongs_to :user
- belongs_to :post

<br>
<br>

## messagesテーブル

| Column       | Type       | Options                       |
| ------------ | ---------- | ----------------------------- |
| user         | references | null false, foreign_key: true |
| room         | references | null false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :room

<br>
<br>

## entriesテーブル

| Column       | Type       | Options                       |
| ------------ | ---------- | ----------------------------- |
| user         | references | null false, foreign_key: true |
| room         | references | null false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :room

<br>
<br>

## roomsテーブル

### Association
- has_many :messages, dependent: :destroy
- has_many :entries, dependent: :destroy

<br>
<br>
