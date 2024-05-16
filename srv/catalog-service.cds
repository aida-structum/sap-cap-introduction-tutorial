using my.books as my from '../db/data-model';

service CatalogService @(path:'/admin'){
  entity Books as projection on my.Books;
  entity Authors as projection on my.Authors;
}