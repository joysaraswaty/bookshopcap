using my.bookshop  from '../db/schema';

service CatalogService @(path: '/catalog')
                       @(requires: 'authenticated-user') {
    @Capabilities : { Insertable,Updatable,Deletable }                 
    entity books  @(restrict:[
        {
            grant: ['READ'],
            to: 'Viewer',
            where: 'bankName = $user.BankName'
        },
        {
            grant: ['WRITE'],
            to: 'Admin'
        }
    ])    
    
    as projection on bookshop.books

}