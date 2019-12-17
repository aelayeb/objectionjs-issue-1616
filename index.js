const knex = require('knex')({
    client: 'mysql2',
    connection: 'mysql2://admin:admin@localhost/draft',
});

async function main() {
    const Service = require('./service');
    Service.knex(knex);
    
    const service = await Service.query().first();
    console.log('service loaded:', service);
    
    // Works
    const offers = await service.$relatedQuery('offers', service.$knex());
    console.log('offers loaded by passing $knex:', offers);
    
    // Throws an error
    const offers2 = await service.$relatedQuery('offers');
    console.log('offers loaded without specifying knex:', offers);
}

main()
    .then(text => console.log(text))
    .catch(err => console.error(err))
;
