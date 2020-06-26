INSERT INTO mst_user
(user_name, password, family_name, first_name, family_name_kana, first_name_kana, gender)
VALUES ('ichiro@gmail.com', '111111', '山田', '一郎', 'やまだ', 'いちろう', 0);
INSERT INTO mst_user
(user_name, password, family_name, first_name, family_name_kana, first_name_kana, gender)
VALUES ('keiko@gmail.com', '222222', '鈴木', '恵子', 'すずき', 'けいこ', 1);
INSERT INTO mst_user
(user_name, password, family_name, first_name, family_name_kana, first_name_kana, gender)
VALUES ('hayasi@gmail.com', '333333', '林', '次郎', 'はやし', 'じろう', 0);


INSERT INTO mst_category
(category_name, category_description)
VALUES ('スポンジケーキ', '王道ケーキ');
INSERT INTO mst_category
(category_name, category_description)
VALUES ('タルトケーキ', 'クッキー生地がおいしい');
INSERT INTO mst_category
(category_name, category_description)
VALUES ('チーズケーキ', '女子受けナンバーワン');
INSERT INTO mst_category
(category_name, category_description)
VALUES ('パイケーキ', 'サクサクの食感がたまらない');

INSERT INTO mst_product
(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
VALUES ('ショートケーキ', 'しょーとけーき', '真っ赤なイチゴと生クリームが乗った王道ケーキです。\n素材の甘さが引き立つようスポンジにもこだわりました。', 1, 380, '/img/short_cake.jpg', '2018/02/22', 'まちのケーキ屋さん');
INSERT INTO mst_product
(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
VALUES ('チョコレートケーキ', 'ちょこれーとけーき', 'お子様に大人気。\n濃厚な甘さの中にもほのかにビターをきかせて、ちょっぴり大人なケーキに仕上げました。', 1, 430, '/img/chocolate_cake.jpg', '2018/02/22', 'まちのケーキ屋さん');
INSERT INTO mst_product
(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
VALUES ('ロールケーキ', 'ろーるけーき', 'しっとりふわふわなスポンジに、季節のフルーツをふんだんに散りばめました。\nクリームはミルクをたっぷり感じられる濃厚仕立て。\n贈り物にもどうぞ。', 1, 1200, '/img/roll_cake.jpg', '2018/02/22', 'まちのケーキ屋さん');
INSERT INTO mst_product
(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
VALUES ('フルーツタルト', 'ふるーつたると', 'カリッとしたタルト生地にしっとりとしたスフレをあわせ、フルーツを豪快にどっさり盛りつけました。\nみずみずしさが口いっぱいに広がる贅沢なタルトです。', 2, 450, '/img/fruit_tart.jpg', '2018/02/22', 'まちのケーキ屋さん');
INSERT INTO mst_product
(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
VALUES ('エッグタルト', 'えっぐたると', 'たまごのおいしさを最大限味わえる濃厚なクリームをこんがり焼き上げました。\n外はサクッと中はとろっと、最強コンビをお届けします。', 2, 300, '/img/egg_tart.jpg', '2018/02/22', 'まちのケーキ屋さん');
INSERT INTO mst_product
(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
VALUES ('ベイクドチーズケーキ', 'べいくどちーずけーき', 'しっとりなめらかな口当たりに濃厚なチーズのコクが楽しめる、チーズケーキの王様。\n甘さは控えめですが満足感はたっぷりです。', 3, 380, '/img/baked_cheese_cake.jpg', '2018/02/22', 'まちのケーキ屋さん');
INSERT INTO mst_product
(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
VALUES ('レアチーズケーキ', 'れあちーずけーき', '濃厚なのにさわやかな甘さがたまらない。おいしさの秘密は2層のクリーム層。\n甘いものが苦手なかたにもオススメです。', 3, 410, '/img/rare_cheese_cake.jpg', '2018/02/22', 'まちのケーキ屋さん');
INSERT INTO mst_product
(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
VALUES ('スフレチーズケーキ', 'すふれちーずけーき', '口に入れた瞬間に溶け、ふわふわを超えたしゅわしゅわ食感がやみつきになること間違いなし。\nたまごとチーズの素朴な甘みを味わい深くひとつにしました。', 3, 350, '/img/souffle_cheese_cake.jpg', '2018/02/22', 'まちのケーキ屋さん');
INSERT INTO mst_product
(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
VALUES ('ミルフィーユ', 'みるふぃーゆ', '職人が丁寧に織り込んだパイ生地と、厳選素材のカスタードクリームを重ねてリッチなくちどけに仕上げました。\nバニラの香りが楽しい一品です。', 4, 410, '/img/millefeuille.jpg', '2018/02/22', 'まちのケーキ屋さん');
INSERT INTO mst_product
(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
VALUES ('アップルパイ', 'あっぷるぱい', '砂糖不使用、りんご本来の甘さのみで焼き上げました。\nほどよい酸味でそれぞれの甘さがいっそう際立ちます。', 4, 460, '/img/apple_pie.jpg', '2018/02/22', 'まちのケーキ屋さん');
INSERT INTO mst_product
(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
VALUES ('クラフティパイ', 'くらふてぃぱい', 'フランスで家庭のおやつとして親しまれているパイです。\n日本人になじみの深いイチゴと組み合わせて、優しい甘さを存分に味わえるようにしました。', 4, 390, '/img/crafty.jpg', '2018/02/22', 'まちのケーキ屋さん');


INSERT INTO mst_destination
(user_id, family_name, first_name, tel_number, address)
VALUES (1, '山田', '一郎', '09012341234', '東京都豊島区池袋１－１－１');

INSERT INTO tbl_cart
(user_id, product_id, product_count)
VALUES (1, 2, 1);

INSERT INTO tbl_purchase_history
(user_id, product_id, product_count, price, destination_id)
VALUES (1, 2, 2, 860, 1);