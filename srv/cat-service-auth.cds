using {
    CatService.Authors,
    CatService.Books,
    CatService.submitOrder
} from './cat-service';


annotate Authors with @readonly;
annotate Books with @readonly;
annotate submitOrder with @(requires: 'authenticated-user');