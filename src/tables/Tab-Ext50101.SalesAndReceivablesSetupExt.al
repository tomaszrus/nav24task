tableextension 50101 SalesAndReceivablesSetupExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }
    }
}
