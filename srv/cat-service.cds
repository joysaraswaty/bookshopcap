using my.bookshop  from '../db/schema';

service CatalogService @(path: '/catalog') {

    entity books as projection on bookshop.books

}