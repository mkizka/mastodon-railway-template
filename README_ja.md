[English](./README.md) | [日本語](./README_ja.md)

# mastodon-railway-template
[Railway](https://railway.app)でMastodonをデプロイするためのテンプレートです。

## 使用方法

### 1. Deploy on Railwayをクリック

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/Pa4Fcc?referralCode=mveF9L)

### 2. 各サービスの「Configure」をクリックして環境変数を設定
![](images/step2.png)

すべての設定の「Save Config」をクリックする必要があります。以下に各サービスの設定方法を記載します。

#### Mastodon-Streaming
「Mastodon」の環境変数と同期されるため、編集不要です。

#### Mastodon
| 変数名 | 説明 | デフォルト |
| --- | --- | --- |
| OWNER_USERNAME | 起動時に生成する管理者アカウントのユーザー名を指定します。| |
| OWNER_EMAIL | 起動時に生成する管理者アカウントのメールアドレスを指定します。メールサーバーを設定するまでは使われません。 | |

これら以外は編集不要です。

各設定について詳しくは[公式ドキュメント](https://docs.joinmastodon.org/admin/config/)を参照してください。

### 3. 設定完了後「Deploy」をクリック
以下の画像のように全て「Ready to be deployed」と表示されたらデプロイ出来ます。

![](images/step3.png)

### 4. ドメインを設定する(任意)
「Settings」からドメインを設定できます。Railwayの無料ドメインか、あなたが持っているカスタムドメインを使用できます。

![](images/setup4.png)

ドメインをセットした後、必ず「Redeploy」をクリックしてください。

注意：Mastodon-Streamingのドメインも変更する場合は、Mastodonよりも先にMastodon-Streamingのドメインを変更してください。そして変更した順番で両方Redeployしてください。

![](images/setup4-2.png)

### 5. 数分後、「Mastodon」サービスをクリックしてURLにアクセス
以下のような画面の「Deployments」にURLが表示されています。

![](images/step5.png)

以上で完了です！

![](images/step5-2.png)

### 6. 管理者アカウントにログイン
プロジェクト画面上部にある「Observability」でサービスの実行ログを検索できます。

「New Password」と検索すると、Mastodon起動時に作成されたOwnerアカウントのパスワードを見つけることが出来ます。

![](images/signin.png)

このパスワードとメールアドレスを使用してログイン画面から管理者アカウントにログイン出来ます。

## トラブルシューティング
![](images/trouble.png)

このようなメッセージが表示されることがあります。

- 少し待ってからリロード
- Redeploy

で解決することがあります。

## ⚠️⚠️注意⚠️⚠️
- Mastodonを使い始めた後、ドメインを変更しないでください。
- アップロードした画像はマウントされたボリュームに保存されます。ボリュームの容量は5GBのため、必要に応じてS3などを最初から設定しておくことをおすすめします。
- Railwayは使用量に応じて課金されるため、フォローを増やしすぎないでください。[設定から使用量を制限することも出来ます。](https://docs.railway.app/reference/usage-limits)
