table 71075575 "TCT License"
{
    DataClassification = CustomerContent;
    Caption = 'License';

    fields
    {
        field(1; "TCT Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "TCT Tennant Id"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Tennant Id';
        }
        field(3; "TCT Type"; Enum "TCT License Type")
        {
            DataClassification = CustomerContent;
            Caption = 'Type';
        }
        field(4; "TCT Expiration Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Expiration Date';
        }
        field(5; "TCT Name"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(6; "TCT Contact Info."; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Contact Info.';
        }
    }

    keys
    {
        key(Key1; "TCT Entry No.")
        {
            Clustered = true;
        }
        key(SK; "TCT Tennant Id") { }
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