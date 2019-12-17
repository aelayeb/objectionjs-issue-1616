const { Model } = require('objection');

class Service extends Model {
    static get tableName() {
        return 'service';
    }

    static get relationMappings() {
        const Offer = require('./offer');

        return {

            offers: {
                relation: Model.HasManyRelation,
                modelClass: Offer,
                join: {
                    from: 'service.id',
                    to: 'offer.service_id',
                },
            },
        };
    }
}

module.exports = Service;
