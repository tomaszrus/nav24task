pageextension 50100 CustomerListExtension extends "Customer List"
{
    layout
    {
        addafter("No.")
        {
            field("New Field"; Rec."New Field")
            {
                ApplicationArea = All;
            }
        }
    }
}