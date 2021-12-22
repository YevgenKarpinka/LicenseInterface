table 71075575 "TEL License"
{
    DataClassification = CustomerContent;
    Caption = 'License';

    fields
    {
        field(1; "TEL Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "TEL Tennant Id"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Tennant Id';
        }
        field(3; "TEL Type"; Enum "TEL License Type")
        {
            DataClassification = CustomerContent;
            Caption = 'Type';
        }
        field(4; "TEL Expiration Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Expiration Date';
        }
        field(5; "TEL Name"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(6; "TEL Contact Info."; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Contact Info.';
        }
    }

    keys
    {
        key(Key1; "TEL Entry No.")
        {
            Clustered = true;
        }
        key(SK; "TEL Tennant Id") { }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}