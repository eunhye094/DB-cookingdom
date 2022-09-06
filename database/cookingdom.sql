DROP DATABASE IF EXISTS cookiedb;
CREATE DATABASE IF NOT EXISTS cookiedb
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

use cookiedb;

CREATE TABLE cookie(
    id int not null AUTO_INCREMENT,
    name varchar(50) not null,
    grade varchar(50) not null,
    type varchar(50) not null,
    image varchar(100),
    PRIMARY KEY(id)
)ENGINE = INNODB
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

insert into cookie values (null, "용감한 쿠키", "COMMON", "돌격형", "1.png");
insert into cookie values (null, "딸기맛 쿠키", "COMMON", "방어형", "2.png");
insert into cookie values (null, "마법사맛 쿠키", "COMMON", "마법형", "3.png");
insert into cookie values (null, "천사맛 쿠키", "COMMON", "회복형", "4.png");
insert into cookie values (null, "비트맛 쿠키", "COMMON", "사격형", "5.png");
insert into cookie values (null, "닌자맛 쿠키", "COMMON", "침투형", "6.png");
insert into cookie values (null, "근육맛 쿠키", "COMMON", "돌격형", "7.png");
insert into cookie values (null, "용사맛 쿠키", "RARE", "방어형", "9.png");
insert into cookie values (null, "연금술사맛 쿠키", "RARE", "폭발형", "10.png");
insert into cookie values (null, "체리맛 쿠키", "RARE", "폭발형", "11.png");
insert into cookie values (null, "버블껌맛 쿠키", "RARE", "폭발형", "15.png");
insert into cookie values (null, "블랙베리맛 쿠키", "RARE", "마법형", "18.png");
insert into cookie values (null, "팬케이크맛 쿠키", "RARE", "침투형", "19.png");
insert into cookie values (null, "공주맛 쿠키", "RARE", "돌격형", "14.png");
insert into cookie values (null, "아보카도맛 쿠키", "RARE", "방어형", "21.png");
insert into cookie values (null, "양파맛 쿠키", "RARE", "지원형", "17.png");
insert into cookie values (null, "커스터드 3세맛 쿠키", "RARE", "회복형", "12.png");
insert into cookie values (null, "클로버맛 쿠키", "RARE", "지원형", "13.png");
insert into cookie values (null, "탐험가맛 쿠키", "RARE", "침투형", "16.png");
insert into cookie values (null, "당근맛 쿠키", "RARE", "지원형", "20.png");
insert into cookie values (null, "악마맛 쿠키", "RARE", "마법형", "22.png");
insert into cookie values (null, "뱀파이어맛 쿠키", "EPIC", "침투형", "25.png");
insert into cookie values (null, "스파클링맛 쿠키", "EPIC", "회복형", "30.png");
insert into cookie values (null, "칠리맛 쿠키", "EPIC", "침투형", "23.png");
insert into cookie values (null, "다크초코 쿠키", "EPIC", "돌격형", "36.png");
insert into cookie values (null, "자색고구마맛 쿠키", "EPIC", "돌격형", "35.png");
insert into cookie values (null, "석류맛 쿠키", "EPIC", "지원형", "38.png");
insert into cookie values (null, "눈설탕맛 쿠키", "EPIC", "마법형", "24.png");
insert into cookie values (null, "정글전사 쿠키", "EPIC", "사격형", "26.png");
insert into cookie values (null, "민트초코 쿠키", "EPIC", "지원형", "29.png");
insert into cookie values (null, "허브맛 쿠키", "EPIC", "회복형", "28.png");
insert into cookie values (null, "호밀맛 쿠키", "EPIC", "사격형", "31.png");
insert into cookie values (null, "에스프레소맛 쿠키", "EPIC", "마법형", "33.png");
insert into cookie values (null, "마들렌맛 쿠키", "EPIC", "방어형", "32.png");
insert into cookie values (null, "우유맛 쿠키", "EPIC", "방어형", "34.png");
insert into cookie values (null, "감초맛 쿠키", "EPIC", "마법형", "39.png");
insert into cookie values (null, "독버섯맛 쿠키", "EPIC", "폭발형", "37.png");
insert into cookie values (null, "웨어울프맛 쿠키", "EPIC", "돌격형", "27.png");
insert into cookie values (null, "슈크림맛 쿠키", "EPIC", "지원형", "41.png");
insert into cookie values (null, "라떼맛 쿠키", "EPIC", "마법형", "42.png");
insert into cookie values (null, "아몬드맛 쿠키", "EPIC", "지원형", "43.png");
insert into cookie values (null, "구미호맛 쿠키", "EPIC", "돌격형", "40.png");
insert into cookie values (null, "블랙레이즌맛 쿠키", "EPIC", "침투형", "44.png");
insert into cookie values (null, "딸기크레페맛 쿠키", "EPIC", "방어형", "45.png");
insert into cookie values (null, "무화과맛 쿠키", "EPIC", "지원형", "47.png");
insert into cookie values (null, "페스츄리맛 쿠키", "EPIC", "사격형", "46.png");
insert into cookie values (null, "벨벳케이크맛 쿠키", "EPIC", "돌격형", "48.png");
insert into cookie values (null, "퓨어바닐라 쿠키", "ANCIENT", "회복형", "8.png");

select * from cookie;

CREATE TABLE topping(
    id int not null AUTO_INCREMENT,
    name varchar(50) not null,
    effect varchar(50) not null,
    image varchar(100),
    PRIMARY KEY(id)
)ENGINE = INNODB
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

insert into topping values (null, "화끈화끈 라즈베리", "공격력 증가", "1.png");
insert into topping values (null, "통통튀는 캐러멜", "공격속도 증가", "2.png");
insert into topping values (null, "달콤 초코 캔디", "이로운 효과 증가", "3.png");
insert into topping values (null, "상큼한 조각 키위", "해로운 효과 감소", "4.png");
insert into topping values (null, "든든한 헤이즐넛", "치명타 피해 감소", "5.png");
insert into topping values (null, "째깍째깍 초콜릿칩", "쿨타임 감소", "6.png");
insert into topping values (null, "과즙팡팡 애플젤리", "치명타 확률 증가", "7.png");
insert into topping values (null, "건강한 땅콩", "체력 증가", "8.png");
insert into topping values (null, "딱딱한 호두", "방어력 증가", "9.png");
insert into topping values (null, "단단한 아몬드", "피해량 감소", "10.png");

select * from topping;

CREATE TABLE treasure(
    id int not null AUTO_INCREMENT,
    name varchar(50) not null,
    grade varchar(50) not null,
    type varchar(50) not null,
    effect varchar(50) not null,
    image varchar(100),
    PRIMARY KEY(id)
)ENGINE = INNODB
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

insert into treasure values (null, "문지기 유령의 단단한 오른쪽 뿔", "COMMON", "passive", "방어력 증가", "1.png");
insert into treasure values (null, "치즈볼새의 소중한 동전 주머니", "COMMON", "passive", "코인 획득 확률 증가", "2.png");
insert into treasure values (null, "왕자 곰젤리의 말랑말랑 젤리시계", "COMMON", "passive", "쿨타임 감소", "3.png");
insert into treasure values (null, "어린 순례자의 장난감 새총", "RARE", "active", "멀리 있는 적 방어력 감소", "4.png");
insert into treasure values (null, "아이스크림 상인 유령의 신기루 아이스크림", "RARE", "active", "가까운 적 방어력 감소", "5.png");
insert into treasure values (null, "무녀맛 쿠키의 영험한 종이부적", "RARE", "active", "가까운 적 피해와 버프 제거", "6.png");
insert into treasure values (null, "행복한 곰젤리의 숨겨둔 사탕", "RARE", "active", "공격력과 치명타 확률 증가", "7.png");
insert into treasure values (null, "골카론의 날카로운 낫", "RARE", "passive", "치명타 확률 증가", "8.png");
insert into treasure values (null, "설탕백조의 샤이닝 설탕깃털", "EPIC", "passive", "먼저 쓰러진 쿠키 하나 부활", "9.png");
insert into treasure values (null, "나이든 순례자의 승리를 향한 무공비급", "EPIC", "passive", "공격력 증가", "10.png");
insert into treasure values (null, "순례자의 마을 촌장의 활활 화르륵 횃불", "EPIC", "active", "가까운 적 지속 피해", "11.png");
insert into treasure values (null, "작은 뿔꿈틀이의 끈적끈적 방어용 점액", "EPIC", "active", "체력 낮은 쿠키 하나 무적", "12.png");
insert into treasure values (null, "정화된 석류신목의 신성한 나뭇가지", "EPIC", "active", "체력 보호막 생성", "13.png");
insert into treasure values (null, "책방골목 올빼미의 뽀득뽀득 모노클", "EPIC", "active", "디버프 제거와 체력 회복", "14.png");

select * from treasure;

CREATE TABLE equipment (
    id int not null AUTO_INCREMENT,
    cookie_id int not null,
    topping_id int not null,
    treasure_id int not null,
    PRIMARY KEY (id),
    FOREIGN KEY (cookie_id) REFERENCES cookie(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (topping_id) REFERENCES topping(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (treasure_id) REFERENCES treasure(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = INNODB
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

insert into equipment values (null, 1, 7, 1);
insert into equipment values (null, 2, 3, 4);
insert into equipment values (null, 3, 4, 5);
insert into equipment values (null, 4, 1, 14);
insert into equipment values (null, 5, 10, 13);
insert into equipment values (null, 6, 2, 3);
insert into equipment values (null, 7, 5, 2);
insert into equipment values (null, 8, 9, 3);
insert into equipment values (null, 9, 8, 10);
insert into equipment values (null, 10, 8, 9);
insert into equipment values (null, 11, 7, 2);
insert into equipment values (null, 12, 6, 1);
insert into equipment values (null, 13, 4, 14);
insert into equipment values (null, 14, 1, 9);
insert into equipment values (null, 15, 5, 7);
insert into equipment values (null, 16, 6, 4);
insert into equipment values (null, 17, 3, 6);
insert into equipment values (null, 18, 2, 6);
insert into equipment values (null, 19, 1, 8);
insert into equipment values (null, 20, 10, 1);
insert into equipment values (null, 21, 2, 10);
insert into equipment values (null, 22, 2, 7);
insert into equipment values (null, 23, 1, 3);
insert into equipment values (null, 24, 1, 2);
insert into equipment values (null, 25, 7, 8);
insert into equipment values (null, 26, 1, 12);
insert into equipment values (null, 27, 4, 11);
insert into equipment values (null, 28, 3, 11);
insert into equipment values (null, 29, 10, 11);
insert into equipment values (null, 30, 2, 4);
insert into equipment values (null, 31, 10, 3);
insert into equipment values (null, 32, 9, 9);
insert into equipment values (null, 33, 6, 10);
insert into equipment values (null, 34, 8, 1);
insert into equipment values (null, 35, 4, 2);
insert into equipment values (null, 36, 5, 3);
insert into equipment values (null, 37, 6, 6);
insert into equipment values (null, 38, 1, 5);
insert into equipment values (null, 39, 10, 1);
insert into equipment values (null, 40, 2, 5);
insert into equipment values (null, 41, 3, 1);
insert into equipment values (null, 42, 1, 5);
insert into equipment values (null, 43, 7, 3);
insert into equipment values (null, 44, 6, 4);
insert into equipment values (null, 45, 10, 1);
insert into equipment values (null, 46, 1, 7);
insert into equipment values (null, 47, 5, 3);
insert into equipment values (null, 48, 9, 9);

select cookie.name, topping.name from cookie, topping, equipment where equipment.cookie_id = cookie.id and equipment.topping_id = topping.id;

select cookie.name as cookie, topping.name as topping, treasure.name as treasure, cookie.image as cookie_img, topping.image as topping_img, treasure.image as treasure_img from equipment CROSS JOIN cookie CROSS JOIN topping CROSS JOIN treasure on equipment.cookie_id = cookie.id and equipment.topping_id = topping.id and equipment.treasure_id = treasure.id;

