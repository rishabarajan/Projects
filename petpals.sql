create database petpals;
use petpals;


create table pets (
    petid int primary key,
    name varchar(255),
    age int,
    breed varchar(255),
    type varchar(100),
    availableforadoption bit
);



create table shelters (
    shelterid int primary key,
    name varchar(255),
    location varchar(500)
);


create table donations (
    donationid int primary key,
    donorname varchar(255),
    donationtype varchar(100),
    donationamount decimal(10,2),
    donationitem varchar(255),
    donationdate datetime
);


create table adoptionevents (
    eventid int primary key,
    eventname varchar(255),
    eventdate datetime,
    location varchar(500)
);



create table participants (
    participantid int primary key,
    participantname varchar(255),
    participanttype varchar(100),
    eventid int,
    foreign key (eventid) references adoptionevents(eventid)
);

create table adoptions (
    adoptionid int primary key auto_increment,
    petid int,
    adoptername varchar(255),
    adoptiondate datetime,
    foreign key (petid) references pets(petid)
);

insert into adoptions (petid, adoptername, adoptiondate) values
(3, 'Arun Kumar', '2025-02-20 14:30:00'),
(5, 'Meera Iyer', '2025-02-22 10:15:00'),
(9, 'Vikram Singh', '2025-02-25 16:45:00');



insert into pets values
(1, 'buddy', 3, 'labrador', 'dog', 1),
(2, 'whiskers', 2, 'persian', 'cat', 1),
(3, 'rocky', 4, 'beagle', 'dog', 0),
(4, 'misty', 1, 'siamese', 'cat', 1),
(5, 'charlie', 5, 'pug', 'dog', 0),
(6, 'bella', 2, 'golden retriever', 'dog', 1),
(7, 'tiger', 3, 'maine coon', 'cat', 1),
(8, 'max', 4, 'doberman', 'dog', 1),
(9, 'snowy', 2, 'british shorthair', 'cat', 0),
(10, 'duke', 3, 'bulldog', 'dog', 1);

insert into shelters values
(1, 'chennai pet care', 'chennai'),
(2, 'coimbatore rescue center', 'coimbatore'),
(3, 'madurai pet shelter', 'madurai'),
(4, 'trichy animal rescue', 'trichy'),
(5, 'salem stray home', 'salem'),
(6, 'vellore pet haven', 'vellore'),
(7, 'erode paws shelter', 'erode'),
(8, 'thanjavur pet aid', 'thanjavur'),
(9, 'tirunelveli pet rescue', 'tirunelveli'),
(10, 'pondicherry pet support', 'pondicherry');


insert into donations values
(1, 'raman', 'cash', 5000.00, null, '2025-03-01 10:00:00'),
(2, 'suresh', 'item', null, 'dog food', '2025-03-02 11:00:00'),
(3, 'priya', 'cash', 3000.00, null, '2025-03-03 12:00:00'),
(4, 'ganesh', 'cash', 7000.00, null, '2025-03-04 13:00:00'),
(5, 'lakshmi', 'item', null, 'cat litter', '2025-03-05 14:00:00'),
(6, 'bharath', 'cash', 4500.00, null, '2025-03-06 15:00:00'),
(7, 'revathi', 'item', null, 'dog toys', '2025-03-07 16:00:00'),
(8, 'karuna', 'cash', 8000.00, null, '2025-03-08 17:00:00'),
(9, 'murali', 'item', null, 'pet beds', '2025-03-09 18:00:00'),
(10, 'keerthi', 'cash', 6500.00, null, '2025-03-10 19:00:00');


insert into adoptionevents values
(1, 'chennai adoption drive', '2025-04-01 10:00:00', 'chennai'),
(2, 'coimbatore pet fair', '2025-05-15 12:00:00', 'coimbatore');


insert into participants values
(1, 'chennai pet care', 'shelter', 1),
(2, 'priya', 'adopter', 1),
(3, 'coimbatore rescue center', 'shelter', 2),
(4, 'ganesh', 'adopter', 2);
