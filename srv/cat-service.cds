using my.ViewBP as ViewBP from '../db/data-model';

service MyViewBPService {

entity BusinessP @readonly as projection on ViewBP.BusinessP
    
annotate my.ViewBP.BusinessP with @(

    UI: {
            
            SelectionFields  : [
                BPRepoID,BPRepoName,BPLocation,BPPrimaryContact
            ],

            LineItem  : [
                {Value: BPRepoID},
                {Value: BPRepoName},
                {Value: BPLocation},
                {Value: BPPrimaryContact}
            ],

            Facets  : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'generalFacetId',
                    Label : 'Upload Collection',
                    Target : '@UI.FieldGroup#GeanralInfo'
                }
            ],

            FieldGroup#GeanralInfo: {
                Data: [
                    {Value:BPRepoID}
                ]
            }
    }
)

} 