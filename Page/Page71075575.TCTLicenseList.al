page 71075575 "TCT License List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "TCT License";
    Caption = 'TCT License List';
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(TCTLicensesList)
            {
                Caption = 'Licenses List';
                field("TCT Entry No."; Rec."TCT Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                    ApplicationArea = All;
                }
                field("TCT Type"; Rec."TCT Type")
                {
                    ToolTip = 'Specifies the value of the Type field.';
                    ApplicationArea = All;
                }
                field("TCT Tennant Id"; Rec."TCT Tennant Id")
                {
                    ToolTip = 'Specifies the value of the Tennant Id field.';
                    ApplicationArea = All;
                }
                field("TCT Expiration Date"; Rec."TCT Expiration Date")
                {
                    ToolTip = 'Specifies the value of the Expiration Date field.';
                    ApplicationArea = All;
                }
                field("TCT Name"; Rec."TCT Name")
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
                field("TCT Contact Info."; Rec."TCT Contact Info.")
                {
                    ToolTip = 'Specifies the value of the Contact Info. field.';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(TCTGetTennantId)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message(TCTTennantIdLbl, Database.TenantId());
                end;
            }
        }
    }

    var
        TCTTennantIdLbl: Label 'Tennant Id %1';
}