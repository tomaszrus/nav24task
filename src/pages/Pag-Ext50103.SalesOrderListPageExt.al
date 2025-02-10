pageextension 50103 SalesOrderPageExt extends "Sales Order List"
{
    actions
    {
        addafter("Create Inventor&y Put-away/Pick")
        {
            action(filterLocationCode)
            {
                Caption = 'Filter Location Code';
                Image = Filter;
                ApplicationArea = all;

                trigger OnAction()
                var
                    sAndrSetup: Record "Sales & Receivables Setup";
                    salesHEader: Record "Sales Header";
                    salesOrderPage: Page "Sales Order List";
                begin
                    sAndrSetup.Get();
                    salesHEader.Reset();
                    salesHEader.SetCurrentKey("Location Code");
                    salesHEader.SetRange("Location Code", sAndrSetup."Location Code");
                    CurrPage.SetTableView(salesHEader);

                end;
            }
        }
    }
}
