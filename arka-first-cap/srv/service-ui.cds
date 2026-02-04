using { ProjectService } from './service';

annotate ProjectService.Projects with @(
UI: {
    // Defines fields to appear in the filter bar
    SelectionFields: [name],
    // Defines columns for the list report table (LineItem)
    LineItem: [
{ Value: name, Label: 'Project Name' },
{ Value: description , Label: 'Project Description'}

    ],
    // Defines the header information for the object page
    HeaderInfo: {
TypeName: 'Project',
TypeNamePlural: 'Projects',
Title: { $Type: 'UI.DataField', Value: 'Project Details' }
    },

    
    Facets  : [
        {
$Type : 'UI.ReferenceFacet',
Target : '',
ID: 'Default',
Label : 'General'

        }
    ],


}
);


annotate ProjectService.Users with @(
UI: {
    // Defines fields to appear in the filter bar
    SelectionFields: [name],
    // Defines columns for the list report table (LineItem)
    LineItem: [
{ Value: name, Label: 'User Name' },
{ Value: email , Label: 'E-Mail'},
{ Value: phone , Label: 'Phone'},
{ Value: gender , Label: 'Gender' },
{ Value: address , Label: 'Address' }
],
    // Defines the header information for the object page
HeaderInfo: {
TypeName: 'Project',
TypeNamePlural: 'Projects',
Title: { $Type: 'UI.DataField', Value: 'name' },
Description: { $Type: 'UI.DataField', Value: 'User name' }
}
}
);