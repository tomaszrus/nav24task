pageextension 50102 SalesAndReceivablesSetupPageEx extends "Sales & Receivables Setup"
{
    layout
    {
        addlast(General)
        {
            field("Location Code"; Rec."Location Code")
            {
                ApplicationArea = all;
            }
        }
    }
}
