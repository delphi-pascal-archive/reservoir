unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, TabNotBk;

type
  TForm5 = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    ColorDialog1: TColorDialog;
    UpDown1: TUpDown;
    StaticText1: TStaticText;
    GroupBox1: TGroupBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
if ColorDialog1.Execute then
Form1.Series1.SeriesColor:= ColorDialog1.Color;
end;



procedure TForm5.UpDown1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
if ColorDialog1.Execute then
Form1.Series1.SeriesColor:= ColorDialog1.Color;
end;

end.
