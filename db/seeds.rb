p '==================== customer create ===================='
Customer.create!(name: "moja", email: "moja@example.com", password: "foobar")
Customer.create!(name: "moja2", email: "moja2@example.com", password: "foobar")
Customer.create!(name: "Taro Yamada", email: "taro.yamada@example.com", password: "foobar")
Customer.create!(name: "Suzuki Hanako", email: "hanako.suzuki@example.com", password: "foobar")
Customer.create!(name: "Jiro Sato", email: "jiro.sato@example.com", password: "foobar")

p '==================== admin create ===================='
Admin.create!(email: "admin@example.com", password: "1qaz@WSX")

p '==================== product create ===================='
product1 = Product.new(
  name: "サンドイッチ",
  description: "サンドイッチは、2枚のパンに具材を挟んで作る軽食です。美味しいサンドイッチを作るためには、以下のようなポイントを押さえると良いでしょう。 選び抜いた素材を使う 肉や野菜、チーズやエッグなど、具材を選ぶときには、おいしいものを使うことが大切です。新鮮で味わい深い素材を使うことで、サンドイッチをより美味しくできます。 パンを選ぶ サンドイッチには、フランスパンやサンドイッチパン、フルーツパンなど、さまざまな種類のパンが使われます。お好みのパンを選んで、具材と合わせて美味しいサンドイッチを作ってみましょう。 具材を均等に配置する サンドイッチを作るときには、具材を均等に配置することが大切です。これにより、一口ごとにバランスよく具材を味わえます。また、具材を均等に配置することで、サンドイッチをより美味しくできます。 スプレッドやドレッシングを使う サンドイッチには、マヨネーズやケチャップ、マスタードやステーキソースなど、さまざまなスプレッドやドレッシングが使われます。これらを使うことで、サンドイッチに味わいをプラスすることができます。 温める サンドイッチを温めることで、具材が柔らかくなり、味がより引き立つようになります。サンドイッチを温める方法としては、トースターで焼いたり、フライパンで焼いたり、電子レンジで温めることができます。",
  price: 680,
  stock: 30
)
product1.image.attach(io: File.open(Rails.root.join('app/assets/images/sand.jpeg')), filename: 'sand.jpeg')
product1.save!

# product2 = Product.new(
#   name: "Blue Jacket",
#   description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.", 
#   price: 24800, 
#   stock: 21
# )
# product2.image.attach(io: File.open(Rails.root.join('app/assets/images/jacket.jpg')), filename: 'jacket.jpg')
# product2.save!

product3 = Product.new(
  name: "夏の思い出",
  description: "夏にはたくさんの素晴らしい思い出がありますね。 例えば、海や湖で泳いで遊んだり、日差しが強い日には日よけをしてリラックスしたり、BBQを楽しんだり、野外フェスや野球観戦に行ったり、自転車やスキーでアウトドアアクティビティを楽しんだり、お花見や桜を見に行ったり、お茶やアイスクリームを食べながらのんびりとしたり、また、夏休みや海外旅行に行ったりすることもできます。 どのような思い出を作るかは、個人の好みや体験によって異なりますが、夏はたくさんの新しい体験をすることができる季節であることは間違いありません。", 
  price: 0,
  stock: 100
)
product3.image.attach(io: File.open(Rails.root.join('app/assets/images/parking.jpg')), filename: 'parking.jpg')
product3.save!

product4 = Product.new(
  name: "マトリョーシカ（カラフル）",
  description: "マトリョーシカとは、日本の伝統的な手描きのアニメーションのスタイルです。このスタイルは、大胆でカラフルで、そして通常、多くの鮮やかな色を使用しています。 マトリョーシカは、日本のアニメーション界で非常に有名で、世界中で愛されています。また、このスタイルは、日本の文化を表現するためによく使われています。 マトリョーシカは、日本の伝統的な手描きのアニメーションのスタイルとして非常に有名ですが、その他の国々でも人気があります。また、このスタイルは、世界中で愛されており、特にアジアや欧米でも非常に人気があります。 マトリョーシカは、日本の伝統的なアニメーションのスタイルでありながらも、世界中で愛されており、特にカラフルであることが特徴です。そのため、マトリョーシカは、日本の文化を表現するためだけでなく、世界中で見ることができるアニメーションとしても非常に人気があります。", 
  price: 2980,
  stock: 12
)
product4.image.attach(io: File.open(Rails.root.join('app/assets/images/matrioshka_souvenir_russia_toy.jpg')), filename: 'matrioshka_souvenir_russia_toy.jpg')
product4.save!

product5 = Product.new(
  name: "赤いマトリョーシカ",
  description: "赤いマトリョーシカは、日本の伝統的な手描きのアニメーションのスタイルです。このスタイルは、大胆でカラフルで、そして通常、多くの鮮やかな色を使用しています。

赤いマトリョーシカは、日本のアニメーション界で非常に有名で、世界中で愛されています。また、このスタイルは、日本の文化を表現するためによく使われています。

赤いマトリョーシカは、日本の伝統的な手描きのアニメーションのスタイルとして非常に有名ですが、その他の国々でも人気があります。また、このスタイルは、世界中で愛されており、特にアジアや欧米でも非常に人気があります。

赤いマトリョーシカは、日本の伝統的なアニメーションのスタイルでありながらも、世界中で愛されており、特にカラフルであることが特徴です。そのため、赤いマトリョーシカは、日本の文化を表現するためだけでなく、世界中で見ることができるアニメーションとしても非常に人気があります。

特に、赤いマトリョーシカは、赤い色を基調としているため、赤い色が好きな人や、カラフルでかわいいものが好きな人にも特に人気があります。",
  price: 3980,
  stock: 8
)
product5.image.attach(io: File.open(Rails.root.join('app/assets/images/matrioshka_wooden_culture_symbol_0.jpg')), filename: 'matrioshka_wooden_culture_symbol_0.jpg')
product5.save!

product6 = Product.new(
  name: "マトリョーシカ（ベージュ）",
  description: "日本の伝統的なマトリョーシカは、日本語で「まとめる」を意味する「マトリョーシカ」という言葉から名付けられており、日本のアニメーション界で非常に有名です。マトリョーシカは、日本の伝統的な手描きのアニメーションのスタイルとして非常に有名であり、世界中で愛されています。", 
  price: 3200, 
  stock: 30
)
product6.image.attach(io: File.open(Rails.root.join('app/assets/images/doll_russian_russia_moscow.jpg')), filename: 'doll_russian_russia_moscow.jpg')
product6.save!
