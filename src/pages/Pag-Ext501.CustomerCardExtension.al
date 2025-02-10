pageextension 50101 CustomerCardExtension extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            
                field("New Field"; Rec."New Field")
                {
                    ApplicationArea = All;
                }
            
        }
    }
}