page 71075575 "TEL License List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "TEL License";
    Caption = 'TEL License List';
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(TELLicensesList)
            {
                Caption = 'Licenses List';
                field("TEL Entry No."; Rec."TEL Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                    ApplicationArea = All;
                }
                field("TEL Type"; Rec."TEL Type")
                {
                    ToolTip = 'Specifies the value of the Type field.';
                    ApplicationArea = All;
                }
                field("TEL Tennant Id"; Rec."TEL Tennant Id")
                {
                    ToolTip = 'Specifies the value of the Tennant Id field.';
                    ApplicationArea = All;
                }
                field("TEL Expiration Date"; Rec."TEL Expiration Date")
                {
                    ToolTip = 'Specifies the value of the Expiration Date field.';
                    ApplicationArea = All;
                }
                field("TEL Name"; Rec."TEL Name")
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
                field("TEL Contact Info."; Rec."TEL Contact Info.")
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
            action(TELGetTennantId)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message(TELTennantIdLbl, Database.TenantId());
                end;
            }
        }
    }

    var
        TELTennantIdLbl: Label 'Tennant Id %1';
}