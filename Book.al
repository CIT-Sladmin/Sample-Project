table 50148 "Book"
{
    LookupPageId = "BookList";
    //DataClassification = ToBeClassified;

    fields
    {
        field(1; "Book No."; Code[20])
        {

            Caption = 'No.';

            DataClassification = ToBeClassified;

        }
        field(2; "Title"; Text[50])
        {
            Caption = 'Title';
            FieldClass = FlowField;
            CalcFormula = Lookup(Customer.Book_Name WHERE("No." = field("Book No.")));



        }
        field(3; "Author"; Text[50])
        {
            Caption = 'Author';
            DataClassification = ToBeClassified;

        }
        field(4; "Hardcover"; Boolean)
        {
            Caption = 'Hardcover';
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "Book No.")
        {
            Clustered = true;
        }
    }
}