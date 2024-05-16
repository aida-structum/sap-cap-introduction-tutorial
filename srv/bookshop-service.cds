using my.books as my from '../db/data-model';

service CatalogService {
  entity Books @readonly    as projection on my.Books;
  entity Authors @readonly  as projection on my.Authors;
}