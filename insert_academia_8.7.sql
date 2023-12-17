-- Generate fake data for the 'domain' table
INSERT INTO domain (domain_id, program, batch, capacity, qualification)
VALUES
    (1, 'CSE', '2022', 50, 'Bachelor'),
    (2, 'EEE', '2010', 40, 'Masters');

-- Generate fake data for the 'organisation' table
INSERT INTO organisation (id, name, address)
VALUES
    (1, 'TechCorp', '123 Tech Street, Techland'),
    (2, 'BioTech Solutions', '456 Bio Street, Biocity'),
    (3, 'ElecTech Innovations', '789 Elec Street, Electropolis'),
    (4, 'Mechano Dynamics', '101 Mech Street, Mechaville'),
    (5, 'Chemical Innovators', '202 Chem Street, Chemotown');

-- Generate fake data for the 'placement' table
INSERT INTO placement (id, organisation_id, profile, description, intake, minimum_grade)
VALUES
    (1, 1, 'Software Engineer', 'Developing cutting-edge software solutions', 10, 3.5),
    (2, 1, 'Biotech Researcher', 'Conducting research in biotechnology', 5, 3.0),
    (3, 3, 'Electrical Engineer', 'Designing and implementing electrical systems', 8, 3.2),
    (4, 4, 'Mechanical Designer', 'Creating innovative mechanical designs', 6, 3.4),
    (5, 5, 'Chemical Analyst', 'Analyzing chemical compounds and processes', 7, 3.1);

-- Generate fake data for the 'student' table
INSERT INTO student (student_id, roll_number, first_name, last_name, email, photograph_path, cgpa, total_credits, graduation_year, domain_id, specialisation_id, placement_id)
VALUES
    (1, 'R001', 'John', 'Doe', 'john.doe@example.com', '/photos/john_doe.jpg', 3.7, 120, '2010', 1, NULL, NULL),
    (2, 'R002', 'Jane', 'Smith', 'jane.smith@example.com', '/photos/jane_smith.jpg', 3.5, 110, '2010', 1, NULL, NULL),
    (3, 'R003', 'Bob', 'Johnson', 'bob.johnson@example.com', '/photos/bob_johnson.jpg', 3.6, 115, '2010', 1, NULL, NULL),
    (4, 'R004', 'Emily', 'Wilson', 'emily.wilson@example.com', '/photos/emily_wilson.jpg', 3.8, 125, '2010', 2, NULL, NULL),
    (5, 'R005', 'Chris', 'Taylor', 'chris.taylor@example.com', '/photos/chris_taylor.jpg', 3.9, 130, '2010', 2, NULL, NULL),
    (6, 'R006', 'Sarah', 'Miller', 'sarah.miller@example.com', '/photos/sarah_miller.jpg', 3.4, 110, '2023', 1, NULL, NULL),
    (7, 'R007', 'David', 'Anderson', 'david.anderson@example.com', '/photos/david_anderson.jpg', 3.2, 105, '2023', 2, NULL, NULL),
    (8, 'R008', 'Emma', 'Clark', 'emma.clark@example.com', '/photos/emma_clark.jpg', 3.6, 115, '2023', 2, NULL, NULL),
    (9, 'R009', 'Michael', 'Turner', 'michael.turner@example.com', '/photos/michael_turner.jpg', 3.8, 120, '2023', 1, NULL, NULL),
    (10, 'R010', 'Olivia', 'Harris', 'olivia.harris@example.com', '/photos/olivia_harris.jpg', 3.9, 125, '2023', 1, NULL, NULL),
    (11, 'R011', 'Daniel', 'Evans', 'daniel.evans@example.com', '/photos/daniel_evans.jpg', 3.5, 110, '2023', 2, NULL, NULL),
    (12, 'R012', 'Ava', 'Jackson', 'ava.jackson@example.com', '/photos/ava_jackson.jpg', 3.7, 115, '2023', 1, NULL, NULL),
    (13, 'R013', 'Christopher', 'Moore', 'christopher.moore@example.com', '/photos/christopher_moore.jpg', 3.3, 105, '2023', 2, NULL, NULL),
    (14, 'R014', 'Sophia', 'White', 'sophia.white@example.com', '/photos/sophia_white.jpg', 3.6, 115, '2023', 2, NULL, NULL),
    (15, 'R015', 'James', 'Baker', 'james.baker@example.com', '/photos/james_baker.jpg', 3.8, 120, '2023', 1, NULL, NULL);


-- Generate fake data for the 'placement_filter' table
INSERT INTO placement_filter (id, placement_id, specialisation_id, domain_id)
VALUES
    (1, 1, NULL, 1),
    (2, 2, NULL, 1),
    (3, 3, NULL, 1),
    (4, 4, NULL, 1),
    (5, 5, NULL, 1),
    (6, 1, NULL, 2),
    (7, 2, NULL, 2),
    (8, 3, NULL, 2),
    (9, 4, NULL, 2),
    (10, 5, NULL, 2);

-- Generate fake data for the 'placement_student' table
INSERT INTO placement_student (id, placement_id, student_id, cv_application, about, acceptance, comments, date)
VALUES
    (1, 1, 1, '/cv/john_doe_cv.pdf', 'I am passionate about software development', 'ACCEPTED', NULL, '2010-05-15'),
    (2, 2, 2, '/cv/jane_smith_cv.pdf', 'I have a strong background in biotechnology', 'ACCEPTED', NULL, '2010-05-16'),
    (3, 3, 3, '/cv/bob_johnson_cv.pdf', 'I excel in electrical engineering concepts', 'ACCEPTED', NULL, '2010-05-17'),
    (4, 4, 4, '/cv/emily_wilson_cv.pdf', 'My mechanical design skills are top-notch', 'ACCEPTED', NULL, '2010-05-18'),
    (5, 5, 5, '/cv/chris_taylor_cv.pdf', 'I have expertise in chemical analysis', 'ACCEPTED', NULL, '2010-05-19'),
    (6, 1, 6, '/cv/john_doe_cv.pdf', 'I am passionate about software development', 'PENDING', NULL, '2023-05-15'),
    (7, 2, 7, '/cv/jane_smith_cv.pdf', 'I have a strong background in biotechnology', 'PENDING', NULL, '2023-05-16'),
    (8, 3, 8, '/cv/bob_johnson_cv.pdf', 'I excel in electrical engineering concepts', 'PENDING', NULL, '2023-05-17'),
    (9, 4, 9, '/cv/emily_wilson_cv.pdf', 'My mechanical design skills are top-notch', 'ACCEPTED', NULL, '2023-05-18'),
    (10, 5, 10, '/cv/chris_taylor_cv.pdf', 'I have expertise in chemical analysis', 'ACCEPTED', NULL, '2023-05-19'),
    (11, 1, 11, '/cv/john_doe_cv.pdf', 'I am passionate about software development', 'PENDING', NULL, '2023-05-15'),
    (12, 2, 12, '/cv/jane_smith_cv.pdf', 'I have a strong background in biotechnology', 'PENDING', NULL, '2023-05-16'),
    (13, 3, 13, '/cv/bob_johnson_cv.pdf', 'I excel in electrical engineering concepts', 'PENDING', NULL, '2023-05-17'),
    (14, 4, 14, '/cv/emily_wilson_cv.pdf', 'My mechanical design skills are top-notch', 'ACCEPTED', NULL, '2023-05-18'),
    (15, 5, 15, '/cv/chris_taylor_cv.pdf', 'I have expertise in chemical analysis', 'ACCEPTED', NULL, '2023-05-19');

-- Generate fake data for the 'alumni' table
INSERT INTO alumni (id, email, contact_number, student_id)
VALUES
    (1, 'john.doe.alumni@example.com', '123-456-7890', 1),
    (2, 'jane.smith.alumni@example.com', '987-654-3210', 2),
    (3, 'bob.johnson.alumni@example.com', '111-222-3333', 3),
    (4, 'emily.wilson.alumni@example.com', '444-555-6666', 4),
    (5, 'chris.taylor.alumni@example.com', '777-888-9999', 5);

-- Generate fake data for the 'alumni_organisation' table
INSERT INTO alumni_organisation (id, position, joining_date, leaving_date, organisation_id, alumni_id)
VALUES
    (1, 'Software Developer', '2010-06-01', NULL, 1, 1),
    (2, 'Biotech Research Scientist', '2010-06-02', NULL, 1, 2),
    (3, 'Electrical Engineer', '2015-06-03', NULL, 1, 3),
    (4, 'Mechanical Designer', '2015-06-04', NULL, 2, 4),
    (5, 'Chemical Analyst', '2015-06-05', NULL, 2, 5);

   
