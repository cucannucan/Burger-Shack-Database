--ceren ucan D21124013, Luke Kiernan C21411466
DROP TABLE receipt CASCADE CONSTRAINTS;
DROP TABLE booktable CASCADE CONSTRAINTS;
DROP TABLE customer CASCADE CONSTRAINTS;
DROP TABLE managers CASCADE CONSTRAINTS;
DROP TABLE penaltybill CASCADE CONSTRAINTS;
DROP TABLE restaurant CASCADE CONSTRAINTS;
DROP TABLE stafftable CASCADE CONSTRAINTS;
DROP TABLE "Table" CASCADE CONSTRAINTS;
DROP TABLE waiters CASCADE CONSTRAINTS;

CREATE TABLE receipt (
    booking_id              NUMBER(8) NOT NULL,
    guest_count             NUMBER(3) NOT NULL,
    time                   TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    book_customer_custr_id  NUMBER(8) NOT NULL,
    table_tableid          NUMBER(8) NOT NULL,
    managers_managers_id   NUMBER NOT NULL,
    waiters_waiters_id     NUMBER NOT NULL
)
LOGGING;

ALTER TABLE receipt
    ADD CONSTRAINT receipt_ck_1 CHECK ( guest_count BETWEEN 1 AND 6 );

ALTER TABLE receipt ADD CONSTRAINT receipt_pk PRIMARY KEY ( booking_id );

CREATE TABLE booktable (
    customer_customer_id  NUMBER(8) NOT NULL,
    fname                VARCHAR2(20) NOT NULL,
    lname                VARCHAR2(20) NOT NULL,
    address              VARCHAR2(50) NOT NULL,
    email                VARCHAR2(50) NOT NULL
)
LOGGING;

ALTER TABLE booktable ADD CONSTRAINT booktable_ck_2 CHECK ( email LIKE '%@%' );

ALTER TABLE booktable ADD CONSTRAINT booktable_pk PRIMARY KEY ( customer_customer_id );

CREATE TABLE customer (
    customerid     NUMBER(8) NOT NULL,
    fname          VARCHAR2(20) NOT NULL,
    lname          VARCHAR2(20) NOT NULL,
    email          VARCHAR2(50) NOT NULL,
    phonenumber    NUMBER(9) NOT NULL,
    time_arrival    TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    table_tableid  NUMBER(8) NOT NULL
)
LOGGING;

ALTER TABLE customer ADD CONSTRAINT customer_ck_1 CHECK ( email LIKE '%@%' );

ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY ( customerid );

CREATE TABLE managers (
    managers_id         NUMBER NOT NULL,
    stafftable_staffid  NUMBER(8) NOT NULL
)
LOGGING;

CREATE UNIQUE INDEX managers__idx ON
    managers (
        stafftable_staffid
    ASC )
        LOGGING;

ALTER TABLE managers ADD CONSTRAINT managers_pk PRIMARY KEY ( managers_id );

ALTER TABLE managers ADD CONSTRAINT managers__un UNIQUE ( stafftable_staffid );

CREATE TABLE penaltybill (
    penaltyid            NUMBER(8) NOT NULL,
    customer_customer_id  NUMBER(8) NOT NULL,
    time_arrival          TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    time_leaving          TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    fee                  NUMBER(5, 2) NOT NULL
)
LOGGING;

ALTER TABLE penaltybill ADD CONSTRAINT penaltybill_pk PRIMARY KEY ( penaltyid );

CREATE TABLE restaurant (
    restaurant_id  NUMBER(8) NOT NULL,
    address       VARCHAR2(50) NOT NULL,
    phonenumber   NUMBER(9) NOT NULL
)
LOGGING;

ALTER TABLE restaurant ADD CONSTRAINT restaurant_pk PRIMARY KEY ( restaurant_id );

CREATE TABLE stafftable (
    staff_id                  NUMBER(8) NOT NULL,
    fname                    VARCHAR2(20) NOT NULL,
    lname                    VARCHAR2(20) NOT NULL,
    address                  VARCHAR2(50) NOT NULL,
    phonenumber              NUMBER(9) NOT NULL,
    email                    VARCHAR2(30) NOT NULL,
    dob                      TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    start_employment          TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    restaurant_restaurant_id  NUMBER(8) NOT NULL
)
LOGGING;

ALTER TABLE stafftable ADD CONSTRAINT stafftable_ck_1 CHECK ( email LIKE '%@burgershack.com%' );

CREATE UNIQUE INDEX stafftable__idx ON
    stafftable (
        staff_id
    ASC )
        LOGGING;

ALTER TABLE stafftable ADD CONSTRAINT stafftable_pk PRIMARY KEY ( staff_id );

CREATE TABLE "Table" (
    table_id                  NUMBER(8) NOT NULL,
    table_type                NUMBER(3) NOT NULL,
    table_location            VARCHAR2(20) NOT NULL,
    restaurant_restaurant_id  NUMBER(8) NOT NULL
)
LOGGING;

ALTER TABLE "Table" ADD CONSTRAINT table_pk PRIMARY KEY ( table_id );

CREATE TABLE waiters (
    waiters_id          NUMBER NOT NULL,
    stafftable_staff_id  NUMBER(8) NOT NULL
)
LOGGING;

ALTER TABLE waiters ADD CONSTRAINT waiters_pk PRIMARY KEY ( waiters_id );

ALTER TABLE waiters ADD CONSTRAINT waiters__un UNIQUE ( stafftable_staff_id );

ALTER TABLE receipt
    ADD CONSTRAINT receipt_managers_fk FOREIGN KEY ( managers_managers_id )
        REFERENCES managers ( managers_id )
    NOT DEFERRABLE;

ALTER TABLE receipt
    ADD CONSTRAINT receipt_table_fk FOREIGN KEY ( table_tableid )
        REFERENCES "Table" ( table_id )
    NOT DEFERRABLE;

ALTER TABLE receipt
    ADD CONSTRAINT receipt_waiters_fk FOREIGN KEY ( waiters_waiters_id )
        REFERENCES waiters ( waiters_id )
    NOT DEFERRABLE;

ALTER TABLE receipt
    ADD CONSTRAINT bookrec_custbook_fk FOREIGN KEY ( book_customer_custr_id )
        REFERENCES booktable ( customer_customer_id )
    NOT DEFERRABLE;

ALTER TABLE booktable
    ADD CONSTRAINT booktable_customer_fk FOREIGN KEY ( customer_customer_id )
        REFERENCES customer ( customerid )
    NOT DEFERRABLE;

ALTER TABLE customer
    ADD CONSTRAINT customer_table_fk FOREIGN KEY ( table_tableid )
        REFERENCES "Table" ( table_id )
    NOT DEFERRABLE;

ALTER TABLE managers
    ADD CONSTRAINT managers_stafftable_fk FOREIGN KEY ( stafftable_staffid )
        REFERENCES stafftable ( staff_id )
    NOT DEFERRABLE;

ALTER TABLE penaltybill
    ADD CONSTRAINT penaltybill_customer_fk FOREIGN KEY ( customer_customer_id )
        REFERENCES customer ( customerid )
    NOT DEFERRABLE;

ALTER TABLE stafftable
    ADD CONSTRAINT stafftable_restaurant_fk FOREIGN KEY ( restaurant_restaurant_id )
        REFERENCES restaurant ( restaurant_id )
    NOT DEFERRABLE;

ALTER TABLE "Table"
    ADD CONSTRAINT table_restaurant_fk FOREIGN KEY ( restaurant_restaurant_id )
        REFERENCES restaurant ( restaurant_id )
    NOT DEFERRABLE;

ALTER TABLE waiters
    ADD CONSTRAINT waiters_stafftable_fk FOREIGN KEY ( stafftable_staff_id )
        REFERENCES stafftable ( staff_id )
    NOT DEFERRABLE;