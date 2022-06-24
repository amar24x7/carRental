using {carrental.db as db} from '../db/data-model';


//service CatalogService @(requires: 'authenticated-user')
service CatalogService
{
    entity Computers as
        projection on db.Computers;	

    entity carDetails as
        projection on db.carDetails;	

    // @odata.draft.enabled
    entity carBooking as
        projection on db.carBooking;	          
}