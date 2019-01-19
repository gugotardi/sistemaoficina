unit Unpesqordem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFmpesqordem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Chave: string;
  end;

var
  Fmpesqordem: TFmpesqordem;

implementation
uses datamodule, Unordem;
{$R *.dfm}

procedure TFmpesqordem.SpeedButton1Click(Sender: TObject);
begin
if(self.RadioGroup1.ItemIndex=0)then
begin
dmBaseDados1.IBQOrdem.Active:= false;
DmBaseDados1.IBQOrdem.SQL.Text:= ' Select * from ORDEM ' +
      ' where CODORDEM like ' + '''' + '%' + Edit1.Text + '%' + '''' ;
dmBaseDados1.IBQOrdem.Active:= true;
end
else
begin
dmBaseDados1.IBQOrdem.Active:= false;
DmBaseDados1.IBQOrdem.SQL.Text:= ' Select * from ORDEM ' +
      ' where PLACACARRO like ' + '''' + '%' + Edit1.Text + '%' + '''' ;
dmBaseDados1.IBQOrdem.Active:= true;
end;
end;
procedure TFmpesqordem.FormClose(Sender: TObject;
  var Action: TCloseAction);
BEGIN
if(self.RadioGroup1.ItemIndex=0)then
begin
   Fmpesqordem.chave:=dmBaseDados1.IBQOrdem.fieldbyname('CODORDEM').AsString;
   dmBaseDados1.IBQOrdem.Active:= false;
   dmBaseDados1.IBQOrdem.SQL.Text:= 'Select * from ORDEM';
   dmBaseDados1.IBQOrdem.Active:= true;
   dmBaseDados1.IBQOrdem.Locate('CODORDEM',Fmpesqordem.Chave,[]);
with dmBasedados1.IBQCarro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CARRO');
    SQL.Add('WHERE (PLACA = :Pdt)');
    ParamByName('Pdt').AsString:=(dmbasedados1.IBQOrdemPLACACARRO.Value);
    Prepare;
    Open;
  end;
with dmBasedados1.IBQPeca do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PECA');
    SQL.Add('WHERE (CODORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= strtoint (Edit1.Text) ;
    Prepare;
    Open;
  end;
with dmBasedados1.IBQServico do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SERVICO');
    SQL.Add('WHERE (CORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= strtoint (Edit1.text) ;
    Prepare;
    Open;
end;
dmbasedados1.IBQPeca.Last;
dmbasedados1.IBQServico.Last;

end
else
begin
 Fmpesqordem.chave:=dmBaseDados1.IBQOrdem.fieldbyname('PLACACARRO').AsString;
   dmBaseDados1.IBQOrdem.Active:= false;
   dmBaseDados1.IBQOrdem.SQL.Text:= 'Select * from ORDEM';
   dmBaseDados1.IBQOrdem.Active:= true;
   dmBaseDados1.IBQOrdem.Locate('PLACACARRO',Fmpesqordem.Chave,[]);
with dmBasedados1.IBQCarro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CARRO');
    SQL.Add('WHERE (PLACA = :Pdt)');
    ParamByName('Pdt').AsString:=(Edit1.Text);
    Prepare;
    Open;
  end;
with dmBasedados1.IBQPeca do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PECA');
    SQL.Add('WHERE (CODORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= strtoint (dmbasedados1.IBQOrdemCODORDEM.AsString) ;
    Prepare;
    Open;
  end;
with dmBasedados1.IBQServico do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SERVICO');
    SQL.Add('WHERE (CORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= strtoint (dmbasedados1.IBQOrdemCODORDEM.AsString) ;
    Prepare;
    Open;
end;
dmbasedados1.IBQPeca.Last;
dmbasedados1.IBQServico.Last;

end;
end;
procedure TFmpesqordem.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
