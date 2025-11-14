 INSERT INTO app_user (name, email, password) VALUES ('Aarav Sharma', 'aarav@gmail.com', 'password');
 INSERT INTO app_user (name, email, password) VALUES ('Riya Verma', 'riya.verma@gmail.com', 'Qw8e#Za1Lp4Mn7!TgR');
 INSERT INTO app_user (name, email, password) VALUES ('Kabir Singh', 'kabir.singh@gmail.com', 'Xy7@Pr2Lm8!Qv5ZaKd');
 INSERT INTO app_user (name, email, password) VALUES ('Ananya Patel', 'ananya.patel@gmail.com', 'Tg5$Qw9Az1!Lp7XnKr');
 INSERT INTO app_user (name, email, password) VALUES ('Arjun Mehta', 'arjun.mehta@gmail.com', 'Mn3!Yt8#Qw6Lp9ZaPr');
 INSERT INTO app_user (name, email, password) VALUES ('Ishita Kapoor', 'ishita.kapoor@gmail.com', 'Za4Qw7!Mn2@Lp9Xy8K');
 INSERT INTO app_user (name, email, password) VALUES ('Vivaan Gupta', 'vivaan.gupta@gmail.com', 'Lp6@Za8!Qw2Mn9Yt3R');
 INSERT INTO app_user (name, email, password) VALUES ('Saanvi Nair', 'saanvi.nair@gmail.com', 'Qr7!Lp2Za8@Mn5Xy6T');
 INSERT INTO app_user (name, email, password) VALUES ('Aditya Reddy', 'aditya.reddy@gmail.com', 'Xn9$Qw2Lp6!Mn7Za3K');
 INSERT INTO app_user (name, email, password) VALUES ('Meera Joshi', 'meera.joshi@gmail.com', 'Mn8Za4@Lp7Qw1!Xy5R');
 INSERT INTO app_user (name, email, password) VALUES ('Krishna Iyer', 'krishna.iyer@gmail.com', 'Za2!Mn9Lp4Qw6@Xy7T');


 INSERT INTO user_roles (user_id, roles) VALUES
    (1, 'RIDER'),
    (2, 'RIDER'),
    (2, 'DRIVER'),
    (3, 'RIDER'),
    (3, 'DRIVER'),
    (4, 'RIDER'),
    (4, 'DRIVER'),
    (5, 'RIDER'),
    (5, 'DRIVER'),
    (6, 'RIDER'),
    (6, 'DRIVER'),
    (7, 'RIDER'),
    (7, 'DRIVER'),
    (8, 'RIDER'),
    (8, 'DRIVER'),
    (9, 'RIDER'),
    (9, 'DRIVER'),
    (10, 'RIDER'),
    (10, 'DRIVER');


  INSERT INTO rider (user_id, rating) VALUES
  (1,4.9);

 INSERT INTO driver (user_id, rating, available, current_location) VALUES
(2, 4.8, true,  ST_GeomFromText('POINT(75.8565 22.7190)', 4326)), -- Bhawarkua Square
(3, 4.5, true,  ST_GeomFromText('POINT(75.8620 22.7240)', 4326)), -- Near Holkar Science College
(4, 4.2, false, ST_GeomFromText('POINT(75.8495 22.7205)', 4326)), -- Ranjeet Hanuman Mandir
(5, 4.9, true,  ST_GeomFromText('POINT(75.8530 22.7140)', 4326)), -- Near Choithram Hospital
(6, 3.9, true,  ST_GeomFromText('POINT(75.8660 22.7175)', 4326)), -- Near Regal Square Road
(7, 4.6, false, ST_GeomFromText('POINT(75.8500 22.7260)', 4326)), -- Rajendra Nagar side
(8, 4.3, true,  ST_GeomFromText('POINT(75.8585 22.7280)', 4326)), -- Near IT Park (Khandwa Road side)
(9, 4.7, true,  ST_GeomFromText('POINT(75.8440 22.7150)', 4326)), -- Near Mhow Naka
(10, 4.1, false, ST_GeomFromText('POINT(75.8605 22.7115)', 4326)), -- Near Sapna Sangeeta Road
(11, 4.4, true,  ST_GeomFromText('POINT(75.8480 22.7180)', 4326)); -- Near Navlakha Square



  INSERT INTO wallet (user_id, balance) VALUES
  (1, 100),
  (2, 500);
