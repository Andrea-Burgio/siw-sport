-- Insert data into team table
INSERT INTO team (name, foundation_year, office_address) VALUES
('Los Angeles Rams', 1936, '2980 Stadium Way, Los Angeles, CA 90026'),
('New England Patriots', 1959, '1 Patriot Place, Foxborough, MA 02035'),
('Dallas Cowboys', 1960, '1 AT&T Way, Arlington, TX 76011'),
('Green Bay Packers', 1919, '1265 Lombardi Avenue, Green Bay, WI 54304'),
('Miami Dolphins', 1965, '347 Don Shula Drive, Miami Gardens, FL 33056'),
('Tampa Bay Buccaneers', 1976, '1 Buccaneer Place, Tampa, FL 33607'),
('Kansas City Chiefs', 1960, '1 Arrowhead Drive, Kansas City, MO 64129'),
('Tennessee Titans', 1960, '460 Great Circle Road, Nashville, TN 37228'),
('Los Angeles Chargers', 1960, '3333 Susan Street, Costa Mesa, CA 92626'),
('Buffalo Bills', 1960, '1 Bills Drive, Orchard Park, NY 14127');

-- Insert data into president table
INSERT INTO president (name, last_name, tax_number, date_of_birth, place_of_birth, username, team_id) VALUES
('Kevin', 'Demoff', 'A12345678', '1975-01-01', 'Los Angeles', 'Kevin', NULL),
('Jonathan', 'Kraft', 'B23456789', '1964-03-04', 'Boston', 'Jonathan', NULL),
('Jerry', 'Jones', 'C34567891', '1962-10-13', 'Los Angeles', 'Jerry', 3),
('Mark', 'Murphy', 'D45678912', '1955-07-13', 'New York', 'MarkM', 4),
('Tom', 'Garfinkel', 'E56789123', '1968-08-08', 'Miami', 'Tom', 5),
('Darcie', 'Glazer', 'F67891234', '1967-02-08', 'Rochester', 'Darcie', 6),
('Mark', 'Donovan', 'G78912345', '1969-05-11', 'Pittsburgh', 'MarkD', 7),
('Burke', 'Nihill', 'H89123456', '1978-07-14', 'Nashville', 'Burke', 8),
('Dean', 'Spanos', 'I91234567', '1950-05-26', 'Stockton', 'Dean', 9),
('Kim', 'Pegula', 'J01234567', '1969-06-07', 'Seoul', 'Kim', 10);


-- Users table.
INSERT INTO users (username, password, enabled) VALUES
-- Presidents. Passwords: password1, password2, password3, ...
('Kevin', '$2a$10$AVCqIVWuFxx9ufCRVNAJfO/vRYxdUOsi/yndtb1agRdvrl3Tu3WCW', true),
('Jonathan', '$2a$10$FCLdNpFZFnv2m6UVNjAIKeSncgmav1pMgg1UB.MfEC48R1wHHqBG.', true),
('Jerry', '$2a$10$CeJyJOFla8VfENSIDpnEdutcvvJz9mBBr1tjh6/C6OmxkoXwci6li', true),
('MarkM', '$2a$10$Mp7fzR4l2o0rts.vHSFTCeAJRLZCBY2ii1y4XzMpLxSOCn.UdZtoe', true),
('Tom', '$2a$10$ivWj8l6Gmrm/bLaT8RKzfOI15biCKDnvdpCQ41xExOt1uhQnMFwu2', true),
('Darcie', '$2a$10$gyZhQdZ.YWO8K65WclGhROkScwxQGkZ1s26J82hdMbjIq9ITpZTk2', true),
('MarkD', '$2a$10$.g0JbyUkXyKsk6vY3.YWDu6FQRnbpDp86LG7viek7BxJzrL.iL8zC', true),
('Burke', '$2a$10$SVIySAxJLHKCt9C9AQ8gO.9/10/NOs2L/pspcMNG2IKeWbbtEzQYi', true),
('Dean', '$2a$10$MUBVO53PqH0dYiWOiwxQXuYQbvIoVAiJjjNF9q3lNXiRErrxmitbK', true),
('Kim', '$2a$10$JNVu1Dzsvy/vmu2qtlF9r.zJoCWZDClNf38DyTt9grXGt.UD2JBjS', true),

-- Admin. Password: password1
('Andrea', '$2a$10$AVCqIVWuFxx9ufCRVNAJfO/vRYxdUOsi/yndtb1agRdvrl3Tu3WCW', true);


-- Authorities table
INSERT INTO authorities (username, authority) VALUES
('Kevin', 'ROLE_PRESIDENT'),
('Jonathan', 'ROLE_PRESIDENT'),
('Jerry', 'ROLE_PRESIDENT'),
('MarkM', 'ROLE_PRESIDENT'),
('Tom', 'ROLE_PRESIDENT'),
('Darcie', 'ROLE_PRESIDENT'),
('MarkD', 'ROLE_PRESIDENT'),
('Burke', 'ROLE_PRESIDENT'),
('Dean', 'ROLE_PRESIDENT'),
('Kim', 'ROLE_PRESIDENT'),
('Andrea', 'ROLE_ADMINISTRATOR');

-- Insert data into player table. 200 players
INSERT INTO player (name, last_name, date_of_birth, place_of_birth) VALUES
('Cam', 'Akers', '1999-06-22', 'Clinton'),
('Cooper', 'Kupp', '1993-06-15', 'Yakima'),
('Robert', 'Woods', '1992-04-10', 'Gardena'),
('Tyler', 'Higbee', '1993-01-01', 'Clearwater'),
('Andrew', 'Whitworth', '1981-12-12', 'Monroe'),
('Jared', 'Goff', '1994-10-14', 'Novato'),
('Darrell', 'Henderson', '1997-08-19', 'Batesville'),
('Van', 'Jefferson', '1996-07-26', 'Brentwood'),
('Josh', 'Reynolds', '1995-02-16', 'San Antonio'),
('David', 'Edwards', '1996-12-13', 'Downers Grove'),
('Austin', 'Corbett', '1995-09-05', 'Sparks'),
('Brian', 'Allen', '1996-10-11', 'Hinsdale'),
('Rob', 'Havenstein', '1992-05-13', 'Mount Airy'),
('John', 'Wolford', '1995-10-16', 'Jacksonville'),
('Malcolm', 'Brown', '1993-05-15', 'Brenham'),
('DeSean', 'Jackson', '1986-12-01', 'Los Angeles'),
('Tutu', 'Atwell', '1999-10-07', 'Miami'),
('Jacob', 'Harris', '1997-07-04', 'Palm Harbor'),
('Joe', 'Noteboom', '1995-06-03', 'Plano'),
('Bobby', 'Evans', '1996-08-25', 'Allen'),
('Matthew', 'Stafford', '1988-02-07', 'Tampa'),
('Xavier', 'Jones', '1997-11-18', 'Spring'),
('Ben', 'Skowronek', '1997-09-24', 'Fort Wayne'),
('Trishton', 'Jackson', '1998-01-05', 'West Bloomfield'),
('Coleman', 'Shelton', '1995-03-25', 'Pasadena'),
('Tremayne', 'Anchrum', '1997-12-10', 'Powder Springs'),
('Chandler', 'Brewer', '1996-09-04', 'Florence'),
('Brycen', 'Hopkins', '1997-06-27', 'Nashville'),
('Johnny', 'Mundt', '1994-11-23', 'Modesto'),
('Raymond', 'Calais', '1997-04-02', 'Breaux Bridge'),
('Jake', 'Funk', '1997-11-20', 'Damascus'),
('J.J.', 'Koski', '1997-05-14', 'Danville'),
('Jeremiah', 'Kolone', '1995-08-02', 'Fallbrook'),
('Alaric', 'Jackson', '1997-09-04', 'Detroit'),
('Max', 'Pircher', '1998-10-17', 'Innsbruck'),
('Blake', 'Bortles', '1992-04-28', 'Oviedo'),
('Otis', 'Anderson', '1998-03-29', 'Jacksonville'),
('Landen', 'Akers', '1997-01-12', 'Cedar Rapids'),
('Kendall', 'Blanton', '1996-02-12', 'Blue Springs'),
('Jamal', 'Carter', '1994-04-12', 'Miami'),
('Aaron', 'Donald', '1991-05-23', 'Pittsburgh'),
('Leonard', 'Floyd', '1992-09-08', 'Eastman'),
('Sebastian', 'Joseph-Day', '1994-11-23', 'Stroudsburg'),
('Michael', 'Brockers', '1990-12-21', 'Houston'),
('Samson', 'Ebukam', '1995-05-09', 'Portland'),
('Terrell', 'Lewis', '1998-05-26', 'Washington'),
('Morgan', 'Fox', '1994-09-12', 'Lawrence'),
('Troy', 'Reeder', '1994-11-13', 'Hockessin'),
('Micah', 'Kiser', '1995-01-25', 'Baltimore'),
('Jalen', 'Ramsey', '1994-10-24', 'Smyrna'),
('Darious', 'Williams', '1993-03-15', 'Jacksonville'),
('Jordan', 'Fuller', '1998-02-20', 'Norwood'),
('John', 'Johnson', '1995-12-19', 'Hyattsville'),
('Taylor', 'Rapp', '1997-12-22', 'Bellingham'),
('Nick', 'Scott', '1996-05-19', 'Arlington'),
('Justin', 'Hollins', '1996-01-15', 'Arlington'),
('Kenny', 'Young', '1994-11-15', 'New Orleans'),
('David', 'Long', '1997-11-06', 'Los Angeles'),
('Troy', 'Hill', '1991-08-29', 'Youngstown'),
('Nickell', 'Robey-Coleman', '1992-01-17', 'Frostproof'),
('Donte', 'Deayon', '1994-01-01', 'Fontana'),
('Ernest', 'Jones', '1999-10-10', 'Waycross'),
('Bobby', 'Brown', '2000-02-15', 'Arlington'),
('Earnest', 'Brown', '1998-12-22', 'Denton'),
('Robert', 'Rochell', '1998-09-09', 'Shreveport'),
('Jordan', 'Smith', '1999-08-11', 'Lithonia'),
('Jake', 'Gervase', '1995-09-28', 'Davenport'),
('Derrick', 'Moncrief', '1993-08-31', 'Prattville'),
('Christian', 'Rozeboom', '1997-03-15', 'Sioux Center'),
('Justin', 'Lawler', '1995-07-14', 'Pottsboro'),
('Greg', 'Gaines', '1996-07-12', 'La Habra'),
('Marquise', 'Copeland', '1996-11-07', 'Bedford'),
('Ogbonnia', 'Okoronkwo', '1995-04-25', 'Houston'),
('Natrez', 'Patrick', '1997-07-17', 'Atlanta'),
('Travin', 'Howard', '1995-11-25', 'Longview'),
('Darius', 'Williams', '1997-03-17', 'Columbia'),
('JuJu', 'Hughes', '1997-06-07', 'Hanford'),
('J.R.', 'Reed', '1996-02-11', 'Frisco'),
('Dante', 'Fowler', '1994-08-03', 'St. Petersburg'),
('Clay', 'Matthews', '1986-05-14', 'Los Angeles'),
('Cory', 'Littleton', '1994-11-18', 'San Diego'),
('Marcus', 'Peters', '1993-01-09', 'Oakland'),
('Aqib', 'Talib', '1996-02-13', 'Cleveland'),
('Eric', 'Weddle', '1995-01-04', 'Fontana'),
('Lamarcus', 'Joyner', '1990-11-27', 'Miami'),
('Mark', 'Barron', '1999-10-27', 'Mobile'),
('Nolan', 'Cromwell', '1995-01-30', 'Smith Center'),
('Jack', 'Youngblood', '1990-01-26', 'Jacksonville'),
('Eric', 'Dickerson', '1990-09-02', 'Sealy'),
('Isaac', 'Bruce', '1992-11-10', 'Fort Lauderdale'),
('Marshall', 'Faulk', '1993-02-26', 'New Orleans'),
('Kurt', 'Warner', '1991-06-22', 'Burlington'),
('Orlando', 'Pace', '1995-11-04', 'Sandusky'),
('Deacon', 'Jones', '1998-12-09', 'Eatonville'),
('Merlin', 'Olsen', '1990-09-15', 'Logan'),
('Tom', 'Mack', '1993-11-01', 'Cleveland'),
('Jackie', 'Slater', '1994-05-27', 'Jackson'),
('Kevin', 'Greene', '1992-07-31', 'Schenectady'),
('Jerome', 'Bettis', '1992-02-16', 'Detroit'),
('Aeneas', 'Williams', '1998-01-29', 'New Orleans'),
('Norm', 'Van Brocklin', '1996-03-15', 'Parsons'),
('Elroy', 'Hirsch', '1993-06-17', 'Wausau'),
('Tom', 'Fears', '1992-12-03', 'Guadalajara'),
('Bob', 'Waterfield', '1990-07-26', 'Elmira'),
('Joe', 'Namath', '1993-05-31', 'Beaver Falls'),
('Roman', 'Gabriel', '1990-08-05', 'Wilmington'),
('Lawrence', 'McCutcheon', '1995-06-02', 'Plainview'),
('Harold', 'Jackson', '1996-01-06', 'Hattiesburg'),
('Jack', 'Snow', '1993-01-25', 'Rock Springs'),
('Fred', 'Dryer', '1996-07-06', 'Hawthorne'),
('Isiah', 'Robertson', '1999-08-17', 'New Orleans'),
('Jim', 'Youngblood', '1989-02-23', 'Monticello'),
('Pat', 'Haden', '1993-01-26', 'Westbury'),
('Wendell', 'Tyler', '1995-03-20', 'Shreveport'),
('Henry', 'Ellard', '1991-07-21', 'Fresno'),
('Flipper', 'Anderson', '1995-03-07', 'Paulsboro'),
('Kevin', 'Carter', '1993-09-21', 'Miami'),
('Todd', 'Lyght', '1999-02-09', 'Flint'),
('London', 'Fletcher', '1995-05-19', 'Cleveland'),
('Steven', 'Jackson', '1989-07-22', 'Las Vegas'),
('Marc', 'Bulger', '1997-04-05', 'Pittsburgh'),
('Leonard', 'Little', '1994-10-19', 'Asheville'),
('Adam', 'Archuleta', '1997-11-27', 'Rock Springs'),
('O.J.', 'Atogwe', '1991-06-23', 'Windsor'),
('Sam', 'Bradford', '1997-11-08', 'Oklahoma City'),
('Chris', 'Long', '1995-03-28', 'Santa Monica'),
('James', 'Laurinaitis', '1986-12-03', 'Wayzata'),
('Janoris', 'Jenkins', '1988-10-29', 'Pahokee'),
('Robert', 'Quinn', '1990-05-18', 'Ladson'),
('Alec', 'Ogletree', '1991-09-25', 'Newnan'),
('Tavon', 'Austin', '1990-03-15', 'Baltimore'),
('Zac', 'Stacy', '1991-04-09', 'Centreville'),
('Stedman', 'Bailey', '1990-11-11', 'Miramar'),
('Jared', 'Cook', '1987-04-07', 'Suwanee'),
('Rodger', 'Saffold', '1988-06-06', 'Bedford'),
('Scott', 'Wells', '1981-01-07', 'Spring Hill'),
('Jake', 'Long', '1985-05-09', 'Lapeer'),
('Joe', 'Barksdale', '1988-01-04', 'Detroit'),
('Shaun', 'Hill', '1990-01-09', 'Parsons'),
('Tre', 'Mason', '1993-08-06', 'Lake Worth'),
('Kenny', 'Britt', '1988-09-19', 'Bayonne'),
('Brian', 'Quick', '1989-06-05', 'Columbia'),
('Lance', 'Kendricks', '1988-01-30', 'Milwaukee'),
('Greg', 'Robinson', '1992-10-21', 'Thibodaux'),
('Davin', 'Joseph', '1983-11-22', 'Hallandale Beach'),
('Tim', 'Barnes', '1988-05-14', 'Longwood'),
('Case', 'Keenum', '1988-02-17', 'Abilene'),
('Todd', 'Gurley', '1994-08-03', 'Baltimore'),
('Brandin', 'Cooks', '1993-09-25', 'Stockton'),
('Pharoh', 'Cooper', '1995-03-07', 'Havelock'),
('Andrew', 'Donnal', '1992-03-03', 'Monroe'),
('Jamon', 'Brown', '1993-03-15', 'Louisville'),
('Cody', 'Wickmann', '1992-03-15', 'Hales Corners'),
('Sean', 'Mannion', '1992-04-25', 'Pleasanton'),
('Benny', 'Cunningham', '1990-07-07', 'Nashville'),
('Bradley', 'Marquez', '1992-12-14', 'Odessa'),
('Mike', 'Thomas', '1994-08-16', 'Chicago'),
('Temarrick', 'Hemingway', '1993-07-30', 'Loris'),
('Pace', 'Murphy', '1993-07-17', 'Bossier City'),
('Garrett', 'Reynolds', '1987-07-01', 'Knoxville'),
('Demetrius', 'Rhaney', '1992-02-22', 'Fort Lauderdale'),
('Aaron', 'Green', '1992-10-15', 'San Antonio'),
('Paul', 'McRoberts', '1993-01-07', 'St. Louis'),
('Marquez', 'North', '1995-03-09', 'Charlotte'),
('Nelson', 'Spruce', '1992-12-15', 'Westlake Village'),
('Cody', 'Davis', '1989-06-06', 'Stephenville'),
('E.J.', 'Gaines', '1992-02-23', 'Independence'),
('Dominique', 'Easley', '1992-02-24', 'Staten Island'),
('Ethan', 'Westbrooks', '1991-11-15', 'Oakland'),
('Matt', 'Longacre', '1991-11-21', 'Omaha'),
('Cory', 'Harkey', '1990-06-17', 'Chino Hills'),
('Lance', 'Dunbar', '1990-01-25', 'New Orleans'),
('Josh', 'Forrest', '1992-12-10', 'Paducah'),
('Mike', 'Purcell', '1991-04-20', 'Highlands Ranch'),
('Alex', 'Kozan', '1993-11-05', 'Castle Rock'),
('Kevin', 'Peterson', '1993-05-22', 'Oklahoma City'),
('Carlos', 'Thompson', '1992-02-05', 'Hollandale'),
('Louis', 'Trinca-Pasat', '1992-08-07', 'Chicago'),
('Brandon', 'Chubb', '1993-10-01', 'Stone Mountain'),
('Ian', 'Seau', '1993-12-05', 'San Diego'),
('Nicolas', 'Grigsby', '1992-06-08', 'Los Angeles'),
('Dylan', 'Thompson', '1991-10-25', 'Boiling Springs'),
('Malcolm', 'Mitchell', '1993-07-20', 'Valdosta'),
('Devin', 'Lucien', '1993-02-26', 'Encino'),
('D.J.', 'Foster', '1993-11-22', 'Scottsdale'),
('James', 'White', '1992-02-03', 'Fort Lauderdale'),
('Chris', 'Hogan', '1988-10-24', 'Wyckoff'),
('Julian', 'Edelman', '1986-05-22', 'Redwood City'),
('Danny', 'Amendola', '1985-11-02', 'The Woodlands'),
('Rob', 'Gronkowski', '1989-05-14', 'Amherst'),
('Martellus', 'Bennett', '1987-03-10', 'San Diego'),
('Nate', 'Solder', '1988-04-12', 'Denver'),
('Joe', 'Thuney', '1992-11-16', 'Centerville'),
('David', 'Andrews', '1992-07-10', 'Johns Creek'),
('Shaq', 'Mason', '1993-08-28', 'Columbia'),
('Marcus', 'Cannon', '1988-05-06', 'Odessa'),
('Jimmy', 'Garoppolo', '1991-11-02', 'Arlington Heights'),
('LeGarrette', 'Blount', '1986-12-05', 'Perry'),
('Dion', 'Lewis', '1990-09-27', 'Albany'),
('Brandon', 'Bolden', '1990-01-26', 'Baton Rouge');





INSERT INTO registration (start_date, end_date, position, team_id, player_id) VALUES
-- Current registrations
('2019-08-01', '2025-07-31', 'QUARTERBACK', 1, 1),
('2020-09-01', '2026-08-31', 'RUNNING_BACK', 1, 2),
('2021-10-01', '2027-09-30', 'FULLBACK', 1, 3),
('2022-11-01', '2028-10-31', 'WIDE_RECEIVER', 1, 4),
('2023-12-01', '2029-11-30', 'TIGHT_END', 1, 5),
('2019-01-01', '2025-12-31', 'OFFENSIVE_TACKLE', 1, 6),
('2020-02-01', '2026-01-31', 'OFFENSIVE_GUARD', 1, 7),
('2021-03-01', '2027-02-28', 'CENTER', 1, 8),
('2022-04-01', '2028-03-31', 'DEFENSIVE_END', 1, 9),
('2023-05-01', '2029-04-30', 'DEFENSIVE_TACKLE', 1, 10),
('2019-06-01', '2025-05-31', 'NOSE_TACKLE', 1, 11),
('2020-07-01', '2026-06-30', 'LINEBACKER', 1, 12),
('2021-08-01', '2027-07-31', 'CORNERBACK', 1, 13),
('2022-09-01', '2028-08-31', 'SAFETY', 1, 14),
('2023-10-01', '2029-09-30', 'KICKER', 1, 15),
('2019-11-01', '2025-10-31', 'PUNTER', 1, 16),
('2020-12-01', '2026-11-30', 'LONG_SNAPPER', 1, 17),
('2021-01-01', '2027-12-31', 'HOLDER', 1, 18),
('2022-02-01', '2028-01-31', 'KICK_RETURNER', 1, 19),
('2023-03-01', '2029-02-28', 'PUNT_RETURNER', 1, 20),
('2019-07-01', '2025-06-30', 'QUARTERBACK', 2, 21),
('2020-08-01', '2026-07-31', 'RUNNING_BACK', 2, 22),
('2021-09-01', '2027-08-31', 'FULLBACK', 2, 23),
('2022-10-01', '2028-09-30', 'WIDE_RECEIVER', 2, 24),
('2023-11-01', '2029-10-31', 'TIGHT_END', 2, 25),
('2019-12-01', '2025-11-30', 'OFFENSIVE_TACKLE', 2, 26),
('2020-01-01', '2026-12-31', 'OFFENSIVE_GUARD', 2, 27),
('2021-02-01', '2027-01-31', 'CENTER', 2, 28),
('2022-03-01', '2028-02-29', 'DEFENSIVE_END', 2, 29),
('2023-04-01', '2029-03-31', 'DEFENSIVE_TACKLE', 2, 30),
('2019-05-01', '2025-04-30', 'NOSE_TACKLE', 2, 31),
('2020-06-01', '2026-05-31', 'LINEBACKER', 2, 32),
('2021-07-01', '2027-06-30', 'CORNERBACK', 2, 33),
('2022-08-01', '2028-07-31', 'SAFETY', 2, 34),
('2023-09-01', '2029-08-31', 'KICKER', 2, 35),
('2019-10-01', '2025-09-30', 'PUNTER', 2, 36),
('2020-11-01', '2026-10-31', 'LONG_SNAPPER', 2, 37),
('2021-12-01', '2027-11-30', 'HOLDER', 2, 38),
('2022-01-01', '2028-12-31', 'KICK_RETURNER', 2, 39),
('2023-02-01', '2029-01-31', 'PUNT_RETURNER', 2, 40),
('2019-06-01', '2025-05-31', 'QUARTERBACK', 3, 41),
('2020-07-01', '2026-06-30', 'RUNNING_BACK', 3, 42),
('2021-08-01', '2027-07-31', 'FULLBACK', 3, 43),
('2022-09-01', '2028-08-31', 'WIDE_RECEIVER', 3, 44),
('2023-10-01', '2029-09-30', 'TIGHT_END', 3, 45),
('2019-11-01', '2025-10-31', 'OFFENSIVE_TACKLE', 3, 46),
('2020-12-01', '2026-11-30', 'OFFENSIVE_GUARD', 3, 47),
('2021-01-01', '2027-12-31', 'CENTER', 3, 48),
('2022-02-01', '2028-01-31', 'DEFENSIVE_END', 3, 49),
('2023-03-01', '2029-02-28', 'DEFENSIVE_TACKLE', 3, 50),
('2019-04-01', '2025-03-31', 'NOSE_TACKLE', 3, 51),
('2020-05-01', '2026-04-30', 'LINEBACKER', 3, 52),
('2021-06-01', '2027-05-31', 'CORNERBACK', 3, 53),
('2022-07-01', '2028-06-30', 'SAFETY', 3, 54),
('2023-08-01', '2029-07-31', 'KICKER', 3, 55),
('2019-09-01', '2025-08-31', 'PUNTER', 3, 56),
('2020-10-01', '2026-09-30', 'LONG_SNAPPER', 3, 57),
('2021-11-01', '2027-10-31', 'HOLDER', 3, 58),
('2022-12-01', '2028-11-30', 'KICK_RETURNER', 3, 59),
('2023-01-01', '2029-12-31', 'PUNT_RETURNER', 3, 60),
('2019-05-01', '2025-04-30', 'QUARTERBACK', 4, 61),
('2020-06-01', '2026-05-31', 'RUNNING_BACK', 4, 62),
('2021-07-01', '2027-06-30', 'FULLBACK', 4, 63),
('2022-08-01', '2028-07-31', 'WIDE_RECEIVER', 4, 64),
('2023-09-01', '2029-08-31', 'TIGHT_END', 4, 65),
('2019-10-01', '2025-09-30', 'OFFENSIVE_TACKLE', 4, 66),
('2020-11-01', '2026-10-31', 'OFFENSIVE_GUARD', 4, 67),
('2021-12-01', '2027-11-30', 'CENTER', 4, 68),
('2022-01-01', '2028-12-31', 'DEFENSIVE_END', 4, 69),
('2023-02-01', '2029-01-31', 'DEFENSIVE_TACKLE', 4, 70),
('2019-03-01', '2025-02-28', 'NOSE_TACKLE', 4, 71),
('2020-04-01', '2026-03-31', 'LINEBACKER', 4, 72),
('2022-06-01', '2028-05-31', 'CORNERBACK', 4, 73),
('2023-07-01', '2029-06-30', 'SAFETY', 4, 74),
('2019-08-01', '2025-07-31', 'KICKER', 4, 75),
('2020-09-01', '2026-08-31', 'PUNTER', 4, 76),
('2021-10-01', '2027-09-30', 'LONG_SNAPPER', 4, 77),
('2022-11-01', '2028-10-31', 'HOLDER', 4, 78),
('2023-12-01', '2029-11-30', 'KICK_RETURNER', 4, 79),
('2019-01-01', '2025-12-31', 'PUNT_RETURNER', 4, 80),
('2019-04-01', '2025-03-31', 'QUARTERBACK', 5, 81),
('2020-05-01', '2026-04-30', 'RUNNING_BACK', 5, 82),
('2021-06-01', '2027-05-31', 'FULLBACK', 5, 83),
('2022-07-01', '2028-06-30', 'WIDE_RECEIVER', 5, 84),
('2023-08-01', '2029-07-31', 'TIGHT_END', 5, 85),
('2019-09-01', '2025-08-31', 'OFFENSIVE_TACKLE', 5, 86),
('2020-10-01', '2026-09-30', 'OFFENSIVE_GUARD', 5, 87),
('2021-11-01', '2027-10-31', 'CENTER', 5, 88),
('2022-12-01', '2028-11-30', 'DEFENSIVE_END', 5, 89),
('2023-01-01', '2029-12-31', 'DEFENSIVE_TACKLE', 5, 90),
('2019-02-01', '2025-01-31', 'NOSE_TACKLE', 5, 91),
('2020-03-01', '2025-02-24', 'LINEBACKER', 5, 92),
('2021-04-01', '2027-03-31', 'CORNERBACK', 5, 93),
('2022-05-01', '2028-04-30', 'SAFETY', 5, 94),
('2023-06-01', '2029-05-31', 'KICKER', 5, 95),
('2019-07-01', '2025-06-30', 'PUNTER', 5, 96),
('2020-08-01', '2026-07-31', 'LONG_SNAPPER', 5, 97),
('2021-09-01', '2027-08-31', 'HOLDER', 5, 98),
('2022-10-01', '2028-09-30', 'KICK_RETURNER', 5, 99),
('2023-11-01', '2029-10-31', 'PUNT_RETURNER', 5, 100),
('2019-03-01', '2025-02-28', 'QUARTERBACK', 6, 101),
('2020-04-01', '2026-03-31', 'RUNNING_BACK', 6, 102),
('2021-05-01', '2027-04-30', 'FULLBACK', 6, 103),
('2022-06-01', '2028-05-31', 'WIDE_RECEIVER', 6, 104),
('2023-07-01', '2029-06-30', 'TIGHT_END', 6, 105),
('2019-08-01', '2025-07-31', 'OFFENSIVE_TACKLE', 6, 106),
('2020-09-01', '2026-08-31', 'OFFENSIVE_GUARD', 6, 107),
('2021-10-01', '2027-09-30', 'CENTER', 6, 108),
('2022-11-01', '2028-10-31', 'DEFENSIVE_END', 6, 109),
('2023-12-01', '2029-11-30', 'DEFENSIVE_TACKLE', 6, 110),
('2019-01-01', '2025-12-31', 'NOSE_TACKLE', 6, 111),
('2020-02-01', '2026-01-31', 'LINEBACKER', 6, 112),
('2021-03-01', '2027-02-28', 'CORNERBACK', 6, 113),
('2022-04-01', '2028-03-31', 'SAFETY', 6, 114),
('2023-05-01', '2029-04-30', 'KICKER', 6, 115),
('2019-06-01', '2025-05-31', 'PUNTER', 6, 116),
('2020-07-01', '2026-06-30', 'LONG_SNAPPER', 6, 117),
('2021-08-01', '2027-07-31', 'HOLDER', 6, 118),
('2022-09-01', '2028-08-31', 'KICK_RETURNER', 6, 119),
('2023-10-01', '2029-09-30', 'PUNT_RETURNER', 6, 120),
('2019-02-01', '2025-01-31', 'QUARTERBACK', 7, 121),
('2020-03-01', '2026-02-10', 'RUNNING_BACK', 7, 122),
('2021-04-01', '2027-03-31', 'FULLBACK', 7, 123),
('2022-05-01', '2028-04-30', 'WIDE_RECEIVER', 7, 124),
('2023-06-01', '2029-05-31', 'TIGHT_END', 7, 125),
('2019-07-01', '2025-06-30', 'OFFENSIVE_TACKLE', 7, 126),
('2020-08-01', '2026-07-31', 'OFFENSIVE_GUARD', 7, 127),
('2021-09-01', '2027-08-31', 'CENTER', 7, 128),
('2022-10-01', '2028-09-30', 'DEFENSIVE_END', 7, 129),
('2023-11-01', '2029-10-31', 'DEFENSIVE_TACKLE', 7, 130),
('2019-12-01', '2025-11-30', 'NOSE_TACKLE', 7, 131),
('2020-01-01', '2026-12-31', 'LINEBACKER', 7, 132),
('2021-02-01', '2027-01-31', 'CORNERBACK', 7, 133),
('2022-03-01', '2028-02-29', 'SAFETY', 7, 134),
('2023-04-01', '2029-03-31', 'KICKER', 7, 135),
('2019-05-01', '2025-04-30', 'PUNTER', 7, 136),
('2020-06-01', '2026-05-31', 'LONG_SNAPPER', 7, 137),
('2021-07-01', '2027-06-30', 'HOLDER', 7, 138),
('2022-08-01', '2028-07-31', 'KICK_RETURNER', 7, 139),
('2023-09-01', '2029-08-31', 'PUNT_RETURNER', 7, 140),
('2019-01-01', '2025-12-31', 'QUARTERBACK', 8, 141),
('2020-02-01', '2026-01-31', 'RUNNING_BACK', 8, 142),
('2021-03-01', '2027-02-28', 'FULLBACK', 8, 143),
('2022-04-01', '2028-03-31', 'WIDE_RECEIVER', 8, 144),
('2023-05-01', '2029-04-30', 'TIGHT_END', 8, 145),
('2023-07-01', '2029-06-30', 'OFFENSIVE_TACKLE', 8, 146),
('2019-08-01', '2025-07-31', 'OFFENSIVE_GUARD', 8, 147),
('2020-09-01', '2026-08-31', 'CENTER', 8, 148),
('2021-10-01', '2027-09-30', 'DEFENSIVE_END', 8, 149),
('2022-11-01', '2028-10-31', 'DEFENSIVE_TACKLE', 8, 150),
('2023-12-01', '2029-11-30', 'NOSE_TACKLE', 8, 151),
('2019-01-01', '2025-12-31', 'LINEBACKER', 8, 152),
('2020-02-01', '2026-01-31', 'CORNERBACK', 8, 153),
('2021-03-01', '2027-02-28', 'SAFETY', 8, 154),
('2022-04-01', '2028-03-31', 'KICKER', 8, 155),
('2023-05-01', '2029-04-30', 'PUNTER', 8, 156),
('2019-06-01', '2025-05-31', 'LONG_SNAPPER', 8, 157),
('2020-07-01', '2026-06-30', 'HOLDER', 8, 158),
('2021-08-01', '2027-07-31', 'KICK_RETURNER', 8, 159),
('2022-09-01', '2028-08-31', 'PUNT_RETURNER', 8, 160),
('2019-02-01', '2025-01-31', 'QUARTERBACK', 9, 161),
('2020-03-01', '2025-02-12', 'RUNNING_BACK', 9, 162),
('2021-04-01', '2027-03-31', 'FULLBACK', 9, 163),
('2022-05-01', '2028-04-30', 'WIDE_RECEIVER', 9, 164),
('2023-06-01', '2029-05-31', 'TIGHT_END', 9, 165),
('2019-07-01', '2025-06-30', 'OFFENSIVE_TACKLE', 9, 166),
('2020-08-01', '2026-07-31', 'OFFENSIVE_GUARD', 9, 167),
('2021-09-01', '2027-08-31', 'CENTER', 9, 168),
('2022-10-01', '2028-09-30', 'DEFENSIVE_END', 9, 169),
('2023-11-01', '2029-10-31', 'DEFENSIVE_TACKLE', 9, 170),
('2019-12-01', '2025-11-30', 'NOSE_TACKLE', 9, 171),
('2020-01-01', '2026-12-31', 'LINEBACKER', 9, 172),
('2021-02-01', '2027-01-31', 'CORNERBACK', 9, 173),
('2022-03-01', '2028-02-29', 'SAFETY', 9, 174),
('2023-04-01', '2029-03-31', 'KICKER', 9, 175),
('2019-05-01', '2025-04-30', 'PUNTER', 9, 176),
('2020-06-01', '2026-05-31', 'LONG_SNAPPER', 9, 177),
('2021-07-01', '2027-06-30', 'HOLDER', 9, 178),
('2022-08-01', '2028-07-31', 'KICK_RETURNER', 9, 179),
('2023-09-01', '2029-08-31', 'PUNT_RETURNER', 9, 180),
('2019-03-01', '2025-02-28', 'QUARTERBACK', 10, 181),
('2020-04-01', '2026-03-31', 'RUNNING_BACK', 10, 182),
('2021-05-01', '2027-04-30', 'FULLBACK', 10, 183),
('2022-06-01', '2028-05-31', 'WIDE_RECEIVER', 10, 184),
('2023-07-01', '2029-06-30', 'TIGHT_END', 10, 185),
('2019-08-01', '2025-07-31', 'OFFENSIVE_TACKLE', 10, 186),
('2020-09-01', '2026-08-31', 'OFFENSIVE_GUARD', 10, 187),
('2021-10-01', '2027-09-30', 'CENTER', 10, 188),
('2022-11-01', '2028-10-31', 'DEFENSIVE_END', 10, 189),
('2023-12-01', '2029-11-30', 'DEFENSIVE_TACKLE', 10, 190),
('2019-01-01', '2025-12-31', 'NOSE_TACKLE', 10, 191),
('2020-02-01', '2026-01-31', 'LINEBACKER', 10, 192),
('2021-03-01', '2027-02-28', 'CORNERBACK', 10, 193),
('2022-04-01', '2028-03-31', 'SAFETY', 10, 194),
('2023-05-01', '2029-04-30', 'KICKER', 10, 195),
('2019-06-01', '2025-05-31', 'PUNTER', 10, 196),
('2020-07-01', '2026-06-30', 'LONG_SNAPPER', 10, 197),
('2021-08-01', '2027-07-31', 'HOLDER', 10, 198),
('2022-09-01', '2028-08-31', 'KICK_RETURNER', 10, 199),
('2023-10-01', '2029-09-30', 'PUNT_RETURNER', 10, 200),

-- earlier registrations

('2014-07-01', '2019-06-30', 'QUARTERBACK', 3, 1),
('2014-08-01', '2019-07-31', 'FULLBACK', 6, 2),
('2016-09-01', '2021-08-31', 'WIDE_RECEIVER', 4, 3),
('2017-10-01', '2022-09-30', 'TIGHT_END', 7, 4),
('2018-11-01', '2023-08-31', 'OFFENSIVE_TACKLE', 8, 5),
('2014-12-01', '2019-11-30', 'OFFENSIVE_GUARD', 9, 6),
('2015-01-01', '2020-12-31', 'CENTER', 10, 7),
('2016-02-01', '2021-01-31', 'DEFENSIVE_END', 2, 8),
('2017-03-01', '2022-02-28', 'DEFENSIVE_TACKLE', 5, 9),
('2018-04-01', '2023-03-31', 'NOSE_TACKLE', 1, 10),
('2014-05-01', '2019-04-30', 'LINEBACKER', 3, 11),
('2015-06-01', '2020-05-31', 'CORNERBACK', 6, 12),
('2016-07-01', '2021-06-30', 'SAFETY', 4, 13),
('2017-08-01', '2022-07-31', 'KICKER', 7, 14),
('2018-09-01', '2023-08-31', 'PUNTER', 8, 15),
('2014-10-01', '2019-09-30', 'LONG_SNAPPER', 9, 16),
('2015-11-01', '2020-10-31', 'HOLDER', 10, 17),
('2016-12-01', '2021-11-30', 'KICK_RETURNER', 2, 18),
('2017-01-01', '2022-12-31', 'PUNT_RETURNER', 5, 19),
('2018-02-01', '2023-01-31', 'QUARTERBACK', 1, 20),
('2014-07-01', '2019-06-30', 'RUNNING_BACK', 3, 21),
('2015-08-01', '2020-07-31', 'FULLBACK', 6, 22),
('2016-09-01', '2021-08-31', 'WIDE_RECEIVER', 4, 23),
('2017-10-01', '2022-09-30', 'TIGHT_END', 7, 24),
('2018-11-01', '2023-10-31', 'OFFENSIVE_TACKLE', 8, 25),
('2014-12-01', '2019-11-30', 'OFFENSIVE_GUARD', 9, 26),
('2015-01-01', '2020-12-31', 'CENTER', 10, 27),
('2016-02-01', '2021-01-31', 'DEFENSIVE_END', 2, 28),
('2017-03-01', '2022-02-28', 'DEFENSIVE_TACKLE', 5, 29),
('2018-04-01', '2023-03-31', 'NOSE_TACKLE', 1, 30),
('2014-05-01', '2019-04-30', 'LINEBACKER', 3, 31),
('2015-06-01', '2020-05-31', 'CORNERBACK', 6, 32),
('2016-07-01', '2021-06-30', 'SAFETY', 4, 33),
('2017-08-01', '2022-07-31', 'KICKER', 7, 34),
('2018-09-01', '2023-08-31', 'PUNTER', 8, 35),
('2014-10-01', '2019-09-30', 'LONG_SNAPPER', 9, 36),
('2015-11-01', '2020-10-31', 'HOLDER', 10, 37),
('2016-12-01', '2021-11-30', 'KICK_RETURNER', 2, 38),
('2017-01-01', '2022-12-31', 'PUNT_RETURNER', 5, 39),
('2018-02-01', '2023-01-31', 'RUNNING_BACK', 1, 40),
('2014-07-01', '2019-06-30', 'FULLBACK', 3, 41),
('2015-08-01', '2020-07-31', 'WIDE_RECEIVER', 6, 42),
('2016-09-01', '2021-08-31', 'TIGHT_END', 4, 43),
('2017-10-01', '2022-09-30', 'OFFENSIVE_TACKLE', 7, 44),
('2018-11-01', '2023-10-31', 'OFFENSIVE_GUARD', 8, 45),
('2014-12-01', '2019-11-30', 'CENTER', 9, 46),
('2015-01-01', '2020-12-31', 'DEFENSIVE_END', 10, 47),
('2016-02-01', '2021-01-31', 'DEFENSIVE_TACKLE', 2, 48),
('2017-03-01', '2022-02-28', 'NOSE_TACKLE', 5, 49),
('2018-04-01', '2023-03-31', 'LINEBACKER', 1, 50),
('2014-05-01', '2019-04-30', 'CORNERBACK', 3, 51),
('2015-06-01', '2020-05-31', 'SAFETY', 6, 52),
('2016-07-01', '2021-06-30', 'KICKER', 4, 53),
('2017-08-01', '2022-07-31', 'PUNTER', 7, 54),
('2018-09-01', '2023-08-31', 'LONG_SNAPPER', 8, 55),
('2014-10-01', '2019-09-30', 'HOLDER', 9, 56),
('2015-11-01', '2020-10-31', 'KICK_RETURNER', 10, 57),
('2016-12-01', '2021-11-30', 'PUNT_RETURNER', 2, 58),
('2017-01-01', '2022-12-31', 'QUARTERBACK', 5, 59),
('2018-02-01', '2023-01-31', 'FULLBACK', 1, 60),
('2014-07-01', '2019-06-30', 'WIDE_RECEIVER', 3, 61),
('2015-08-01', '2020-07-31', 'TIGHT_END', 6, 62),
('2016-09-01', '2021-08-31', 'OFFENSIVE_TACKLE', 4, 63),
('2017-10-01', '2022-09-30', 'OFFENSIVE_GUARD', 7, 64),
('2018-11-01', '2023-10-31', 'CENTER', 8, 65),
('2014-12-01', '2019-11-30', 'DEFENSIVE_END', 9, 66),
('2015-01-01', '2020-12-31', 'DEFENSIVE_TACKLE', 10, 67),
('2016-02-01', '2021-01-31', 'NOSE_TACKLE', 2, 68),
('2017-03-01', '2022-02-28', 'LINEBACKER', 5, 69),
('2018-04-01', '2023-03-31', 'CORNERBACK', 1, 70),
('2014-05-01', '2019-04-30', 'SAFETY', 3, 71),
('2015-06-01', '2020-05-31', 'KICKER', 6, 72),
('2016-07-01', '2021-06-30', 'PUNTER', 4, 73),
('2017-08-01', '2022-07-31', 'LONG_SNAPPER', 7, 74),
('2018-09-01', '2021-08-31', 'HOLDER', 8, 75),
('2014-10-01', '2019-09-30', 'KICK_RETURNER', 9, 76),
('2015-11-01', '2020-10-31', 'PUNT_RETURNER', 10, 77),
('2016-12-01', '2021-11-30', 'QUARTERBACK', 2, 78),
('2017-01-01', '2022-12-31', 'RUNNING_BACK', 5, 79),
('2018-02-01', '2021-01-31', 'FULLBACK', 1, 80),
('2014-07-01', '2019-06-30', 'WIDE_RECEIVER', 3, 81),
('2015-08-01', '2020-07-31', 'TIGHT_END', 6, 82),
('2016-09-01', '2021-08-31', 'OFFENSIVE_TACKLE', 4, 83),
('2017-10-01', '2022-09-30', 'OFFENSIVE_GUARD', 7, 84),
('2018-11-01', '2022-10-31', 'CENTER', 8, 85),
('2014-12-01', '2019-11-30', 'DEFENSIVE_END', 9, 86),
('2015-01-01', '2020-12-31', 'DEFENSIVE_TACKLE', 10, 87),
('2016-02-01', '2021-01-31', 'NOSE_TACKLE', 2, 88),
('2017-03-01', '2022-02-28', 'LINEBACKER', 5, 89),
('2018-04-01', '2022-03-31', 'CORNERBACK', 1, 90),
('2014-05-01', '2019-04-30', 'SAFETY', 3, 91),
('2015-06-01', '2020-05-31', 'KICKER', 6, 92),
('2016-07-01', '2021-06-30', 'PUNTER', 4, 93),
('2017-08-01', '2022-07-31', 'LONG_SNAPPER', 7, 94),
('2018-09-01', '2022-08-31', 'HOLDER', 8, 95),
('2014-10-01', '2019-09-30', 'KICK_RETURNER', 9, 96),
('2015-11-01', '2020-10-31', 'PUNT_RETURNER', 10, 97),
('2016-12-01', '2021-11-30', 'QUARTERBACK', 2, 98),
('2017-01-01', '2022-12-31', 'RUNNING_BACK', 5, 99),
('2018-02-01', '2021-01-31', 'FULLBACK', 1, 100),
('2014-07-01', '2019-06-30', 'WIDE_RECEIVER', 3, 101),
('2015-08-01', '2020-07-31', 'TIGHT_END', 6, 102),
('2016-09-01', '2021-08-31', 'OFFENSIVE_TACKLE', 4, 103),
('2017-10-01', '2022-09-30', 'OFFENSIVE_GUARD', 7, 104),
('2018-11-01', '2023-10-31', 'CENTER', 8, 105),
('2014-12-01', '2019-11-30', 'DEFENSIVE_END', 9, 106),
('2015-01-01', '2020-12-31', 'DEFENSIVE_TACKLE', 10, 107),
('2016-02-01', '2021-01-31', 'NOSE_TACKLE', 2, 108),
('2017-03-01', '2022-02-28', 'LINEBACKER', 5, 109),
('2018-04-01', '2023-03-31', 'CORNERBACK', 1, 110),
('2014-05-01', '2019-04-30', 'SAFETY', 3, 111),
('2015-06-01', '2020-05-31', 'KICKER', 6, 112),
('2016-07-01', '2021-06-30', 'PUNTER', 4, 113),
('2017-08-01', '2022-07-31', 'LONG_SNAPPER', 7, 114),
('2018-09-01', '2023-08-31', 'HOLDER', 8, 115),
('2014-10-01', '2019-09-30', 'KICK_RETURNER', 9, 116),
('2015-11-01', '2020-10-31', 'PUNT_RETURNER', 10, 117),
('2016-12-01', '2021-11-30', 'QUARTERBACK', 2, 118),
('2017-01-01', '2022-12-31', 'RUNNING_BACK', 5, 119),
('2018-02-01', '2021-01-31', 'FULLBACK', 1, 120),
('2014-07-01', '2019-06-30', 'WIDE_RECEIVER', 3, 121),
('2015-08-01', '2020-07-31', 'TIGHT_END', 6, 122),
('2016-09-01', '2021-08-31', 'OFFENSIVE_TACKLE', 4, 123),
('2017-10-01', '2022-09-30', 'OFFENSIVE_GUARD', 7, 124),
('2018-11-01', '2022-10-31', 'CENTER', 8, 125),
('2014-12-01', '2019-11-30', 'DEFENSIVE_END', 9, 126),
('2015-01-01', '2020-12-31', 'DEFENSIVE_TACKLE', 10, 127),
('2016-02-01', '2021-01-31', 'NOSE_TACKLE', 2, 128),
('2017-03-01', '2022-02-28', 'LINEBACKER', 5, 129),
('2018-04-01', '2022-03-31', 'CORNERBACK', 1, 130),
('2014-05-01', '2019-04-30', 'SAFETY', 3, 131),
('2015-06-01', '2020-05-31', 'KICKER', 6, 132),
('2016-07-01', '2021-06-30', 'PUNTER', 4, 133),
('2017-08-01', '2022-07-31', 'LONG_SNAPPER', 7, 134),
('2018-09-01', '2022-08-31', 'HOLDER', 8, 135),
('2014-10-01', '2019-09-30', 'KICK_RETURNER', 9, 136),
('2015-11-01', '2020-10-31', 'PUNT_RETURNER', 10, 137),
('2016-12-01', '2021-11-30', 'QUARTERBACK', 2, 138),
('2017-01-01', '2022-12-31', 'RUNNING_BACK', 5, 139),
('2018-02-01', '2021-01-31', 'FULLBACK', 1, 140),
('2014-07-01', '2019-06-30', 'WIDE_RECEIVER', 3, 141),
('2015-08-01', '2020-07-31', 'TIGHT_END', 6, 142),
('2016-09-01', '2021-08-31', 'OFFENSIVE_TACKLE', 4, 143),
('2017-10-01', '2022-09-30', 'OFFENSIVE_GUARD', 7, 144),
('2018-11-01', '2021-10-31', 'CENTER', 8, 145),
('2014-12-01', '2019-11-30', 'DEFENSIVE_END', 9, 146),
('2015-01-01', '2020-12-31', 'DEFENSIVE_TACKLE', 10, 147),
('2016-02-01', '2021-01-31', 'NOSE_TACKLE', 2, 148),
('2017-03-01', '2022-02-28', 'LINEBACKER', 5, 149),
('2018-04-01', '2022-03-31', 'CORNERBACK', 1, 150),

-- earlier registrations
('2010-07-01', '2014-06-30', 'QUARTERBACK', 5, 1),
('2010-08-01', '2014-07-31', 'FULLBACK', 2, 2),
('2012-09-01', '2016-08-31', 'WIDE_RECEIVER', 7, 3),
('2013-10-01', '2017-09-30', 'TIGHT_END', 1, 4),
('2014-11-01', '2018-10-31', 'OFFENSIVE_TACKLE', 3, 5),
('2010-12-01', '2014-11-30', 'OFFENSIVE_GUARD', 4, 6),
('2011-01-01', '2015-12-31', 'CENTER', 6, 7),
('2012-02-01', '2016-01-31', 'DEFENSIVE_END', 8, 8),
('2013-03-01', '2017-02-28', 'DEFENSIVE_TACKLE', 9, 9),
('2014-04-01', '2018-03-31', 'NOSE_TACKLE', 10, 10),
('2010-05-01', '2014-04-30', 'LINEBACKER', 5, 11),
('2011-06-01', '2015-05-31', 'CORNERBACK', 2, 12),
('2012-07-01', '2016-06-30', 'SAFETY', 7, 13),
('2013-08-01', '2017-07-31', 'KICKER', 1, 14),
('2014-09-01', '2018-08-31', 'PUNTER', 3, 15),
('2010-10-01', '2014-09-30', 'LONG_SNAPPER', 4, 16),
('2011-11-01', '2015-10-31', 'HOLDER', 6, 17),
('2012-12-01', '2016-11-30', 'KICK_RETURNER', 8, 18),
('2013-01-01', '2017-12-31', 'PUNT_RETURNER', 9, 19),
('2014-02-01', '2018-01-31', 'QUARTERBACK', 10, 20),
('2010-07-01', '2014-06-30', 'RUNNING_BACK', 5, 21),
('2011-08-01', '2015-07-31', 'FULLBACK', 2, 22),
('2012-09-01', '2016-08-31', 'WIDE_RECEIVER', 7, 23),
('2013-10-01', '2017-09-30', 'TIGHT_END', 1, 24),
('2014-11-01', '2018-10-31', 'OFFENSIVE_TACKLE', 3, 25),
('2010-12-01', '2014-11-30', 'OFFENSIVE_GUARD', 4, 26),
('2011-01-01', '2015-12-31', 'CENTER', 6, 27),
('2012-02-01', '2016-01-31', 'DEFENSIVE_END', 8, 28),
('2013-03-01', '2017-02-28', 'DEFENSIVE_TACKLE', 9, 29),
('2014-04-01', '2018-03-31', 'NOSE_TACKLE', 10, 30),
('2010-05-01', '2014-04-30', 'LINEBACKER', 5, 31),
('2011-06-01', '2015-05-31', 'CORNERBACK', 2, 32),
('2012-07-01', '2016-06-30', 'SAFETY', 7, 33),
('2013-08-01', '2017-07-31', 'KICKER', 1, 34),
('2014-09-01', '2018-08-31', 'PUNTER', 3, 35),
('2010-10-01', '2014-09-30', 'LONG_SNAPPER', 4, 36),
('2011-11-01', '2015-10-31', 'HOLDER', 6, 37),
('2012-12-01', '2016-11-30', 'KICK_RETURNER', 8, 38),
('2013-01-01', '2017-12-31', 'PUNT_RETURNER', 9, 39),
('2014-02-01', '2018-01-31', 'RUNNING_BACK', 10, 40),
('2010-07-01', '2014-06-30', 'FULLBACK', 5, 41),
('2011-08-01', '2015-07-31', 'WIDE_RECEIVER', 2, 42),
('2012-09-01', '2016-08-31', 'TIGHT_END', 7, 43),
('2013-10-01', '2017-09-30', 'OFFENSIVE_TACKLE', 1, 44),
('2014-11-01', '2018-10-31', 'OFFENSIVE_GUARD', 3, 45),
('2010-12-01', '2014-11-30', 'CENTER', 4, 46),
('2011-01-01', '2015-12-31', 'DEFENSIVE_END', 6, 47),
('2012-02-01', '2016-01-31', 'DEFENSIVE_TACKLE', 8, 48),
('2013-03-01', '2017-02-28', 'NOSE_TACKLE', 9, 49),
('2014-04-01', '2018-03-31', 'LINEBACKER', 10, 50),
('2010-05-01', '2014-04-30', 'CORNERBACK', 5, 51),
('2011-06-01', '2015-05-31', 'SAFETY', 2, 52),
('2012-07-01', '2016-06-30', 'KICKER', 7, 53),
('2013-08-01', '2017-07-31', 'PUNTER', 1, 54),
('2014-09-01', '2018-08-31', 'LONG_SNAPPER', 3, 55),
('2010-10-01', '2014-09-30', 'HOLDER', 4, 56),
('2011-11-01', '2015-10-31', 'KICK_RETURNER', 6, 57),
('2012-12-01', '2016-11-30', 'PUNT_RETURNER', 8, 58),
('2013-01-01', '2017-12-31', 'QUARTERBACK', 9, 59),
('2014-02-01', '2018-01-31', 'FULLBACK', 10, 60),
('2010-07-01', '2014-06-30', 'WIDE_RECEIVER', 5, 61),
('2011-08-01', '2015-07-31', 'TIGHT_END', 2, 62),
('2012-09-01', '2016-08-31', 'OFFENSIVE_TACKLE', 7, 63),
('2013-10-01', '2017-09-30', 'OFFENSIVE_GUARD', 1, 64),
('2014-11-01', '2018-10-31', 'CENTER', 3, 65),
('2010-12-01', '2014-11-30', 'DEFENSIVE_END', 4, 66),
('2011-01-01', '2015-12-31', 'DEFENSIVE_TACKLE', 6, 67),
('2012-02-01', '2016-01-31', 'NOSE_TACKLE', 8, 68),
('2013-03-01', '2017-02-28', 'LINEBACKER', 9, 69),
('2014-04-01', '2018-03-31', 'CORNERBACK', 10, 70),
('2010-05-01', '2014-04-30', 'SAFETY', 5, 71),
('2011-06-01', '2015-05-31', 'KICKER', 2, 72),
('2012-07-01', '2016-06-30', 'PUNTER', 7, 73),
('2013-08-01', '2017-07-31', 'LONG_SNAPPER', 1, 74),
('2014-09-01', '2018-08-31', 'HOLDER', 3, 75),
('2010-10-01', '2014-09-30', 'KICK_RETURNER', 4, 76),
('2011-11-01', '2015-10-31', 'PUNT_RETURNER', 6, 77),
('2012-12-01', '2016-11-30', 'QUARTERBACK', 8, 78),
('2013-01-01', '2017-12-31', 'RUNNING_BACK', 9, 79),
('2014-02-01', '2018-01-31', 'FULLBACK', 10, 80),
('2010-07-01', '2014-06-30', 'WIDE_RECEIVER', 5, 81),
('2011-08-01', '2015-07-31', 'TIGHT_END', 2, 82),
('2012-09-01', '2016-08-31', 'OFFENSIVE_TACKLE', 7, 83),
('2013-10-01', '2017-09-30', 'OFFENSIVE_GUARD', 1, 84),
('2014-11-01', '2018-10-31', 'CENTER', 3, 85),
('2010-12-01', '2014-11-30', 'DEFENSIVE_END', 4, 86),
('2011-01-01', '2015-12-31', 'DEFENSIVE_TACKLE', 6, 87),
('2012-02-01', '2016-01-31', 'NOSE_TACKLE', 8, 88),
('2013-03-01', '2017-02-28', 'LINEBACKER', 9, 89),
('2014-04-01', '2018-03-31', 'CORNERBACK', 10, 90),
('2010-05-01', '2014-04-30', 'SAFETY', 5, 91),
('2011-06-01', '2015-05-31', 'KICKER', 2, 92),
('2012-07-01', '2016-06-30', 'PUNTER', 7, 93),
('2013-08-01', '2017-07-31', 'LONG_SNAPPER', 1, 94),
('2014-09-01', '2018-08-31', 'HOLDER', 3, 95),
('2010-10-01', '2014-09-30', 'KICK_RETURNER', 4, 96),
('2011-11-01', '2015-10-31', 'PUNT_RETURNER', 6, 97),
('2012-12-01', '2016-11-30', 'QUARTERBACK', 8, 98),
('2013-01-01', '2017-12-31', 'RUNNING_BACK', 9, 99),
('2014-02-01', '2018-01-31', 'FULLBACK', 10, 100),

-- earlier registrations
('2006-07-01', '2010-06-30', 'QUARTERBACK', 3, 1),
('2006-08-01', '2010-07-31', 'FULLBACK', 9, 2),
('2008-09-01', '2012-08-31', 'WIDE_RECEIVER', 4, 3),
('2009-10-01', '2013-09-30', 'TIGHT_END', 6, 4),
('2010-11-01', '2014-10-31', 'OFFENSIVE_TACKLE', 8, 5),
('2006-12-01', '2010-11-30', 'OFFENSIVE_GUARD', 1, 6),
('2007-01-01', '2011-12-31', 'CENTER', 2, 7),
('2008-02-01', '2012-01-31', 'DEFENSIVE_END', 5, 8),
('2009-03-01', '2013-02-28', 'DEFENSIVE_TACKLE', 7, 9),
('2010-04-01', '2014-03-31', 'NOSE_TACKLE', 10, 10),
('2006-05-01', '2010-04-30', 'LINEBACKER', 3, 11),
('2007-06-01', '2011-05-31', 'CORNERBACK', 9, 12),
('2008-07-01', '2012-06-30', 'SAFETY', 4, 13),
('2009-08-01', '2013-07-31', 'KICKER', 6, 14),
('2010-09-01', '2014-08-31', 'PUNTER', 8, 15),
('2006-10-01', '2010-09-30', 'LONG_SNAPPER', 1, 16),
('2007-11-01', '2011-10-31', 'HOLDER', 2, 17),
('2008-12-01', '2012-11-30', 'KICK_RETURNER', 5, 18),
('2009-01-01', '2013-12-31', 'PUNT_RETURNER', 7, 19),
('2010-02-01', '2014-01-31', 'QUARTERBACK', 10, 20),
('2006-07-01', '2010-06-30', 'RUNNING_BACK', 3, 21),
('2007-08-01', '2011-07-31', 'FULLBACK', 9, 22),
('2008-09-01', '2012-08-31', 'WIDE_RECEIVER', 4, 23),
('2009-10-01', '2013-09-30', 'TIGHT_END', 6, 24),
('2010-11-01', '2014-10-31', 'OFFENSIVE_TACKLE', 8, 25),
('2006-12-01', '2010-11-30', 'OFFENSIVE_GUARD', 1, 26),
('2007-01-01', '2011-12-31', 'CENTER', 2, 27),
('2008-02-01', '2012-01-31', 'DEFENSIVE_END', 5, 28),
('2009-03-01', '2013-02-28', 'DEFENSIVE_TACKLE', 7, 29),
('2010-04-01', '2014-03-31', 'NOSE_TACKLE', 10, 30),
('2006-05-01', '2010-04-30', 'LINEBACKER', 3, 31),
('2007-06-01', '2011-05-31', 'CORNERBACK', 9, 32),
('2008-07-01', '2012-06-30', 'SAFETY', 4, 33),
('2009-08-01', '2013-07-31', 'KICKER', 6, 34),
('2010-09-01', '2014-08-31', 'PUNTER', 8, 35),
('2006-10-01', '2010-09-30', 'LONG_SNAPPER', 1, 36),
('2007-11-01', '2011-10-31', 'HOLDER', 2, 37),
('2008-12-01', '2012-11-30', 'KICK_RETURNER', 5, 38),
('2009-01-01', '2013-12-31', 'PUNT_RETURNER', 7, 39),
('2010-02-01', '2014-01-31', 'RUNNING_BACK', 10, 40),
('2006-07-01', '2010-06-30', 'FULLBACK', 3, 41),
('2007-08-01', '2011-07-31', 'WIDE_RECEIVER', 9, 42),
('2008-09-01', '2012-08-31', 'TIGHT_END', 4, 43),
('2009-10-01', '2013-09-30', 'OFFENSIVE_TACKLE', 6, 44),
('2010-11-01', '2014-10-31', 'OFFENSIVE_GUARD', 8, 45),
('2006-12-01', '2010-11-30', 'CENTER', 1, 46),
('2007-01-01', '2011-12-31', 'DEFENSIVE_END', 2, 47),
('2008-02-01', '2012-01-31', 'DEFENSIVE_TACKLE', 5, 48),
('2009-03-01', '2013-02-28', 'NOSE_TACKLE', 7, 49),
('2010-04-01', '2014-03-31', 'LINEBACKER', 10, 50),
('2006-05-01', '2010-04-30', 'CORNERBACK', 3, 51),
('2007-06-01', '2011-05-31', 'SAFETY', 9, 52),
('2008-07-01', '2012-06-30', 'KICKER', 4, 53),
('2009-08-01', '2013-07-31', 'PUNTER', 6, 54),
('2010-09-01', '2014-08-31', 'LONG_SNAPPER', 8, 55),
('2006-10-01', '2010-09-30', 'HOLDER', 1, 56),
('2007-11-01', '2011-10-31', 'KICK_RETURNER', 2, 57),
('2008-12-01', '2012-11-30', 'PUNT_RETURNER', 5, 58),
('2009-01-01', '2013-12-31', 'QUARTERBACK', 7, 59),
('2010-02-01', '2014-01-31', 'FULLBACK', 10, 60);