create table user (
  id int not null PRIMARY key auto_increment,
  username VARCHAR(50) not null DEFAULT '',
  pwd VARCHAR(50) not null DEFAULT '',
  picpath VARCHAR(255) not null DEFAULT 'default.jpg',
  introduction VARCHAR(255) not null DEFAULT ''
)

create table article (
  aid int not null PRIMARY key auto_increment,
  title varchar(200) not null DEFAULT '',
  userid int not null DEFAULT -1,
  content LONGTEXT,
  createtime TIMESTAMP not null default CURRENT_TIMESTAMP,
  picpath VARCHAR(200)
)

create table commentinfo (
  cid int not null PRIMARY key auto_increment,
  userid int not null DEFAULT -1,
  content LONGTEXT,
  createtime TIMESTAMP not null default CURRENT_TIMESTAMP,
  chtml LONGTEXT,
  articleid int not null DEFAULT -1,
  fabulous INT not null DEFAULT 0,
  tread INT not null DEFAULT 0
)

create table collection(
  cid int not null PRIMARY key auto_increment,
  userid int not null DEFAULT -1,
  articleid int not null DEFAULT -1
)

create table follower(
  fid int not null PRIMARY key auto_increment,
  followid int not null DEFAULT -1,
  followedid int not null DEFAULT -1
)

CREATE TABLE likeorunlike
(
  lid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  commentid INT NOT NULL,
  userid INT NOT NULL,
  islike INT NOT NULL
);

