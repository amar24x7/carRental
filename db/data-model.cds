namespace carrental.db;

using { managed } from '@sap/cds/common';

entity Computers
{
    key ID : Integer;
    name : String;
	model : String;
	unitprice: Integer;
    stock : Integer;
};

entity carDetails
{
    key carID : Integer;
    carType : String;
	carName : String;
	carImage : String;
};

entity carBooking : managed
{
    key bookID : UUID
         @Core.Computed;
    carID : Integer;
    customerName : String;
	carlocation : String;
	carType : String;
    startDate : String;
    endDate : String;
};
