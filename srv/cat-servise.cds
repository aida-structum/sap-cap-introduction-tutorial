using my.books as my from '../db/data-model';

service CatService @(path:'/cat'){
    entity Authors as projection on my.Authors{
        *,
        epoch.name as period
    }excluding{
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy
    };

    entity Books as projection on my.Books{
        ID,
        title,
        author.name as writer,
        publCountry.name as publCountry,
        isHardcover,
        price.amount,
        price.currency,
        stock,
        author
    };

}