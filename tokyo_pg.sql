SET NAMES UTF8;
DROP DATABASE IF EXISTS tokyo_pg;
CREATE DATABASE tokyo_pg CHARSET=UTF8;
USE tokyo_pg;
#用户信息表
CREATE TABLE tokyo_pg_user(
  uid int primary key auto_increment,
  name varchar(64) unique not null,#用户名
  phone varchar(11) unique,
  email varchar(128) unique not null,
  password varchar(256) not null,
  photo varchar(128) default '/user/default.jpg'
);
insert into tokyo_pg_user values(null,"努力的派大星",'15773280850','398487366@qq.com',md5("abc12345"),'/user/default.jpg'),
(null,"我是海绵宝宝",'13984755214','1577953625@qq.com',md5("ab123456"),'/user/88.jpg');
#金牌榜
CREATE TABLE tokyo_pg_summedal(
  smid int primary key auto_increment,
  country varchar(20) not null,
  countryimg varchar(256) not null,
  gold int not null,
  silver int not null,
  bronze int not null,
  sum int not null,
  rank int not null
);
insert into tokyo_pg_summedal values
(null,'中国','/国旗/7dce3e5758a82e720ec1c7123d246616.png',96,60,51,207,1),
(null,'英国','/国旗/c898755909037b5107f517dac2cd3be0.png',41,38,45,124,2),
(null,'美国','/国旗/19f0d6e267727f9846559d420a2068a6.png',37,36,31,104,3),
(null,'俄罗斯残奥委会','/国旗/RPC_flag.png',36,33,49,118,4),
(null,'荷兰','/国旗/e449bde913469bca9c7478ec17d2fe6c.png',25,17,17,59,5),
(null,'乌克兰','/国旗/7e7082f1071cf8a023b55d070d8d4a1c.png',24,47,27,98,6),
(null,'巴西','/国旗/b06748a153a355351a271eebbaad33d0.png',22,20,30,72,7),
(null,'澳大利亚','/国旗/9c6ae919870434634765897f52ca26b1.png',21,29,30,80,8),
(null,'意大利','/国旗/423cd3ef614db64295db547548f7f923.png',14,29,26,69,9),
(null,'阿塞拜疆','/国旗/b5994a47cf7280e6a536d4cbf954c325.png',14,1,4,19,10),
(null,'日本','/国旗/4d04bde9a3248455c0d977e287c531e1.png',13,15,23,51,11),
(null,'德国','/国旗/635f433e3db5cff4f103ef6f79044195.png',13,12,18,43,12),
(null,'伊朗','/国旗/79bc4fe4b02ad0544af9f2a8fbbe02e1.png',12,11,1,24,13),
(null,'法国','/国旗/cf81fe2ec21bfebf376ca1bfcee07b23.png',11,15,28,54,14),
(null,'西班牙','/国旗/423b6f44c2672d58086b04ac39ae15e5.png',9,15,12,36,15),
(null,'乌兹别克斯坦','/国旗/20d220e5edf0d92d59d0c801290d35d6.png',8,5,6,19,16),
(null,'波兰','/国旗/ce6c0f30021b42f1c151ef67cbf34659.png',7,6,12,25,17),
(null,'匈牙利','/国旗/c8b95824fc07fe8acbd8d0dd9f870da3.png',7,5,4,16,18),
(null,'瑞士','/国旗/be6980d6afd68c698d92dd85b00ac35e.png',7,4,3,14,19),
(null,'墨西哥','/国旗/82e8ef2732cf8ea2554fad9a99a712fd.png',7,2,13,22,20),
(null,'新西兰','/国旗/167bd3c2bfd513e778dc305ce259c126.png',6,3,3,12,21),
(null,'以色列','/国旗/050cd24867acbb4ecf46d59c6dde3301.png',6,2,1,9,22),
(null,'加拿大','/国旗/b57067797fdbe0ebed243460195b2298.png',5,10,6,21,23),
(null,'印度','/国旗/6c614398b737bce50ccbde7c81e9b3df.png',5,8,6,19,24),
(null,'泰国','/国旗/ac36830ed937bf6b6a72cc7040f3380f.png',5,5,8,18,25),
(null,'斯洛伐克','/国旗/c03768ec564b2ea2d5d86237f090b817.png',5,2,4,11,26),
(null,'白俄罗斯','/国旗/e600b0b06bff06f9571c95212705d9bb.png',5,1,1,7,27),
(null,'突尼斯','/国旗/5f801ce25d4e64977ff65e297e82c81a.png',4,5,2,11,28),
(null,'阿尔及利亚','/国旗/fcee719e499c97b1360241ea200d2616.png',4,4,4,12,29),
(null,'摩洛哥','/国旗/06c2200f0d780e6c45fe1b85a35ceca5.png',4,4,3,11,30),
(null,'比利时','/国旗/794d8863eb276713c481c3398736b06e.png',4,3,8,15,31),
(null,'爱尔兰','/国旗/f21c05289221360136774f413160a588.png',4,2,1,7,32),
(null,'尼日利亚','/国旗/0f56edc756c8373e9e344fb3ae4524b4.png',4,1,5,10,33),
(null,'南非','/国旗/806083b74ba7bffb054cd394696aa5a9.png',4,1,2,7,34),
(null,'古巴','/国旗/8598c3b7f6a40874a01150d7cd2e87b0.png',4,1,1,6,35),
(null,'约旦','/国旗/c3ac314388476b0b9f423fc0ae4dcfb1.png',4,0,1,5,36),
(null,'哥伦比亚','/国旗/c4d90329998ce64652def3242854084b.png',3,7,14,24,37),
(null,'委内瑞拉','/国旗/b732e2e43ab41b57957692994bbce292.png',3,2,2,7,38),
(null,'马来西亚','/国旗/4bb2a6c3c185ae0a6b8c5e4b2185a743.png',3,2,0,5,39),
(null,'丹麦','/国旗/e3c72eaf6d6ec0e992035072e762d519.png',3,1,1,5,40),
(null,'韩国','/国旗/e24b749efc12aed7eceb8e7b9f5078e7.png',2,10,12,24,41),
(null,'土耳其','/国旗/4d875ed37e433e9e484b320a53575fef.png',2,4,9,15,42),
(null,'印度尼西亚','/国旗/5c58206f822768fe1f739d63337fad2e.png',2,3,4,9,43),
(null,'捷克','/国旗/92faa38328b03699e10b27be82f5b936.png',2,3,3,8,44),
(null,'智利','/国旗/f6da0af372d2b6641118710cf045f0a9.png',2,3,1,6,45),
(null,'塞尔维亚','/国旗/173de8171422a2e07c0a8b7138728133.png',2,3,1,6,46),
(null,'挪威','/国旗/f6486586ef8546849471effd1f905ae4.png',2,0,2,4,47),
(null,'新加坡','/国旗/bfa997df9a3287f58eb9bad80b087851.png',2,0,0,2,48),
(null,'奥地利','/国旗/a91a98f1379006767add4790e003e8d1.png',1,5,3,9,49),
(null,'瑞典','/国旗/be502f5ee021af3e3cfc8a7ba6273a0b.png',1,5,2,8,50),
(null,'希腊','/国旗/bab6d7566e1c67215259c0ca34b54780.png',1,3,7,11,51),
(null,'芬兰','/国旗/2b0d988284c8c5c1b15c3ea40ecafa4c.png',1,3,1,5,52),
(null,'哈萨克斯坦','/国旗/c497161f8401ab146a036115447f9d2a.png',1,3,1,5,52),
(null,'阿拉伯联合酋长国','/国旗/97325684c165ef2c5443e2886aa62782.png',1,1,1,3,54),
(null,'哥斯达黎加','/国旗/d63e89b9d4932967a905ee9598ea0988.png',1,1,0,2,55),
(null,'厄瓜多尔','/国旗/f7fbe426deae24a394e516e5991c63af.png',1,0,2,3,56),
(null,'塞浦路斯','/国旗/d1d4031036b5b52c1527326c26685c20.png',1,0,1,2,57),
(null,'斯里兰卡','/国旗/2ccabb9f766060be166494ce7f7a62e1.png',1,0,1,2,57),
(null,'埃塞俄比亚','/国旗/11f65d52448c4066fda78f2b0a10123e.png',1,0,0,1,59),
(null,'蒙古','/国旗/d9ac2cfe2d7b2da510558bd57c13c570.png',1,0,0,1,59),
(null,'巴基斯坦','/国旗/70a1ca9aee59dce635247e8ab6976185.png',1,0,0,1,59),
(null,'秘鲁','/国旗/e746c1c28e0ace99f682c54658600be5.png',1,0,0,1,59),
(null,'阿根廷','/国旗/ca4718053280290ad49d44d67ca97743.png',0,5,4,9,63),
(null,'埃及','/国旗/89b307e4091d3b46e794e0a2e0d4c1c0.png',0,5,2,7,64),
(null,'克罗地亚','/国旗/160422fb015875d37b44c1250c25a968.png',0,3,4,7,65),
(null,'拉脱维亚','/国旗/47fb4ad3dd962b18e656576cf31bec23.png',0,3,2,5,66),
(null,'格鲁吉亚','/国旗/7bfc5350c5075b4dd09252973d1d9367.png',0,3,0,3,67),
(null,'中国香港','/国旗/b8a3b2f068e696063814beb06050a696.png',0,2,3,5,68),
(null,'保加利亚','/国旗/dd34daedfcda985e1da5c123e6ad4514.png',0,2,0,2,69),
(null,'伊拉克','/国旗/72e7a0321f9ed79057100ab5335f79a7.png',0,1,2,3,70),
(null,'科威特','/国旗/a606ef021e7e0830e38ed912b50fb107.png',0,1,1,2,71),
(null,'纳米比亚','/国旗/e73d35672947012a5425dcbdf1a7d863.png',0,1,1,2,71),
(null,'罗马尼亚','/国旗/b39393526542732ccd21459616ff480b.png',0,1,1,2,71),
(null,'斯洛文尼亚','/国旗/6449070327b626423eab83cb5d04398b.png',0,1,1,2,71),
(null,'越南','/国旗/6aac7b44e5b3c00692174d153d8fd55f.png',0,1,0,1,75),
(null,'立陶宛','/国旗/ba0a4c43d5e9c7e859767c69620ac8cf.png',0,0,3,3,76),
(null,'葡萄牙','/国旗/823e147f8bde4fef13f26aeeb9d7e691.png',0,0,2,2,77),
(null,'波斯尼亚和黑塞哥维那','/国旗/7e15c566140d7b7619936fa723f807b8.png',0,0,1,1,78),
(null,'萨尔瓦多','/国旗/f900504d0353c1383a61e1ab2064fbe0.png',0,0,1,1,78),
(null,'肯尼亚','/国旗/e65f05edcc5fc316eaca0ddebe551e1c.png',0,0,1,1,78),
(null,'沙特阿拉伯','/国旗/b3b1f269a39ef3b5b1700a854902eb8b.png',0,0,1,1,78),
(null,'黑山','/国旗/7b291296c4fdcc98eba7e7a2b8adba7a.png',0,0,1,1,78),
(null,'阿曼','/国旗/46c82f0674b8b1e47f90efda813e3e73.png',0,0,1,1,78),
(null,'卡塔尔','/国旗/dcd44740b8c6937d005b270be0714b1d.png',0,0,1,1,78),
(null,'中国台北','/国旗/f9a63063ff58c4477dcf5b8143d4bd9b.png',0,0,1,1,78),
(null,'乌干达','/国旗/05fb2ba9e2f2115dcc05988981608613.png',0,0,1,1,78);

#中国金牌榜
CREATE TABLE tokyo_pg_cngoldmedal(
  cngmid int primary key auto_increment,
  name varchar(128) not null,
  gametype varchar(256) not null,
  img varchar(256) not null,
  time varchar(16) not null
);
insert into tokyo_pg_cngoldmedal values
(null,'李豪','轮椅击剑-男子佩剑A级','/goldmedal/70a9162c9526fd49e5e516604e74dadc.jpeg','08-25'),
(null,'冯彦可','轮椅击剑-男子佩剑B级','/goldmedal/adbdc758a76f2fba624bd6497e44d4db.jpeg','08-25'),
(null,'边静','轮椅击剑-女子佩剑A级','/goldmedal/ef807b89e17d999d3e30e4c56a5c39e9.jpeg','08-25'),
(null,'谭淑梅','轮椅击剑-女子佩剑B级','/goldmedal/f0a8acac1fa7ad5419d5998cfa43dc0e.jpeg','08-25'),
(null,'张丽','游泳-女子200米自由泳S5级','/goldmedal/7b0201d33785067838b065dc4a39e29e.jpeg','08-25'),
(null,'郭玲玲','力量举重-女子41公斤级','/goldmedal/bba5ba1567a3d184019b3a06e0440740.jpeg','08-26'),
(null,'中国游泳队','游泳-混合4×50米自由泳接力','/goldmedal/383aa11fd73f02e63f3575933ea3d75d.jpeg','08-26'),
(null,'谭淑梅','轮椅击剑-女子重剑B级','/goldmedal/fd7282c2e17add5e7a0ffa284132761a.jpeg','08-26'),
(null,'齐勇凯','力量举重-男子59公斤级','/goldmedal/a3fcd9f2accfe511f612c62c2498446d.jpeg','08-27'),
(null,'周霞','田径-女子100米T35级','/goldmedal/82d4782a15cf1fc770d6f820bc4b7a12.jpeg','08-27'),
(null,'董飞霞','田径-女子铁饼F55级','/goldmedal/d1926c211df8777896991506af267b31.jpeg','08-27'),
(null,'胡丹丹','力量举重-女子50公斤级','/goldmedal/cb300c888441eb283e05fe61b12f286b.jpeg','08-27'),
(null,'李樟煜','场地自行车-男子C1-3级1000米计时赛','/goldmedal/345c3aa7aa89f8086b92d9bacfe8991d.jpeg','08-27'),
(null,'郑涛','游泳-男子50米蝶泳','/goldmedal/47385e15e5b27978ed96f75c322dc0b1.jpeg','08-27'),
(null,'卢冬','游泳-女子50米蝶泳','/goldmedal/117dc488bb14bd4089a0aedf40b17629.jpeg','08-27'),
(null,'文晓燕','田径-女子200米T37级','/goldmedal/d181a22ddf4817d4a73b5ba1246807d7.jpeg','08-27'),
(null,'刘磊','力量举重-男子65公斤级','/goldmedal/2a3fc0eb3b6b987bbd7212ca4802b144.jpeg','08-27'),
(null,'中国轮椅击剑队','轮椅击剑-女子团体重剑','/goldmedal/7f5236a5f28bccf019c7004b98164272.jpeg','08-27'),
(null,'邸东东','田径-男子跳远T11级','/goldmedal/e5360213958fc534fa63fd4b9f2986bc.jpeg','08-27'),
(null,'刘翠青','田径-女子400米T11级','/goldmedal/1ab19c8d9e0fdf539ab7b673f726914b.jpeg','08-28'),
(null,'谭玉娇','力量举重-女子67公斤级','/goldmedal/d7988379eb22413d78a217e9cbb28931.jpeg','08-28'),
(null,'刘玉','游泳-女子150米个人混合泳SM4级','/goldmedal/70af2cc4c73b9b2d38af2bb4274400f3.jpeg','08-28'),
(null,'蔡丽雯','游泳-女子100米仰泳S11级','/goldmedal/213c015190fde64919e44c44106c03b8.jpeg','08-28'),
(null,'孙刚','轮椅击剑-男子花剑A级','/goldmedal/4b612b5ecfeb203dc8e31d2d45d2bbc7.jpeg','08-28'),
(null,'冯攀峰','乒乓球-男子单打TT3级','/goldmedal/e45041d8bd7ef0753eb638f4084d590f.jpeg','08-28'),
(null,'冯彦可','轮椅击剑-男子花剑B级','/goldmedal/ac7f426ced6cbc6f1728feb92c01da66.jpeg','08-28'),
(null,'陈敏仪/张天鑫','射箭-混合团体W1级','/goldmedal/9c6ad20787ca4e75289a30b274cb9a06.jpeg','08-28'),
(null,'辜海燕','轮椅击剑-女子花剑A级','/goldmedal/1cf49caf452ba2962139c4915b60ffd8.jpeg','08-28'),
(null,'刘静','乒乓球-女子单打W1-2级','/goldmedal/7fad54d8ecccf49482455fd19ab57da3.jpeg','08-28'),
(null,'刘利','田径-男子掷棒F32级','/goldmedal/18508e2717a62d29f6bd8e92d0308449.jpg','08-28'),
(null,'周影','乒乓球-女子单打WS4级','/goldmedal/7ee89a2f6a2ab73d6c6c776db01b1ce7.jpeg','08-29'),
(null,'姚娟','田径-女子铁饼F64级','/goldmedal/b50ffa563f6dcc42beaa30d8fecaaf0f.jpeg','08-29'),
(null,'史逸婷','田径-女子200米T36级','/goldmedal/a3568505a0fc5336f733c8e1bc3b2d15.jpeg','08-29'),
(null,'闫硕','乒乓球-男子单打MS7级','/goldmedal/c8761940b265583873a87063b627fe7f.jpeg','08-29'),
(null,'茅经典','乒乓球-女子单打WS8级','/goldmedal/5606d1b6931b9af2c2fb1f9b06606d73.jpeg','08-29'),
(null,'张变','乒乓球-女子单打TT5级','/goldmedal/e3816b2b3f9338d6898845de98bacfd6.jpg','08-29'),
(null,'薛娟','乒乓球-女子单打TT3级','/goldmedal/204b5c6863b9b84c4bdd76cccd5e416a.jpeg','08-29'),
(null,'邹连康','游泳-男子50米仰泳S3级','/goldmedal/307cb57a24eb574052789013116d58a1.jpeg','08-29'),
(null,'马佳','游泳-女子50米自由泳S11级','/goldmedal/08807d786143d9754aadcf666c8bb5b7.jpg','08-29'),
(null,'闫盼盼','力量举重-男子97公斤级','/goldmedal/3b5453f69676703c184e202ba2034dac.jpeg','08-29'),
(null,'周霞','田径-女子200米T35级','/goldmedal/1a8aeeb5e5adcfac86fff5f32e5ad467.jpg','08-29'),
(null,'林月珊/何梓豪','射箭-复合弓公开级混合团体','/goldmedal/40ebe5973f5f14071d8db8e4c9cf7cbf.jpeg','08-29'),
(null,'文晓燕','田径-女子跳远T37级','/goldmedal/6f6e6118116436a43c5775c72a918e21.jpeg','08-29'),
(null,'邹莉娟','田径-女子标枪F34级','/goldmedal/4a3c3d0f473af60d56bd18e7da997d3f.jpeg','08-29'),
(null,'孙刚/李豪/胡道亮','轮椅击剑-男子团体花剑','/goldmedal/ad26856c8f202a0956e4a4f8ffcbe9f0.jpg','08-29'),
(null,'荣静/辜海燕/周景景','轮椅击剑-女子团体花剑','/goldmedal/90c0b6922301811f13fee7a5f8c724cb.jpeg','08-29'),
(null,'赵帅','乒乓球-男子单打MS8级','/goldmedal/90c0b6922301811f13fee7a5f8c724cb.jpeg','08-30'),
(null,'董超','射击-男子R2-SH1级10米气步枪站姿','/goldmedal/60d4721d532a37faccbe6ab64f15c9f7.jpeg','08-30'),
(null,'邓雪梅','力量举重-女子86公斤以上级','/goldmedal/60d4721d532a37faccbe6ab64f15c9f7.jpeg','08-30'),
(null,'王金刚','游泳-男子50米蝶泳S6级','/goldmedal/d8a4e050acfedcf021adc21a47b8ab27.jpeg','08-30'),
(null,'蒋裕燕','游泳-女子50米蝶泳S6级','/goldmedal/612072bb120b8394d3e33e468aa7f574.jpeg','08-30'),
(null,'郑涛','游泳-男子50米仰泳S5级','/goldmedal/f665947b818f2352ada38efd833d8e74.jpeg','08-30'),
(null,'卢冬','游泳-女子50米仰泳S5级','/goldmedal/35d643964766dacf002187eb6566a86b.jpeg','08-30'),
(null,'马佳','游泳-女子200米个人混合泳SM11级','/goldmedal/08807d786143d9754aadcf666c8bb5b7.jpeg','08-30'),
(null,'张亮敏','田径-女子铁饼F11级','/goldmedal/12e288d149a4c90153e49e0c0c9bcba4.jpeg','08-31'),
(null,'邹莉娟','田径-女子铅球F34级','/goldmedal/b269cc7c090787a3abc14a59281b4b09.jpg','08-31'),
(null,'何梓豪','射箭-男子复合弓公开级个人赛','/goldmedal/ae40f42f7ee6bcccb23f8eeb66c57d23.jpeg','08-31'),
(null,'杨超','射击-男子10米气手枪P1-SH1级','/goldmedal/6660c52b068524b0dd61135c7984586f.jpeg','08-31'),
(null,'陈健新','公路自行车-男子T1-2级计时赛','/goldmedal/e2fcc635a58ca6a39cbe08bd546731b1.jpeg','08-31'),
(null,'周召倩','田径-女子1500米T54级','/goldmedal/3075487a19685c378d429f3fad36d565.jpg','08-31'),
(null,'刘利','田径-男子铅球F32级','/goldmedal/8f5e70abd73ac3642ed3685cd542daf1.jpg','08-31'),
(null,'蒋芬芬','田径-女子400米T37级','/goldmedal/26df4c24edbe8af6cb21315136a44c26.jpg','08-31'),
(null,'朱德宁','田径-男子跳远T38级','/goldmedal/2b593f4111ffdc66cdefc179db7d0cbf.jpeg','09-01'),
(null,'陈敏仪','射箭-女子W1级','/goldmedal/ddf31ad2646656600303505805d081e8.jpeg','09-01'),
(null,'史逸婷','田径-女子100米T36级','/goldmedal/17e29f48561d9eca7a39f37541430246.jpeg','09-01'),
(null,'郑涛','游泳-男子50米自由泳S5级','/goldmedal/8dd02b43a39415bda85f6251dfbde4e7.jpeg','09-01'),
(null,'高芳','田径-女子100米T53级','/goldmedal/ad2a2e7f9e4425a135f1fcc217c01a00.jpeg','09-01'),
(null,'周召倩','田径-女子100米T54级','/goldmedal/3075487a19685c378d429f3fad36d565.jpg','09-01'),
(null,'文晓燕','田径-女子100米T37级','/goldmedal/6f6e6118116436a43c5775c72a918e21.jpeg','09-02'),
(null,'曹宁宁/郭兴元/张岩','乒乓球-男子团体C4-5级','/goldmedal/f6632846c385c3e9c58ecc79b8ca1eb7.jpeg','09-02'),
(null,'茅经典/黄文娟/王睿','乒乓球-女子团体C6-8级','/goldmedal/6c88b8dd1f8a3df3ffd6dbeb32bad4ec.jpeg','09-02'),
(null,'陈健新','公路自行车-男子大组赛T1-2级','/goldmedal/e2fcc635a58ca6a39cbe08bd546731b1.jpeg','09-02'),
(null,'薛娟/李倩/刘静','乒乓球-女子团体C1-3级','/goldmedal/ed1e4cec382d2aec63c3942789bbdd74.jpeg','09-02'),
(null,'黄兴','射击-25米混合组运动手枪P3-SH1级','/goldmedal/eec8e75ec9e008b5bcd53c79db813627.jpeg','09-02'),
(null,'蒋裕燕','游泳-女子400米自由泳S6级','/goldmedal/ed804f413fdb074efdaaa5a34a96b088.jpeg','09-02'),
(null,'赵帅/彭伟楠/叶超群','乒乓球-男子团体MT8级','/goldmedal/088f82fddc4982f060f742559e9c73d4.jpeg','09-02'),
(null,'冯攀峰/翟翔/赵平','乒乓球-男子团体MT3级','/goldmedal/6e33b01fcb41fbf3bd57d415c9109225.jpeg','09-02'),
(null,'张变/周影/张淼','乒乓球-女子团体C4-5级','/goldmedal/061dbd3a0a88765e6b97f150b9f83003.jpeg','09-03'),
(null,'闫硕/廖克力/陈超','乒乓球-男子团体MT6-7级','/goldmedal/46c687235cfef045e9676144f3bb5d1b.jpeg','09-03'),
(null,'张翠平','射击-女子R7-SH1级50米自选步枪','/goldmedal/43cff91dedad41d70aa72d4ad9741d3b.jpeg','09-03'),
(null,'贾红光','游泳-男子100米仰泳S6级','/goldmedal/541748f441b2ccecaa9376a570ea2648.jpeg','09-03'),
(null,'刘玉','游泳-女子50米仰泳S4级','/goldmedal/e6864b83e0f2bad41beee916c8482d17.jpeg','09-03'),
(null,'李桂芝','游泳-女子100米自由泳S11级','/goldmedal/e6f1a9a046296a2337baa62e29e9baf9.jpeg','09-03'),
(null,'连浩/赵裔卿','乒乓球-男子团体MT9-10级','/goldmedal/99dbfd0d18e4cd05b38b0584efae1887.jpeg','09-03'),
(null,'卢冬','游泳-女子200米个人混合泳SM5级','/goldmedal/35d643964766dacf002187eb6566a86b.jpeg','09-03'),
(null,'吴国山','田径-男子铅球F57级','/goldmedal/dc68111c2841ce139040e22a75cb3eb5.jpeg','09-03'),
(null,'邓培程','田径-男子100米T36级','/goldmedal/8f2085a22f42c2b8ce163db028435df5.jpg','09-04'),
(null,'杨秋霞','羽毛球-女子单打SU5级','/goldmedal/73a365baad0ae8a137825d72dd9252ab.jpeg','09-04'),
(null,'刘翠青','田径-女子200米T11级','/goldmedal/986f758418749211ec720718d0bb2650.jpeg','09-04'),
(null,'刘禹彤','羽毛球-女子单打WH2级','/goldmedal/1aa58f3fe773fc4bc504773acd4d1901.jpeg','09-04'),
(null,'屈子墨','羽毛球-男子单打WH1级','/goldmedal/1be087b6710dd10fd4639e8816995245.jpeg','09-04'),
(null,'孙鹏祥','田径-男子标枪F41级','/goldmedal/910c5b6787cba607344cc78dc6759003.jpeg','09-04'),
(null,'米娜','田径-女子铁饼F38级','/goldmedal/c6e828bba3de7dfccbd5cdd2dc410f6f.jpeg','09-04'),
(null,'李朝燕','田径-男子马拉松T46级','/goldmedal/19b3eec1b00fb7eaa4bd1c18319d0d6f.jpg','09-05'),
(null,'程和芳','羽毛球-女子单打SL4级','/goldmedal/755ffaa6e4c6d18d4b2d94318c0ab9f7.jpg','09-05'),
(null,'屈子墨/麦建朋','羽毛球-男子双打WH1-WH2级','/goldmedal/a723753c5b4cbad83436f308f56a0b90.jpg','09-05');

#残奥画报表
CREATE TABLE tokyo_pg_imgnews(
  imgnid int primary key auto_increment,
  title varchar(256) not null,
  article varchar(2048) not null,
  showimg varchar(256) not null
);
insert into tokyo_pg_imgnews values
(null,'[图]200米个人混合泳SM5级 卢冬夺第4金成姣摘银','央视网消息：北京时间9月3日，东京残奥会200米个人混合泳SM5级决赛卢冬发挥出色，在50米、100米、150米都保持第一，最终她以3分20秒53的成绩第一个抵达终点，这也是她本人在本届残奥会上收获的第4枚金牌。队友成姣落后0.27秒获得银牌。','/画报/1/1.jpg'),
(null,'[图]残奥会乒乓球女子团体C4-5级：中国队逆转夺金','央视网消息：北京时间9月3日，东京残奥会乒乓球女子团体C4-5级决赛，由张变和周影搭档的中国组合在双打2-3落后1分的情况下，两轮单打均以3-1战胜对手，总比分2-1逆转瑞典，拿下该项目的金牌。','/画报/2/1.jpg'),
(null,'[图]蒋裕燕女子400米自由泳S6级破纪录夺金','央视网消息：北京时间9月2日，东京残奥会游泳女子400米自由泳S6级决赛，中国选手蒋裕燕以5分04秒57的成绩获得金牌，并打破世界纪录，这是中国代表团本届残奥会获得的第75枚金牌。乌克兰选手获得银牌，瑞士选手获得铜牌，另一名中国选手宋玲玲5分28秒88排名第5。','/画报/3/1.jpg'),
(null,'[图]残奥会-女子100米T37级 文晓燕破世界纪录夺金','央视网消息：东京残奥会田径女子100米T37级决赛，中国选手文晓燕以13秒的成绩破世界纪录夺金，蒋芬芬以13秒17获得铜牌！','/画报/4/PHOTPXL540qSsdl2yQb55vUi210902_1000x2000.jpg'),
(null,'[图]郑涛50米自S5级破纪录夺金 中国队包揽金银铜','央视网消息：北京时间9月1日，东京残奥会男子50米自由泳S5级，中国队包揽金银铜，郑涛30秒31获得金牌，并打破残奥会纪录，袁伟译31秒11获银牌，王李超31秒35获铜牌。','/画报/5/PHOT8q2lR1k57owz4yKXbuk9210901_1000x2000.jpg'),
(null,'[图]东京残奥会-史逸婷T36级百米破纪录夺冠','央视网消息：北京时间9月1日，在东京残奥会田径项目女子100米T36级决赛中，中国选手史逸婷以13秒61的成绩夺金，并打破由自己保持的世界纪录，成功包揽东京残奥会田径T36级的100米和200米两项金牌。此前，她以追平残奥会纪录的好成绩，夺得女子200米T36级金牌。','/画报/6/PHOT8x3h486jQWM84DzpN5mS210901_1000x2000.jpg'),
(null,'[图]男子跳远中国队包揽金银牌 朱德宁破纪录夺冠','央视网消息：北京时间9月1日，在2020东京残奥会田径男子跳远T38决赛中，中国队再次包揽金银牌。中国队派出朱德宁、衷黄浩分别获得金牌和银牌，其中朱德宁以7.31米的成绩破记录夺金。','/画报/7/PHOThQEHmLOVRadl1nVWkOv7210901_1000x2000.jpg'),
(null,'[图]残奥射箭女子W1级陈敏仪夺金 收获个人第二金','央视网消息：北京时间9月1日，东京残奥会射箭女子W1级个人赛，中国选手陈敏仪142比131击败捷克选手，夺得金牌，同时也打破了残奥会纪录。这也是陈敏仪在本届残奥会收获的第二枚金牌，此前，在W1级混合团体赛决赛的比赛中她和张天鑫组合，以138比132战胜了捷克队，获得金牌。','/画报/8/PHOTHqgcILjnELd1VXjx3uRc210901_1000x2000.jpg'),
(null,'[图]杨超成功卫冕 中国残奥射击队再入1金1银','央视网消息：北京时间8月31日，东京残奥会射击P1男子10米气手枪SH1级比赛在朝霞射击场落下帷幕，里约冠军杨超以总成绩237.9环成功卫冕并刷新残奥纪录，同样来自中国队的黄兴以0.5环之差位居亚军，季军由印度枪手辛格拉夺得。','/画报/9/PHOTiTW38O2HmZTjrHApFhMx210831_1000x2000.jpg'),
(null,'[图]东京残奥会-周召倩获女子1500米T54决赛金牌','央视网消息：北京时间8月31日，东京残奥会女子1500米T54决赛，周召倩以3分27秒63刷新个人最佳成绩，为中国代表团拿下本届残奥会第60金。','/画报/10/PHOT6l1Bf7CaaB5SOlPAveK9210831_1000x2000.jpg'),
(null,'[图]创造历史！中国女子轮椅篮球闯入残奥会四强','央视网消息：北京时间8月31日，东京残奥会轮椅篮球1/4决赛，中国女队与英国队交锋。中国女队以47-33大胜英国队，收获本届赛事5连胜，历史上首次跻身残奥会四强！','/画报/11/PHOTh1oRLxvJ3yZgtZ76reNy210831_1000x2000.jpg'),
(null,'[图]残奥会-中国盲人足球队战胜日本队晋级四强','央视网消息：北京时间8月31日，东京残奥会男子盲人足球A组第3轮小组赛，中国队对阵东道主日本队。凭借朱瑞铭的梅开二度，中国队2-0战胜日本队，以2胜1负的战绩晋级四强。','/画报/12/PHOTtTbDxYHDU8MSZAbaa2OD210831_1000x2000.jpg'),
(null,'[图]东京残奥会游泳：马佳200米混合泳再夺一金','央视网消息：北京时间8月30日，东京残奥会游泳项目第六个比赛日，在29日刚以打破世界纪录的成绩夺得女子50米自由泳S11级冠军的马佳在今晚的泳池中续写着荣耀。她在女子200米个人混合泳SM11级决赛中以2分42秒14的夺冠并刷新世界纪录，蔡丽雯以2分42秒91获得亚军。','/画报/13/PHOT9qpYyvVSwzH352mdSeYZ210830_1000x2000.jpg'),
(null,'[图]残奥会5人制盲人足球小组赛：中国1-0击败法国','央视网消息：北京时间8月30日，东京残奥会5人制盲人足球小组赛，中国队1-0击败法国队。','/画报/14/PHOTD1ZSVlyn1RsYVKp1iJVa210830_1000x2000.jpg'),
(null,'[图]乒乓球男子单打MS8级 赵帅胜乌克兰选手夺金','央视网消息：东京残奥会乒乓球男子单打MS8级别决赛，中国选手赵帅3-1战胜乌克兰选手夺得金牌，这是中国代表团本届残奥会获得的第47枚金牌。','/画报/15/PHOT9vA7rA5nWjs0L7g8O9vy210830_1000x2000.jpg'),
(null,'[图]残奥游泳重赛中国再次包揽金银 马佳又破世界纪录','央视网消息：北京时间8月29日，东京残奥会女子50米自由泳决赛（视觉障碍S11级）进行重赛，中国选手马佳以29秒20的成绩打破世界纪录获得冠军，李桂芝以29秒72拿到银牌。上诉的荷兰选手布鲁因斯马，只以30秒19排在第四。','/画报/16/PHOTehCL2YRxRgv5W6l3pZDN210829_1000x2000.jpg'),
(null,'[图]东京残奥会女子200百米T35级 周霞破纪录夺金','央视网消息：北京时间8月29日，东京残奥会田径女子200米T35级决赛，中国队周霞以27秒17的成绩破世界纪录夺冠。','/画报/17/PHOT94RCNOq9uQwvDnuCzeDJ210829_1000x2000.jpg'),
(null,'[图]东京残奥会邹连康男子50米仰泳S3级夺金','央视网消息：北京时间8月29日，东京残奥会邹连康男子50米仰泳S3级夺金。','/画报/18/PHOTwvPwt5hJmNTP9WtwRpXH210829_1000x2000.jpg'),
(null,'[图]乒乓球男单MS7：闫硕3-1击败卫冕冠军收获金牌','央视网消息：8月29日，在东京残奥会乒乓球赛场迎来了多场金牌赛，在男单MS7金牌赛中，闫硕以3-1击败卫冕冠军、英国选手威尔·贝利，夺得个人首枚残奥金牌。','/画报/19/PHOTypSeqwr3Tepbb8Cni0r4210829_1000x2000.jpg'),
(null,'[图]乒乓球女单WS4级：周影3-0击败印度选手摘金','央视网消息：8月29日，在东京残奥会乒乓球赛场迎来了多场金牌赛，在女单WS4级金牌赛争夺赛中，周影以3-0击败印度选手巴维纳·哈斯穆克哈伊·帕特尔，为中国乒乓球队再入一金。','/画报/20/PHOTRHg0dI5WFy7gcrsMMakz210829_1000x2000.jpg'),
(null,'[图]田径女子200米T36决赛 史逸婷平世界纪录夺金','央视网消息：8月29日是东京残奥会田径项目的第三个比赛日，在女子200米T36级决赛，里约冠军史逸婷以28秒21成功卫冕，这一用时平了她自己在2019年世锦赛上创造的世界纪录。新西兰选手丹妮尔·艾奇逊以29秒88获得亚军，季军由阿根廷选手雅尼娅·马丁内斯夺得。','/画报/21/PHOTetpRvmrctO1S1wHrFihY210829_1000x2000.jpg'),
(null,'[图]女子铁饼姚娟打破残奥世界纪录夺金杨月摘银','央视网消息：8月29日是东京残奥会田径项目的第三个比赛日，女子铁饼-F64级比赛是中国选手当天参加的首场田径决赛，姚娟以44米73夺冠并再次刷新F44级世界纪录。杨月以40米48获得亚军。','/画报/22/PHOTbpJjbf85tYOb4TPe8eUz210829_1000x2000.jpg'),
(null,'[图]56秒25打破残奥纪录 刘翠青女子400米T11级夺金','央视网消息：北京时间8月28日，东京残奥会女子400米T11级（视力障碍）决赛中，中国选手刘翠青56秒25获得金牌，并打破残奥会纪录，这是中国代表团本届残奥会获得的第20枚金牌。','/画报/23/PHOTTuvF9U3yrnkTejkqt9jC210828_1000x2000.jpg'),
(null,'[图]东京残奥会力量举重65公斤级 刘磊完成四连冠','央视网消息：北京时间8月27日，男子-65公斤级决赛结束争夺，中国选手刘磊以198公斤夺得冠军，东京残奥会是刘磊参加的第四届残奥会，过往三届残奥会他分别在三个不同重量级夺得冠军。','/画报/24/PHOTSfkNiTeLB2TwracwCUO7210827_1000x2000.jpg'),
(null,'[图]举重女子50公斤级决赛 中国选手胡丹丹夺冠','央视网消息：东京残奥会举重女子50公斤级决赛，中国选手胡丹丹获得金牌。','/画报/25/PHOTDNcFEcuqIwRY048qVWje210827_1000x2000.jpg'),
(null,'[图]东京残奥会女子百米T35级 周霞破世界纪录夺金','央视网消息：东京残奥会田径项目首个比赛日，女子100米T35级决赛，中国队周霞以13秒的成绩破世界纪录夺冠。','/画报/26/PHOT0uY5ObzH37LFQlkR2N47210827_1000x2000.jpg'),
(null,'[图]东京残奥会举重男子59公斤级决赛 齐勇凯夺冠','央视网消息：北京时间8月27日，东京残奥会举重男子59公斤级决赛，中国选手齐勇凯获得金牌。','/画报/27/PHOTuxCEDe3JIXQ3bbNnyvnc210827_1000x2000.jpg'),
(null,'[图]轮椅击剑女子重剑个人赛B级 谭淑梅夺得金牌','央视网消息：北京时间8月26日，东京残奥会轮椅击剑女子重剑个人赛B级决赛，中国选手谭淑梅以3-0战胜俄罗斯残奥队选手博伊科娃，夺得金牌。','/画报/28/PHOTM68pO74YpUs9wygNxSAn210826_1000x2000.jpg'),
(null,'[图]破世界纪录！中国获男女混合4x50米自接力金牌','央视网消息：北京时间8月26日，在东京残奥会男女混合4x50米自由泳接力20分决赛中，中国队打破世界纪录夺冠，为中国代表团拿到东京残奥会第7金。','/画报/29/PHOTaykIbVv4lWwQZWyiENMI210826_1000x2000.jpg'),
(null,'[图]残奥会力量举重 郭玲玲夺冠并创造新世界纪录','央视网消息：东京残奥会力量举重女子-41公斤级决赛，中国选手郭玲玲夺冠并以109公斤夺冠并创造新的世界纪录。','/画报/30/PHOTRf6fLn6SKY4ySTsLTwmT210826_1000x2000.jpg'),
(null,'[图]咬球拍脚抛球 残奥会唯一用嘴打乒乓球的运动员','央视网消息：易卜拉欣·哈马托曾是埃及达米埃塔市的一名工匠，10岁时在一次火车事故当中他失去双臂。但这并不影响他对乒乓球的热爱，在多年的练习下，他锻炼出了独特的打球能力：口衔球拍，用脚发球，实现击打。就这样，他成功代表埃及打进了2016年的里约残奥会。如今，在东京，他实现了自己第二次残奥之旅。','/画报/31/PHOT38AnKNw1XAms7zsDoI77210826_1000x2000.jpg'),
(null,'[图]卫冕冠军张丽夺东京残奥会中国队泳池首金','央视网消息：8月25日，里约残奥4金得主张丽，在女子100米自由泳S5级决赛中以2分46秒53成功卫冕，为中国游泳队夺得东京残奥会首枚游泳金牌。','/画报/32/PHOThoIIkcgyMwVCTbJqhm32210825_1000x2000.jpg'),
(null,'[图]第三金！边静夺得女子佩剑个人A级赛金牌','央视网消息：北京时间8月25日，东京残奥会女子佩剑个人赛A级金牌赛，中国选手边静以15-7战胜妮诺·提比拉施维利，夺得本届残奥会中国女子轮椅击剑队首枚金牌。','/画报/33/PHOT0dIXB7eUNWA4VN86y8QF210825_1000x2000.jpg'),
(null,'[图]世锦赛“四冠王”谭淑梅佩剑个人赛B级赛夺金','央视网消息：8月25日，东京残奥会女子佩剑个人赛B级金牌赛，中国选手谭淑梅以15-7战胜乌克兰选手奥莱娜·费多塔，夺得金牌。另一名中国选手肖蓉获得该项目铜牌。','/画报/34/PHOTpzzqt7FGG9oVJ8yoIRc8210825_1000x2000.jpg'),
(null,'[图]第2金！冯彦可残奥会男子佩剑个人B级赛夺金','央视网消息：北京时间8月25日，继李豪摘得男子佩剑个人赛A级金牌之后，中国击剑选手冯彦可在男子佩剑个人赛B级比赛中为中国队再入一金。','/画报/35/PHOTuJUrXPTNHCUWX6yHhRUP210825_1000x2000.jpg'),
(null,'[图]残奥会中国队首金诞生 李豪获佩剑个人A级冠军','央视网消息：东京残奥会于25日进入首个比赛日。在结束的男子佩剑个人A级角逐中，来自上海的选手李豪夺得冠军。这是中国代表团在本届东京残奥会上获得的首枚金牌。','/画报/36/PHOTg2QxME5AETRxIaFPu9rC210825_1000x2000.jpg'),
(null,'[图]王小梅C1-3级3000米个人追逐赛遗憾摘银','央视网消息：北京时间8月25日，东京残奥会场地自行车女子3000米个人追逐赛C1-3金牌赛在伊豆自行车竞赛馆结束争夺，中国选手王小梅以3分54秒975摘得银牌，这是中国代表团在东京残奥会获得的首枚奖牌。','/画报/37/PHOT3jb7s2CJUChNssdAKXkh210825_1000x2000.jpg'),
(null,'[图]东京残奥会中国女子轮椅篮球队首战迎来大胜','央视网消息：2021年8月25日，东京残奥会女子轮椅篮球小组赛，中国队首战大胜阿尔及利亚队。','/画报/38/PHOT5fsiwedTGw1vGeXBIM5F210825_1000x2000.jpg'),
(null,'[图]残奥会钱王伟打破C1级3000米个人追逐赛世界纪录','央视网消息：8月25日，在日本伊豆举行的东京残奥会场地自行车女子C1-3级3000米个人追逐赛资格赛中，中国选手钱王伟以4分31秒476的成绩打破女子C1级3000米个人追逐赛世界纪录。','/画报/39/PHOTXLhU6aAzfi5JWWdJl4GV210825_1000x2000.jpg'),
(null,'[图]东京残奥会开幕式举行 主火炬被点燃','央视网消息：北京时间8月24日，2020东京残奥会开幕式于日本举行，主火炬被点燃。','/画报/40/PHOT1FOHSoNO6m9mRFuntTzH210824_1000x2000.jpg'),
(null,'[图]东京残奥会开幕式举行 中国代表团入场','央视网消息：北京时间8月24日，2020东京残奥会开幕式，中国代表团入场。','/画报/41/PHOT1kchFnfboVsyLaZvAJHK210824_1000x2000.jpg'),
(null,'[图]东京残奥会开幕式举行 参赛代表团陆续入场','央视网消息：北京时间8月24日，2020东京残奥会开幕式于日本东京举行。','/画报/42/PHOTo8kmcJnj8RE7IuvW7mD4210824_1000x2000.jpg'),
(null,'[图]残奥会开幕式在即 火炬传递抵达东京完成汇集','央视网消息：2021年8月24日，2020东京残奥会开幕式在即，火炬传递抵达东京完成汇集。','/画报/43/PHOTmVx7jQxb2YGDjttwXQU2210824_1000x2000.jpg'),
(null,'[图]历届残奥会开幕式中国代表团的入场瞬间','央视网消息：北京时间8月24日，盘点历届残奥会开幕式中国代表团的入场瞬间。','/画报/44/PHOTE1ws0dGvTwF2Mj4md1bl210824_1000x2000.jpg');

#残奥画报图片表
CREATE TABLE tokyo_pg_imgnewsimgs(
  imgnimgsid int primary key auto_increment,
  imgurl varchar(256) not null,
  imgnid int not null,
  foreign key(imgnid) references tokyo_pg_imgnews(imgnid)
);
insert into tokyo_pg_imgnewsimgs values
(null,'/画报/1/1.jpg',1),
(null,'/画报/1/2.jpg',1),
(null,'/画报/1/3.jpg',1),
(null,'/画报/1/4.jpg',1),
(null,'/画报/1/5.jpg',1),
(null,'/画报/1/6.jpg',1),
(null,'/画报/2/1.jpg',2),
(null,'/画报/2/2.jpg',2),
(null,'/画报/2/3.jpg',2),
(null,'/画报/2/4.jpg',2),
(null,'/画报/2/5.jpg',2),
(null,'/画报/2/6.jpg',2),
(null,'/画报/3/1.jpg',3),
(null,'/画报/3/2.jpg',3),
(null,'/画报/3/3.jpg',3),
(null,'/画报/3/4.jpg',3),
(null,'/画报/3/5.jpg',3),
(null,'/画报/3/6.jpg',3),
(null,'/画报/3/7.jpg',3),
(null,'/画报/4/PHOT1JyE49Pvhbcj0hjzjCG0210902_1000x2000.jpg',4),
(null,'/画报/4/PHOT6ZYIGvED395ZvEAMq5Qy210902_1000x2000.jpg',4),
(null,'/画报/4/PHOTox9166seH8mZyT6ikuwb210902_1000x2000.jpg',4),
(null,'/画报/4/PHOTPXL540qSsdl2yQb55vUi210902_1000x2000.jpg',4),
(null,'/画报/5/PHOT8pUcxcxv5n1HpMG6daVm210901_1000x2000.jpg',5),
(null,'/画报/5/PHOTOdwa7vRQKwP6zE1Oum04210901_1000x2000.jpg',5),
(null,'/画报/5/PHOTPIEkW8bjmxexAVP9n5Tn210901_1000x2000.jpg',5),
(null,'/画报/5/PHOT8q2lR1k57owz4yKXbuk9210901_1000x2000.jpg',5),
(null,'/画报/5/PHOTThFBjhyksBA27Geq77cO210901_1000x2000.jpg',5),
(null,'/画报/5/PHOTw6O1KRGicknMxyCJkdUv210901_1000x2000.jpg',5),
(null,'/画报/6/PHOT8x3h486jQWM84DzpN5mS210901_1000x2000.jpg',6),
(null,'/画报/6/PHOTauu1zFexXNTDeJdaRQ0O210901_1000x2000.jpg',6),
(null,'/画报/6/PHOTJcNwYJYwHQYwgm72Ei01210901_1000x2000.jpg',6),
(null,'/画报/6/PHOTVi7R3Dwcu4yokwEC61rL210901_1000x2000.jpg',6),
(null,'/画报/6/PHOTYaKdOaKTDCJYY82eYL6n210901_1000x2000.jpg',6),
(null,'/画报/7/PHOT7sRBgmqI6G0GkCa4osNJ210901_1000x2000.jpg',7),
(null,'/画报/7/PHOThQEHmLOVRadl1nVWkOv7210901_1000x2000.jpg',7),
(null,'/画报/7/PHOTI3VbeLgWKVlZGeIclRe8210901_1000x2000.jpg',7),
(null,'/画报/7/PHOTxTfOzqoyQKcFoirhdaAe210901_1000x2000.jpg',7),
(null,'/画报/8/PHOTHqgcILjnELd1VXjx3uRc210901_1000x2000.jpg',8),
(null,'/画报/8/PHOTlTblEjQnNUOBMyTfMeeh210901_1000x2000.jpg',8),
(null,'/画报/8/PHOTS6apGEUKOPUuRCC5LeIa210901_1000x2000.jpg',8),
(null,'/画报/8/PHOTZ5tDp0ZDAkvNmMOYFZlA210901_1000x2000.jpg',8),
(null,'/画报/9/PHOT6YcRU5F66SE6LW7PziIr210831_1000x2000.jpg',9),
(null,'/画报/9/PHOTiTW38O2HmZTjrHApFhMx210831_1000x2000.jpg',9),
(null,'/画报/9/PHOTIzdJA9esZZlab0EJDp59210831_1000x2000.jpg',9),
(null,'/画报/9/PHOTM6emd1hlS6BQFCYPXcrL210831_1000x2000.jpg',9),
(null,'/画报/9/PHOTt4RDc3ozEGkTJcYqwb14210831_1000x2000.jpg',9),
(null,'/画报/10/PHOT6xx44tr62KNMgJUb6ekn210831_1000x2000.jpg',10),
(null,'/画报/10/PHOTHxcwz5ayOY8t7pSnyLCd210831_1000x2000.jpg',10),
(null,'/画报/10/PHOT6l1Bf7CaaB5SOlPAveK9210831_1000x2000.jpg',10),
(null,'/画报/10/PHOTL91QyFTSPB3e6JwanFut210831_1000x2000.jpg',10),
(null,'/画报/10/PHOTYd4QOcCVHEUKWgMeucvX210831_1000x2000.jpg',10),
(null,'/画报/11/PHOTCr0ZuiEX6E4i35a23N0O210831_1000x2000.jpg',11),
(null,'/画报/11/PHOTdUB7uwKMfHFSltitozsu210831_1000x2000.jpg',11),
(null,'/画报/11/PHOTF6mpe4yQR8A8FKRH6Yht210831_1000x2000.jpg',11),
(null,'/画报/11/PHOTh1oRLxvJ3yZgtZ76reNy210831_1000x2000.jpg',11),
(null,'/画报/11/PHOTurmbIzjWu1IkzUMDOFJR210831_1000x2000.jpg',11),
(null,'/画报/11/PHOTvO6BMiTaP95HWVobLPEA210831_1000x2000.jpg',11),
(null,'/画报/12/PHOTh3r0dNE68LSEJfY0vkhH210831_1000x2000.jpg',12),
(null,'/画报/12/PHOTN0TwBBsukzfQmqeS4b4m210831_1000x2000.jpg',12),
(null,'/画报/12/PHOTNx5UnHz4ilZvuJ7Zd5ZP210831_1000x2000.jpg',12),
(null,'/画报/12/PHOTtTbDxYHDU8MSZAbaa2OD210831_1000x2000.jpg',12),
(null,'/画报/12/PHOTvIAUhwjMkepT2BQJF31a210831_1000x2000.jpg',12),
(null,'/画报/12/PHOTYb2CUK3x8umwxi7mUDJU210831_1000x2000.jpg',12),
(null,'/画报/13/PHOT9qpYyvVSwzH352mdSeYZ210830_1000x2000.jpg',13),
(null,'/画报/13/PHOTCr5zRWB4VYXSwrksDPl0210830_1000x2000.jpg',13),
(null,'/画报/13/PHOTf9lPk23HaqmhsPCB1tRY210830_1000x2000.jpg',13),
(null,'/画报/13/PHOTGVNYyRwCoXa5YfpfRIWs210830_1000x2000.jpg',13),
(null,'/画报/13/PHOTqo5LNfc4z1ECZD0wCtqy210830_1000x2000.jpg',13),
(null,'/画报/13/PHOTU6NUhAhsCx604BruqXmH210830_1000x2000.jpg',13),
(null,'/画报/14/PHOTD1ZSVlyn1RsYVKp1iJVa210830_1000x2000.jpg',14),
(null,'/画报/14/PHOTqwpOHZqbrzTF35a8X34C210830_1000x2000.jpg',14),
(null,'/画报/14/PHOTZ3g44LZY42psPDhlPwXK210830_1000x2000.jpg',14),
(null,'/画报/14/PHOTzVqLAw6D4BVL9ZqeZCLq210830_1000x2000.jpg',14),
(null,'/画报/14/PHOTzyWtuCeiHWcp2Y0l56VC210830_1000x2000.jpg',14),
(null,'/画报/15/PHOT9AkGOkR0h2yWbdMRDybA210830_1000x2000.jpg',15),
(null,'/画报/15/PHOT9vA7rA5nWjs0L7g8O9vy210830_1000x2000.jpg',15),
(null,'/画报/15/PHOTNrnPCn8VLLGhZJyzzb0A210830_1000x2000.jpg',15),
(null,'/画报/15/PHOTthkXTvDKm2t8pLUbBXRL210830_1000x2000.jpg',15),
(null,'/画报/15/PHOTwqNMLjCAN9z3uYrsR8SD210830_1000x2000.jpg',15),
(null,'/画报/15/PHOTZtkgUw2gAHShhHLt33uB210830_1000x2000.jpg',15),
(null,'/画报/16/PHOTehCL2YRxRgv5W6l3pZDN210829_1000x2000.jpg',16),
(null,'/画报/16/PHOTJFsBSdqVzZyr0hopCPPM210829_1000x2000.jpg',16),
(null,'/画报/16/PHOTK2NioTeWRCuM8493JaQb210829_1000x2000.jpg',16),
(null,'/画报/16/PHOTrpSywxZJfmZPfqLzgJMT210829_1000x2000.jpg',16),
(null,'/画报/16/PHOTyCbglFTSdDRHNTorV7Ny210829_1000x2000.jpg',16),
(null,'/画报/17/PHOT94RCNOq9uQwvDnuCzeDJ210829_1000x2000.jpg',17),
(null,'/画报/17/PHOTJLmkwpJcVvGmxMW2iwGL210829_1000x2000.jpg',17),
(null,'/画报/17/PHOTjlXdcool6SUiCy2kCYax210829_1000x2000.jpg',17),
(null,'/画报/17/PHOTrkWTtHRo2wKbhbn8cLBr210829_1000x2000.jpg',17),
(null,'/画报/17/PHOTsDbV8JKamhrmGI5n6bQg210829_1000x2000.jpg',17),
(null,'/画报/17/PHOTvC2h6PpQ0WVPUK9OeajO210829_1000x2000.jpg',17),
(null,'/画报/18/PHOTLyfAcyLirwi0eZ6axhc2210829_1000x2000.jpg',18),
(null,'/画报/18/PHOTOZNYYGJyTH1CqsKVnvMU210829_1000x2000.jpg',18),
(null,'/画报/18/PHOTR3JD48q74i8LIc35PCSI210829_1000x2000.jpg',18),
(null,'/画报/18/PHOTwaEg2TMeLVBiaUBPCBwS210829_1000x2000.jpg',18),
(null,'/画报/18/PHOTwvPwt5hJmNTP9WtwRpXH210829_1000x2000.jpg',18),
(null,'/画报/19/PHOTAFBR9Dg5xhku0hJ3n9cG210829_1000x2000.jpg',19),
(null,'/画报/19/PHOTCZBg6RSFFYNteaozcUsp210829_1000x2000.jpg',19),
(null,'/画报/19/PHOTIzhP5jLVKvLZAOox13zC210829_1000x2000.jpg',19),
(null,'/画报/19/PHOTshItUTHXJTEqlVk3I63j210829_1000x2000.jpg',19),
(null,'/画报/19/PHOTypSeqwr3Tepbb8Cni0r4210829_1000x2000.jpg',19),
(null,'/画报/20/PHOTkesmbZc05ryvACaER9st210829_1000x2000.jpg',20),
(null,'/画报/20/PHOTRHg0dI5WFy7gcrsMMakz210829_1000x2000.jpg',20),
(null,'/画报/20/PHOTT0NYblBxvtrmo6FvX9Gg210829_1000x2000.jpg',20),
(null,'/画报/20/PHOTTaeqHAjCjmBESRycd38y210829_1000x2000.jpg',20),
(null,'/画报/21/PHOTEpmCIqWNpKq3N0waNROS210829_1000x2000.jpg',21),
(null,'/画报/21/PHOTetpRvmrctO1S1wHrFihY210829_1000x2000.jpg',21),
(null,'/画报/21/PHOTtLMETO2wDQewgsjQV3lw210829_1000x2000.jpg',21),
(null,'/画报/21/PHOTUJbk0M5sh02YlyxFNOdI210829_1000x2000.jpg',21),
(null,'/画报/21/PHOTxh87SG01yP9aToCFXQgy210829_1000x2000.jpg',21),
(null,'/画报/22/PHOT5uCmuwoDk48TJrp3Om6t210829_1000x2000.jpg',22),
(null,'/画报/22/PHOTArG5263QL7Q2sF4o1VKf210829_1000x2000.jpg',22),
(null,'/画报/22/PHOTbpJjbf85tYOb4TPe8eUz210829_1000x2000.jpg',22),
(null,'/画报/23/PHOT9TZhU77uoLH7xwaoBmFM210828_1000x2000.jpg',23),
(null,'/画报/23/PHOTH9ZkdyxWi28t3YlDs4W9210828_1000x2000.jpg',23),
(null,'/画报/23/PHOTN9tdcpW8pih9CN1EaNgX210828_1000x2000.jpg',23),
(null,'/画报/23/PHOTTuvF9U3yrnkTejkqt9jC210828_1000x2000.jpg',23),
(null,'/画报/23/PHOTXUnHGosEeMu3stn0D6nq210828_1000x2000.jpg',23),
(null,'/画报/24/PHOTFczSnQ3Fw1FoWbgQzcJr210827_1000x2000.jpg',24),
(null,'/画报/24/PHOTj76cx0upDboTEYe7BaGb210827_1000x2000.jpg',24),
(null,'/画报/24/PHOTnedJ1hsFiDOkVXaGKpsH210827_1000x2000.jpg',24),
(null,'/画报/24/PHOTSfkNiTeLB2TwracwCUO7210827_1000x2000.jpg',24),
(null,'/画报/24/PHOTZv0S0S4q2ZVkOTfT3gxc210827_1000x2000.jpg',24),
(null,'/画报/25/PHOTDNcFEcuqIwRY048qVWje210827_1000x2000.jpg',25),
(null,'/画报/25/PHOTHJa8qk4D2iIYmk5vBewX210827_1000x2000.jpg',25),
(null,'/画报/25/PHOTOJH4uzWKgBFApsM3Jey7210827_1000x2000.jpg',25),
(null,'/画报/26/PHOT0uY5ObzH37LFQlkR2N47210827_1000x2000.jpg',26),
(null,'/画报/26/PHOTAaaE9Dn5iQFa3Df13kw0210827_1000x2000.jpg',26),
(null,'/画报/26/PHOTfXLeAGKiHJeo7aox0Jp8210827_1000x2000.jpg',26),
(null,'/画报/26/PHOTgdNnvA6GRx96BVlwvY3A210827_1000x2000.jpg',26),
(null,'/画报/26/PHOTMuyJdLn7uS6RopVvNeOJ210827_1000x2000.jpg',26),
(null,'/画报/27/PHOTHR3mZ16F4Xhrvrzje6mN210827_1000x2000.jpg',27),
(null,'/画报/27/PHOTMDm1aqQEjvdvQ3sh4jfo210827_1000x2000.jpg',27),
(null,'/画报/27/PHOTpXYsrt9QHkPaah7JkhvQ210827_1000x2000.jpg',27),
(null,'/画报/27/PHOTuxCEDe3JIXQ3bbNnyvnc210827_1000x2000.jpg',27),
(null,'/画报/27/PHOTxXq5I6giKpWNxOoaQatP210827_1000x2000.jpg',27),
(null,'/画报/28/PHOT6qP9lHNSO1DtnshLw07J210826_1000x2000.jpg',28),
(null,'/画报/28/PHOTDtPtV8Hs5yXrOzkKKnP3210826_1000x2000.jpg',28),
(null,'/画报/28/PHOTM68pO74YpUs9wygNxSAn210826_1000x2000.jpg',28),
(null,'/画报/28/PHOTPj89oG6zgfyAPANfzuVu210826_1000x2000.jpg',28),
(null,'/画报/28/PHOTqlcFtRJNUfsfRzGKka6K210826_1000x2000.jpg',28),
(null,'/画报/29/PHOT1icEmTf1oKZ2k9f2BUd6210826_1000x2000.jpg',29),
(null,'/画报/29/PHOTaykIbVv4lWwQZWyiENMI210826_1000x2000.jpg',29),
(null,'/画报/29/PHOTfHRh6bmOtnVYAmYH9Ehm210826_1000x2000.jpg',29),
(null,'/画报/29/PHOTV0efpKL11wvE5hhFMlJ2210826_1000x2000.jpg',29),
(null,'/画报/30/PHOTde0yqGmK93uTixrWYLR9210826_1000x2000.jpg',30),
(null,'/画报/30/PHOTH5UtQLJGKcTsKlOFAbRi210826_1000x2000.jpg',30),
(null,'/画报/30/PHOTHkoK9LERYJwJugtPy3JC210826_1000x2000.jpg',30),
(null,'/画报/30/PHOTRf6fLn6SKY4ySTsLTwmT210826_1000x2000.jpg',30),
(null,'/画报/31/PHOT38AnKNw1XAms7zsDoI77210826_1000x2000.jpg',31),
(null,'/画报/31/PHOTHXc8NB2vPTBk0ToNBlFN210826_1000x2000.jpg',31),
(null,'/画报/31/PHOTi1aXATUm61wAezPOFlRI210826_1000x2000.jpg',31),
(null,'/画报/31/PHOTSEJGkW7g3cQ3HwQ0eZE9210826_1000x2000.jpg',31),
(null,'/画报/31/PHOTugtMVnoA47jLrC7OaJoj210826_1000x2000.jpg',31),
(null,'/画报/31/PHOTZqWN7Ycf0btWIODRJbZQ210826_1000x2000.jpg',31),
(null,'/画报/32/PHOTafW1wJCEJNv7UmAd9pTX210825_1000x2000.jpg',32),
(null,'/画报/32/PHOThoIIkcgyMwVCTbJqhm32210825_1000x2000.jpg',32),
(null,'/画报/32/PHOToLHlc6rMcRGcckYlPe8H210825_1000x2000.jpg',32),
(null,'/画报/32/PHOTur0xP4hucw6j1wm9Wkem210825_1000x2000.jpg',32),
(null,'/画报/33/PHOT0dIXB7eUNWA4VN86y8QF210825_1000x2000.jpg',33),
(null,'/画报/33/PHOT3qEiFJYNbtfjEziUxoED210825_1000x2000.jpg',33),
(null,'/画报/33/PHOTbqZGcgxrVER37m0SJ9zA210825_1000x2000.jpg',33),
(null,'/画报/33/PHOTe3Iy0ummBw7Mo90UHmXF210825_1000x2000.jpg',33),
(null,'/画报/33/PHOTYnhKhRG4J3UspHRPWXsJ210825_1000x2000.jpg',33),
(null,'/画报/34/PHOTpBezfrkf01CUYMEmqScU210825_1000x2000.jpg',34),
(null,'/画报/34/PHOTpmNLCvt0qrVYFw1oSFhz210825_1000x2000.jpg',34),
(null,'/画报/34/PHOTpzzqt7FGG9oVJ8yoIRc8210825_1000x2000.jpg',34),
(null,'/画报/35/PHOT5WWEg0FjHlT3JdBQh90E210825_1000x2000.jpg',35),
(null,'/画报/35/PHOT70oo4khxGdrkhyuZd4ZG210825_1000x2000.jpg',35),
(null,'/画报/35/PHOTL1BKA9HMcvx2UvIP9OiZ210825_1000x2000.jpg',35),
(null,'/画报/35/PHOTrgWNBTdFIjWIaCMsvAvr210825_1000x2000.jpg',35),
(null,'/画报/35/PHOTu7aGPYJQIsnh897QnPag210825_1000x2000.jpg',35),
(null,'/画报/35/PHOTuJUrXPTNHCUWX6yHhRUP210825_1000x2000.jpg',35),
(null,'/画报/36/PHOTg2QxME5AETRxIaFPu9rC210825_1000x2000.jpg',36),
(null,'/画报/36/PHOTpyUiSUGBl0q3m1riPdNw210825_1000x2000.jpg',36),
(null,'/画报/36/PHOTq0EHMn4MijQ7QofCWsZM210825_1000x2000.jpg',36),
(null,'/画报/36/PHOTSw1O9c6KTkuhNN8FPK4c210825_1000x2000.jpg',36),
(null,'/画报/36/PHOTUysmutYLpcNVS5cdLvvl210825_1000x2000.jpg',36),
(null,'/画报/37/PHOT3jb7s2CJUChNssdAKXkh210825_1000x2000.jpg',37),
(null,'/画报/37/PHOTnu1zZsA3ZEMCIPvOqXFp210825_1000x2000.jpg',37),
(null,'/画报/37/PHOTqauRZ8tdxreDvq7MEEzx210825_1000x2000.jpg',37),
(null,'/画报/37/PHOTTpCv4JiReQvZwDGoUb8g210825_1000x2000.jpg',37),
(null,'/画报/38/PHOT5fsiwedTGw1vGeXBIM5F210825_1000x2000.jpg',38),
(null,'/画报/38/PHOTKZFZIfzJa2tGTLnksfwu210825_1000x2000.jpg',38),
(null,'/画报/38/PHOTmsLb3X6PG8BgHl1fbOyb210825_1000x2000.jpg',38),
(null,'/画报/38/PHOTq7gNdh02YH80cGZAOoL4210825_1000x2000.jpg',38),
(null,'/画报/38/PHOTRBEXZFh18sl3qwm7M1kM210825_1000x2000.jpg',38),
(null,'/画报/38/PHOTtfEnp5I1uodjxAFNK5sA210825_1000x2000.jpg',38),
(null,'/画报/39/PHOTXLhU6aAzfi5JWWdJl4GV210825_1000x2000.jpg',39),
(null,'/画报/39/PHOT2RQ3z7g3TbknesDD6wuP210825_1000x2000.jpg',39),
(null,'/画报/39/PHOTlE4T6OKaFaM4qOiHILoc210825_1000x2000.jpg',39),
(null,'/画报/40/PHOT1FOHSoNO6m9mRFuntTzH210824_1000x2000.jpg',40),
(null,'/画报/40/PHOTbduatb3MR5QSj7YeWA9h210824_1000x2000.jpg',40),
(null,'/画报/40/PHOTRsfGNmHhaE95V23cpnfa210824_1000x2000.jpg',40),
(null,'/画报/40/PHOTspld5EtVC226LLj0IAlN210824_1000x2000.jpg',40),
(null,'/画报/41/PHOT1kchFnfboVsyLaZvAJHK210824_1000x2000.jpg',41),
(null,'/画报/41/PHOT9Rz3Eu5Uhe8RoguvhELB210824_1000x2000.jpg',41),
(null,'/画报/41/PHOTaLJbyGVvopV03Y1YvbuK210824_1000x2000.jpg',41),
(null,'/画报/41/PHOTGwIvkFujiVZ295Q4l6wN210824_1000x2000.jpg',41),
(null,'/画报/41/PHOTjyGg0akLK02V6ZCRxrWy210824_1000x2000.jpg',41),
(null,'/画报/42/PHOT06Ya53bQsDE07f5DgGRM210824_1000x2000.jpg',42),
(null,'/画报/42/PHOTo8kmcJnj8RE7IuvW7mD4210824_1000x2000.jpg',42),
(null,'/画报/42/PHOTPUsHn3G9TME6hexasAEg210824_1000x2000.jpg',42),
(null,'/画报/42/PHOTUUZWLYIn5v16K6AnmVcw210824_1000x2000.jpg',42),
(null,'/画报/42/PHOTWhByMaKqn7MKHCepeIvx210824_1000x2000.jpg',42),
(null,'/画报/43/PHOTEDy4Tu2u9kITYZyYJVS7210824_1000x2000.jpg',43),
(null,'/画报/43/PHOTmVx7jQxb2YGDjttwXQU2210824_1000x2000.jpg',43),
(null,'/画报/43/PHOTnQxGzsc6gKwXsBIinwAl210824_1000x2000.jpg',43),
(null,'/画报/44/PHOT0mqjyjNhREZNOqPm7R3X210824_1000x2000.jpg',44),
(null,'/画报/44/PHOT3qhbtepc4LWFTKWZhTj5210824_1000x2000.jpg',44),
(null,'/画报/44/PHOT9XF86p4jh3vNMpj4Ex0H210824_1000x2000.jpg',44),
(null,'/画报/44/PHOTDRUBy0ULsg60vk4aGXHG210824_1000x2000.jpg',44),
(null,'/画报/44/PHOTE1ws0dGvTwF2Mj4md1bl210824_1000x2000.jpg',44),
(null,'/画报/44/PHOThqJO2Txk1TAFqfUkBuOW210824_1000x2000.jpg',44),
(null,'/画报/44/PHOTTluVeyfdjZVUUyqVqGHR210824_1000x2000.jpg',44);

#视频新闻表
CREATE TABLE tokyo_pg_videonews(
  vnid int primary key auto_increment,
  title varchar(256) not null,
  showimg varchar(256) not null,
  videourl varchar(256)not null
);
insert into tokyo_pg_videonews values
(null,'有梦想 每个人都了不起','/video/1.png','/video/1.mp4'),
(null,'女子坐式排球半决赛 中国队3比0完胜加拿大晋级 将对阵美国','/video/2.jpg','/video/2.mp4'),
(null,'东京残奥会第九比赛日 中国代表团摘得9金','/video/3.jpg','/video/3.mp4'),
(null,'田径赛场上的小燕子','/video/4.png','/video/4.mp4'),
(null,'赵帅·真帅！','/video/5.png','/video/5.mp4'),
(null,'中国代表团残奥会首金诞生！','/video/6.png','/video/6.mp4'),
(null,'嘘～这里是沉浸式比赛','/video/7.png','/video/7.mp4'),
(null,'中国三选手破世界纪录 王小梅摘银','/video/8.png','/video/8.mp4'),
(null,'东京残奥会今日闭幕 100秒！来看中国残奥军团名场面','/video/9.jpg','/video/9.mp4'),
(null,'有梦想 每个人都了不起','/video/1.png','/video/1.mp4'),
(null,'女子坐式排球半决赛 中国队3比0完胜加拿大晋级 将对阵美国','/video/2.jpg','/video/2.mp4'),
(null,'东京残奥会第九比赛日 中国代表团摘得9金','/video/3.jpg','/video/3.mp4'),
(null,'田径赛场上的小燕子','/video/4.png','/video/4.mp4'),
(null,'赵帅·真帅！','/video/5.png','/video/5.mp4'),
(null,'中国代表团残奥会首金诞生！','/video/6.png','/video/6.mp4'),
(null,'嘘～这里是沉浸式比赛','/video/7.png','/video/7.mp4'),
(null,'中国三选手破世界纪录 王小梅摘银','/video/8.png','/video/8.mp4'),
(null,'有梦想 每个人都了不起','/video/1.png','/video/1.mp4'),
(null,'女子坐式排球半决赛 中国队3比0完胜加拿大晋级 将对阵美国','/video/2.jpg','/video/2.mp4'),
(null,'东京残奥会第九比赛日 中国代表团摘得9金','/video/3.jpg','/video/3.mp4'),
(null,'田径赛场上的小燕子','/video/4.png','/video/4.mp4'),
(null,'赵帅·真帅！','/video/5.png','/video/5.mp4'),
(null,'中国代表团残奥会首金诞生！','/video/6.png','/video/6.mp4'),
(null,'嘘～这里是沉浸式比赛','/video/7.png','/video/7.mp4'),
(null,'中国三选手破世界纪录 王小梅摘银','/video/8.png','/video/8.mp4');

#总览轮播表
CREATE TABLE tokyo_pg_carousel(
  carid int primary key auto_increment,
  img varchar(256) not null,
  url varchar(256) not null
);
insert into tokyo_pg_carousel values
(null,'/swipe/u=2388827640,562173586&fm=55&app=54&fmt=auto.webp','3'),
(null,'/swipe/u=1863300821,3509394503&fm=55&app=54&fmt=auto.webp','49'),
(null,'/swipe/b8421272bc6e9787fe85d6a7ced8e13d.jpg','35'),
(null,'/swipe/u=1275648957,2692485141&fm=55&app=54&fmt=auto.webp','16'),
(null,'/swipe/u=4157278465,1927410750&fm=55&app=54&fmt=auto.webp','51'),
(null,'/swipe/fa5c57b882a6cda354a3a63a67788343.jpeg','2');

#运动类型表
CREATE TABLE tokyo_pg_gametype(
  gtid int primary key auto_increment,
  name varchar(32) not null
);
insert into tokyo_pg_gametype values
(null,'乒乓球'),
(null,'羽毛球'),
(null,'轮椅篮球'),
(null,'坐式排球'),
(null,'轮椅网球'),
(null,'五人制盲人足球'),
(null,'盲人门球'),
(null,'盲人橄榄球'),
(null,'硬地滚球'),
(null,'田径'),
(null,'铁人三项'),
(null,'游泳'),
(null,'公路自行车'),
(null,'场地自行车'),
(null,'射箭'),
(null,'射击'),
(null,'赛艇'),
(null,'皮划艇静水'),
(null,'轮椅击剑'),
(null,'柔道'),
(null,'跆拳道'),
(null,'马术'),
(null,'力量举重');

#资讯表
CREATE TABLE tokyo_pg_infonews(
  infonid int primary key auto_increment,
  gtid int,
  title varchar(1024) not null,
  time varchar(128) not null,
  img varchar(256) not null,
  article varchar(10000) not null,
  newstype varchar(16) not null,
  smallarticle varchar(512) not null,
  foreign key(gtid) references tokyo_pg_gametype(gtid)
);
insert into tokyo_pg_infonews values
(null,null,'东京残奥会闭幕式举行 张雪梅持五星红旗进入体育场','1630842180','/newsinfo/1.png','<p>
          9月5日，第16届夏季残疾人奥运会闭幕式在日本东京举行。中国代表团旗手、女子轮椅篮球运动员张雪梅持五星红旗进入体育场。
        </p>
        <p>
          按照闭幕式流程安排，参加闭幕式的运动员和教练员代表们已经在场内就座。
        </p>
        <p>
          本届残奥会，共有超过四千五百名运动员，参加了22个大项，539个小项的比赛，他们来自全世界160多个国家和地区，代表着全世界大约十二亿残疾人。
        </p>
        <p>
          中国残奥体育代表团一共参加了20个大项、341个小项的比赛，占据金牌榜和奖牌榜“双榜”第一。在游泳、田径、自行车等项目当中，数十次打破世界纪录。
        </p>','bimushi','第16届夏季残疾人奥运会闭幕式在日本东京举行。中国代表团旗手、女子轮椅篮球运动员张雪梅持五星红旗进入体育场。'),
(null,null,'国际残奥委会会旗交接，夏季残奥会进入巴黎时间','1630847400','/newsinfo/2.jpeg','<p>
          9月5日，第16届夏季残疾人奥运会闭幕式在日本东京举行。巴黎市长伊达尔戈从国际残奥委会主席帕森斯手中接过国际残奥委会会旗，东京时间结束，夏季残奥会正式进入巴黎时间。
        </p>','bimushi','第16届夏季残疾人奥运会闭幕式在日本东京举行。巴黎市长伊达尔戈从国际残奥委会主席帕森斯手中接过国际残奥委会会旗，东京时间结束，夏季残奥会正式进入巴黎时间。'),
(null,null,'巴黎见！东京残奥会闭幕式：中国代表团获盛赞，法国手臂舞惊艳','1630847100','/newsinfo/3.jpeg','<p>
          北京时间9月5日，东京残奥会闭幕式，中国轮椅女篮选手张雪梅携五星国旗入场，中国队本次比赛获得金牌榜和奖牌榜双第一完美收官。巴黎残奥会展示环节也堪称惊艳，“空中芭蕾”非常精彩。
        </p>
        <p>
          本次东京残奥会，中国队最终获得了96金60银51铜的成绩，合计207枚奖牌，连续5届残奥会获得了金牌榜和奖牌榜双第一。其中，田径27金、游泳19金、乒乓球16金成为夺金大户。中国队总金牌数超伦敦残奥会，创下历史第二好战绩。
        </p>
        <p>
          备受关注的巴黎残奥会展示环节，法国人再次展现了他们的浪漫。法国第一位安装3D打印手臂的残疾人出场，空中芭蕾惊艳演出，这是由手臂完成的舞蹈。镜头来到埃菲尔铁塔旁边的塞纳河畔，多位残障人士上演精彩表演，最终巴黎残奥会会旗在埃菲尔斜塔迎风飘扬。
        </p>
        <p>
          接下来是致辞环节，桥本圣子、帕森斯先后发言后，圣火熄灭，东京残奥会就此结束！
        </p>','bimushi','东京残奥会闭幕式，中国轮椅女篮选手张雪梅携五星国旗入场，中国队本次比赛获得金牌榜和奖牌榜双第一完美收官。巴黎残奥会展示环节也堪称惊艳，“空中芭蕾”非常精彩。'),
(null,null,'残奥会闭幕式！再现阴间操作，运动员会场出现巨幅人脸头像','1630847700','/newsinfo/4.png','<p>
          北京时间9月5日，东京残奥会正式落下帷幕，中国队以96金60银51铜，总奖牌数207枚，连续五届残奥会斩获奖牌榜和奖牌榜第一名，恭喜。残奥会闭幕式上，中国队的旗手是女子轮椅篮球运动员张雪梅，她带着五星红旗进入到会场。本届残奥会闭幕式还是收获了不少的好感，其中包括开场的SASUKE登场，现场放了RAM RIDER名曲“东京论”，让整个氛围变得欢快轻松，一些背景音乐也获得了不少人的称赞。
        </p>
        <p>
          不过也有一些被称为是“阴间表演”，那就是残奥会闭幕式期间，场地内的运动员脚踩巨幅人脸头像。这是在闭幕式开始不久之后，运动员、演员们在场地的中间，出现了一个巨大的人脸头像，不少表示真的是“瞳孔地震”，本来以为东京残奥会闭幕式会一直平稳的进行下去，没想到的是再度有这样的阴间操作。
        </p>
        <p>
          这次到了东京残奥会的闭幕式，本来一切都在有序的进行着，现场的气氛轻松而愉快，甚至到了后期，残疾人表演者演唱《what a wonderful world》，还有很多人的头像暖心的出现在现场，东京残奥会的生活熄灭，火炬塔逐渐关闭，很感动。
        </p>
        <p>
          所以也希望这样以后类似的大型运动会的开闭幕式，可以少一些这样的阴间表演，毕竟体育项目强调的是阳光、积极、更高、更快、更强和更团队等等真能量，所以这样的镜头和表演还是少出现一些比较好。
        </p>','bimushi','东京残奥会正式落下帷幕，中国队以96金60银51铜，总奖牌数207枚，连续五届残奥会斩获奖牌榜和奖牌榜第一名，恭喜。残奥会闭幕式上，中国队的旗手是女子轮椅篮球运动员张雪梅，她带着五星红旗进入到会场。本届残奥会闭幕式还是收获了不少的好感，其中包括开场的SASUKE登场，现场放了RAM RIDER名曲“东京论”，让整个氛围变得欢快轻松，一些背景音乐也获得了不少人的称赞。'),
(null,null,'东京残奥会闭幕式举行','1630846560','/newsinfo/5.jpeg','<p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是在日本东京的涩谷天空展望台拍摄的闭幕式焰火表演。
        </p>
        <img src="/newsinfo/5-1.jpeg" alt="">
        <p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是闭幕上升起的日本国旗和残奥会会旗。
        </p>
        <img src="/newsinfo/5-2.jpeg" alt="">
        <p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是闭幕式上的焰火表演。
        </p>
        <img src="/newsinfo/5-3.jpeg" alt="">
        <p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是在日本东京的涩谷天空展望台拍摄的闭幕式焰火表演。
        </p>','bimushi','第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是在日本东京的涩谷天空展望台拍摄的闭幕式焰火表演。'),
(null,null,'东京残奥会闭幕式举行 张雪梅持五星红旗进入体育场','1630842180','/newsinfo/1.png','<p>
          9月5日，第16届夏季残疾人奥运会闭幕式在日本东京举行。中国代表团旗手、女子轮椅篮球运动员张雪梅持五星红旗进入体育场。
        </p>
        <p>
          按照闭幕式流程安排，参加闭幕式的运动员和教练员代表们已经在场内就座。
        </p>
        <p>
          本届残奥会，共有超过四千五百名运动员，参加了22个大项，539个小项的比赛，他们来自全世界160多个国家和地区，代表着全世界大约十二亿残疾人。
        </p>
        <p>
          中国残奥体育代表团一共参加了20个大项、341个小项的比赛，占据金牌榜和奖牌榜“双榜”第一。在游泳、田径、自行车等项目当中，数十次打破世界纪录。
        </p>','bimushi','第16届夏季残疾人奥运会闭幕式在日本东京举行。中国代表团旗手、女子轮椅篮球运动员张雪梅持五星红旗进入体育场。'),
(null,null,'国际残奥委会会旗交接，夏季残奥会进入巴黎时间','1630847400','/newsinfo/2.jpeg','<p>
          9月5日，第16届夏季残疾人奥运会闭幕式在日本东京举行。巴黎市长伊达尔戈从国际残奥委会主席帕森斯手中接过国际残奥委会会旗，东京时间结束，夏季残奥会正式进入巴黎时间。
        </p>','bimushi','第16届夏季残疾人奥运会闭幕式在日本东京举行。巴黎市长伊达尔戈从国际残奥委会主席帕森斯手中接过国际残奥委会会旗，东京时间结束，夏季残奥会正式进入巴黎时间。'),
(null,null,'巴黎见！东京残奥会闭幕式：中国代表团获盛赞，法国手臂舞惊艳','1630847100','/newsinfo/3.jpeg','<p>
          北京时间9月5日，东京残奥会闭幕式，中国轮椅女篮选手张雪梅携五星国旗入场，中国队本次比赛获得金牌榜和奖牌榜双第一完美收官。巴黎残奥会展示环节也堪称惊艳，“空中芭蕾”非常精彩。
        </p>
        <p>
          本次东京残奥会，中国队最终获得了96金60银51铜的成绩，合计207枚奖牌，连续5届残奥会获得了金牌榜和奖牌榜双第一。其中，田径27金、游泳19金、乒乓球16金成为夺金大户。中国队总金牌数超伦敦残奥会，创下历史第二好战绩。
        </p>
        <p>
          备受关注的巴黎残奥会展示环节，法国人再次展现了他们的浪漫。法国第一位安装3D打印手臂的残疾人出场，空中芭蕾惊艳演出，这是由手臂完成的舞蹈。镜头来到埃菲尔铁塔旁边的塞纳河畔，多位残障人士上演精彩表演，最终巴黎残奥会会旗在埃菲尔斜塔迎风飘扬。
        </p>
        <p>
          接下来是致辞环节，桥本圣子、帕森斯先后发言后，圣火熄灭，东京残奥会就此结束！
        </p>','bimushi','东京残奥会闭幕式，中国轮椅女篮选手张雪梅携五星国旗入场，中国队本次比赛获得金牌榜和奖牌榜双第一完美收官。巴黎残奥会展示环节也堪称惊艳，“空中芭蕾”非常精彩。'),
(null,null,'残奥会闭幕式！再现阴间操作，运动员会场出现巨幅人脸头像','1630847700','/newsinfo/4.png','<p>
          北京时间9月5日，东京残奥会正式落下帷幕，中国队以96金60银51铜，总奖牌数207枚，连续五届残奥会斩获奖牌榜和奖牌榜第一名，恭喜。残奥会闭幕式上，中国队的旗手是女子轮椅篮球运动员张雪梅，她带着五星红旗进入到会场。本届残奥会闭幕式还是收获了不少的好感，其中包括开场的SASUKE登场，现场放了RAM RIDER名曲“东京论”，让整个氛围变得欢快轻松，一些背景音乐也获得了不少人的称赞。
        </p>
        <p>
          不过也有一些被称为是“阴间表演”，那就是残奥会闭幕式期间，场地内的运动员脚踩巨幅人脸头像。这是在闭幕式开始不久之后，运动员、演员们在场地的中间，出现了一个巨大的人脸头像，不少表示真的是“瞳孔地震”，本来以为东京残奥会闭幕式会一直平稳的进行下去，没想到的是再度有这样的阴间操作。
        </p>
        <p>
          这次到了东京残奥会的闭幕式，本来一切都在有序的进行着，现场的气氛轻松而愉快，甚至到了后期，残疾人表演者演唱《what a wonderful world》，还有很多人的头像暖心的出现在现场，东京残奥会的生活熄灭，火炬塔逐渐关闭，很感动。
        </p>
        <p>
          所以也希望这样以后类似的大型运动会的开闭幕式，可以少一些这样的阴间表演，毕竟体育项目强调的是阳光、积极、更高、更快、更强和更团队等等真能量，所以这样的镜头和表演还是少出现一些比较好。
        </p>','bimushi','东京残奥会正式落下帷幕，中国队以96金60银51铜，总奖牌数207枚，连续五届残奥会斩获奖牌榜和奖牌榜第一名，恭喜。残奥会闭幕式上，中国队的旗手是女子轮椅篮球运动员张雪梅，她带着五星红旗进入到会场。本届残奥会闭幕式还是收获了不少的好感，其中包括开场的SASUKE登场，现场放了RAM RIDER名曲“东京论”，让整个氛围变得欢快轻松，一些背景音乐也获得了不少人的称赞。'),
(null,null,'东京残奥会闭幕式举行','1630846560','/newsinfo/5.jpeg','<p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是在日本东京的涩谷天空展望台拍摄的闭幕式焰火表演。
        </p>
        <img src="/newsinfo/5-1.jpeg" alt="">
        <p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是闭幕上升起的日本国旗和残奥会会旗。
        </p>
        <img src="/newsinfo/5-2.jpeg" alt="">
        <p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是闭幕式上的焰火表演。
        </p>
        <img src="/newsinfo/5-3.jpeg" alt="">
        <p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是在日本东京的涩谷天空展望台拍摄的闭幕式焰火表演。
        </p>','bimushi','第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是在日本东京的涩谷天空展望台拍摄的闭幕式焰火表演。'),
(null,null,'东京残奥会闭幕式举行 张雪梅持五星红旗进入体育场','1630842180','/newsinfo/1.png','<p>
          9月5日，第16届夏季残疾人奥运会闭幕式在日本东京举行。中国代表团旗手、女子轮椅篮球运动员张雪梅持五星红旗进入体育场。
        </p>
        <p>
          按照闭幕式流程安排，参加闭幕式的运动员和教练员代表们已经在场内就座。
        </p>
        <p>
          本届残奥会，共有超过四千五百名运动员，参加了22个大项，539个小项的比赛，他们来自全世界160多个国家和地区，代表着全世界大约十二亿残疾人。
        </p>
        <p>
          中国残奥体育代表团一共参加了20个大项、341个小项的比赛，占据金牌榜和奖牌榜“双榜”第一。在游泳、田径、自行车等项目当中，数十次打破世界纪录。
        </p>','bimushi','第16届夏季残疾人奥运会闭幕式在日本东京举行。中国代表团旗手、女子轮椅篮球运动员张雪梅持五星红旗进入体育场。'),
(null,null,'国际残奥委会会旗交接，夏季残奥会进入巴黎时间','1630847400','/newsinfo/2.jpeg','<p>
          9月5日，第16届夏季残疾人奥运会闭幕式在日本东京举行。巴黎市长伊达尔戈从国际残奥委会主席帕森斯手中接过国际残奥委会会旗，东京时间结束，夏季残奥会正式进入巴黎时间。
        </p>','bimushi','第16届夏季残疾人奥运会闭幕式在日本东京举行。巴黎市长伊达尔戈从国际残奥委会主席帕森斯手中接过国际残奥委会会旗，东京时间结束，夏季残奥会正式进入巴黎时间。'),
(null,null,'巴黎见！东京残奥会闭幕式：中国代表团获盛赞，法国手臂舞惊艳','1630847100','/newsinfo/3.jpeg','<p>
          北京时间9月5日，东京残奥会闭幕式，中国轮椅女篮选手张雪梅携五星国旗入场，中国队本次比赛获得金牌榜和奖牌榜双第一完美收官。巴黎残奥会展示环节也堪称惊艳，“空中芭蕾”非常精彩。
        </p>
        <p>
          本次东京残奥会，中国队最终获得了96金60银51铜的成绩，合计207枚奖牌，连续5届残奥会获得了金牌榜和奖牌榜双第一。其中，田径27金、游泳19金、乒乓球16金成为夺金大户。中国队总金牌数超伦敦残奥会，创下历史第二好战绩。
        </p>
        <p>
          备受关注的巴黎残奥会展示环节，法国人再次展现了他们的浪漫。法国第一位安装3D打印手臂的残疾人出场，空中芭蕾惊艳演出，这是由手臂完成的舞蹈。镜头来到埃菲尔铁塔旁边的塞纳河畔，多位残障人士上演精彩表演，最终巴黎残奥会会旗在埃菲尔斜塔迎风飘扬。
        </p>
        <p>
          接下来是致辞环节，桥本圣子、帕森斯先后发言后，圣火熄灭，东京残奥会就此结束！
        </p>','bimushi','东京残奥会闭幕式，中国轮椅女篮选手张雪梅携五星国旗入场，中国队本次比赛获得金牌榜和奖牌榜双第一完美收官。巴黎残奥会展示环节也堪称惊艳，“空中芭蕾”非常精彩。'),
(null,null,'残奥会闭幕式！再现阴间操作，运动员会场出现巨幅人脸头像','1630847700','/newsinfo/4.png','<p>
          北京时间9月5日，东京残奥会正式落下帷幕，中国队以96金60银51铜，总奖牌数207枚，连续五届残奥会斩获奖牌榜和奖牌榜第一名，恭喜。残奥会闭幕式上，中国队的旗手是女子轮椅篮球运动员张雪梅，她带着五星红旗进入到会场。本届残奥会闭幕式还是收获了不少的好感，其中包括开场的SASUKE登场，现场放了RAM RIDER名曲“东京论”，让整个氛围变得欢快轻松，一些背景音乐也获得了不少人的称赞。
        </p>
        <p>
          不过也有一些被称为是“阴间表演”，那就是残奥会闭幕式期间，场地内的运动员脚踩巨幅人脸头像。这是在闭幕式开始不久之后，运动员、演员们在场地的中间，出现了一个巨大的人脸头像，不少表示真的是“瞳孔地震”，本来以为东京残奥会闭幕式会一直平稳的进行下去，没想到的是再度有这样的阴间操作。
        </p>
        <p>
          这次到了东京残奥会的闭幕式，本来一切都在有序的进行着，现场的气氛轻松而愉快，甚至到了后期，残疾人表演者演唱《what a wonderful world》，还有很多人的头像暖心的出现在现场，东京残奥会的生活熄灭，火炬塔逐渐关闭，很感动。
        </p>
        <p>
          所以也希望这样以后类似的大型运动会的开闭幕式，可以少一些这样的阴间表演，毕竟体育项目强调的是阳光、积极、更高、更快、更强和更团队等等真能量，所以这样的镜头和表演还是少出现一些比较好。
        </p>','bimushi','东京残奥会正式落下帷幕，中国队以96金60银51铜，总奖牌数207枚，连续五届残奥会斩获奖牌榜和奖牌榜第一名，恭喜。残奥会闭幕式上，中国队的旗手是女子轮椅篮球运动员张雪梅，她带着五星红旗进入到会场。本届残奥会闭幕式还是收获了不少的好感，其中包括开场的SASUKE登场，现场放了RAM RIDER名曲“东京论”，让整个氛围变得欢快轻松，一些背景音乐也获得了不少人的称赞。'),
(null,null,'东京残奥会闭幕式举行','1630846560','/newsinfo/5.jpeg','<p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是在日本东京的涩谷天空展望台拍摄的闭幕式焰火表演。
        </p>
        <img src="/newsinfo/5-1.jpeg" alt="">
        <p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是闭幕上升起的日本国旗和残奥会会旗。
        </p>
        <img src="/newsinfo/5-2.jpeg" alt="">
        <p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是闭幕式上的焰火表演。
        </p>
        <img src="/newsinfo/5-3.jpeg" alt="">
        <p>
          9月5日，第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是在日本东京的涩谷天空展望台拍摄的闭幕式焰火表演。
        </p>','bimushi','第16届夏季残疾人奥林匹克运动会闭幕式在日本东京举行。 这是在日本东京的涩谷天空展望台拍摄的闭幕式焰火表演。'),
(null,null,'中国残奥军团96金全名单！收藏，祝贺！','1630821240','/newsinfo/6-1.jpeg','<p>
          这个夏天，网友们一次次感慨“谢谢你们，让我们看到最不屈的灵魂”。让我们用关注，记录他们的成就，一起传递，为梦想点赞！
        </p>
        <img width="100%" src="/newsinfo/6-1.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-2.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-3.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-4.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-5.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-6.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-7.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-8.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-9.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-10.jpeg" alt="">','hotnews','这个夏天，网友们一次次感慨“谢谢你们，让我们看到最不屈的灵魂”。让我们用关注，记录他们的成就，一起传递，为梦想点赞！'),
(null,null,'中国单日6金+500金里程碑+四金王诞生！残奥奖牌榜：中国已68金','1630469760','/newsinfo/7.jpeg','<p>
          北京时间9月1日，东京残奥会，中国队再次拿下6枚金牌。值得一提的是，游泳男子50米自由泳S5级，中国队霸气包揽前三名，而且中国队迎来了里程碑时刻，中国队迎来在夏季残奥会赛场上获得的第500枚金牌！
        </p>
        <p>
          第63金！田径男子跳远T38级，中国队包揽金银牌，朱德宁7米31获得金牌，并打破世界纪录。另一名中国选手衷黄浩获得银牌。
        </p>
        <p>
          第64金！射箭女子W1级个人赛，中国选手陈敏仪142比131击败捷克选手，获得金牌，并且打破了残奥会纪录。
        </p>
        <p>
          第65金！田径女子100米T36级，中国选手史逸婷13秒61获得金牌，并打破世界纪录。
        </p>
        <p>
          第66金！游泳男子50米自由泳S5级，中国队表现强势，霸气包揽前三名！郑涛30秒31获得金牌，并打破残奥会纪录，袁伟译31秒11获得银牌，王李超31秒35获得铜牌。郑涛成就四金王荣誉！值得一提的是，这也是中国队在夏季残奥会赛场上获得的第500枚金牌，里程碑的时刻。
        </p>
        <p>
          第67金！田径女子100米T53级，中国选手高芳16秒29获得金牌，这场决赛，中国队也包揽了金银牌，另一名中国选手周洪转获得银牌。
        </p>
        <p>
          第68金！田径女子100米T54级，中国选手周召倩15秒90获得金牌。
        </p>
        <p>
          此外，中国坐式女排3-0击败卢旺达队，小组赛三战全胜排名第一，晋级四强。这样一来，男足、女篮、女排都成功进入到了四强。
        </p>
        ','hotnews','东京残奥会，中国队再次拿下6枚金牌。值得一提的是，游泳男子50米自由泳S5级，中国队霸气包揽前三名，而且中国队迎来了里程碑时刻，中国队迎来在夏季残奥会赛场上获得的第500枚金牌！'),
(null,16,'董超为中国射击队摘东京残奥会首金，个人三连冠','1630302900','/newsinfo/8.jpeg','<p>
          董超打破残奥会纪录的同时实现个人三连冠。
        </p>
        <p>
          新京报讯 8月30日，在东京残奥会男子10米气步枪站姿R1-SH1级比赛中，中国队董超夺得金牌，打破残奥会纪录的同时实现个人三连冠。这也是中国射击队在东京残奥会的首金。
        </p>
        ','hotnews','在东京残奥会男子10米气步枪站姿R1-SH1级比赛中，中国队董超夺得金牌，打破残奥会纪录的同时实现个人三连冠。这也是中国射击队在东京残奥会的首金。'),
(null,1,'赵帅夺得东京残奥会乒乓球男单MS8级金牌','1630291320','/newsinfo/9.png','<p>
          在刚刚结束的东京残奥会乒乓球男子单打MS8级决赛中，中国选手赵帅最终以3比1的比分击败对手，获得该项目冠军！
        </p>
        <p>
          来源：央视新闻
        </p>
        ','hotnews',' 在刚刚结束的东京残奥会乒乓球男子单打MS8级决赛中，中国选手赵帅最终以3比1的比分击败对手，获得该项目冠军！'),
(null,null,'中国队残奥历史金牌数突破500','1630493400','/newsinfo/10.jpeg','<p>
          9月1日，在东京残奥会男子50米自由泳S5级比赛中，中国队选手郑涛破残奥会纪录获得冠军，中国队再次包揽金银铜牌。至此，中国体育代表团残奥会历史金牌总数突破500大关。
        </p>
        <p>
          来源：人民日报
        </p>
        ','hotnews','在东京残奥会男子50米自由泳S5级比赛中，中国队选手郑涛破残奥会纪录获得冠军，中国队再次包揽金银铜牌。至此，中国体育代表团残奥会历史金牌总数突破500大关。'),
(null,null,'中国残奥军团96金全名单！收藏，祝贺！','1630821240','/newsinfo/6-1.jpeg','<p>
          这个夏天，网友们一次次感慨“谢谢你们，让我们看到最不屈的灵魂”。让我们用关注，记录他们的成就，一起传递，为梦想点赞！
        </p>
        <img width="100%" src="/newsinfo/6-1.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-2.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-3.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-4.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-5.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-6.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-7.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-8.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-9.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-10.jpeg" alt="">','hotnews','这个夏天，网友们一次次感慨“谢谢你们，让我们看到最不屈的灵魂”。让我们用关注，记录他们的成就，一起传递，为梦想点赞！'),
(null,null,'中国单日6金+500金里程碑+四金王诞生！残奥奖牌榜：中国已68金','1630469760','/newsinfo/7.jpeg','<p>
          北京时间9月1日，东京残奥会，中国队再次拿下6枚金牌。值得一提的是，游泳男子50米自由泳S5级，中国队霸气包揽前三名，而且中国队迎来了里程碑时刻，中国队迎来在夏季残奥会赛场上获得的第500枚金牌！
        </p>
        <p>
          第63金！田径男子跳远T38级，中国队包揽金银牌，朱德宁7米31获得金牌，并打破世界纪录。另一名中国选手衷黄浩获得银牌。
        </p>
        <p>
          第64金！射箭女子W1级个人赛，中国选手陈敏仪142比131击败捷克选手，获得金牌，并且打破了残奥会纪录。
        </p>
        <p>
          第65金！田径女子100米T36级，中国选手史逸婷13秒61获得金牌，并打破世界纪录。
        </p>
        <p>
          第66金！游泳男子50米自由泳S5级，中国队表现强势，霸气包揽前三名！郑涛30秒31获得金牌，并打破残奥会纪录，袁伟译31秒11获得银牌，王李超31秒35获得铜牌。郑涛成就四金王荣誉！值得一提的是，这也是中国队在夏季残奥会赛场上获得的第500枚金牌，里程碑的时刻。
        </p>
        <p>
          第67金！田径女子100米T53级，中国选手高芳16秒29获得金牌，这场决赛，中国队也包揽了金银牌，另一名中国选手周洪转获得银牌。
        </p>
        <p>
          第68金！田径女子100米T54级，中国选手周召倩15秒90获得金牌。
        </p>
        <p>
          此外，中国坐式女排3-0击败卢旺达队，小组赛三战全胜排名第一，晋级四强。这样一来，男足、女篮、女排都成功进入到了四强。
        </p>
        ','hotnews','东京残奥会，中国队再次拿下6枚金牌。值得一提的是，游泳男子50米自由泳S5级，中国队霸气包揽前三名，而且中国队迎来了里程碑时刻，中国队迎来在夏季残奥会赛场上获得的第500枚金牌！'),
(null,16,'董超为中国射击队摘东京残奥会首金，个人三连冠','1630302900','/newsinfo/8.jpeg','<p>
          董超打破残奥会纪录的同时实现个人三连冠。
        </p>
        <p>
          新京报讯 8月30日，在东京残奥会男子10米气步枪站姿R1-SH1级比赛中，中国队董超夺得金牌，打破残奥会纪录的同时实现个人三连冠。这也是中国射击队在东京残奥会的首金。
        </p>
        ','hotnews','在东京残奥会男子10米气步枪站姿R1-SH1级比赛中，中国队董超夺得金牌，打破残奥会纪录的同时实现个人三连冠。这也是中国射击队在东京残奥会的首金。'),
(null,1,'赵帅夺得东京残奥会乒乓球男单MS8级金牌','1630291320','/newsinfo/9.png','<p>
          在刚刚结束的东京残奥会乒乓球男子单打MS8级决赛中，中国选手赵帅最终以3比1的比分击败对手，获得该项目冠军！
        </p>
        <p>
          来源：央视新闻
        </p>
        ','hotnews','在刚刚结束的东京残奥会乒乓球男子单打MS8级决赛中，中国选手赵帅最终以3比1的比分击败对手，获得该项目冠军！'),
(null,null,'中国队残奥历史金牌数突破500','1630493400','/newsinfo/10.jpeg','<p>
          9月1日，在东京残奥会男子50米自由泳S5级比赛中，中国队选手郑涛破残奥会纪录获得冠军，中国队再次包揽金银铜牌。至此，中国体育代表团残奥会历史金牌总数突破500大关。
        </p>
        <p>
          来源：人民日报
        </p>
        ','hotnews','在东京残奥会男子50米自由泳S5级比赛中，中国队选手郑涛破残奥会纪录获得冠军，中国队再次包揽金银铜牌。至此，中国体育代表团残奥会历史金牌总数突破500大关。'),
(null,null,'中国残奥军团96金全名单！收藏，祝贺！','1630821240','/newsinfo/6-1.jpeg','<p>
          这个夏天，网友们一次次感慨“谢谢你们，让我们看到最不屈的灵魂”。让我们用关注，记录他们的成就，一起传递，为梦想点赞！
        </p>
        <img width="100%" src="/newsinfo/6-1.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-2.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-3.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-4.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-5.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-6.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-7.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-8.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-9.jpeg" alt="">
        <img width="100%" src="/newsinfo/6-10.jpeg" alt="">','hotnews','这个夏天，网友们一次次感慨“谢谢你们，让我们看到最不屈的灵魂”。让我们用关注，记录他们的成就，一起传递，为梦想点赞！'),
(null,null,'中国单日6金+500金里程碑+四金王诞生！残奥奖牌榜：中国已68金','1630469760','/newsinfo/7.jpeg','<p>
          北京时间9月1日，东京残奥会，中国队再次拿下6枚金牌。值得一提的是，游泳男子50米自由泳S5级，中国队霸气包揽前三名，而且中国队迎来了里程碑时刻，中国队迎来在夏季残奥会赛场上获得的第500枚金牌！
        </p>
        <p>
          第63金！田径男子跳远T38级，中国队包揽金银牌，朱德宁7米31获得金牌，并打破世界纪录。另一名中国选手衷黄浩获得银牌。
        </p>
        <p>
          第64金！射箭女子W1级个人赛，中国选手陈敏仪142比131击败捷克选手，获得金牌，并且打破了残奥会纪录。
        </p>
        <p>
          第65金！田径女子100米T36级，中国选手史逸婷13秒61获得金牌，并打破世界纪录。
        </p>
        <p>
          第66金！游泳男子50米自由泳S5级，中国队表现强势，霸气包揽前三名！郑涛30秒31获得金牌，并打破残奥会纪录，袁伟译31秒11获得银牌，王李超31秒35获得铜牌。郑涛成就四金王荣誉！值得一提的是，这也是中国队在夏季残奥会赛场上获得的第500枚金牌，里程碑的时刻。
        </p>
        <p>
          第67金！田径女子100米T53级，中国选手高芳16秒29获得金牌，这场决赛，中国队也包揽了金银牌，另一名中国选手周洪转获得银牌。
        </p>
        <p>
          第68金！田径女子100米T54级，中国选手周召倩15秒90获得金牌。
        </p>
        <p>
          此外，中国坐式女排3-0击败卢旺达队，小组赛三战全胜排名第一，晋级四强。这样一来，男足、女篮、女排都成功进入到了四强。
        </p>
        ','hotnews','东京残奥会，中国队再次拿下6枚金牌。值得一提的是，游泳男子50米自由泳S5级，中国队霸气包揽前三名，而且中国队迎来了里程碑时刻，中国队迎来在夏季残奥会赛场上获得的第500枚金牌！'),
(null,16,'董超为中国射击队摘东京残奥会首金，个人三连冠','1630302900','/newsinfo/8.jpeg','<p>
          董超打破残奥会纪录的同时实现个人三连冠。
        </p>
        <p>
          新京报讯 8月30日，在东京残奥会男子10米气步枪站姿R1-SH1级比赛中，中国队董超夺得金牌，打破残奥会纪录的同时实现个人三连冠。这也是中国射击队在东京残奥会的首金。
        </p>
        ','hotnews','在东京残奥会男子10米气步枪站姿R1-SH1级比赛中，中国队董超夺得金牌，打破残奥会纪录的同时实现个人三连冠。这也是中国射击队在东京残奥会的首金。'),
(null,1,'赵帅夺得东京残奥会乒乓球男单MS8级金牌','1630291320','/newsinfo/9.png','<p>
          在刚刚结束的东京残奥会乒乓球男子单打MS8级决赛中，中国选手赵帅最终以3比1的比分击败对手，获得该项目冠军！
        </p>
        <p>
          来源：央视新闻
        </p>
        ','hotnews','在刚刚结束的东京残奥会乒乓球男子单打MS8级决赛中，中国选手赵帅最终以3比1的比分击败对手，获得该项目冠军！'),
(null,null,'中国队残奥历史金牌数突破500','1630493400','/newsinfo/10.jpeg','<p>
          9月1日，在东京残奥会男子50米自由泳S5级比赛中，中国队选手郑涛破残奥会纪录获得冠军，中国队再次包揽金银铜牌。至此，中国体育代表团残奥会历史金牌总数突破500大关。
        </p>
        <p>
          来源：人民日报
        </p>
        ','hotnews','在东京残奥会男子50米自由泳S5级比赛中，中国队选手郑涛破残奥会纪录获得冠军，中国队再次包揽金银铜牌。至此，中国体育代表团残奥会历史金牌总数突破500大关。'),
(null,19,'人美心善！中国残奥冠军主动帮对手推轮椅，网友狂赞：体育精神','1629893400','/newsinfo/11.jpeg','<p>
          北京时间8月25日，东京残奥会女子佩剑个人赛A级比赛，中国队选手边静夺冠后，有一个让人暖心的动作，她看到了对手离开比赛台不方便，主动上前帮助她推轮椅。这一幕，完美诠释了奥林匹克精神。
        </p>
        <p>
          这场决赛，中国选手边静的实力超过对手，格鲁吉亚选手迪诺早早大比分落后，最终，边静15-7击败对手，成功夺冠。
        </p>
        <p>
          2人早已在赛场相识，因为都是残疾运动员，更能读懂对手的困难。赛后，边静看到对手离开比赛台不方便的时候，主动上前帮助她推轮椅，为此，格鲁吉亚选手迪诺也是非常感谢边静的帮助，露出了笑容。边静表示：“当时我们互相表达了祝贺。看对方离开时不太方便，就想着尽可能去帮助她。”
        </p>
        <p>
          出生于1988年5月10日的边静目前33岁，来自徐州，第二次参加残奥会，作为残奥击剑名将，20岁开启了这项运动。
        </p>
        <p>
          在残奥会的赛场，处处充满着人性的光辉，中国运动员不仅竞技力很强，最为关键的是都非常善良，虽然大家在赛场上是对手，但离开比赛大家都是朋友，相互帮助正是奥林匹克精神的完美诠释，此番施以援手只是一个小动作，但是对手会觉得非常暖心，其他人看到这样的瞬间也会感慨人间的美好。为此，很多网友也称赞了边静的行为：“人美心善”，“这就是体育精神”，“优秀的人品和能力！”
        </p>
        ','gamefengyun','东京残奥会女子佩剑个人赛A级比赛，中国队选手边静夺冠后，有一个让人暖心的动作，她看到了对手离开比赛台不方便，主动上前帮助她推轮椅。这一幕，完美诠释了奥林匹克精神。'),
(null,1,'致敬！10岁失去双手，48岁征战奥运，他用嘴咬着乒乓球拍比赛','1629894540','/newsinfo/12.jpeg','<p>
          北京时间8月25日，东京残奥会第一天，我们又见到了埃及乒乓球选手哈米图。这位48岁的老将在10岁失去了双手，参加乒乓球比赛时只能用嘴咬着球拍来打，致敬这样努力活着的人！这是体育精神的最好诠释！
        </p>
        <p>
          埃及选手哈米图出生于1973年7月1日，目前48岁，他出生于埃及，已经结婚生子，家庭包括一个自己的妻子以及1个儿子与2个女儿。
        </p>
        <p>
          哈米图在10岁的时候因为火车事故失去了手臂，但是从未放弃梦想，因此1986年的时候，13岁的哈米图开始投身于乒乓球的项目，哈米图表示：“在我们村，当时只有乒乓球与足球2个运动，最开始我2个运动都参与，我的情况踢足球是符合逻辑的，但是我最终选择了将乒乓球作为自己的挑战项目。”
        </p>
        <p>
          于是，哈米图在2004年开始代表埃及出战乒乓球的比赛，2016年参加了残奥会，此番来到东京，面对韩国选手朴康圭0-3落败，3局的比分分别是6-11、4-11、9-11。
        </p>
        <p>
          很多人都在想，没有手臂如何打乒乓球？哈米图选择用脚来将球抛弃，完成发球，并且用嘴咬着球拍进行比赛，整个过程听起来不可思议，但是坚韧的哈米图却玩转了这项运动。
        </p>
        <p>
          网友为此也是感慨不已：“致敬”！“体育精神的最好诠释”！“残奥里的每个选手更值得敬佩！”的确，为这些努力活着，不断前进的人而鼓掌，他们是真正的英雄。
        </p>
        ','gamefengyun','东京残奥会第一天，我们又见到了埃及乒乓球选手哈米图。这位48岁的老将在10岁失去了双手，参加乒乓球比赛时只能用嘴咬着球拍来打，致敬这样努力活着的人！这是体育精神的最好诠释！'),
(null,12,'女子50米自由泳重赛原因：荷兰选手投诉自己被中国选手干扰','1630104420','/newsinfo/13.jpeg','<p>
          直播吧8月28日讯 据东京残奥会组织委员的报道，女子50米自由泳将会重赛，中国选手马佳和李桂芝获得的金银牌被暂时取消。
        </p>
        <p>
          据日本“thedigestweb”网站曝料，是荷兰选手投诉自己被中国运动员碰撞，得到了赛事裁判委员会的认可。
        </p>
        <p>
          thedigestweb表示：“比赛中获得第四名的荷兰选手布兰斯马，表示自己被旁边泳道的中国选手李桂芝干扰，从而被迫改变了游泳的方向，荷兰选手赛后进行申诉，得到了赛事委员会的认可。”
        </p>
        <p>
          thedigestweb表示：“比赛中获得第四名的荷兰选手布兰斯马，表示自己被旁边泳道的中国选手李桂芝干扰，从而被迫改变了游泳的方向，荷兰选手赛后进行申诉，得到了赛事委员会的认可。”
        </p>
        <p>
          目前，该赛事的重赛日期还未确定。
        </p>
        ','gamefengyun','据东京残奥会组织委员的报道，女子50米自由泳将会重赛，中国选手马佳和李桂芝获得的金银牌被暂时取消。'),
(null,12,'祝贺！邹连康残奥会男子S3级50米仰泳金牌','1630228620','/newsinfo/14.jpeg','<p>
          本文转自【人民日报微博】；
        </p>
        <p>
          【祝贺！邹连康残奥会男子S3级50米仰泳金牌】今天，东京残奥会游泳男子S3级50米仰泳决赛中，中国选手邹连康获得第一名。祝贺，继续加油！
        </p>
        ','gamefengyun','【祝贺！邹连康残奥会男子S3级50米仰泳金牌】今天，东京残奥会游泳男子S3级50米仰泳决赛中，中国选手邹连康获得第一名。祝贺，继续加油！'),
(null,12,'中国游泳已3次包揽残奥金银铜牌 网友：中国的骄傲！','1630327080','/newsinfo/15.jpeg','<p>
          本文转自【人民日报微博】；
        </p>
        <p>
          今天，东京残奥会男子50米仰泳S5级比赛，中国运动员又一次包揽金银铜牌。赛程过半，东京赛场已3次同升三面五星红旗，此前两次为男子50米蝶泳S5级、女子100米仰泳S11级比赛，均为游泳项目。每一次包揽都来之不易！传递，为中国运动员喝彩！
        </p>
        ','gamefengyun','今天，东京残奥会男子50米仰泳S5级比赛，中国运动员又一次包揽金银铜牌。赛程过半，东京赛场已3次同升三面五星红旗，此前两次为男子50米蝶泳S5级、女子100米仰泳S11级比赛，均为游泳项目。每一次包揽都来之不易！传递，为中国运动员喝彩！'),
(null,19,'人美心善！中国残奥冠军主动帮对手推轮椅，网友狂赞：体育精神','1629893400','/newsinfo/11.jpeg','<p>
          北京时间8月25日，东京残奥会女子佩剑个人赛A级比赛，中国队选手边静夺冠后，有一个让人暖心的动作，她看到了对手离开比赛台不方便，主动上前帮助她推轮椅。这一幕，完美诠释了奥林匹克精神。
        </p>
        <p>
          这场决赛，中国选手边静的实力超过对手，格鲁吉亚选手迪诺早早大比分落后，最终，边静15-7击败对手，成功夺冠。
        </p>
        <p>
          2人早已在赛场相识，因为都是残疾运动员，更能读懂对手的困难。赛后，边静看到对手离开比赛台不方便的时候，主动上前帮助她推轮椅，为此，格鲁吉亚选手迪诺也是非常感谢边静的帮助，露出了笑容。边静表示：“当时我们互相表达了祝贺。看对方离开时不太方便，就想着尽可能去帮助她。”
        </p>
        <p>
          出生于1988年5月10日的边静目前33岁，来自徐州，第二次参加残奥会，作为残奥击剑名将，20岁开启了这项运动。
        </p>
        <p>
          在残奥会的赛场，处处充满着人性的光辉，中国运动员不仅竞技力很强，最为关键的是都非常善良，虽然大家在赛场上是对手，但离开比赛大家都是朋友，相互帮助正是奥林匹克精神的完美诠释，此番施以援手只是一个小动作，但是对手会觉得非常暖心，其他人看到这样的瞬间也会感慨人间的美好。为此，很多网友也称赞了边静的行为：“人美心善”，“这就是体育精神”，“优秀的人品和能力！”
        </p>
        ','gamefengyun','东京残奥会女子佩剑个人赛A级比赛，中国队选手边静夺冠后，有一个让人暖心的动作，她看到了对手离开比赛台不方便，主动上前帮助她推轮椅。这一幕，完美诠释了奥林匹克精神。'),
(null,1,'致敬！10岁失去双手，48岁征战奥运，他用嘴咬着乒乓球拍比赛','1629894540','/newsinfo/12.jpeg','<p>
          北京时间8月25日，东京残奥会第一天，我们又见到了埃及乒乓球选手哈米图。这位48岁的老将在10岁失去了双手，参加乒乓球比赛时只能用嘴咬着球拍来打，致敬这样努力活着的人！这是体育精神的最好诠释！
        </p>
        <p>
          埃及选手哈米图出生于1973年7月1日，目前48岁，他出生于埃及，已经结婚生子，家庭包括一个自己的妻子以及1个儿子与2个女儿。
        </p>
        <p>
          哈米图在10岁的时候因为火车事故失去了手臂，但是从未放弃梦想，因此1986年的时候，13岁的哈米图开始投身于乒乓球的项目，哈米图表示：“在我们村，当时只有乒乓球与足球2个运动，最开始我2个运动都参与，我的情况踢足球是符合逻辑的，但是我最终选择了将乒乓球作为自己的挑战项目。”
        </p>
        <p>
          于是，哈米图在2004年开始代表埃及出战乒乓球的比赛，2016年参加了残奥会，此番来到东京，面对韩国选手朴康圭0-3落败，3局的比分分别是6-11、4-11、9-11。
        </p>
        <p>
          很多人都在想，没有手臂如何打乒乓球？哈米图选择用脚来将球抛弃，完成发球，并且用嘴咬着球拍进行比赛，整个过程听起来不可思议，但是坚韧的哈米图却玩转了这项运动。
        </p>
        <p>
          网友为此也是感慨不已：“致敬”！“体育精神的最好诠释”！“残奥里的每个选手更值得敬佩！”的确，为这些努力活着，不断前进的人而鼓掌，他们是真正的英雄。
        </p>
        ','gamefengyun','东京残奥会第一天，我们又见到了埃及乒乓球选手哈米图。这位48岁的老将在10岁失去了双手，参加乒乓球比赛时只能用嘴咬着球拍来打，致敬这样努力活着的人！这是体育精神的最好诠释！'),
(null,12,'女子50米自由泳重赛原因：荷兰选手投诉自己被中国选手干扰','1630104420','/newsinfo/13.jpeg','<p>
          直播吧8月28日讯 据东京残奥会组织委员的报道，女子50米自由泳将会重赛，中国选手马佳和李桂芝获得的金银牌被暂时取消。
        </p>
        <p>
          据日本“thedigestweb”网站曝料，是荷兰选手投诉自己被中国运动员碰撞，得到了赛事裁判委员会的认可。
        </p>
        <p>
          thedigestweb表示：“比赛中获得第四名的荷兰选手布兰斯马，表示自己被旁边泳道的中国选手李桂芝干扰，从而被迫改变了游泳的方向，荷兰选手赛后进行申诉，得到了赛事委员会的认可。”
        </p>
        <p>
          thedigestweb表示：“比赛中获得第四名的荷兰选手布兰斯马，表示自己被旁边泳道的中国选手李桂芝干扰，从而被迫改变了游泳的方向，荷兰选手赛后进行申诉，得到了赛事委员会的认可。”
        </p>
        <p>
          目前，该赛事的重赛日期还未确定。
        </p>
        ','gamefengyun','据东京残奥会组织委员的报道，女子50米自由泳将会重赛，中国选手马佳和李桂芝获得的金银牌被暂时取消。'),
(null,12,'祝贺！邹连康残奥会男子S3级50米仰泳金牌','1630228620','/newsinfo/14.jpeg','<p>
          本文转自【人民日报微博】；
        </p>
        <p>
          【祝贺！邹连康残奥会男子S3级50米仰泳金牌】今天，东京残奥会游泳男子S3级50米仰泳决赛中，中国选手邹连康获得第一名。祝贺，继续加油！
        </p>
        ','gamefengyun','【祝贺！邹连康残奥会男子S3级50米仰泳金牌】今天，东京残奥会游泳男子S3级50米仰泳决赛中，中国选手邹连康获得第一名。祝贺，继续加油！'),
(null,12,'中国游泳已3次包揽残奥金银铜牌 网友：中国的骄傲！','1630327080','/newsinfo/15.jpeg','<p>
          本文转自【人民日报微博】；
        </p>
        <p>
          今天，东京残奥会男子50米仰泳S5级比赛，中国运动员又一次包揽金银铜牌。赛程过半，东京赛场已3次同升三面五星红旗，此前两次为男子50米蝶泳S5级、女子100米仰泳S11级比赛，均为游泳项目。每一次包揽都来之不易！传递，为中国运动员喝彩！
        </p>
        ','gamefengyun','今天，东京残奥会男子50米仰泳S5级比赛，中国运动员又一次包揽金银铜牌。赛程过半，东京赛场已3次同升三面五星红旗，此前两次为男子50米蝶泳S5级、女子100米仰泳S11级比赛，均为游泳项目。每一次包揽都来之不易！传递，为中国运动员喝彩！'),
(null,19,'人美心善！中国残奥冠军主动帮对手推轮椅，网友狂赞：体育精神','1629893400','/newsinfo/11.jpeg','<p>
          北京时间8月25日，东京残奥会女子佩剑个人赛A级比赛，中国队选手边静夺冠后，有一个让人暖心的动作，她看到了对手离开比赛台不方便，主动上前帮助她推轮椅。这一幕，完美诠释了奥林匹克精神。
        </p>
        <p>
          这场决赛，中国选手边静的实力超过对手，格鲁吉亚选手迪诺早早大比分落后，最终，边静15-7击败对手，成功夺冠。
        </p>
        <p>
          2人早已在赛场相识，因为都是残疾运动员，更能读懂对手的困难。赛后，边静看到对手离开比赛台不方便的时候，主动上前帮助她推轮椅，为此，格鲁吉亚选手迪诺也是非常感谢边静的帮助，露出了笑容。边静表示：“当时我们互相表达了祝贺。看对方离开时不太方便，就想着尽可能去帮助她。”
        </p>
        <p>
          出生于1988年5月10日的边静目前33岁，来自徐州，第二次参加残奥会，作为残奥击剑名将，20岁开启了这项运动。
        </p>
        <p>
          在残奥会的赛场，处处充满着人性的光辉，中国运动员不仅竞技力很强，最为关键的是都非常善良，虽然大家在赛场上是对手，但离开比赛大家都是朋友，相互帮助正是奥林匹克精神的完美诠释，此番施以援手只是一个小动作，但是对手会觉得非常暖心，其他人看到这样的瞬间也会感慨人间的美好。为此，很多网友也称赞了边静的行为：“人美心善”，“这就是体育精神”，“优秀的人品和能力！”
        </p>
        ','gamefengyun','东京残奥会女子佩剑个人赛A级比赛，中国队选手边静夺冠后，有一个让人暖心的动作，她看到了对手离开比赛台不方便，主动上前帮助她推轮椅。这一幕，完美诠释了奥林匹克精神。'),
(null,1,'致敬！10岁失去双手，48岁征战奥运，他用嘴咬着乒乓球拍比赛','1629894540','/newsinfo/12.jpeg','<p>
          北京时间8月25日，东京残奥会第一天，我们又见到了埃及乒乓球选手哈米图。这位48岁的老将在10岁失去了双手，参加乒乓球比赛时只能用嘴咬着球拍来打，致敬这样努力活着的人！这是体育精神的最好诠释！
        </p>
        <p>
          埃及选手哈米图出生于1973年7月1日，目前48岁，他出生于埃及，已经结婚生子，家庭包括一个自己的妻子以及1个儿子与2个女儿。
        </p>
        <p>
          哈米图在10岁的时候因为火车事故失去了手臂，但是从未放弃梦想，因此1986年的时候，13岁的哈米图开始投身于乒乓球的项目，哈米图表示：“在我们村，当时只有乒乓球与足球2个运动，最开始我2个运动都参与，我的情况踢足球是符合逻辑的，但是我最终选择了将乒乓球作为自己的挑战项目。”
        </p>
        <p>
          于是，哈米图在2004年开始代表埃及出战乒乓球的比赛，2016年参加了残奥会，此番来到东京，面对韩国选手朴康圭0-3落败，3局的比分分别是6-11、4-11、9-11。
        </p>
        <p>
          很多人都在想，没有手臂如何打乒乓球？哈米图选择用脚来将球抛弃，完成发球，并且用嘴咬着球拍进行比赛，整个过程听起来不可思议，但是坚韧的哈米图却玩转了这项运动。
        </p>
        <p>
          网友为此也是感慨不已：“致敬”！“体育精神的最好诠释”！“残奥里的每个选手更值得敬佩！”的确，为这些努力活着，不断前进的人而鼓掌，他们是真正的英雄。
        </p>
        ','gamefengyun','东京残奥会第一天，我们又见到了埃及乒乓球选手哈米图。这位48岁的老将在10岁失去了双手，参加乒乓球比赛时只能用嘴咬着球拍来打，致敬这样努力活着的人！这是体育精神的最好诠释！'),
(null,12,'女子50米自由泳重赛原因：荷兰选手投诉自己被中国选手干扰','1630104420','/newsinfo/13.jpeg','<p>
          直播吧8月28日讯 据东京残奥会组织委员的报道，女子50米自由泳将会重赛，中国选手马佳和李桂芝获得的金银牌被暂时取消。
        </p>
        <p>
          据日本“thedigestweb”网站曝料，是荷兰选手投诉自己被中国运动员碰撞，得到了赛事裁判委员会的认可。
        </p>
        <p>
          thedigestweb表示：“比赛中获得第四名的荷兰选手布兰斯马，表示自己被旁边泳道的中国选手李桂芝干扰，从而被迫改变了游泳的方向，荷兰选手赛后进行申诉，得到了赛事委员会的认可。”
        </p>
        <p>
          thedigestweb表示：“比赛中获得第四名的荷兰选手布兰斯马，表示自己被旁边泳道的中国选手李桂芝干扰，从而被迫改变了游泳的方向，荷兰选手赛后进行申诉，得到了赛事委员会的认可。”
        </p>
        <p>
          目前，该赛事的重赛日期还未确定。
        </p>
        ','gamefengyun','据东京残奥会组织委员的报道，女子50米自由泳将会重赛，中国选手马佳和李桂芝获得的金银牌被暂时取消。'),
(null,12,'祝贺！邹连康残奥会男子S3级50米仰泳金牌','1630228620','/newsinfo/14.jpeg','<p>
          本文转自【人民日报微博】；
        </p>
        <p>
          【祝贺！邹连康残奥会男子S3级50米仰泳金牌】今天，东京残奥会游泳男子S3级50米仰泳决赛中，中国选手邹连康获得第一名。祝贺，继续加油！
        </p>
        ','gamefengyun','【祝贺！邹连康残奥会男子S3级50米仰泳金牌】今天，东京残奥会游泳男子S3级50米仰泳决赛中，中国选手邹连康获得第一名。祝贺，继续加油！'),
(null,12,'中国游泳已3次包揽残奥金银铜牌 网友：中国的骄傲！','1630327080','/newsinfo/15.jpeg','<p>
          本文转自【人民日报微博】；
        </p>
        <p>
          今天，东京残奥会男子50米仰泳S5级比赛，中国运动员又一次包揽金银铜牌。赛程过半，东京赛场已3次同升三面五星红旗，此前两次为男子50米蝶泳S5级、女子100米仰泳S11级比赛，均为游泳项目。每一次包揽都来之不易！传递，为中国运动员喝彩！
        </p>
        ','gamefengyun','今天，东京残奥会男子50米仰泳S5级比赛，中国运动员又一次包揽金银铜牌。赛程过半，东京赛场已3次同升三面五星红旗，此前两次为男子50米蝶泳S5级、女子100米仰泳S11级比赛，均为游泳项目。每一次包揽都来之不易！传递，为中国运动员喝彩！'),
(null,null,'追光｜纪录与人性共光辉 中国残奥代表团诠释奥运精神','1630785960','/newsinfo/16-1.jpeg','<p>
          卓越、友谊、尊重
        </p>
        <p>是奥林匹克精神的三大核心价值观</p>
        <p>十多天转瞬即逝</p>
        <p>东京残奥会将于9月5日晚闭幕</p>
        <p>中国健儿们</p>
        <p>在赛场上表现抢眼</p>
        <p>创造多项纪录、里程的同时</p>
        <p>也留下了无数闪耀人性光辉的时刻</p>
        <p>完美诠释了奥林匹克精神</p>
        <p>创造多项纪录、里程的同时</p>
        <img src="/newsinfo/16-1.jpeg" alt="">
        <p>8月29日</p>
        <p>女子200米T35级决赛上</p>
        <p>中国选手周霞以27秒17的成绩</p>
        <p>打破世界纪录夺冠</p>
        <p>而就在两天前</p>
        <p>她刚在100米比赛上刷新世界纪录</p>
        <p>周霞的壮举是中国残奥代表团</p>
        <p>在东京赛场的缩影</p>
        <p>本届赛事上</p>
        <p>已有超过20项世界纪录被中国选手打破</p>
        <p>而在许多方面</p>
        <p>中国队也实现了残奥会的历史性突破</p>
        <img src="/newsinfo/16-2.jpeg" alt="">
        <p>9月1日</p>
        <p>男子50米自由泳S5级决赛中</p>
        <p>郑涛以30秒31的成绩夺冠</p>
        <p>收获中国军团在本届赛事的第66枚金牌</p>
        <p>也标志着自1984年残奥会以来</p>
        <p>中国代表团在夏季残奥会上的金牌总数突破500枚</p>
        <img src="/newsinfo/16-3.jpeg" alt="">
        <p>中国轮椅女篮一路过关斩将杀入决赛</p>
        <p>最终摘得银牌</p>
        <p>创造了该项目的历史最好成绩</p>
        <p>截至9月4日</p>
        <p>中国代表团以93金57银50铜</p>
        <p>总奖牌数200枚的成绩</p>
        <p>高居金牌榜、奖牌榜“双榜”第一</p>
        <p>锁定了残奥会金牌榜的“五连霸”</p>
        <p>除了成绩的突破</p>
        <p>中国运动员拼搏、坚持、友善的品格</p>
        <p>更是奥林匹克精神的绝佳体现</p>
        <img src="/newsinfo/16-4.jpeg" alt="">
        <p>女子50米蝶泳S5级决赛后</p>
        <p>夺冠的“无臂美人鱼”卢冬</p>
        <p>在颁奖台上单腿下蹲</p>
        <p>与坐在轮椅上的银牌和铜牌获得者合影</p>
        <p>成就了残奥会上的“最美姿势”</p>
        ','mediafocus','卓越、友谊、尊重'),
(null,null,'观点｜残奥健儿成绩精神“双丰收”，这是中国的国家温度','1630840740','/newsinfo/17-1.jpeg','<p>
          领跑员徐冬林和刘翠青书写了一段传奇赛场故事。5日晚，东京残奥会落下大幕，来自全球的残奥运动员在为期13天的赛事中展现了顽强拼搏的精神。其中，中国代表团以优异的成绩，连续五届占据金牌榜和奖牌榜第一位置。续写传奇的同时，也让我们看到了中国在残奥和残疾人事业上一直以来的发展和进步。
        </p>
        <img src="/newsinfo/17-2.jpeg" alt="">
        <p>郑涛用嘴咬住毛巾出发。巨大优势在倒数第二个比赛日，中国队就以93金57银50铜的成绩提前锁定奖牌榜第一，而在赛事期间，中国运动员贡献了太多的高光时刻和感动瞬间，不但征服了对手，也征服了所有的观众和媒体。</p>
        <p>“无臂飞鱼”郑涛个人斩获4金，并4破纪录。因为没有手臂，郑涛的仰泳出发需要用嘴咬住一块毛巾；同样因为没有手臂，他每一次抵达终点，都在用头结结实实地触壁……</p>
        <p>这位残奥会三届元老的伟大表现令人动容，也让自己出现在了《每日邮报》、《太阳报》、《镜报》等西方媒体的头版。</p>
        <p>《镜报》写道：“残奥会上励志的运动员很多，但郑涛就是传奇，难以超越。”</p>
        <img src="/newsinfo/17-3.jpeg" alt="">
        <p>郑涛用头撞向终点线。郑涛是中国代表团一个闪亮的个体，也是中国残奥健儿过去多届奥运会披荆斩棘的一面镜子，代表了中国残奥事业的蓬勃发展。事实上，自从2004年雅典中国第一次高居金牌榜与奖牌榜头名，之后无论北京、伦敦还是里约，中国队在残奥会上一直保持着巨大的优势。</p>
        <p>为什么中国残奥运动员能够获得那么多奖牌？关于这个问题，曾有外国记者请教过中国残疾人联合会主席张海迪——张海迪表示：“首先是运动员们奋勇争先的精神，最重要的是30年来中国残疾人事业不断发展，在康复、教育、文化、体育方面都取得了很大的进步。”</p>
        <img src="/newsinfo/17-4.jpeg" alt="">
        <p>领跑员徐冬林高举盲人选手刘翠青。国家温度一如张海迪所言，党和政府一直高度重视残疾人事业，相继出台了一系列政策规划，推进残疾人事业发展。</p>
        <p>2016年，国务院印发的《全民健身计划（2016-2020年）》和国家体育总局等23部门制定的《群众冬季运动推广普及计划（2016—2020年）》，均要求加大全民健身助残工程支持力度，要求推动残疾人康复体育和健身体育广泛开展。</p>
        <p>中国残联此前提供的数据显示，近些年以“自强健身工程”和“康复体育关爱工程”为主体的残疾人体育基本服务体系在不断完善，残疾人体育服务和相关服务能力逐步提升：</p>
        <p>全国累计社区健身示范点建设9053个、研发推广适合不同残疾类别残疾人使用的小型体育器材共计150种、创编普及残疾人康复健身体育项目和方法24项。</p>
        <img src="/newsinfo/17-5.jpeg" alt="">
        <p>用嘴咬着球拍的埃及运动员哈马托。本届残奥会的口号与奥运会相同，“情同与共”包含了对一个健全人与残疾人互帮互助、团结友爱的美好世界的希冀。国际残奥委会主席帕森斯也表达：“残奥会是一个平台，但每四年一次是不够的。每个人都有责任每天发挥自己的作用，在各自的国家、城市和社区建设一个更具包容性的社会。”</p>
        <p>从这个角度看，本届残奥会，中国代表团能够实现成绩和精神上的“双丰收”，恰恰凸显出了国家和社会一直以来的不懈追求：</p>
        <p>用平等的视角去对待残疾人，让残疾人更好地融入社会与生活，更普遍地参与运动。</p>
        ','mediafocus','领跑员徐冬林和刘翠青书写了一段传奇赛场故事。5日晚，东京残奥会落下大幕，来自全球的残奥运动员在为期13天的赛事中展现了顽强拼搏的精神。其中，中国代表团以优异的成绩，连续五届占据金牌榜和奖牌榜第一位置。续写传奇的同时，也让我们看到了中国在残奥和残疾人事业上一直以来的发展和进步。'),
(null,3,'深一度｜给美国“上一课”的中国轮椅女篮，值得让更多人知道','1630761300','/newsinfo/18-1.jpeg','<p>
          中国轮椅女篮。“我带队以来，从来没输给过美国队。”这是中国轮椅女篮主帅陈琦说过的一句话。北京时间9月4日，东京残奥会轮椅女篮决赛，中国队不敌荷兰队收获银牌，让中国轮椅篮球首次站上领奖台。
        </p>
        <p>
          这支队伍，此前的最好成绩是里约奥运会的第六。
        </p>
        <p>
          但在本届奥运会“死亡之组”中，她们在小组赛击败本届冠军荷兰，双杀卫冕冠军美国队，并留下金句——“给老美上一课。”
        </p>
        <p>
          这样一支中国轮椅女篮，值得让更多人知道。
        </p>
        <img src="/newsinfo/17-2.jpeg" alt="">
        <p>中国战胜美国晋级决赛。“给老美上一课”半决赛对阵美国女篮最后3.5秒，主教练陈琦叫暂停的时候，嘴角就露出了一抹笑意。</p>
        <p>“把球发出来，然后投一个3分，给老美上一课！”暂停最后阶段，陈琦对着姑娘们说出这段话，内容是战术安排，语气却得意自在。</p>
        <p>给美国队“上一课”，还是篮球，这样的画面可能是许多球迷不曾想象的，却真真切切地在奥运赛场发生了。</p>
        <p>“美国队篮球底蕴特别深厚，我也想挑战一下，看看我对轮椅篮球的理解。”赛后采访，陈琦刚开始的表达很克制，但最后一句可能才是他最想说的，“从2017年我带队以来，从来没输给过美国队。”</p>
        <img src="/newsinfo/18-3.jpeg" alt="">
        <p>中国轮椅女篮主帅陈琦。正如陈琦所说，从2018年轮椅篮球世锦赛，中国女篮赢了美国20分，本届奥运会两度碰面，中国队小组赛1分险胜，半决赛41-36再胜一场，并首次打入残奥会决赛，创造历史。是美国队不强吗？显然不是，她们是4届残奥会冠军，2016年里约残奥会冠军正是她们。不光美国队强，中国女篮的分组也堪称“死亡之组”。</p>
        <p>除了美国队外，荷兰队同样是这个分组中的强敌——她们是2018年世锦赛冠军，4年来未尝败绩。5年前的里约残奥会，中国轮椅女篮曾29-62输给对手33分。</p>
        <p>但5年过去，中国轮椅女篮的成长却超出人们预期。小组赛，中国队先斩阿尔及利亚、再胜荷兰、后赢西班牙、最终绝杀卫冕冠军美国，以小组第一的身份出线。</p>
        <img src="/newsinfo/18-4.jpeg" alt="">
        <p>决赛中国不敌荷兰收获亚军。晋级之路看似轻松，但看看赛程就知道多么凶险——8月27日晚上战胜西班牙，队员们回到38公里外的奥运村，躺下就已经快半夜了。结果大家第二天早上5点就要起床，6点出发到赛场。因为对阵美国队的比赛9点就要开始。为了应对这样极不合理的赛程，领队郭治斌在来东京的一个月前，每天拉着大家聊到半夜，然后要求大家第二天一大早起床。</p>
        <p>“队员们一开始都不理解，其实都是为了这场比赛。”在新华社的报道中，郭志斌这样解释。</p>
        <p>小组赛，陈琦面对采访时说，“保四争三是球队的目标”，毕竟残奥会第四名就能创造中国队最好成绩。</p>
        <p>但姑娘们前进的脚步却没有停下，淘汰赛战胜英国，半决赛赢下美国，仅在决赛中不敌荷兰，收获了一枚残奥会银牌，也留下了“给老美上上课”这样的金句。</p>
        <img src="/newsinfo/18-5.jpeg" alt="">
        <p>中国轮椅女篮投篮。水泡、血泡、老茧“这些姑娘们看上去非常腼腆，可是训练起来特别狠，心理非常强大。”说起球队的成功，领队郭志斌这样形容。</p>
        <p>为了备战奥运，从去年11月起，全队在北京和广州两地展开了长达278天的集训，9个多月的时间里，大家几乎没回过家。</p>
        <p>疫情之下，一切都显得更不容易。</p>
        <p>原本打算前往云南高原拉练体能的女队，因为疫情无奈放弃。最终大家另辟蹊径，选择用戴口罩的方式模拟高原缺氧的状态；没有热身对手，于是拉着广东轮椅男队演练实战。</p>
        <p>形容奥运会的强度，张彤蕾颇为实诚：“和她们对抗起来，还没有我们在家里和男队激烈。”</p>
        <p>不过场面确实如此，当半决赛面临美国队不断追分的压力时，罚球成了中国队关键时刻的武器。全队最后时刻8罚8中，牢牢锁住胜利。</p>
        <p>甚至在队长林穗玲走上罚球线时，队友张雪梅冲着她大喊：“罚进一个就请你吃大餐！”结果就是，林穗玲稳稳命中两球。</p>
        <p>事实上，轮椅篮球运动员的成长路径，与健全的篮球运动员截然不同。用陈琦的话说，他们绝大部分都是“半路出家”，甚至原本都没接触过体育。直到身体受伤后，才开始接触这个项目，然后从“喜欢”转变为“热爱”。</p>
        <p>首先要克服的，便是“八字形”轮椅。要让轮椅能如双腿一样在球场上闪转腾挪，急停急走，唯有苦练。</p>
        <p>“轮椅不是身体的一部分，它是特别冰冷的。”在陈琦眼中，练好轮椅技术没有任何捷径，“大家都是从水泡到血泡，再到老茧，一步步过来的。”</p>
        ','mediafocus','中国轮椅女篮。“我带队以来，从来没输给过美国队。”这是中国轮椅女篮主帅陈琦说过的一句话。北京时间9月4日，东京残奥会轮椅女篮决赛，中国队不敌荷兰队收获银牌，让中国轮椅篮球首次站上领奖台。'),
(null,10,'深一度｜你是我的眼，在黑暗中为我指引方向','1630130760','/newsinfo/19-1.jpeg','<p>
          刘翠青和徐冬林完成卫冕。田径跑道上，刘翠青在女子400米T11级（视力障碍）决赛中率先冲过终点线，身边是他的搭档徐冬林。
        </p>
        <p>
          对于看不到这个世界的刘翠青来说，徐冬林不仅只是赛场上的领跑员，更是自己的另一双眼睛。
        </p>
        <p>
          从里约残奥会夺冠，到东京残奥会卫冕，为了赛道上闪耀的瞬间，两人在场下所付出的汗水和艰辛外界难以想象。
        </p>
        <p>
          而相互之间的信任，正是这对搭档能够站上巅峰的秘诀。就像此前刘翠青所说：“他相当于我的眼睛，在黑暗中为我指引方向。”
        </p>
        <img src="/newsinfo/19-2.jpeg" alt="">
        <p>你是我的眼。最佳搭档实现残奥会卫冕</p>
        <p>命运对刘翠青是残酷的，1991年出生的她在10岁时就因眼疾致盲，失去了眼前的光明，但连她自己也没有想到，未来自己的人生会和田径跑道结缘。</p>
        <p>17岁那年，即将成年的刘翠青被家乡广西残联的教练发掘，走上了体育的道路，至今，她已经在这条路上奋斗了11年的时间。</p>
        <p>而徐冬林，则是陪伴她站上巅峰的那个人。</p>
        <p>2013年底刘翠青开始和徐冬林搭档，说起两人搭档的缘由，一开始是由于身高。徐冬林身高1米84，刘翠青1米65，较为接近。“高水平的比赛要求更高，我跟当时的搭档身高差太大，不利于配合。”徐冬林曾在接受采访时透露。</p>
        <p>而这对组合在诞生之后，果然在世界舞台上闪耀出了光芒。</p>
        <p>2014年的韩国仁川残运会上，刘翠青包揽女子T11级100米、200米、400米、T11-12级4×100米接力和跳远5个项目的冠军。2015年世锦赛，刘翠青又豪取4金，并打破世界纪录。</p>
        <p>2016年里约残奥会，刘翠青一举站上最高领奖台，勇夺女子T11级400米以及T11~13级4×100米两枚金牌。</p>
        <p>如今在东京残奥会上，刘翠青和徐冬林不负众望，不仅卫冕女子T11级400米金牌，56秒25的成绩更是打破了残奥会纪录。</p>
        <img src="/newsinfo/19-3.jpeg" alt="">
        <p>刘翠青和徐东林共同比赛。一起奋力奔跑，信任最重要</p>
        <p>对于失明的刘翠青来说，能够在赛道上风驰电掣，徐冬林的帮助不可或缺，后者就是她能够自由行动的指引。</p>
        <p>在奔跑过程中，两人的手用引导绳牵在一起，保持着相同的摆臂和步频，刘翠青由此得以在黑暗中也能够顺利朝着终点奔去。</p>
        <p>除了口头交流之外，那根短短的引导绳，也是两人之间交流的工具。</p>
        <p>就像徐冬林此前所说：“比如跑弯道的时候，我的手向内侧弯一点，她就能感觉得出来，快到终点了，我的手往后一放，她就知道要到终点。”</p>
        <p>刘翠青也对此充满感激：“我平时走路都是缩手缩脚的，跑起来的时候领跑员就成了我的‘眼睛’，我就敢放开跑了，我从来没想过盲人也能自由奔跑。”</p>
        <p>而能够步调一致，相互之间心领神会的默契程度，更是需要场上和场下，长时间的熟悉与磨合。</p>
        <p>事实上，在两人搭档以来的多年时间里，刘翠青和徐冬林不光是在训练和比赛时培养相互之间的默契，在场下也是一样给予对方帮助，“他平时在生活细节和训练上都很注意关注我。平时他带我走路一般都不会摔跤，坑啊、台阶啊，他都会提醒我。”刘翠青此前曾透露。</p>
        <p>不过徐冬林也不愿把刘翠青的努力成果都归功于自己。“她能有这样的成绩，是天赋加努力，就算训练很苦，她也从来不会烦躁，安排的训练任务都能完成。”他在接受新华社采访时说。</p>
        <img src="/newsinfo/19-4.jpeg" alt="">
        <p>两人一同站上领奖台。“之前我的性格比较内向，通过体育，我的性格开朗了不少，接触的人也多了，体育让我健康、让我快乐。”这是刘翠青此前接受新华社采访时的感悟。她爱上的不光是飞奔的感觉，更是生活本身，“教练经常会开车带我们出去，看看祖国的山水，遇到美丽的风景，他们也会讲给我听。”</p>
        ','mediafocus','刘翠青和徐冬林完成卫冕。田径跑道上，刘翠青在女子400米T11级（视力障碍）决赛中率先冲过终点线，身边是他的搭档徐冬林。'),
(null,1,'连扳三局！张变逆转战胜队友夺得乒乓球女单WS5级金牌','1630225920','/newsinfo/20.jpeg','<p>
          北京时间8月29日，东京残奥会乒乓球女子单打WS5级决赛，两位中国选手张变和潘嘉敏联手奉献了一场紧张激烈的五局大战。潘嘉敏14-12、11-5先下两城，张变11-8、13-11连扳两局。进入到决胜局，乘势追击的张变一直占据着比分上的领先，最终以11-7锁定胜局，从而总比分3-2战胜队友潘嘉敏夺冠。潘嘉敏获得该项目银牌。
        </p>
        ','mediafocus','东京残奥会乒乓球女子单打WS5级决赛，两位中国选手张变和潘嘉敏联手奉献了一场紧张激烈的五局大战。潘嘉敏14-12、11-5先下两城，张变11-8、13-11连扳两局。进入到决胜局，乘势追击的张变一直占据着比分上的领先，最终以11-7锁定胜局，从而总比分3-2战胜队友潘嘉敏夺冠。潘嘉敏获得该项目银牌。'),
(null,19,'神奇！李豪斩获首金有多难？落后4分陷绝境，一剑封喉+振臂庆祝','1629883140','/newsinfo/21-1.png','<p>
          8月25日下午，在王小梅错失残奥会首金之后，中国队终于迎来了本届赛事的第一枚金牌，右腿被截肢的李豪男子佩剑个人赛A级决赛中，以15-12大逆转击败乌克兰选手曼科，这也是中国队的残奥会首金，恭喜李豪和中国体育代表团。
        </p>
        <p>这场比赛李豪夺冠堪称是惊心动魄，他一度被逼入绝境，最终上演神奇逆转：</p>
        <p>开场李豪被对手连得2分，以0-2落后；</p>
        <p>随后科曼连续进攻，8-4大比分领先李豪；</p>
        <p>李豪稳扎稳打，连得6分，实现了10-8的绝地反击；</p>
        <p>对手连得2分追平，10-10；</p>
        <p>李豪连得4分14-10拿下赛点，他最终把握住了机会以15-12拿下胜利；</p>
        <img src="/newsinfo/21-2.png" alt="">
        <p>可以看出，从开局落后2分，一度落后4分，李豪连得6分实现反超。哪怕是被对手追平之后也没有丝毫的懈怠和大意，心气也没有落下风，而是以连得4分的豪迈取得赛点，最终拿下胜利，确实非常不容易。</p>
        <img src="/newsinfo/21-3.jpeg" alt="">
        <p>这场比赛结束之后，李豪振臂庆祝，他没有给对手任何的机会。而场边李豪的教练也是欢呼，因为李豪在关键时刻顶住了压力，确实太不容易了，他也斩获了中国队的首金，意义非凡。</p>
        <img src="/newsinfo/21-4.png" alt="">
        <p>这是李豪的第一届残奥会，作为小时候就因为车祸截肢的运动员，李豪并非是职业的，他从21岁才开始练习击剑，按照李豪的说法是自己如果没有击剑，可能很难撑下去，确实令人感动。</p>
        <img src="/newsinfo/21-5.png" alt="">
        <p>期间李豪付出的努力也是一般人无法想象的，这次他一剑封喉之后振臂庆祝，也祝贺李豪，斩获了个人残奥会生涯的第一枚金牌，恭喜。</p>
        ','mediafocus','在王小梅错失残奥会首金之后，中国队终于迎来了本届赛事的第一枚金牌，右腿被截肢的李豪男子佩剑个人赛A级决赛中，以15-12大逆转击败乌克兰选手曼科，这也是中国队的残奥会首金，恭喜李豪和中国体育代表团。'),
(null,null,'追光｜纪录与人性共光辉 中国残奥代表团诠释奥运精神','1630785960','/newsinfo/16-1.jpeg','<p>
          卓越、友谊、尊重
        </p>
        <p>是奥林匹克精神的三大核心价值观</p>
        <p>十多天转瞬即逝</p>
        <p>东京残奥会将于9月5日晚闭幕</p>
        <p>中国健儿们</p>
        <p>在赛场上表现抢眼</p>
        <p>创造多项纪录、里程的同时</p>
        <p>也留下了无数闪耀人性光辉的时刻</p>
        <p>完美诠释了奥林匹克精神</p>
        <p>创造多项纪录、里程的同时</p>
        <img src="/newsinfo/16-1.jpeg" alt="">
        <p>8月29日</p>
        <p>女子200米T35级决赛上</p>
        <p>中国选手周霞以27秒17的成绩</p>
        <p>打破世界纪录夺冠</p>
        <p>而就在两天前</p>
        <p>她刚在100米比赛上刷新世界纪录</p>
        <p>周霞的壮举是中国残奥代表团</p>
        <p>在东京赛场的缩影</p>
        <p>本届赛事上</p>
        <p>已有超过20项世界纪录被中国选手打破</p>
        <p>而在许多方面</p>
        <p>中国队也实现了残奥会的历史性突破</p>
        <img src="/newsinfo/16-2.jpeg" alt="">
        <p>9月1日</p>
        <p>男子50米自由泳S5级决赛中</p>
        <p>郑涛以30秒31的成绩夺冠</p>
        <p>收获中国军团在本届赛事的第66枚金牌</p>
        <p>也标志着自1984年残奥会以来</p>
        <p>中国代表团在夏季残奥会上的金牌总数突破500枚</p>
        <img src="/newsinfo/16-3.jpeg" alt="">
        <p>中国轮椅女篮一路过关斩将杀入决赛</p>
        <p>最终摘得银牌</p>
        <p>创造了该项目的历史最好成绩</p>
        <p>截至9月4日</p>
        <p>中国代表团以93金57银50铜</p>
        <p>总奖牌数200枚的成绩</p>
        <p>高居金牌榜、奖牌榜“双榜”第一</p>
        <p>锁定了残奥会金牌榜的“五连霸”</p>
        <p>除了成绩的突破</p>
        <p>中国运动员拼搏、坚持、友善的品格</p>
        <p>更是奥林匹克精神的绝佳体现</p>
        <img src="/newsinfo/16-4.jpeg" alt="">
        <p>女子50米蝶泳S5级决赛后</p>
        <p>夺冠的“无臂美人鱼”卢冬</p>
        <p>在颁奖台上单腿下蹲</p>
        <p>与坐在轮椅上的银牌和铜牌获得者合影</p>
        <p>成就了残奥会上的“最美姿势”</p>
        ','mediafocus','卓越、友谊、尊重'),
(null,null,'观点｜残奥健儿成绩精神“双丰收”，这是中国的国家温度','1630840740','/newsinfo/17-1.jpeg','<p>
          领跑员徐冬林和刘翠青书写了一段传奇赛场故事。5日晚，东京残奥会落下大幕，来自全球的残奥运动员在为期13天的赛事中展现了顽强拼搏的精神。其中，中国代表团以优异的成绩，连续五届占据金牌榜和奖牌榜第一位置。续写传奇的同时，也让我们看到了中国在残奥和残疾人事业上一直以来的发展和进步。
        </p>
        <img src="/newsinfo/17-2.jpeg" alt="">
        <p>郑涛用嘴咬住毛巾出发。巨大优势在倒数第二个比赛日，中国队就以93金57银50铜的成绩提前锁定奖牌榜第一，而在赛事期间，中国运动员贡献了太多的高光时刻和感动瞬间，不但征服了对手，也征服了所有的观众和媒体。</p>
        <p>“无臂飞鱼”郑涛个人斩获4金，并4破纪录。因为没有手臂，郑涛的仰泳出发需要用嘴咬住一块毛巾；同样因为没有手臂，他每一次抵达终点，都在用头结结实实地触壁……</p>
        <p>这位残奥会三届元老的伟大表现令人动容，也让自己出现在了《每日邮报》、《太阳报》、《镜报》等西方媒体的头版。</p>
        <p>《镜报》写道：“残奥会上励志的运动员很多，但郑涛就是传奇，难以超越。”</p>
        <img src="/newsinfo/17-3.jpeg" alt="">
        <p>郑涛用头撞向终点线。郑涛是中国代表团一个闪亮的个体，也是中国残奥健儿过去多届奥运会披荆斩棘的一面镜子，代表了中国残奥事业的蓬勃发展。事实上，自从2004年雅典中国第一次高居金牌榜与奖牌榜头名，之后无论北京、伦敦还是里约，中国队在残奥会上一直保持着巨大的优势。</p>
        <p>为什么中国残奥运动员能够获得那么多奖牌？关于这个问题，曾有外国记者请教过中国残疾人联合会主席张海迪——张海迪表示：“首先是运动员们奋勇争先的精神，最重要的是30年来中国残疾人事业不断发展，在康复、教育、文化、体育方面都取得了很大的进步。”</p>
        <img src="/newsinfo/17-4.jpeg" alt="">
        <p>领跑员徐冬林高举盲人选手刘翠青。国家温度一如张海迪所言，党和政府一直高度重视残疾人事业，相继出台了一系列政策规划，推进残疾人事业发展。</p>
        <p>2016年，国务院印发的《全民健身计划（2016-2020年）》和国家体育总局等23部门制定的《群众冬季运动推广普及计划（2016—2020年）》，均要求加大全民健身助残工程支持力度，要求推动残疾人康复体育和健身体育广泛开展。</p>
        <p>中国残联此前提供的数据显示，近些年以“自强健身工程”和“康复体育关爱工程”为主体的残疾人体育基本服务体系在不断完善，残疾人体育服务和相关服务能力逐步提升：</p>
        <p>全国累计社区健身示范点建设9053个、研发推广适合不同残疾类别残疾人使用的小型体育器材共计150种、创编普及残疾人康复健身体育项目和方法24项。</p>
        <img src="/newsinfo/17-5.jpeg" alt="">
        <p>用嘴咬着球拍的埃及运动员哈马托。本届残奥会的口号与奥运会相同，“情同与共”包含了对一个健全人与残疾人互帮互助、团结友爱的美好世界的希冀。国际残奥委会主席帕森斯也表达：“残奥会是一个平台，但每四年一次是不够的。每个人都有责任每天发挥自己的作用，在各自的国家、城市和社区建设一个更具包容性的社会。”</p>
        <p>从这个角度看，本届残奥会，中国代表团能够实现成绩和精神上的“双丰收”，恰恰凸显出了国家和社会一直以来的不懈追求：</p>
        <p>用平等的视角去对待残疾人，让残疾人更好地融入社会与生活，更普遍地参与运动。</p>
        ','mediafocus','领跑员徐冬林和刘翠青书写了一段传奇赛场故事。5日晚，东京残奥会落下大幕，来自全球的残奥运动员在为期13天的赛事中展现了顽强拼搏的精神。其中，中国代表团以优异的成绩，连续五届占据金牌榜和奖牌榜第一位置。续写传奇的同时，也让我们看到了中国在残奥和残疾人事业上一直以来的发展和进步。'),
(null,3,'深一度｜给美国“上一课”的中国轮椅女篮，值得让更多人知道','1630761300','/newsinfo/18-1.jpeg','<p>
          中国轮椅女篮。“我带队以来，从来没输给过美国队。”这是中国轮椅女篮主帅陈琦说过的一句话。北京时间9月4日，东京残奥会轮椅女篮决赛，中国队不敌荷兰队收获银牌，让中国轮椅篮球首次站上领奖台。
        </p>
        <p>
          这支队伍，此前的最好成绩是里约奥运会的第六。
        </p>
        <p>
          但在本届奥运会“死亡之组”中，她们在小组赛击败本届冠军荷兰，双杀卫冕冠军美国队，并留下金句——“给老美上一课。”
        </p>
        <p>
          这样一支中国轮椅女篮，值得让更多人知道。
        </p>
        <img src="/newsinfo/17-2.jpeg" alt="">
        <p>中国战胜美国晋级决赛。“给老美上一课”半决赛对阵美国女篮最后3.5秒，主教练陈琦叫暂停的时候，嘴角就露出了一抹笑意。</p>
        <p>“把球发出来，然后投一个3分，给老美上一课！”暂停最后阶段，陈琦对着姑娘们说出这段话，内容是战术安排，语气却得意自在。</p>
        <p>给美国队“上一课”，还是篮球，这样的画面可能是许多球迷不曾想象的，却真真切切地在奥运赛场发生了。</p>
        <p>“美国队篮球底蕴特别深厚，我也想挑战一下，看看我对轮椅篮球的理解。”赛后采访，陈琦刚开始的表达很克制，但最后一句可能才是他最想说的，“从2017年我带队以来，从来没输给过美国队。”</p>
        <img src="/newsinfo/18-3.jpeg" alt="">
        <p>中国轮椅女篮主帅陈琦。正如陈琦所说，从2018年轮椅篮球世锦赛，中国女篮赢了美国20分，本届奥运会两度碰面，中国队小组赛1分险胜，半决赛41-36再胜一场，并首次打入残奥会决赛，创造历史。是美国队不强吗？显然不是，她们是4届残奥会冠军，2016年里约残奥会冠军正是她们。不光美国队强，中国女篮的分组也堪称“死亡之组”。</p>
        <p>除了美国队外，荷兰队同样是这个分组中的强敌——她们是2018年世锦赛冠军，4年来未尝败绩。5年前的里约残奥会，中国轮椅女篮曾29-62输给对手33分。</p>
        <p>但5年过去，中国轮椅女篮的成长却超出人们预期。小组赛，中国队先斩阿尔及利亚、再胜荷兰、后赢西班牙、最终绝杀卫冕冠军美国，以小组第一的身份出线。</p>
        <img src="/newsinfo/18-4.jpeg" alt="">
        <p>决赛中国不敌荷兰收获亚军。晋级之路看似轻松，但看看赛程就知道多么凶险——8月27日晚上战胜西班牙，队员们回到38公里外的奥运村，躺下就已经快半夜了。结果大家第二天早上5点就要起床，6点出发到赛场。因为对阵美国队的比赛9点就要开始。为了应对这样极不合理的赛程，领队郭治斌在来东京的一个月前，每天拉着大家聊到半夜，然后要求大家第二天一大早起床。</p>
        <p>“队员们一开始都不理解，其实都是为了这场比赛。”在新华社的报道中，郭志斌这样解释。</p>
        <p>小组赛，陈琦面对采访时说，“保四争三是球队的目标”，毕竟残奥会第四名就能创造中国队最好成绩。</p>
        <p>但姑娘们前进的脚步却没有停下，淘汰赛战胜英国，半决赛赢下美国，仅在决赛中不敌荷兰，收获了一枚残奥会银牌，也留下了“给老美上上课”这样的金句。</p>
        <img src="/newsinfo/18-5.jpeg" alt="">
        <p>中国轮椅女篮投篮。水泡、血泡、老茧“这些姑娘们看上去非常腼腆，可是训练起来特别狠，心理非常强大。”说起球队的成功，领队郭志斌这样形容。</p>
        <p>为了备战奥运，从去年11月起，全队在北京和广州两地展开了长达278天的集训，9个多月的时间里，大家几乎没回过家。</p>
        <p>疫情之下，一切都显得更不容易。</p>
        <p>原本打算前往云南高原拉练体能的女队，因为疫情无奈放弃。最终大家另辟蹊径，选择用戴口罩的方式模拟高原缺氧的状态；没有热身对手，于是拉着广东轮椅男队演练实战。</p>
        <p>形容奥运会的强度，张彤蕾颇为实诚：“和她们对抗起来，还没有我们在家里和男队激烈。”</p>
        <p>不过场面确实如此，当半决赛面临美国队不断追分的压力时，罚球成了中国队关键时刻的武器。全队最后时刻8罚8中，牢牢锁住胜利。</p>
        <p>甚至在队长林穗玲走上罚球线时，队友张雪梅冲着她大喊：“罚进一个就请你吃大餐！”结果就是，林穗玲稳稳命中两球。</p>
        <p>事实上，轮椅篮球运动员的成长路径，与健全的篮球运动员截然不同。用陈琦的话说，他们绝大部分都是“半路出家”，甚至原本都没接触过体育。直到身体受伤后，才开始接触这个项目，然后从“喜欢”转变为“热爱”。</p>
        <p>首先要克服的，便是“八字形”轮椅。要让轮椅能如双腿一样在球场上闪转腾挪，急停急走，唯有苦练。</p>
        <p>“轮椅不是身体的一部分，它是特别冰冷的。”在陈琦眼中，练好轮椅技术没有任何捷径，“大家都是从水泡到血泡，再到老茧，一步步过来的。”</p>
        ','mediafocus','中国轮椅女篮。“我带队以来，从来没输给过美国队。”这是中国轮椅女篮主帅陈琦说过的一句话。北京时间9月4日，东京残奥会轮椅女篮决赛，中国队不敌荷兰队收获银牌，让中国轮椅篮球首次站上领奖台。'),
(null,10,'深一度｜你是我的眼，在黑暗中为我指引方向','1630130760','/newsinfo/19-1.jpeg','<p>
          刘翠青和徐冬林完成卫冕。田径跑道上，刘翠青在女子400米T11级（视力障碍）决赛中率先冲过终点线，身边是他的搭档徐冬林。
        </p>
        <p>
          对于看不到这个世界的刘翠青来说，徐冬林不仅只是赛场上的领跑员，更是自己的另一双眼睛。
        </p>
        <p>
          从里约残奥会夺冠，到东京残奥会卫冕，为了赛道上闪耀的瞬间，两人在场下所付出的汗水和艰辛外界难以想象。
        </p>
        <p>
          而相互之间的信任，正是这对搭档能够站上巅峰的秘诀。就像此前刘翠青所说：“他相当于我的眼睛，在黑暗中为我指引方向。”
        </p>
        <img src="/newsinfo/19-2.jpeg" alt="">
        <p>你是我的眼。最佳搭档实现残奥会卫冕</p>
        <p>命运对刘翠青是残酷的，1991年出生的她在10岁时就因眼疾致盲，失去了眼前的光明，但连她自己也没有想到，未来自己的人生会和田径跑道结缘。</p>
        <p>17岁那年，即将成年的刘翠青被家乡广西残联的教练发掘，走上了体育的道路，至今，她已经在这条路上奋斗了11年的时间。</p>
        <p>而徐冬林，则是陪伴她站上巅峰的那个人。</p>
        <p>2013年底刘翠青开始和徐冬林搭档，说起两人搭档的缘由，一开始是由于身高。徐冬林身高1米84，刘翠青1米65，较为接近。“高水平的比赛要求更高，我跟当时的搭档身高差太大，不利于配合。”徐冬林曾在接受采访时透露。</p>
        <p>而这对组合在诞生之后，果然在世界舞台上闪耀出了光芒。</p>
        <p>2014年的韩国仁川残运会上，刘翠青包揽女子T11级100米、200米、400米、T11-12级4×100米接力和跳远5个项目的冠军。2015年世锦赛，刘翠青又豪取4金，并打破世界纪录。</p>
        <p>2016年里约残奥会，刘翠青一举站上最高领奖台，勇夺女子T11级400米以及T11~13级4×100米两枚金牌。</p>
        <p>如今在东京残奥会上，刘翠青和徐冬林不负众望，不仅卫冕女子T11级400米金牌，56秒25的成绩更是打破了残奥会纪录。</p>
        <img src="/newsinfo/19-3.jpeg" alt="">
        <p>刘翠青和徐东林共同比赛。一起奋力奔跑，信任最重要</p>
        <p>对于失明的刘翠青来说，能够在赛道上风驰电掣，徐冬林的帮助不可或缺，后者就是她能够自由行动的指引。</p>
        <p>在奔跑过程中，两人的手用引导绳牵在一起，保持着相同的摆臂和步频，刘翠青由此得以在黑暗中也能够顺利朝着终点奔去。</p>
        <p>除了口头交流之外，那根短短的引导绳，也是两人之间交流的工具。</p>
        <p>就像徐冬林此前所说：“比如跑弯道的时候，我的手向内侧弯一点，她就能感觉得出来，快到终点了，我的手往后一放，她就知道要到终点。”</p>
        <p>刘翠青也对此充满感激：“我平时走路都是缩手缩脚的，跑起来的时候领跑员就成了我的‘眼睛’，我就敢放开跑了，我从来没想过盲人也能自由奔跑。”</p>
        <p>而能够步调一致，相互之间心领神会的默契程度，更是需要场上和场下，长时间的熟悉与磨合。</p>
        <p>事实上，在两人搭档以来的多年时间里，刘翠青和徐冬林不光是在训练和比赛时培养相互之间的默契，在场下也是一样给予对方帮助，“他平时在生活细节和训练上都很注意关注我。平时他带我走路一般都不会摔跤，坑啊、台阶啊，他都会提醒我。”刘翠青此前曾透露。</p>
        <p>不过徐冬林也不愿把刘翠青的努力成果都归功于自己。“她能有这样的成绩，是天赋加努力，就算训练很苦，她也从来不会烦躁，安排的训练任务都能完成。”他在接受新华社采访时说。</p>
        <img src="/newsinfo/19-4.jpeg" alt="">
        <p>两人一同站上领奖台。“之前我的性格比较内向，通过体育，我的性格开朗了不少，接触的人也多了，体育让我健康、让我快乐。”这是刘翠青此前接受新华社采访时的感悟。她爱上的不光是飞奔的感觉，更是生活本身，“教练经常会开车带我们出去，看看祖国的山水，遇到美丽的风景，他们也会讲给我听。”</p>
        ','mediafocus','刘翠青和徐冬林完成卫冕。田径跑道上，刘翠青在女子400米T11级（视力障碍）决赛中率先冲过终点线，身边是他的搭档徐冬林。'),
(null,1,'连扳三局！张变逆转战胜队友夺得乒乓球女单WS5级金牌','1630225920','/newsinfo/20.jpeg','<p>
          北京时间8月29日，东京残奥会乒乓球女子单打WS5级决赛，两位中国选手张变和潘嘉敏联手奉献了一场紧张激烈的五局大战。潘嘉敏14-12、11-5先下两城，张变11-8、13-11连扳两局。进入到决胜局，乘势追击的张变一直占据着比分上的领先，最终以11-7锁定胜局，从而总比分3-2战胜队友潘嘉敏夺冠。潘嘉敏获得该项目银牌。
        </p>
        ','mediafocus','东京残奥会乒乓球女子单打WS5级决赛，两位中国选手张变和潘嘉敏联手奉献了一场紧张激烈的五局大战。潘嘉敏14-12、11-5先下两城，张变11-8、13-11连扳两局。进入到决胜局，乘势追击的张变一直占据着比分上的领先，最终以11-7锁定胜局，从而总比分3-2战胜队友潘嘉敏夺冠。潘嘉敏获得该项目银牌。'),
(null,19,'神奇！李豪斩获首金有多难？落后4分陷绝境，一剑封喉+振臂庆祝','1629883140','/newsinfo/21-1.png','<p>
          8月25日下午，在王小梅错失残奥会首金之后，中国队终于迎来了本届赛事的第一枚金牌，右腿被截肢的李豪男子佩剑个人赛A级决赛中，以15-12大逆转击败乌克兰选手曼科，这也是中国队的残奥会首金，恭喜李豪和中国体育代表团。
        </p>
        <p>这场比赛李豪夺冠堪称是惊心动魄，他一度被逼入绝境，最终上演神奇逆转：</p>
        <p>开场李豪被对手连得2分，以0-2落后；</p>
        <p>随后科曼连续进攻，8-4大比分领先李豪；</p>
        <p>李豪稳扎稳打，连得6分，实现了10-8的绝地反击；</p>
        <p>对手连得2分追平，10-10；</p>
        <p>李豪连得4分14-10拿下赛点，他最终把握住了机会以15-12拿下胜利；</p>
        <img src="/newsinfo/21-2.png" alt="">
        <p>可以看出，从开局落后2分，一度落后4分，李豪连得6分实现反超。哪怕是被对手追平之后也没有丝毫的懈怠和大意，心气也没有落下风，而是以连得4分的豪迈取得赛点，最终拿下胜利，确实非常不容易。</p>
        <img src="/newsinfo/21-3.jpeg" alt="">
        <p>这场比赛结束之后，李豪振臂庆祝，他没有给对手任何的机会。而场边李豪的教练也是欢呼，因为李豪在关键时刻顶住了压力，确实太不容易了，他也斩获了中国队的首金，意义非凡。</p>
        <img src="/newsinfo/21-4.png" alt="">
        <p>这是李豪的第一届残奥会，作为小时候就因为车祸截肢的运动员，李豪并非是职业的，他从21岁才开始练习击剑，按照李豪的说法是自己如果没有击剑，可能很难撑下去，确实令人感动。</p>
        <img src="/newsinfo/21-5.png" alt="">
        <p>期间李豪付出的努力也是一般人无法想象的，这次他一剑封喉之后振臂庆祝，也祝贺李豪，斩获了个人残奥会生涯的第一枚金牌，恭喜。</p>
        ','mediafocus','在王小梅错失残奥会首金之后，中国队终于迎来了本届赛事的第一枚金牌，右腿被截肢的李豪男子佩剑个人赛A级决赛中，以15-12大逆转击败乌克兰选手曼科，这也是中国队的残奥会首金，恭喜李豪和中国体育代表团。'),
(null,null,'追光｜纪录与人性共光辉 中国残奥代表团诠释奥运精神','1630785960','/newsinfo/16-1.jpeg','<p>
          卓越、友谊、尊重
        </p>
        <p>是奥林匹克精神的三大核心价值观</p>
        <p>十多天转瞬即逝</p>
        <p>东京残奥会将于9月5日晚闭幕</p>
        <p>中国健儿们</p>
        <p>在赛场上表现抢眼</p>
        <p>创造多项纪录、里程的同时</p>
        <p>也留下了无数闪耀人性光辉的时刻</p>
        <p>完美诠释了奥林匹克精神</p>
        <p>创造多项纪录、里程的同时</p>
        <img src="/newsinfo/16-1.jpeg" alt="">
        <p>8月29日</p>
        <p>女子200米T35级决赛上</p>
        <p>中国选手周霞以27秒17的成绩</p>
        <p>打破世界纪录夺冠</p>
        <p>而就在两天前</p>
        <p>她刚在100米比赛上刷新世界纪录</p>
        <p>周霞的壮举是中国残奥代表团</p>
        <p>在东京赛场的缩影</p>
        <p>本届赛事上</p>
        <p>已有超过20项世界纪录被中国选手打破</p>
        <p>而在许多方面</p>
        <p>中国队也实现了残奥会的历史性突破</p>
        <img src="/newsinfo/16-2.jpeg" alt="">
        <p>9月1日</p>
        <p>男子50米自由泳S5级决赛中</p>
        <p>郑涛以30秒31的成绩夺冠</p>
        <p>收获中国军团在本届赛事的第66枚金牌</p>
        <p>也标志着自1984年残奥会以来</p>
        <p>中国代表团在夏季残奥会上的金牌总数突破500枚</p>
        <img src="/newsinfo/16-3.jpeg" alt="">
        <p>中国轮椅女篮一路过关斩将杀入决赛</p>
        <p>最终摘得银牌</p>
        <p>创造了该项目的历史最好成绩</p>
        <p>截至9月4日</p>
        <p>中国代表团以93金57银50铜</p>
        <p>总奖牌数200枚的成绩</p>
        <p>高居金牌榜、奖牌榜“双榜”第一</p>
        <p>锁定了残奥会金牌榜的“五连霸”</p>
        <p>除了成绩的突破</p>
        <p>中国运动员拼搏、坚持、友善的品格</p>
        <p>更是奥林匹克精神的绝佳体现</p>
        <img src="/newsinfo/16-4.jpeg" alt="">
        <p>女子50米蝶泳S5级决赛后</p>
        <p>夺冠的“无臂美人鱼”卢冬</p>
        <p>在颁奖台上单腿下蹲</p>
        <p>与坐在轮椅上的银牌和铜牌获得者合影</p>
        <p>成就了残奥会上的“最美姿势”</p>
        ','mediafocus','卓越、友谊、尊重'),
(null,null,'观点｜残奥健儿成绩精神“双丰收”，这是中国的国家温度','1630840740','/newsinfo/17-1.jpeg','<p>
          领跑员徐冬林和刘翠青书写了一段传奇赛场故事。5日晚，东京残奥会落下大幕，来自全球的残奥运动员在为期13天的赛事中展现了顽强拼搏的精神。其中，中国代表团以优异的成绩，连续五届占据金牌榜和奖牌榜第一位置。续写传奇的同时，也让我们看到了中国在残奥和残疾人事业上一直以来的发展和进步。
        </p>
        <img src="/newsinfo/17-2.jpeg" alt="">
        <p>郑涛用嘴咬住毛巾出发。巨大优势在倒数第二个比赛日，中国队就以93金57银50铜的成绩提前锁定奖牌榜第一，而在赛事期间，中国运动员贡献了太多的高光时刻和感动瞬间，不但征服了对手，也征服了所有的观众和媒体。</p>
        <p>“无臂飞鱼”郑涛个人斩获4金，并4破纪录。因为没有手臂，郑涛的仰泳出发需要用嘴咬住一块毛巾；同样因为没有手臂，他每一次抵达终点，都在用头结结实实地触壁……</p>
        <p>这位残奥会三届元老的伟大表现令人动容，也让自己出现在了《每日邮报》、《太阳报》、《镜报》等西方媒体的头版。</p>
        <p>《镜报》写道：“残奥会上励志的运动员很多，但郑涛就是传奇，难以超越。”</p>
        <img src="/newsinfo/17-3.jpeg" alt="">
        <p>郑涛用头撞向终点线。郑涛是中国代表团一个闪亮的个体，也是中国残奥健儿过去多届奥运会披荆斩棘的一面镜子，代表了中国残奥事业的蓬勃发展。事实上，自从2004年雅典中国第一次高居金牌榜与奖牌榜头名，之后无论北京、伦敦还是里约，中国队在残奥会上一直保持着巨大的优势。</p>
        <p>为什么中国残奥运动员能够获得那么多奖牌？关于这个问题，曾有外国记者请教过中国残疾人联合会主席张海迪——张海迪表示：“首先是运动员们奋勇争先的精神，最重要的是30年来中国残疾人事业不断发展，在康复、教育、文化、体育方面都取得了很大的进步。”</p>
        <img src="/newsinfo/17-4.jpeg" alt="">
        <p>领跑员徐冬林高举盲人选手刘翠青。国家温度一如张海迪所言，党和政府一直高度重视残疾人事业，相继出台了一系列政策规划，推进残疾人事业发展。</p>
        <p>2016年，国务院印发的《全民健身计划（2016-2020年）》和国家体育总局等23部门制定的《群众冬季运动推广普及计划（2016—2020年）》，均要求加大全民健身助残工程支持力度，要求推动残疾人康复体育和健身体育广泛开展。</p>
        <p>中国残联此前提供的数据显示，近些年以“自强健身工程”和“康复体育关爱工程”为主体的残疾人体育基本服务体系在不断完善，残疾人体育服务和相关服务能力逐步提升：</p>
        <p>全国累计社区健身示范点建设9053个、研发推广适合不同残疾类别残疾人使用的小型体育器材共计150种、创编普及残疾人康复健身体育项目和方法24项。</p>
        <img src="/newsinfo/17-5.jpeg" alt="">
        <p>用嘴咬着球拍的埃及运动员哈马托。本届残奥会的口号与奥运会相同，“情同与共”包含了对一个健全人与残疾人互帮互助、团结友爱的美好世界的希冀。国际残奥委会主席帕森斯也表达：“残奥会是一个平台，但每四年一次是不够的。每个人都有责任每天发挥自己的作用，在各自的国家、城市和社区建设一个更具包容性的社会。”</p>
        <p>从这个角度看，本届残奥会，中国代表团能够实现成绩和精神上的“双丰收”，恰恰凸显出了国家和社会一直以来的不懈追求：</p>
        <p>用平等的视角去对待残疾人，让残疾人更好地融入社会与生活，更普遍地参与运动。</p>
        ','mediafocus','领跑员徐冬林和刘翠青书写了一段传奇赛场故事。5日晚，东京残奥会落下大幕，来自全球的残奥运动员在为期13天的赛事中展现了顽强拼搏的精神。其中，中国代表团以优异的成绩，连续五届占据金牌榜和奖牌榜第一位置。续写传奇的同时，也让我们看到了中国在残奥和残疾人事业上一直以来的发展和进步。'),
(null,3,'深一度｜给美国“上一课”的中国轮椅女篮，值得让更多人知道','1630761300','/newsinfo/18-1.jpeg','<p>
          中国轮椅女篮。“我带队以来，从来没输给过美国队。”这是中国轮椅女篮主帅陈琦说过的一句话。北京时间9月4日，东京残奥会轮椅女篮决赛，中国队不敌荷兰队收获银牌，让中国轮椅篮球首次站上领奖台。
        </p>
        <p>
          这支队伍，此前的最好成绩是里约奥运会的第六。
        </p>
        <p>
          但在本届奥运会“死亡之组”中，她们在小组赛击败本届冠军荷兰，双杀卫冕冠军美国队，并留下金句——“给老美上一课。”
        </p>
        <p>
          这样一支中国轮椅女篮，值得让更多人知道。
        </p>
        <img src="/newsinfo/17-2.jpeg" alt="">
        <p>中国战胜美国晋级决赛。“给老美上一课”半决赛对阵美国女篮最后3.5秒，主教练陈琦叫暂停的时候，嘴角就露出了一抹笑意。</p>
        <p>“把球发出来，然后投一个3分，给老美上一课！”暂停最后阶段，陈琦对着姑娘们说出这段话，内容是战术安排，语气却得意自在。</p>
        <p>给美国队“上一课”，还是篮球，这样的画面可能是许多球迷不曾想象的，却真真切切地在奥运赛场发生了。</p>
        <p>“美国队篮球底蕴特别深厚，我也想挑战一下，看看我对轮椅篮球的理解。”赛后采访，陈琦刚开始的表达很克制，但最后一句可能才是他最想说的，“从2017年我带队以来，从来没输给过美国队。”</p>
        <img src="/newsinfo/18-3.jpeg" alt="">
        <p>中国轮椅女篮主帅陈琦。正如陈琦所说，从2018年轮椅篮球世锦赛，中国女篮赢了美国20分，本届奥运会两度碰面，中国队小组赛1分险胜，半决赛41-36再胜一场，并首次打入残奥会决赛，创造历史。是美国队不强吗？显然不是，她们是4届残奥会冠军，2016年里约残奥会冠军正是她们。不光美国队强，中国女篮的分组也堪称“死亡之组”。</p>
        <p>除了美国队外，荷兰队同样是这个分组中的强敌——她们是2018年世锦赛冠军，4年来未尝败绩。5年前的里约残奥会，中国轮椅女篮曾29-62输给对手33分。</p>
        <p>但5年过去，中国轮椅女篮的成长却超出人们预期。小组赛，中国队先斩阿尔及利亚、再胜荷兰、后赢西班牙、最终绝杀卫冕冠军美国，以小组第一的身份出线。</p>
        <img src="/newsinfo/18-4.jpeg" alt="">
        <p>决赛中国不敌荷兰收获亚军。晋级之路看似轻松，但看看赛程就知道多么凶险——8月27日晚上战胜西班牙，队员们回到38公里外的奥运村，躺下就已经快半夜了。结果大家第二天早上5点就要起床，6点出发到赛场。因为对阵美国队的比赛9点就要开始。为了应对这样极不合理的赛程，领队郭治斌在来东京的一个月前，每天拉着大家聊到半夜，然后要求大家第二天一大早起床。</p>
        <p>“队员们一开始都不理解，其实都是为了这场比赛。”在新华社的报道中，郭志斌这样解释。</p>
        <p>小组赛，陈琦面对采访时说，“保四争三是球队的目标”，毕竟残奥会第四名就能创造中国队最好成绩。</p>
        <p>但姑娘们前进的脚步却没有停下，淘汰赛战胜英国，半决赛赢下美国，仅在决赛中不敌荷兰，收获了一枚残奥会银牌，也留下了“给老美上上课”这样的金句。</p>
        <img src="/newsinfo/18-5.jpeg" alt="">
        <p>中国轮椅女篮投篮。水泡、血泡、老茧“这些姑娘们看上去非常腼腆，可是训练起来特别狠，心理非常强大。”说起球队的成功，领队郭志斌这样形容。</p>
        <p>为了备战奥运，从去年11月起，全队在北京和广州两地展开了长达278天的集训，9个多月的时间里，大家几乎没回过家。</p>
        <p>疫情之下，一切都显得更不容易。</p>
        <p>原本打算前往云南高原拉练体能的女队，因为疫情无奈放弃。最终大家另辟蹊径，选择用戴口罩的方式模拟高原缺氧的状态；没有热身对手，于是拉着广东轮椅男队演练实战。</p>
        <p>形容奥运会的强度，张彤蕾颇为实诚：“和她们对抗起来，还没有我们在家里和男队激烈。”</p>
        <p>不过场面确实如此，当半决赛面临美国队不断追分的压力时，罚球成了中国队关键时刻的武器。全队最后时刻8罚8中，牢牢锁住胜利。</p>
        <p>甚至在队长林穗玲走上罚球线时，队友张雪梅冲着她大喊：“罚进一个就请你吃大餐！”结果就是，林穗玲稳稳命中两球。</p>
        <p>事实上，轮椅篮球运动员的成长路径，与健全的篮球运动员截然不同。用陈琦的话说，他们绝大部分都是“半路出家”，甚至原本都没接触过体育。直到身体受伤后，才开始接触这个项目，然后从“喜欢”转变为“热爱”。</p>
        <p>首先要克服的，便是“八字形”轮椅。要让轮椅能如双腿一样在球场上闪转腾挪，急停急走，唯有苦练。</p>
        <p>“轮椅不是身体的一部分，它是特别冰冷的。”在陈琦眼中，练好轮椅技术没有任何捷径，“大家都是从水泡到血泡，再到老茧，一步步过来的。”</p>
        ','mediafocus','中国轮椅女篮。“我带队以来，从来没输给过美国队。”这是中国轮椅女篮主帅陈琦说过的一句话。北京时间9月4日，东京残奥会轮椅女篮决赛，中国队不敌荷兰队收获银牌，让中国轮椅篮球首次站上领奖台。'),
(null,10,'深一度｜你是我的眼，在黑暗中为我指引方向','1630130760','/newsinfo/19-1.jpeg','<p>
          刘翠青和徐冬林完成卫冕。田径跑道上，刘翠青在女子400米T11级（视力障碍）决赛中率先冲过终点线，身边是他的搭档徐冬林。
        </p>
        <p>
          对于看不到这个世界的刘翠青来说，徐冬林不仅只是赛场上的领跑员，更是自己的另一双眼睛。
        </p>
        <p>
          从里约残奥会夺冠，到东京残奥会卫冕，为了赛道上闪耀的瞬间，两人在场下所付出的汗水和艰辛外界难以想象。
        </p>
        <p>
          而相互之间的信任，正是这对搭档能够站上巅峰的秘诀。就像此前刘翠青所说：“他相当于我的眼睛，在黑暗中为我指引方向。”
        </p>
        <img src="/newsinfo/19-2.jpeg" alt="">
        <p>你是我的眼。最佳搭档实现残奥会卫冕</p>
        <p>命运对刘翠青是残酷的，1991年出生的她在10岁时就因眼疾致盲，失去了眼前的光明，但连她自己也没有想到，未来自己的人生会和田径跑道结缘。</p>
        <p>17岁那年，即将成年的刘翠青被家乡广西残联的教练发掘，走上了体育的道路，至今，她已经在这条路上奋斗了11年的时间。</p>
        <p>而徐冬林，则是陪伴她站上巅峰的那个人。</p>
        <p>2013年底刘翠青开始和徐冬林搭档，说起两人搭档的缘由，一开始是由于身高。徐冬林身高1米84，刘翠青1米65，较为接近。“高水平的比赛要求更高，我跟当时的搭档身高差太大，不利于配合。”徐冬林曾在接受采访时透露。</p>
        <p>而这对组合在诞生之后，果然在世界舞台上闪耀出了光芒。</p>
        <p>2014年的韩国仁川残运会上，刘翠青包揽女子T11级100米、200米、400米、T11-12级4×100米接力和跳远5个项目的冠军。2015年世锦赛，刘翠青又豪取4金，并打破世界纪录。</p>
        <p>2016年里约残奥会，刘翠青一举站上最高领奖台，勇夺女子T11级400米以及T11~13级4×100米两枚金牌。</p>
        <p>如今在东京残奥会上，刘翠青和徐冬林不负众望，不仅卫冕女子T11级400米金牌，56秒25的成绩更是打破了残奥会纪录。</p>
        <img src="/newsinfo/19-3.jpeg" alt="">
        <p>刘翠青和徐东林共同比赛。一起奋力奔跑，信任最重要</p>
        <p>对于失明的刘翠青来说，能够在赛道上风驰电掣，徐冬林的帮助不可或缺，后者就是她能够自由行动的指引。</p>
        <p>在奔跑过程中，两人的手用引导绳牵在一起，保持着相同的摆臂和步频，刘翠青由此得以在黑暗中也能够顺利朝着终点奔去。</p>
        <p>除了口头交流之外，那根短短的引导绳，也是两人之间交流的工具。</p>
        <p>就像徐冬林此前所说：“比如跑弯道的时候，我的手向内侧弯一点，她就能感觉得出来，快到终点了，我的手往后一放，她就知道要到终点。”</p>
        <p>刘翠青也对此充满感激：“我平时走路都是缩手缩脚的，跑起来的时候领跑员就成了我的‘眼睛’，我就敢放开跑了，我从来没想过盲人也能自由奔跑。”</p>
        <p>而能够步调一致，相互之间心领神会的默契程度，更是需要场上和场下，长时间的熟悉与磨合。</p>
        <p>事实上，在两人搭档以来的多年时间里，刘翠青和徐冬林不光是在训练和比赛时培养相互之间的默契，在场下也是一样给予对方帮助，“他平时在生活细节和训练上都很注意关注我。平时他带我走路一般都不会摔跤，坑啊、台阶啊，他都会提醒我。”刘翠青此前曾透露。</p>
        <p>不过徐冬林也不愿把刘翠青的努力成果都归功于自己。“她能有这样的成绩，是天赋加努力，就算训练很苦，她也从来不会烦躁，安排的训练任务都能完成。”他在接受新华社采访时说。</p>
        <img src="/newsinfo/19-4.jpeg" alt="">
        <p>两人一同站上领奖台。“之前我的性格比较内向，通过体育，我的性格开朗了不少，接触的人也多了，体育让我健康、让我快乐。”这是刘翠青此前接受新华社采访时的感悟。她爱上的不光是飞奔的感觉，更是生活本身，“教练经常会开车带我们出去，看看祖国的山水，遇到美丽的风景，他们也会讲给我听。”</p>
        ','mediafocus','刘翠青和徐冬林完成卫冕。田径跑道上，刘翠青在女子400米T11级（视力障碍）决赛中率先冲过终点线，身边是他的搭档徐冬林。'),
(null,1,'连扳三局！张变逆转战胜队友夺得乒乓球女单WS5级金牌','1630225920','/newsinfo/20.jpeg','<p>
          北京时间8月29日，东京残奥会乒乓球女子单打WS5级决赛，两位中国选手张变和潘嘉敏联手奉献了一场紧张激烈的五局大战。潘嘉敏14-12、11-5先下两城，张变11-8、13-11连扳两局。进入到决胜局，乘势追击的张变一直占据着比分上的领先，最终以11-7锁定胜局，从而总比分3-2战胜队友潘嘉敏夺冠。潘嘉敏获得该项目银牌。
        </p>
        ','mediafocus','东京残奥会乒乓球女子单打WS5级决赛，两位中国选手张变和潘嘉敏联手奉献了一场紧张激烈的五局大战。潘嘉敏14-12、11-5先下两城，张变11-8、13-11连扳两局。进入到决胜局，乘势追击的张变一直占据着比分上的领先，最终以11-7锁定胜局，从而总比分3-2战胜队友潘嘉敏夺冠。潘嘉敏获得该项目银牌。'),
(null,19,'神奇！李豪斩获首金有多难？落后4分陷绝境，一剑封喉+振臂庆祝','1629883140','/newsinfo/21-1.png','<p>
          8月25日下午，在王小梅错失残奥会首金之后，中国队终于迎来了本届赛事的第一枚金牌，右腿被截肢的李豪男子佩剑个人赛A级决赛中，以15-12大逆转击败乌克兰选手曼科，这也是中国队的残奥会首金，恭喜李豪和中国体育代表团。
        </p>
        <p>这场比赛李豪夺冠堪称是惊心动魄，他一度被逼入绝境，最终上演神奇逆转：</p>
        <p>开场李豪被对手连得2分，以0-2落后；</p>
        <p>随后科曼连续进攻，8-4大比分领先李豪；</p>
        <p>李豪稳扎稳打，连得6分，实现了10-8的绝地反击；</p>
        <p>对手连得2分追平，10-10；</p>
        <p>李豪连得4分14-10拿下赛点，他最终把握住了机会以15-12拿下胜利；</p>
        <img src="/newsinfo/21-2.png" alt="">
        <p>可以看出，从开局落后2分，一度落后4分，李豪连得6分实现反超。哪怕是被对手追平之后也没有丝毫的懈怠和大意，心气也没有落下风，而是以连得4分的豪迈取得赛点，最终拿下胜利，确实非常不容易。</p>
        <img src="/newsinfo/21-3.jpeg" alt="">
        <p>这场比赛结束之后，李豪振臂庆祝，他没有给对手任何的机会。而场边李豪的教练也是欢呼，因为李豪在关键时刻顶住了压力，确实太不容易了，他也斩获了中国队的首金，意义非凡。</p>
        <img src="/newsinfo/21-4.png" alt="">
        <p>这是李豪的第一届残奥会，作为小时候就因为车祸截肢的运动员，李豪并非是职业的，他从21岁才开始练习击剑，按照李豪的说法是自己如果没有击剑，可能很难撑下去，确实令人感动。</p>
        <img src="/newsinfo/21-5.png" alt="">
        <p>期间李豪付出的努力也是一般人无法想象的，这次他一剑封喉之后振臂庆祝，也祝贺李豪，斩获了个人残奥会生涯的第一枚金牌，恭喜。</p>
        ','mediafocus','在王小梅错失残奥会首金之后，中国队终于迎来了本届赛事的第一枚金牌，右腿被截肢的李豪男子佩剑个人赛A级决赛中，以15-12大逆转击败乌克兰选手曼科，这也是中国队的残奥会首金，恭喜李豪和中国体育代表团。');

#评论表
CREATE TABLE tokyo_pg_remark(
  remarkid int primary key auto_increment,
  content varchar(512) not null,
  time varchar(128) not null,
  uid int not null,
  infonid int,
  imgnid int,
  foreign key(imgnid) references tokyo_pg_imgnews(imgnid),
  foreign key(infonid) references tokyo_pg_infonews(infonid)
);
insert into tokyo_pg_remark values
(null,'中国奥运健儿们辛苦了!祝贺你们','1630812533',1,3,null),
(null,'中国奥运健儿们辛苦了!祝贺你们','1631158133',2,3,null);

#收藏表
CREATE TABLE tokyo_pg_like(
  likeid int primary key auto_increment,
  uid int not null,
  infonid int,
  flag int default 0,
  foreign key(infonid) references tokyo_pg_infonews(infonid),
  foreign key(uid) references tokyo_pg_user(uid)
);
insert into tokyo_pg_like values
(null,1,3,0),
(null,1,4,0),
(null,1,2,0),
(null,1,40,0),
(null,1,22,0),
(null,1,11,0);
