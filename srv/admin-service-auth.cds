using {
    CatalogService.Authors,
    CatalogService.Books
} from './catalog-service';

annotate Books with @(restrict: [
    {
        grant: ['DELETE'],
        to   : 'admin',
        where: 'stock = 0'
    },
    {
        grant: [
            'READ',
            'CREATE',
            'UPDATE'
        ],
        to   : 'admin'
    }
]);

annotate Authors with @(requires: 'admin');
