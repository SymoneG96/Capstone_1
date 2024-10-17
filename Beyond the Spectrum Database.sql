CREATE SCHEMA BeyondTheSpectrum;

Use BeyondtheSpectrum; 

CREATE TABLE PROVIDERS 
(ProviderID INT PRIMARY KEY,
    Name VARCHAR(255),
    Credentials VARCHAR(255),
    ContactInformation VARCHAR(255),
    Availability VARCHAR(255));
    
    CREATE TABLE SERVICES 
    (ServiceID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Cost DECIMAL(10, 2),
    ProviderID INT,
    Duration INT,
    Category VARCHAR(255),
    FOREIGN KEY (ProviderID) REFERENCES PROVIDERS(ProviderID));
    
   CREATE TABLE CLIENTS
   (ClientID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInformation VARCHAR(255),
    Demographics TEXT,
    FinancialInformation TEXT,
    HealthInformation TEXT);
   
   CREATE TABLE INVOICES
    (InvoiceID INT PRIMARY KEY,
    ClientID INT,
    Date DATE,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(255),
    FOREIGN KEY (ClientID) REFERENCES CLIENTS(ClientID));
    
    CREATE TABLE PAYMENTS 
    (PaymentID INT PRIMARY KEY,
    InvoiceID INT,
    Date DATE,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(255),
    ReferenceNumber VARCHAR(255),
    FOREIGN KEY (InvoiceID) REFERENCES INVOICES(InvoiceID));
    
    CREATE TABLE STAFF 
    (EmployeeID INT PRIMARY KEY,
    Name VARCHAR(255),
    Role VARCHAR(255),
    ContactInformation VARCHAR(255),
    Salary DECIMAL(10, 2));
    
    CREATE TABLE FUNDINGSOURCE 
    (SourceID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInformation VARCHAR(255),
    DonationDetails TEXT);
    
    CREATE TABLE INSURANCECOMPANY
    (CompanyID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInformation VARCHAR(255),
    PlanDetails TEXT,
    CostInformation TEXT);
    
    CREATE TABLE POLICY 
    (PolicyID INT PRIMARY KEY,
    ClientID INT,
    CompanyID INT,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (ClientID) REFERENCES CLIENTS(ClientID),
    FOREIGN KEY (CompanyID) REFERENCES INSURANCECOMPANY(CompanyID)); 
    


    
  
    
    
    