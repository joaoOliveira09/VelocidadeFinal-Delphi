unit CalculoVelocidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 Result: Real;
begin
  if (Edit1.Text <> EmptyStr) and (Edit2.Text <> EmptyStr) and (Edit3.Text <> EmptyStr) then
     begin
       Result := StrToFloat(Edit1.Text) + (StrToFloat(Edit2.Text) * StrToFloat(Edit3.Text));
       ShowMessage(FloatToStr(Result));
     end;
end;
procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9', DecimalSeparator]) then
    begin
       ShowMessage('Caractere Inválido: ' + Key);
       Key := #0;
    end
  else
  if (Key = DecimalSeparator) and (Pos(Key, Edit1.Text) > 0) then
    begin
      ShowMessage('Caractere Duplicado: ' + Key);
      Key := #0;
    end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9', DecimalSeparator]) then
  begin
     ShowMessage('Caractere Inválido: ' + Key);
     Key := #0;
  end
else
  if (Key = DecimalSeparator) and (Pos(Key, Edit1.Text) > 0) then
    begin
      ShowMessage('Caractere Duplicado: ' + Key);
      Key := #0;
    end;
end;



procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9', DecimalSeparator]) then
  begin
     ShowMessage('Caractere Inválido: ' + Key);
     Key := #0;
  end
else
  if (Key = DecimalSeparator) and (Pos(Key, Edit1.Text) > 0) then
    begin
      ShowMessage('Caractere Duplicado: ' + Key);
      Key := #0;
    end;
end;
end.