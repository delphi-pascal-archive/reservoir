unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TeeProcs, TeEngine, Chart, Series,
  Menus, ExtDlgs, ComCtrls;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Chart1: TChart;
    Series1: TLineSeries;
    MainMenu1: TMainMenu;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N16: TMenuItem;
    ProgressBar1: TProgressBar;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    RadioGroup1: TRadioGroup;
    N24: TMenuItem;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N9: TMenuItem;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
     private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var  D1,d2,z,v1,V2,Q:real;
i,i1:integer;
p:string;
begin
// ��������
 if (Edit1.Text='')or (Edit2.Text='')or (Edit3.Text='')or (Edit4.Text='') or (Edit1.Text='0')or (Edit2.Text='0')or (Edit3.Text='0')or (Edit4.Text='0') then
 begin
Form1.Memo1.Lines.Clear;
Form1.Memo1.Font.Size:=16;
Form1.Memo1.Font.Color:=clRed;
Form1.Memo1.Lines.Add('������� �������� ����������!');
 exit;
 end;

// �������� ��������� ������
D1:=StrToFloat (Edit1.Text);
d2:=StrToFloat (Edit2.Text);
z:=StrToFloat (Edit3.Text);
i1:=StrToInt (Edit4.Text);


// ������� ���������� � ������������ ����. �������� ���������� ������ ����� ��������� ������
Form1.Memo1.Lines.Clear;

If (CheckBox1.Checked=False) and (CheckBox2.Checked=False) and (CheckBox3.Checked=False) and (CheckBox4.Checked=False) and (CheckBox5.Checked=False) then begin
Form1.Memo1.Font.Size:=12;
Form1.Memo1.Font.Color:=clRed;
Form1.Memo1.Lines.Add('���������� �������� ����� ��������� �� ������ ������� � �����');
exit;
end;

If RadioButton1.Checked=True then begin
Chart1.Title.Text.Clear;
Chart1.Title.Text.Add('������ ��������� �������� �������� �� ��������');
Chart1.LeftAxis.Title.Caption:='�^3/c';
end;
If RadioButton2.Checked=True then begin
Chart1.Title.Text.Clear;
Chart1.Title.Text.Add('������ ��������� �������� �� ��������');
Chart1.LeftAxis.Title.Caption:='�/c';
end;
Chart1.BottomAxis.Title.Caption:='�';

Form1.Memo1.Font.Size:=8;
Form1.Memo1.Font.Color:=clWindowText;
Form1.Memo1.Lines.Add('��������� ������');
Form1.Memo1.Lines.Add('');
Form1.Memo1.Lines.Add('������� ����������: '+FloatToStr(D1)+'�');
Form1.Memo1.Lines.Add('������� ������������: '+FloatToStr(d2)+'�');
Form1.Memo1.Lines.Add('������ ������ ����: '+FloatToStr(z)+'�');
Form1.Memo1.Lines.Add('������ ������ ����� ����������: '+FloatToStr(i1));
Form1.Memo1.Lines.Add('');
Form1.Memo1.Lines.Add('');
Form1.Memo1.Lines.Add('��������� ������');
Form1.Memo1.Lines.Add('');
ProgressBar1.Max:=i1;

Series1.clear;

// ��������� ����
V2:=(z*pi*D1*D1)/4;
For i:=0 to i1 do
begin
// ������ ��������, ������ �������� � ������
if z>0 then begin
v1:=Sqrt(2*9.8*z);
Q:=(v1*pi*d2*d2)/4;


// ����� ��������� ������
p:='';
If CheckBox1.Checked=True then p:=p+'��� �'+FloatToStr(i)+'   ';
If CheckBox2.Checked=True then p:=p+'����.='+FloatToStr(v1)+'�/�   ';
If CheckBox3.Checked=True then p:=p+'����.='+FloatToStr(Q)+'�^3/�   ';
If CheckBox4.Checked=True then p:=p+'�����='+FloatToStr(V2)+'�^3   ';
If CheckBox5.Checked=True then p:=p+'������='+FloatToStr(z)+'�';
Form1.Memo1.Lines.Add(p);
Form1.Memo1.Lines.Add('');
ProgressBar1.Position:=i;

// ����� �������

If RadioButton1.Checked=True then Series1.AddXY(i,Q);
If RadioButton2.Checked=True then Series1.AddXY(i,v1);

// ���� ������
V2:=V2-Q;
z:=(4*V2)/(pi*D1*D1);


end else begin
// ���������� �����
Form1.Memo1.Lines.Add('');
Form1.Memo1.Lines.Add('��� �'+FloatToStr(i)+' ����������� ������ ��� �������� ������ ������ ���� ');
ProgressBar1.Position:=i1;
exit;
end;

end;

end;
//  ��������� 4 ��������� ������������ ������������ �������� ��������� ������
procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if  Key='.' then  Key:=',';
if (Key < '0') or (Key > '9') xor (Key=',') then Key:=#13;

end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if  Key='.' then  Key:=',';
if (Key < '0') or (Key > '9') xor (Key=',') then Key:=#13;

end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if  Key='.' then  Key:=',';
if (Key < '0') or (Key > '9') xor (Key=',') then Key:=#13;

end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if  Key='.' then  Key:=',';
if (Key < '0') or (Key > '9') then Key:=#13;
end;

//  ���������  ��������� ��������� ������� ������ ����
//  �����
procedure TForm1.N2Click(Sender: TObject);
begin
Form1.Close
end;

procedure TForm1.N4Click(Sender: TObject);
// ���������� ������ � ���� ������� RTF
begin
 SaveDialog1.FileName:='���������� �����������';
 If SaveDialog1.Execute Then
     Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.N5Click(Sender: TObject);
// ���������� ������� � ���� ������� wmf
begin
 If RadioButton1.Checked=True then SavePictureDialog1.FileName:='������ ��������� ������ ��������';
 If RadioButton2.Checked=True then SavePictureDialog1.FileName:='������ ��������� �������� �� ��������';
 If SavePictureDialog1.Execute then Chart1.SaveToMetaFile(SavePictureDialog1.FileName);
end;

procedure TForm1.N7Click(Sender: TObject);
begin
Form2.show;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm1.N24Click(Sender: TObject);
begin
Form4.show;
end;

procedure TForm1.FormClick(Sender: TObject);
begin
Form2.close;
Form3.close;
Form4.close;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.Series1.SeriesColor:=clMoneyGreen
end;

procedure TForm1.N12Click(Sender: TObject);
begin
if ColorDialog1.Execute then
Form1.Chart1.Color := ColorDialog1.Color;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
if ColorDialog1.Execute then
Form1.Memo1.Color := ColorDialog1.Color;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
if ColorDialog1.Execute then
Form1.Color := ColorDialog1.Color;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
if FontDialog1.Execute then
Form1.Memo1.Font:=FontDialog1.Font;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
if ColorDialog1.Execute then
Form1.Series1.SeriesColor:= ColorDialog1.Color;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 ProgressBar1.Position:=0;
end;

end.
