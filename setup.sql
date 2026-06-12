USE solanki_pipes;

CREATE TABLE IF NOT EXISTS projects (
    id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    short_description TEXT,
    long_description TEXT,
    image VARCHAR(500),
    category VARCHAR(255),
    location VARCHAR(255),
    department VARCHAR(500),
    segment VARCHAR(500),
    execution VARCHAR(500),
    specs_description TEXT,
    specifications JSON,
    specs_footnote TEXT,
    execution_steps JSON,
    inspections JSON,
    outcome_title VARCHAR(500),
    outcome_description TEXT,
    outcome_btn_text VARCHAR(255),
    outcome_btn_link VARCHAR(255),
    created_date DATE DEFAULT (CURRENT_DATE)
);

INSERT IGNORE INTO projects (id, title, short_description, long_description, image, category, location, department, segment, execution, specs_description, specifications, specs_footnote, execution_steps, inspections, outcome_title, outcome_description, outcome_btn_text, outcome_btn_link, created_date)
VALUES
('ludhiana-stp', 'Successful HDPE Pipeline Execution for STP Project – Mega Food Park, Ludhiana', 'Successful HDPE Pipeline Execution for STP Project – Mega Food Park, Ludhiana', 'Solanki Industries (Solanki Pipes) successfully executed the full-scale HDPE pipeline supply, laying, and jointing work for the STP Project of Mega Food Park, Ludhiana. The project was commissioned under the esteemed Department of Soil & Water Conservation, Punjab, to build a reliable sewerage and water reclamation system supporting regional industrial growth and ecology.', '/images/project_1.jpg', 'STP Project', 'Samrala, Ludhiana, Punjab', 'Department of Soil & Water Conservation, Punjab', 'Sewage Treatment Plant (STP) & Waste Management', 'Directly Executed by Solanki Industries', 'A total of 10,000 meters of HDPE pipeline was meticulously supplied and installed by our unit, utilizing two key standard dimensions:', '[{"size":"250 mm OD HDPE Pipes","rating":"PE 80 • PN 4 rating"},{"size":"200 mm OD HDPE Pipes","rating":"PE 80 • PN 4 rating"}]', '* All pipes supplied and installed were fully manufactured in-house by Solanki Industries, complying strictly with Indian Standard IS 4984 (BIS standards) for water and wastewater applications.', '["Laying and jointing were carried out utilizing advanced standard HDPE butt fusion jointing techniques under strict compliance with BIS and departmental guidelines.","All onsite engineering and distribution activities were directly overseen and completed by the skilled execution division of Solanki Industries (Solanki Pipes).","Upon final hydrostatic testing, pressure assessment, and jointing verification, the operational system was formally handed over to the Department of Soil & Water Conservation, Punjab."]', '[{"name":"CIPET, Amritsar","text":"Plastic piping certification","logo":"/images/cipet.png"},{"name":"Shri Ram Testing Lab","text":"Delhi Lab certification","logo":"/images/shriramlab.png"}]', 'Supporting sustainable water management and state industrial expansion', 'The STP pipeline is fully operational at the Mega Food Park, Ludhiana, providing flawless sewerage collection and treated effluent flow, minimizing environmental discharge.', 'Enquire for STP Projects', '/contact', '2026-06-08'),

('lift-irrigation-630mm', '630 mm PE100 PN10 HDPE Pipeline Supply', 'Supply and deployment of massive diameter HDPE pipes for heavy lift irrigation schemes, facilitating wide-scale farm water transport across rural grids.', 'This project involved the engineering and manufacture of large diameter HDPE pipes to support massive lift irrigation grids. Under the agricultural development initiatives, these pipelines transport water over high elevations to remote farming sectors, enhancing soil health and agricultural output.', '/images/lift_irrigation.jpeg', 'Irrigation Project', 'Fatehabad, Haryana', 'Department of Agriculture & Water Resources', 'Lift Irrigation Scheme', 'Directly Executed by Solanki Industries', 'Over 5,000 meters of high-density PE100 pipes were manufactured, verified, and delivered to handle high-pressure water grids.', '[{"size":"630 mm OD HDPE Pipes","rating":"PE 100 • PN 10 rating"}]', '* Conforming to IS 4984:2016 licensing standard.', '["High-pressure fusion jointing for large diameter pipes.","Hydrostatic testing at PN15 to guarantee durability under stress.","On-time heavy transport dispatch to construction layout."]', '[{"name":"CIPET, Amritsar","text":"Compliance Verification","logo":"/images/cipet.png"}]', 'Enabling reliable irrigation across 1,200 acres of rural cropland', 'The high-volume water distribution network has been operating with zero pressure drop, boosting cropping efficiency for local farmers.', 'Enquire for Irrigation', '/contact', '2026-05-15'),

('municipal-water-supply', 'Government Municipal Water Supply Network', 'Providing BIS-licensed, heavy-grade piping configurations for drinking water networks and municipality schemes supporting cities and villages.', 'Solanki Industries was chosen as the prime manufacturer for clean potable drinking water pipe installation across regional municipality networks. The pipes deployed must sustain long-term pressure and preserve hygienic water quality for local public distribution.', '/images/homeProject_05.png', 'Govt Infrastructure', 'Bhiwani District, Haryana', 'Public Health Engineering Department (PHED), Haryana', 'Potable Municipal Water Distribution', 'Directly Executed by Solanki Industries', 'Extensive municipality distribution spanning 15,000 meters of underground piping infrastructure.', '[{"size":"110 mm OD HDPE Pipes","rating":"PE 80 • PN 6 rating"},{"size":"90 mm OD HDPE Pipes","rating":"PE 80 • PN 6 rating"}]', '* Licensed under BIS with IS 4984 certifications.', '["Trench excavation and underground conduit laying.","Electrofusion and butt welding joints.","Flawless pressure flow and water hygiene certification testing."]', '[{"name":"Shri Ram Testing Lab","text":"Delhi Lab certification","logo":"/images/shriramlab.png"}]', 'Delivering clean potable water to over 25 rural communities', 'The PHED network is completely online, delivering safe and regular drinking water flow with no reports of leakage.', 'Enquire for Municipal Projects', '/contact', '2026-04-10');

CREATE TABLE IF NOT EXISTS admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO admins (id, username, password) VALUES
(1, 'admin', '$2b$10$7srpNEOAq4joPt9aZIVXtuXEbc9M6RV0fJ4RBI9ypXFtWLbM8D1va'),
(2, 'Hritik', '$2b$10$DP7K20oRFnEMxXYYqVAF2Og9riHT/1bago656GrVbOwXf104Mkb7G')
ON DUPLICATE KEY UPDATE 
    password = VALUES(password);
