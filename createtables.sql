CREATE TABLE ownerInfo (
  credit VARCHAR(200) DEFAULT NULL,
  ownname varchar(77) DEFAULT NULL,
  ownaddress varchar(77) DEFAULT NULL,
  owncity varchar(33) DEFAULT NULL,
  ownzip varchar(9) DEFAULT NULL,
  owncountry varchar(33) DEFAULT NULL,
  ownphone1 varchar(13) DEFAULT NULL,
  ownerID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (ownerID)

);

create table work (
  workno int(11),
  artfirst varchar(34) DEFAULT NULL,
  artlast varchar(34) DEFAULT NULL,
  gertitle varchar(79) DEFAULT NULL,
  engtitle varchar(79) DEFAULT NULL,
  datemonth varchar(9) DEFAULT NULL,
  dateyear varchar(5) DEFAULT NULL,
  datetext varchar(60) DEFAULT NULL,
  medium varchar(200) DEFAULT NULL,
  dimh varchar(6) DEFAULT NULL,
  dimw varchar(6) DEFAULT NULL,
  place varchar(38) DEFAULT NULL,
  othertitle varchar(79) DEFAULT NULL,
  credit varchar(200) DEFAULT NULL,
  ownerID int(11) DEFAULT NULL,
  primary key (workno),
  foreign key (ownerID) references ownerInfo(ownerID)
);

create table refs_info (
  workno int(11) ,
  refs_publication varchar(50) DEFAULT NULL,
  refs_reference varchar(50) DEFAULT NULL,

  refs_illust varchar(10) DEFAULT NULL,
  foreign key (workno) references work(workno),
  primary key (refs_publication, refs_reference)
);


create table exhib_info (
  workno int(11) DEFAULT NULL,
  ex_date varchar(8) DEFAULT NULL,
  ex_place varchar(50) DEFAULT NULL,
  ex_no varchar(10) DEFAULT NULL,
  ex_illust varchar(10) DEFAULT NULL,

  foreign key (workno) references work(workno),
  primary key (ex_date, ex_place, ex_no)
);


CREATE TABLE finalData (
  workno int(11) DEFAULT NULL,
  repd varchar(78) DEFAULT NULL,
  catrais varchar(76) DEFAULT NULL,
  housecat varchar(76) DEFAULT NULL,
  firstmod varchar(16) DEFAULT NULL,
  lastmod varchar(16) DEFAULT NULL,
  ex_date varchar(8) DEFAULT NULL,
  ex_place varchar(50) DEFAULT NULL,
  ex_no varchar(10) DEFAULT NULL,
  refs_publication varchar(50) DEFAULT NULL,
  refs_reference varchar(16) DEFAULT NULL,

  foreign key (workno) references work(workno),
  foreign key (ex_date,ex_place,ex_no) references exhib_info(ex_date,ex_place,ex_no),
  foreign key (refs_publication,refs_reference) references refs_info(refs_publication,refs_reference)
);


CREATE TABLE artData (
  workno int(11) DEFAULT NULL,
  artfirst varchar(34) DEFAULT NULL,
  artlast varchar(34) DEFAULT NULL,
  gertitle varchar(79) DEFAULT NULL,
  engtitle varchar(79) DEFAULT NULL,
  datemonth varchar(9) DEFAULT NULL,
  dateyear varchar(5) DEFAULT NULL,
  datetext varchar(60) DEFAULT NULL,
  medium varchar(200) DEFAULT NULL,
  dimh varchar(6) DEFAULT NULL,
  dimw varchar(6) DEFAULT NULL,
  credit varchar(200) DEFAULT NULL,
  ownname varchar(77) DEFAULT NULL,
  ownaddress varchar(77) DEFAULT NULL,
  owncity varchar(33) DEFAULT NULL,
  ownzip varchar(9) DEFAULT NULL,
  owncountry varchar(33) DEFAULT NULL,
  ownphone1 varchar(13) DEFAULT NULL,
  place varchar(38) DEFAULT NULL,
  repd varchar(78) DEFAULT NULL,
  catrais varchar(76) DEFAULT NULL,
  housecat varchar(76) DEFAULT NULL,
  othertitle varchar(79) DEFAULT NULL,
  firstmod varchar(16) DEFAULT NULL,
  lastmod varchar(16) DEFAULT NULL,
  ex_date varchar(8) DEFAULT NULL,
  ex_place varchar(50) DEFAULT NULL,
  ex_no varchar(10) DEFAULT NULL,
  ex_illust varchar(10) DEFAULT NULL,
  refs_publication varchar(50) DEFAULT NULL,
  refs_reference varchar(56) DEFAULT NULL,
  refs_illust varchar(10) DEFAULT NULL
);
