SELECT * FROM beyondthespectrum.services;

INSERT INTO SERVICES (ServiceID, Name, Description, ProviderID, Duration, Category)
VALUES
  (1, 'ABA Therapy', 'Applied Behavior Analysis for individuals with autism', 4587, 365, 'ABA Therapy'),
  (2, 'Speech Therapy', 'Therapy to improve communication and language skills', 1214, 150, 'Speech Therapy'),
  (3, 'Occupational Therapy', 'Therapy to improve daily living skills and fine motor skills', 2456, 90, 'Occupational Therapy'); 
  
USE beyondthespectrum;
SELECT * FROM Staff;
INSERT INTO Staff (EmployeeID,Name, Role, ContactInformation, Salary) VALUES
(78910,'John Smith', 'Insurance Specialist', 'john.123@insuranceforyou.com, 773-456-7890', 60000.00),
(7822, 'Brianna Johnson', 'Client Manager', 'B.Johnson@beyondthespectrum.org,, 773-789-0123', 55000.00),
(7899, 'Bob Williams', 'Data Analyst', 'bob.789@data.com, 708-012-3456', 65000.00),
(7844, 'Sarah Brown', 'Operations Manager', 'sarah.111@beyondthespectrum.org, 800-222-3333', 70000.00);

SELECT * FROM beyondthespectrum.clients;
INSERT INTO Clients (ClientID, Name, ContactInformation, Demographics, FinancialInformation, HealthInformation) VALUES
(224, 'Marley Hendricks', '773-592-6543', 'Age: 4, Gender: Female, Location: Chicago', 'Income: $20,000, Insurance: UnitedHealthcare', 'Diagnosed with Autism'),
(343, 'Bob Williams', '312-555-5155', 'Age: 9, Gender: Male, Location: Chicago', 'Income: $40,000, Insurance: Cigna', 'Diagnosed with Autism & ADHD'),
(455, 'Sarah Brown', '773-432-1098', 'Age: 6, Gender: Female, Location: Chicago', 'Income: $15,000, Insurance: Aetna', 'Diagnosed with Autism'), 
(567, 'Justus Smith', '872-765-4321', 'Age: 7, Gender: Male, Location: Chicago', 'Income: $48,000, Insurance: Humana', 'Diagnosed with Autism & Anxiety');
  
  