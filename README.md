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

# GAMATCH

## 概要

このアプリは、ゲームをする友達を作りたい人のためのマッチングサービスです。
自分のプレイするゲームを登録し、一緒にやりたいゲームをキーワードで検索してゲームをしている人を探します。
プロフィールを見て、この人とゲームをやってみたい！と思ったら、チャットでメッセージを送りゲームに誘うことができます。

## 本番環境

https://stormy-scrubland-12010.herokuapp.com/

## 制作背景

私は、ゲームを一緒にする友達があまりいないので一人でプレイすることが多いです。
一緒にゲームをする友達を探したい！そういった思いがあったため、一緒にゲームしたり好きなゲームについて語り合えるようにこのサービスを制作しました。
オンラインで離れた人と一緒にゲームできるようになった世の中で、一人でも多くの人がより楽しくゲームをプレイできるようにとの思いを込めて作りました。

## DEMO

TOP画面からユーザー登録、検索に遷移することができます。
[![Image from Gyazo](https://i.gyazo.com/b3e8cc863e86fdc4bc5c29256bcd72aa.jpg)](https://gyazo.com/b3e8cc863e86fdc4bc5c29256bcd72aa)

よくある質問をスクロールした時にフェードインで表示させ、質問内容とその回答をアコーディオンパネルで作成しました。
+を押すと回答が表示され、-を押すと回答が隠れるように記述しました。
![a4e794211049d10ee9011567d973bc1a](https://user-images.githubusercontent.com/60601986/77601446-1f363580-6f4e-11ea-995c-f04bdcea3bd4.gif)

ページトップにスクロールで戻るボタンを作成しました。
![98249ced5a84f37712ca8dede6854907](https://user-images.githubusercontent.com/60601986/77601453-22c9bc80-6f4e-11ea-9ec2-ac4a3a038988.gif)

TOPページの画像スライドを押すと、
![776de9be35b5fcff9b4d9a7eadcfde3e](https://user-images.githubusercontent.com/60601986/77602302-750bdd00-6f50-11ea-9a13-8ef16c1afe5c.gif)

## 工夫したポイント

user#indexの検索キーワードを、別テーブル(gameテーブル)のカラムの文字検索にしたことです。
ユーザー名による検索ではなく、プレイしたゲームの名前やハードで検索できるようにしました。
![c12d215d6a8c976f3d282a7ef0383480](https://user-images.githubusercontent.com/60601986/77601521-54db1e80-6f4e-11ea-901a-208c03529a95.gif)

また、ユーザー間のルームを作成し、その中で連絡を取り合えるようにしたことです。
![96fa082b2cd51264ba1f18546a3ebc70](https://user-images.githubusercontent.com/60601986/77601635-9f5c9b00-6f4e-11ea-9a86-7813a1c6fd34.gif)


## 使用技術

HTML,CSS,jQuery,Ruby,Rails,MySQL,Heroku

## 課題や今後実装したい機能

相手がアクティブユーザーなのかどうかを見極めてからコンタクトをとりたいと思うので、最終ログイン時間がわかるようにしたい。
もしくは、相手がログイン中かどうかを判別できるようにしたい。
誰かからチャットでメッセージを送られた際に、通知が届いてすぐに気づけるようにしたい。
