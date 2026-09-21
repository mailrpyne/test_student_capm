namespace rpe5.db; // Name space creation

//Aspects
using {cuid, managed}from '@sap/cds/common';

//Custom-aspect
aspect customAspect {
    status: String
}

//Type
type nameType: String(50);


//Create Table - Table names are in plural
//Tables name always start with UPPERCASE letter - Fieldnames always with LOWERCASE letter

/* NORMAL NOT ASPECT - EXPLICITLY DEFINED
entity Students  {
    key studentID: UUID;
    name: String(50);
    address: String;
    email: String(100);
    mobile: String(10);
    age: Integer;
    gender: String(1);
}
*/

//NEW ASPECTED WAY
entity Students: cuid  {
    //key studentID: UUID;
    name: nameType; //Instead of declaring the type it comes from nametype
    address: String;
    email: String(100);
    mobile: String(10);
    age: Integer;
    gender: String(1);
}



entity Courses: cuid, managed {
    //key courseID: UUID;
    name: String(100);
    cost: Decimal(10,2);
    duration: Integer;
    trainerCode: String(10);
}

entity Addresses  {
    key addressID: Integer;
    description: String(100);
    city: String(100);
    country: String(100);
    postal: String(100);
}