
use Resepshen;

create table ADDRESS(
ID INT AUTO_INCREMENT,
COUNTRY varchar(128) NOT NULL,
REGION varchar(128) NOT NULL,
CITY varchar(128) NOT NULL,
STREET varchar(128) NOT NULL,
HOUSE VARCHAR(24) NOT NULL,
PRIMARY KEY(ID)
);

create table SUBDIVISION(
ID INT AUTO_INCREMENT,
NAME varchar(128) NOT NULL,
ID_ADDRESS INT NOT NULL,
PRIMARY KEY(ID),
CONSTRAINT FK_SUBDIVISION_ADDRESS
    FOREIGN KEY (ID_ADDRESS)
    REFERENCES ADDRESS (ID)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
);

create table RESEARCH_DIRECTORY(
ID INT AUTO_INCREMENT,
NAME VARCHAR(128) NOT NULL,
COST INT NOT NULL,
DURATION TIME NOT NULL, 
PRIMARY KEY(ID)
);

create table PATIENT(
ID INT AUTO_INCREMENT,
SURNAME varchar(128) NOT NULL,
NAME varchar(128) NOT NULL,
MIDDLE_NAME varchar(128) NULL,
BIRTHDAY DATE NOT NULL,
GENDER enum('Man', 'Woman') NOT NULL,
PHONE INT(16) NULL,
EMAIL varchar(128) NULL,
APARTMENT int (4) NULL,
ID_ADDRESS INT NOT NULL,
PRIMARY KEY(ID),
CONSTRAINT FK_PATIENT_ADDRESS
    FOREIGN KEY (ID_ADDRESS)
    REFERENCES ADDRESS (ID)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
);

create table VISIT(
ID INT AUTO_INCREMENT,
STATUS_VISIT VARCHAR(24) NOT NULL,
VISIT_DATE DATETIME NOT NULL,
ID_PATIENT INT NOT NULL,
ID_SUBDIVISION INT NOT NULL,
PRIMARY KEY(ID),
CONSTRAINT FK_VISIT_PATIENT
    FOREIGN KEY (ID_PATIENT)
    REFERENCES PATIENT (ID)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
CONSTRAINT FK_VISIT_SUBDIVISION
    FOREIGN KEY (ID_SUBDIVISION)
    REFERENCES SUBDIVISION (ID)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
);

create table STYDU(
ID INT AUTO_INCREMENT,
START_DATE DATETIME NOT NULL,
EXPIRATION_DATE DATETIME NULL,
STATUS VARCHAR(128) NOT NULL,
ID_VISIT INT NOT NULL,
ID_RESEARCH_DIRECTORY INT NOT NULL,
PRIMARY KEY(ID),
CONSTRAINT FK_STYDU_VISIT
    FOREIGN KEY (ID_VISIT)
    REFERENCES VISIT (ID)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
CONSTRAINT FK_STYDU_RESEARCH_DIRECTORY
    FOREIGN KEY (ID_RESEARCH_DIRECTORY)
    REFERENCES RESEARCH_DIRECTORY (ID)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
);
