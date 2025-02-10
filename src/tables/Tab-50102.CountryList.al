table 50102 CountryList
{
    Caption = 'country List table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';

        }
        field(2; "Country Name"; Text[100])
        {
            Caption = 'Country Name';
        }
        field(3; Capital; Text[50])
        {
            Caption = 'Capital';
        }
        field(4; Currency; Code[10])
        {
            Caption = 'Currency';
        }
        field(5; Population; Integer)
        {
            Caption = 'Population';
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
