const { Model } = require('objection');

class Offer extends Model {
    static get tableName() {
        return 'offer';
    }

    static get relationMappings() {
        const Service = require('./service');

        return {
            service: {
                relation: Model.BelongsToOneRelation,
                modelClass: Service,
                join: {
                    from: 'offer.service_id',
                    to: 'service.id',
                },
            },

         
        };
    }
}

module.exports = Offer;
