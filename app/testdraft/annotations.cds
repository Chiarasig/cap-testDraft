using listReport as service from '../../srv/service';

annotate service.PayDetail with @odata.draft.enabled;

annotate service.PayDetail with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'currency',
            Value : currency,
        },
    ]
);
annotate service.PayDetail with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'currency',
                Value : currency,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
