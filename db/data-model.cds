
namespace my.ViewBP;

using { Country, managed } from '@sap/cds/common';


  entity BusinessP  {
    //@Common.Label: 'Product'
    key BPRepoID : Integer @title: 'Business Partner ID';
    //@Common.Label: 'Product Name'
    BPRepoName  : localized String @title: 'Business Partner Name';
    //@Common.Label: 'Category'
    BPLocation : String @title: 'Business Partner Location';

    BPPrimaryContact: String @title: 'Primary Contact';
  }

  

