--Drop database Travel
--Create database Travel

Use Travel

DROP TABLE IF EXISTS  TourMemberInfo;
DROP TABLE IF EXISTS  TourOrderInfo;
DROP TABLE IF EXISTS  TourBatch;
DROP TABLE IF EXISTS  TourPicture;
DROP TABLE IF EXISTS  TourTags;
DROP TABLE IF EXISTS  GroupTour;

DROP TABLE IF EXISTS  HotelOrderDetails;
DROP TABLE IF EXISTS  RoomAvailable;
DROP TABLE IF EXISTS  RoomTypePic;
DROP TABLE IF EXISTS  RoomType;
DROP TABLE IF EXISTS  Hotel;

DROP TABLE IF EXISTS  FlightTicket;
DROP TABLE IF EXISTS  FlightPassengerInfo;
DROP TABLE IF EXISTS  FlightOrderInfo;
DROP TABLE IF EXISTS  TicketOrderInfo;
DROP TABLE IF EXISTS  TicketInfo;
DROP TABLE IF EXISTS  AirlineCompareTable;
DROP TABLE IF EXISTS  AirportCompareTable;

DROP TABLE IF EXISTS  Rate_USD;
DROP TABLE IF EXISTS  Rate_JPY;
DROP TABLE IF EXISTS  RateNotice;
DROP TABLE IF EXISTS  Rate;
DROP TABLE IF EXISTS  UserInfo;


--使用者資訊[UserInfo]

CREATE TABLE UserInfo (
  [accountName] varchar(20) primary key,
  [password] varbinary(20) ,
  [firstname] nvarchar(30),
  [lastname] nvarchar(30),
  [identityNo] char(10),
  [email] varchar(40),
  [birth] datetime,
  [sex] char(4),
  [phone] varchar(20),
  [address] nvarchar(40),
  [authority] char(10),
  [googleId] varchar(20),
  [facebookId] varchar(20)
);


INSERT INTO UserInfo values ('micky', 0x41,'weiwei','chu','A123456789','alex@lab.com','2001-07-20','M','0912345678','新北市板橋','A001','A01','B01');
INSERT INTO UserInfo values ('snoopy', 0x42,'sherry','yang','A123456789','sherry@lab.com','2001-07-20','M','0912345678','新北市汐止','B001','A01','B02');
INSERT INTO UserInfo values ('kitty', 0x43,'kitty','lin','A123456789','kitty2006@gmail.com','1994-01-10','F','0989067523','台北市信義區','B001',null,null);
INSERT INTO UserInfo values ('pigwind', 0x44,'wei','pig','A123456789','pigwei20@gmail.com','1992-12-28','F','0987654321','台北市信義區','B001',null,null);

/*====================================================================*/

CREATE TABLE [Hotel] (
  [hotelNo] int NOT NULL,
  [hotelNameCH] nvarchar(500) NOT NULL,
  [hotelNameEN] nvarchar(500) NOT NULL,
  [countryCH] nvarchar(500) NOT NULL,
  [countryEN] nvarchar(500) NOT NULL,
  [cityCH] nvarchar(500) NOT NULL,
  [cityEN] nvarchar(500) NOT NULL,
  [address] varchar(500) NOT NULL,
  [hotelTotalRooms] int NOT NULL,
  [star] int,
  [starRate] varchar(500),
  [price] varchar(500),
  [pic] varchar(500),
  PRIMARY KEY ([hotelNo])
);

  insert into [Hotel] values (1, '紐約千禧希爾頓酒店', 'The Millennium Hilton New York', '美國', 'America', '紐約', 'New York', '美國 紐約 曼哈頓 55 Church Street NY 10007', 569, 5, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$3,975', 'https://dimg04.c-ctrip.com/images/220l0l000000cv4yt23CF_R_800_525_R5_D.jpg');
  insert into [Hotel] values (2, 'Q&A公寓酒店', 'Q&A Residential Hotel', '美國', 'America', '紐約', 'New York', '美國 紐約 曼哈頓 70 Pine Street NY 10005', 132, 5, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$4,568', 'https://dimg04.c-ctrip.com/images/fd/hotelintl/g6/M0A/46/FD/CggYtFb-QjiAGtGCAAGC3ktCBQA256_R_800_525_R5_D.jpg');
  insert into [Hotel] values (3, '紐約曼哈頓金融區假日酒店', 'Holiday Inn Manhattan Financial District New York', '美國', 'America', '紐約', 'New York', '美國 紐約 曼哈頓 99 Washington Street NY 10006 ', 492, 5, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$3,034', 'https://dimg04.c-ctrip.com/images/22030g0000007vf3m6269_R_800_525_R5_D.jpg');
  insert into [Hotel] values (4, '紐約市中心希爾頓酒店', 'New York Hilton Midtown', '美國', 'America', '紐約', 'New York', '美國 紐約 曼哈頓 1335 Avenue of the Americas 10019', 1929, 5, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$6,406', 'https://dimg04.c-ctrip.com/images/fd/hotel/g2/M05/31/12/Cghzf1VNFfCAID8bAAqxINPZe2w423_R_800_525_R5_D.jpg');

  insert into [Hotel] values (5, '克萊爾蒙特希爾頓逸林酒店', 'DoubleTree by Hilton Claremont', '美國', 'America', '洛杉磯', 'Los Angeles', '美國 克萊蒙特 555 W. Foothill Blvd. 91711', 190, 4, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$5,641', 'https://dimg04.c-ctrip.com/images/22050g0000007z3z5893B_R_800_525_R5_D.jpg');
  insert into [Hotel] values (6, '洛杉磯機場希爾頓酒店', 'Hilton Los Angeles Airport', '美國', 'America', '洛杉磯', 'Los Angeles', '英國 倫敦 140 Gloucester Road London, SW7 4QH，United Kingdom SW7 4QH', 1234, 4, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$3,970', 'https://dimg04.c-ctrip.com/images/220p0t000000icgc0A94C_R_800_525_R5_D.jpg');
  insert into [Hotel] values (7, '洛杉磯市中心洲際酒店', 'InterContinental - Los Angeles Downtown', '美國', 'America', '洛杉磯', 'Los Angeles', '英國 倫敦 17 Sloane Street, Knightsbridge SW1X 9NU', 890, 4, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$10,125', 'https://dimg04.c-ctrip.com/images/220t0s000000hrgjw8788_R_800_525_R5_D.jpg');
  insert into [Hotel] values (8, '洛杉磯中心區英迪格酒店', 'Hotel Indigo - Los Angeles Downtown', '美國', 'America', '洛杉磯', 'Los Angeles', '英國 倫敦 173 Gloucester Place NW1 6DX', 350, 4, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$8,586', 'https://dimg04.c-ctrip.com/images/220m0l000000cwao28152_R_800_525_R5_D.jpg');

  insert into [Hotel] values (9, '倫敦布盧姆斯伯裏假日酒店及度假村', 'Holiday Inn London Bloomsbury', '英國', 'United Kingdom', '倫敦', 'London', '英國 倫敦 Coram Street WC1N 1HT', 316, 3, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$3,868', 'https://dimg04.c-ctrip.com/images/220t0l000000d6c3tE5BE_R_800_525_R5_D.jpg');
  insert into [Hotel] values (10, '倫敦肯辛頓千禧國際百麗酒店', 'The Bailey''s Hotel London', '英國', 'United Kingdom', '倫敦', 'London', '英國 倫敦 140 Gloucester Road London, SW7 4QH，United Kingdom SW7 4QH', 211, 3, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$3,746', 'https://dimg04.c-ctrip.com/images/200l0p000000fo4so0D4D_R_800_525_R5_D.jpg');
  insert into [Hotel] values (11, '倫敦騎士橋千禧國際酒店', 'Millennium Hotel London Knightsbridge', '英國', 'United Kingdom', '倫敦', 'London', '英國 倫敦 17 Sloane Street, Knightsbridge SW1X 9NU', 222, 3, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$5,380', 'https://dimg04.c-ctrip.com/images/200p0n000000e05b51F0B_R_800_525_R5_D.jpg');
  insert into [Hotel] values (12, '倫敦貝克街公園大道酒店', 'Park Avenue Baker Street London', '英國', 'United Kingdom', '倫敦', 'London', '英國 倫敦 173 Gloucester Place NW1 6DX', 45, 3, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$2,732', 'https://dimg04.c-ctrip.com/images/200u0s000000hpmn45C1A_R_800_525_R5_D.jpg');

  insert into [Hotel] values (13, '巴黎西邊酒店', 'West End Hotel Paris', '法國', 'France', '巴黎', 'Paris', '法國 巴黎 第八區-愛麗舍區 7 rue Clément Marot 75008', 142, 5, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$6,365', 'https://dimg04.c-ctrip.com/images/220r0g00000081zhdD8FB_R_800_525_R5_D.jpg');
  insert into [Hotel] values (14, '巴黎貝斯特韋斯特沃塞特歌劇酒店', 'Best Western Hotel Horset Opera Paris', '法國', 'France', '巴黎', 'Paris', '法國 巴黎 第二區-證券所區 18 Rue d’Antin 75002', 54, 4, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$4,655', 'https://dimg04.c-ctrip.com/images/200l0h00000096wxyC24C_R_800_525_R5_D.jpg');
  insert into [Hotel] values (15, '巴黎諾曼底大酒店', 'Le Grand Hotel de Normandie Paris', '法國', 'France', '巴黎', 'Paris', '法國 巴黎 第九區-歌劇院區 4 rue d’Amsterdam 75009', 53, 3, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$4,088', 'https://dimg04.c-ctrip.com/images/220r0g0000007s487ABCB_R_800_525_R5_D.jpg');
  insert into [Hotel] values (16, '馬克西姆歌劇院酒店', 'Hôtel Maxim Opera', '法國', 'France', '巴黎', 'Paris', '法國 巴黎 第九區-歌劇院區 13 Rue Geoffroy Marie 75009', 30, 2, '<span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span>', '最低價 NT$3,201', 'https://dimg04.c-ctrip.com/images/200v0m000000dq21q8992_R_800_525_R5_D.jpg');


/*====================================================================*/

CREATE TABLE [RoomType] (
  [roomTypeNo] int NOT NULL,
  [hotelNo] int NOT NULL,
  [roomType] varchar(100) NOT NULL,
  [accommodate] int NOT NULL,
  [totalRooms] int NOT NULL,
  [price] varchar(100),
  [description] varchar(500),
  [content] varchar(500),
  [pic] varchar(500),
  PRIMARY KEY ([roomTypeNo]),
  FOREIGN KEY (hotelNo) REFERENCES Hotel(hotelNo)
);

  insert into [RoomType] values (1, 4, '天際線客房（1 張睡床）', 2, 10, '6,836', '從高樓層客房盡情飽覽著名鬧市美景。一張大床。 2 人入住。', '紐約市的迷人景致盡收眼底，同時在客房內收看 55 吋高清電視，讓自己徹底放鬆；在大型辦公桌前趕上工作進度；並且使用 WiFi 無線上網與外界保持連線。', 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_highfloor1bed01_2_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomType] values (2, 4, '城市景觀客房（大床）', 2, 10, '5,727', '現代設計，一張大床。 情侶夫妻或商務旅客的理想之選。 2 人入住。', '這間寬敞的現代豪華客房設有一張 Hilton Serenity 大床、一張扶手椅及一間淋浴間，讓您好好犒賞自己。 設施包括一部 37 吋高清電視、可連接 MP3 的時鐘收音機、一張寬大辦公桌，以及 WiFi 無線上網。','https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_deluxequeenroom_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomType] values (3, 4, '城市景觀客房（2 張睡床）', 4, 10, '5,727', '設計時尚，提供兩張雙人床。 適合家庭或團體。 4 人入住。', '這間寬敞的當代豪華客房設有兩張雙人床、一張扶手椅及一個淋浴間，讓您好好犒賞自己及各住客。 設施包括一部 37 吋高清電視、可連接 MP3 的時鐘收音機、一張寬大辦公桌，以及 WiFi 無線上網。', 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_rm002_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomType] values (4, 4, '市景客房（2 張睡床）', 4, 10, '6,528', '透過大型窗戶可欣賞紐約市景。 客房內冰箱及 55 吋高清電視。 4 人入住。', '享受我們的城市住宿，探索紐約市更多精彩面貌。 位於酒店的中心樓層，您可從您客房的窗戶飽覽曼哈頓中城的熱鬧繁囂光景。 收看 55 吋高清電視，讓自己徹底放鬆；在大型辦公桌前趕上工作進度；並且使用 WiFi 無線上網與外界保持聯繫。 此客房可入住最多 4 人。', 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_execfloorroom01_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomType] values (5, 4, '行政套房（單床）', 4, 10, '15,335', '從客房內可飽覽迷人的曼克頓中城天際線景色。一張大床。最多可入住 4 人', '在紐約盡情遊玩探索，並將您的住宿升級至此時尚行政套房。 位於酒店高樓層，此寬敞的行政套房讓您對豪華住宿另有一番見解。', 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_kingbedtvchair01_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomType] values (6, 4, '行政套房（雙床）', 4, 10, '15,920', '從客房內可飽覽迷人的曼克頓中城天際線景色。兩張雙人床。最多可入住 6 人', '在紐約盡情遊玩探索，並將您的住宿升級至此時尚行政套房。 位於酒店高樓層，此寬敞的行政套房讓您對豪華住宿另有一番見解。', 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_execsuite2beds_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomType] values (7, 4, '單臥室總統套房', 4, 10, '53,888', '從客房內可飽覽迷人的曼克頓中城天際線景色。一張大床。最多可入住 4 人。', '在紐約盡情遊玩探索，並將您的住宿升級至此時尚行政套房。 位於酒店高樓層，此寬敞的行政套房讓您對豪華住宿另有一番見解。', 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_prssuiterm_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomType] values (8, 4, '總統轉角套房', 4, 10, '64,666', '從客房內可飽覽迷人的曼克頓中城天際線景色。一張大床。最多可入住 6人。', '在紐約盡情遊玩探索，並將您的住宿升級至此時尚行政套房。 位於酒店高樓層，此寬敞的行政套房讓您對豪華住宿另有一番見解。', 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_prescnr01_386x310_FitToBoxSmallDimension_Center.jpg');

/*====================================================================*/

CREATE TABLE [RoomTypePic] (
  [picNo] int NOT NULL,
  [roomTypeNo] int NOT NULL,
  [pic] varchar(500),
  PRIMARY KEY ([picNo]),
  FOREIGN KEY (roomTypeNo) REFERENCES RoomType(roomTypeNo)
);

  insert into [RoomTypePic] values (1, 1, 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_highfloor1bed01_2_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomTypePic] values (2, 2, 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_deluxequeenroom_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomTypePic] values (3, 3, 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_rm002_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomTypePic] values (4, 4, 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_execfloorroom01_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomTypePic] values (5, 5, 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_kingbedtvchair01_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomTypePic] values (6, 6, 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_execsuite2beds_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomTypePic] values (7, 7, 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_prssuiterm_386x310_FitToBoxSmallDimension_Center.jpg');
  insert into [RoomTypePic] values (8, 8, 'https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_prescnr01_386x310_FitToBoxSmallDimension_Center.jpg');

/*====================================================================*/

CREATE TABLE [RoomAvailable] (
  [serialNo] int NOT NULL,
  [roomTypeNo] int NOT NULL,
  [date] date,
  [totalRooms] int,
  [sale] int,
  [available] int,
  [notForSale] int,
  PRIMARY KEY ([serialNo]),
  FOREIGN KEY (roomTypeNo) REFERENCES RoomType(roomTypeNo)
);
  
  insert into [RoomAvailable] values (11, 8, '02-01-2019', 10, 10, 0, 0);
  insert into [RoomAvailable] values (12, 8, '02-02-2019', 10, 10, 0, 0);
  insert into [RoomAvailable] values (13, 8, '02-03-2019', 10, 10, 0, 0);
  insert into [RoomAvailable] values (14, 8, '02-04-2019', 10, 10, 0, 0);
  insert into [RoomAvailable] values (15, 8, '02-05-2019', 10, 9, 1, 0);
  insert into [RoomAvailable] values (16, 8, '02-06-2019', 10, 8, 2, 0);
  insert into [RoomAvailable] values (17, 8, '02-07-2019', 10, 7, 3, 0);
  insert into [RoomAvailable] values (18, 8, '02-08-2019', 10, 10, 0, 0);
  insert into [RoomAvailable] values (19, 8, '02-09-2019', 10, 10, 0, 0);
  insert into [RoomAvailable] values (20, 8, '02-10-2019', 10, 10, 0, 0);

/*====================================================================*/

CREATE TABLE [HotelOrderDetails] (
  [orderNo]int  IDENTITY,
  [hotelNo] int NOT NULL,
  [accountName] varchar(20),
  [createDate] datetime,
  [updateDate] datetime,
  [bookingPerson] nvarchar(50),
  [hotelName] nvarchar(20),
  [phone] varchar(20),
  [bookingDate] datetime,
  [checkIn] date,
  [checkOut] date,
  [roomType] varchar(20),
  [roomPrice] int,
  [stayNights] int,
  [totalPrice] int,
  [info] varchar(200),
  PRIMARY KEY ([orderNo]),
  FOREIGN KEY (hotelNo) REFERENCES Hotel(hotelNo),
  FOREIGN KEY (accountName) REFERENCES UserInfo(accountName),
);

  insert into [HotelOrderDetails] values ( 1, 'snoopy', '2018-12-31', '2019-1-1', '楊雅涵', '香港迪士尼樂園酒店', 0912345678, '2018-12-31', '2018-2-1', '2018-2-2', '雙人房', '2500', 1, '2500', 'NULL');
