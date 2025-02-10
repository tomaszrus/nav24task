page 50104 countryList
{
    ApplicationArea = All;
    Caption = 'Country List';
    PageType = List;
    SourceTable = CountryList;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Country Name"; Rec."Country Name")
                {
                }
                field(Capital; Rec.Capital)
                {
                }
                field(Currency; Rec.Currency)
                {
                }
                field(Population; Rec.Population)
                {
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ImportCountries)
            {
                ApplicationArea = All;
                Caption = 'Import Countries';
                trigger OnAction()
                var

                    APIManagement: Codeunit "SDH API Management";

                begin
                    APIManagement.GetRecords();
                end;

            }
        }
    }
}
