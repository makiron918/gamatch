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

#GAMATCH

##概要
このアプリは、ゲームをする友達を作りたい人のためのマッチングサービスです。
自分のプレイするゲームを登録し、一緒にやりたいゲームをキーワードで検索してゲームをしている人を探します。
プロフィールを見て、この人とゲームをやってみたい！と思ったら、チャットでメッセージを送りゲームに誘うことができます。

##本番環境
https://stormy-scrubland-12010.herokuapp.com/

##制作背景
私は、ゲームを一緒にする友達があまりいないので一人でプレイすることがおおいです。
一緒にゲームをする友達を探したい、そういった思いがあったため、一緒にゲームしたり好きなゲームについて語り合えるようにこのサービスを制作しました。
オンラインで離れた人と一緒にゲームできるようになった世の中で。一人でも多くの人がより楽しくゲームをプレイできるようにとの思いを込めて作りました。

##DEMO
https://gyazo.com/ed54647a755da090ffefd8fbae621a91
https://gyazo.com/6083223f85f92dd5cccd894ec44457e0
https://gyazo.com/a4e794211049d10ee9011567d973bc1a
https://gyazo.com/98249ced5a84f37712ca8dede6854907
https://gyazo.com/c12d215d6a8c976f3d282a7ef0383480
https://gyazo.com/96fa082b2cd51264ba1f18546a3ebc70

##工夫したポイント
user#indexの検索キーワードを、別テーブル(gameテーブル)のカラムの文字検索にしたことです。
ユーザー名による検索ではなく、プレイしたゲームの名前やハードで検索できるようにしました。
また、ユーザー間のルームを作成し、その中で連絡を取り合えるようにしたことです。

##使用技術
HTML,CSS,jQuery,Ruby,Rails,MySQL,Heroku

##課題や今後実装したい機能
相手がアクティブユーザーなのかどうかを見極めてからコンタクトをとりたいと思うので、最終ログイン時間がわかるようにしたい。
もしくは、相手がログイン中かどうかを判別できるようにしたい。
誰かからチャットでメッセージを送られた際に、通知が届いてすぐに気づけるようにしたい。
