USE annika;

INSERT INTO filialer VALUES (1,'Barkgatan 2', 'EC Malmö','Malmö');
INSERT INTO filialer VALUES (2, 'Storgatan 1', 'EC Helsingborg', 'Helsingborg');

INSERT INTO utb VALUES (1,'Javautvecklare');
INSERT INTO utb VALUES (2,'Mjukvarutestare');

INSERT INTO utb_x_filial VALUES (1,1,1,2017-08-08,2019-06-06);
INSERT INTO utb_x_filial VALUES (2,1,2,2017-08-08,2019-06-06);
INSERT INTO utb_x_filial VALUES (3,2,1,2017-08-08,2019-06-06);
INSERT INTO utb_x_filial VALUES (4,2,2,2017-08-08,2019-06-06);

INSERT INTO kurser VALUES (1,1, 'Praktisk Databasdesign',25);
INSERT INTO kurser VALUES (2,1, 'Webbutveckling i Java',20);
INSERT INTO kurser VALUES (3,1, 'Grundläggande Javautveckling',15);
INSERT INTO kurser VALUES (4,2, 'Javascript för testare',5);
INSERT INTO kurser VALUES (5,2, 'Seleniumtestning',30);

INSERT INTO elever VALUES (1,'Ada Akronym');
INSERT INTO elever VALUES (2, 'Bosse Basic');
INSERT INTO elever VALUES (3, 'Cecil Circumvent');
INSERT INTO elever VALUES (4, 'Doug Denial');
INSERT INTO elever VALUES (5, 'Eli Entity');
INSERT INTO elever VALUES (6, 'Flyx Foo ');

#faaan eleven går ju på en utbildning också? iofs finns den i kursen...hmmmm...

INSERT INTO elev_x_kurs VALUES (1,1,1,2019-06-06, 'A');
INSERT INTO elev_x_kurs VALUES (2,1,2,2019-06-06, 'A');
INSERT INTO elev_x_kurs VALUES (3,1,3,2019-06-06, 'A');
INSERT INTO elev_x_kurs VALUES (4,2,1,2019-06-06, 'b');
INSERT INTO elev_x_kurs VALUES (5,2,2,2019-06-06, 'c');
INSERT INTO elev_x_kurs VALUES (6,2,3,2019-06-06, 'D');

INSERT INTO elev_x_kurs VALUES (7,3,4,2019-06-06, 'a');
INSERT INTO elev_x_kurs VALUES (8,3,5,2019-06-06, 'b');
INSERT INTO elev_x_kurs VALUES (9,4,4,2019-06-06, 'A');
INSERT INTO elev_x_kurs VALUES (10,4,5,2019-06-06, 'B');
INSERT INTO elev_x_kurs VALUES (11,5,4,2019-06-06, 'c');
INSERT INTO elev_x_kurs VALUES (12,5,5,2019-06-06, 'A');
INSERT INTO elev_x_kurs VALUES (13,6,4,2019-06-06, 'F');
INSERT INTO elev_x_kurs VALUES (14,6,5,2019-06-06, 'F');

INSERT INTO yrkestitlar VALUES (1, 'Rektor');
INSERT INTO yrkestitlar VALUES (2, 'Lärare');
INSERT INTO yrkestitlar VALUES (3, 'Utbildningsledare');

INSERT INTO anstallda VALUES (1,1, 'Recky Reqteur');
INSERT INTO anstallda VALUES (2,2, 'Tea Cher');
INSERT INTO anstallda VALUES (3,2, 'Larry Larare');
INSERT INTO anstallda VALUES (4,3, 'Leddy Ledder');


#en rektor skulle kunna vara ansvarig lärare. detta är problematiskt.

INSERT INTO kurs_x_anstalld VALUES (1,2,0);
INSERT INTO kurs_x_anstalld VALUES (1,3,1);
INSERT INTO kurs_x_anstalld VALUES (2,2,1);
INSERT INTO kurs_x_anstalld VALUES (2,1,0);
INSERT INTO kurs_x_anstalld VALUES (3,3,1);
INSERT INTO kurs_x_anstalld VALUES (4,2,0);
INSERT INTO kurs_x_anstalld VALUES (4,3,1);
INSERT INTO kurs_x_anstalld VALUES (5,2,1);
INSERT INTO kurs_x_anstalld VALUES (1,4,0);
INSERT INTO kurs_x_anstalld VALUES (2,4,0);
INSERT INTO kurs_x_anstalld VALUES (3,4,0);
INSERT INTO kurs_x_anstalld VALUES (4,4,0);
INSERT INTO kurs_x_anstalld VALUES (5,4,0);





