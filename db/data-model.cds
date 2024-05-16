namespace my.books;


entity Authors{
    key ID: UUID;
    name: String(100);
    dateOfBirth: Date;
    dateOfDeath: Date;
}

entity Books{
 stock: NoOfBooks;
 price: Price;
}
type NoOfBooks: Integer;
type Price{
    amount: Decimal;
    currency: String(3);
}