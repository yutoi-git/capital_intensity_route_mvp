# 首都圏震度路線図(仮)

## サービス概要
東京近郊にある駅の中から、大きな揺れに見舞われる確率を比較することができるメディア系のサービスです。

## メインターゲットユーザー
- 大きな揺れに見舞われにくい街に引っ越しを検討している人
- 電車で通勤している、またはする予定のある東京近郊に在住する人
- （一軒家を建てる予定の人、駅から離れた場所に住む人などは、今回のメインターゲットではない。）

## ユーザーが抱える課題
- 少しでも揺れに強い街に住みたい。
- 勤務地が東京都心のような場合、目的地から遠い場所であれば大きな揺れに見舞われにくい街はあるが、そのバランスを見極めるのが難しい。
- 政府が公表しているWebサービス「J-SHIS」では、大きな揺れの発生確率ごとにマップに色が5段階で塗られているものの、数キロ程度しか離れていない場所同士の揺れやすさを比較するという観点からすると相当な手間がかかる。

## 解決方法
### 基本機能
- 30年以内に震度6弱・6強が発生する確率を、路線別の駅ごとに一覧表示する。
- それと同時に、ユーザーが設定した目的地までの所要時間も表示する。

### ログインで利用可能
- 駅をブックマークする。
- ブックマークした駅同士で、大きな揺れの発生確率を一覧表示する。

### 追加機能（MVPリリース後）
- ブックマークした駅は、鉄道路線のAPIを用いて目的地までの所要時間を検索することができる。
- 駅のある地点だけでなく、その周辺数百メートルに対しても大きな揺れの発生確率も分かるようにする。

### おそらく実施しない
- 大きな揺れの発生確率だけでなく、津波・浸水・土砂災害などの情報も取り入れる。
  - 利用可能なAPI、CSVが見当たらないため。
- 鉄道空白地帯における大きな揺れの発生確率表示。

## なぜこのサービスを作りたいのか
- 学生時代に東日本大震災を経験し、余震で大きな揺れが発生するたびに怯えていたため、当時は日常生活に支障が出ていた。
- その経験から防災意識が高まり、引っ越しの時に東京都心に近くて家賃相場も安い街を中心に探していたものの、それらの街は大きな揺れに見舞われやすく候補から外してしまった。
- しかし街ごとに大きな揺れの発生確率をよく見てみると、数キロ離れただけで大きく異なる場所がいくつもあることが判明したため、駅ごとに表示することで住む場所を決める時の判断材料になるのではと思った。

## ER図
"https://gyazo.com/42bbf1b7971428c9bc9a69f45466eb45"
