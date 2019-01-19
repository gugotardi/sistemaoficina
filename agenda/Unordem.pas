unit Unordem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask, Grids, DBGrids;

type
  TFmordem = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBGrid2: TDBGrid;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Label18: TLabel;
    DBComboBox2: TDBComboBox;
    SpeedButton13: TSpeedButton;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Chave : string;
  end;

var
  Fmordem: TFmordem;

implementation
uses datamodule, unpescar, unpesqordem, Unirelatorios;
{$R *.dfm}

procedure TFmordem.FormShow(Sender: TObject);
begin
dmbasedados1.IBQOrdem.Edit;

DBEdit3.SetFocus;
with dmBasedados1.IBQCarro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CARRO');
    SQL.Add('WHERE (PLACA = :Pdt)');
    ParamByName('Pdt').AsString:= TRIM(DBEdit2.Text);
    Prepare;
    Open;
  end;
with dmBasedados1.IBQPeca do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PECA');
    SQL.Add('WHERE (CODORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
  end;
dmBasedados1.IBQPeca.Edit;
dmbasedados1.IBQPecaCODORDEM.Value:=dmbasedados1.IBQOrdemCODORDEM.Value;

 with dmBasedados1.IBQServico do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SERVICO');
    SQL.Add('WHERE (CORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
  end;
dmbasedados1.IBQServico.Edit;
dmbasedados1.IBQServicoCORDEM.Value:=dmbasedados1.IBQOrdemCODORDEM.Value;
dmbasedados1.IBQPeca.Last;
dmbasedados1.IBQServico.Last;


end;



procedure TFmordem.DBGrid1ColExit(Sender: TObject);
var
Bookmark: pointer;
Total: real;
begin
Bookmark := Dmbasedados1.IBQPeca.GetBookmark;
try
Dmbasedados1.IBQPeca.DisableControls;
Total:=0;
try
Dmbasedados1.IBQPeca.First;
while not Dmbasedados1.IBQPeca.Eof do
begin
Dmbasedados1.IBQPeca.Edit;
Total:= Total + ((Dmbasedados1.IBQPecaQUANTIDADE.Value)*(Dmbasedados1.IBQPecaPRECOUNITARIO.Value));
Dmbasedados1.IBQPecaPRECOTOTAL.Value := (Dmbasedados1.IBQPecaQUANTIDADE.Value)*(Dmbasedados1.IBQPecaPRECOUNITARIO.Value);
Dmbasedados1.IBQPecaTOTALPECA.Value := Total;
Dmbasedados1.IBQPeca.Next;
end;

finally
dmbasedados1.IBQPeca.EnableControls;
end
finally
Dmbasedados1.IBQPeca.GotoBookmark(Bookmark);
Dmbasedados1.IBQPeca.FreeBookmark(Bookmark);
end;
dmbasedados1.IBQOrdem.edit;
dmbasedados1.IBQOrdemTOTAL.Value:= (dmbasedados1.IBQServicoTOTALSERVICO.Value +total);
end;



procedure TFmordem.DBGrid2ColExit(Sender: TObject);
var
Bookmark : Pointer;
Totalser: real;
begin
Bookmark := Dmbasedados1.IBQServico.GetBookmark;
try
Dmbasedados1.IBQServico.DisableControls;
Totalser:=0;
try
Dmbasedados1.IBQServico.First;
while not Dmbasedados1.IBQServico.Eof do
begin

dmbasedados1.IBQServico.Edit;
Totalser:= Totalser + (Dmbasedados1.IBQServicoVALOR.Value);
dmbasedados1.IBQServicoTOTALSERVICO.Value:=(dmbasedados1.IBQServicoVALOR.Value)+(dmbasedados1.IBQServicoVALOR.Value);
Dmbasedados1.IBQServicoTOTALSERVICO.Value := Totalser;
Dmbasedados1.IBQServico.Next;
end;

finally
dmbasedados1.IBQServico.EnableControls;
end
finally
Dmbasedados1.IBQServico.GotoBookmark(Bookmark);
Dmbasedados1.IBQServico.FreeBookmark(Bookmark);
end;
dmbasedados1.IBQOrdem.Edit;
Dmbasedados1.IBQOrdemTOTAL.Value:= (dmbasedados1.IBQPecaTOTALPECA.Value + Totalser);
dmbasedados1.IBQOrdem.ApplyUpdates;
end;


procedure TFmordem.SpeedButton1Click(Sender: TObject);
begin
dmbasedados1.IBQPeca.Append;
dmbasedados1.IBQPecaCODORDEM.Value:=dmbasedados1.IBQOrdemCODORDEM.Value;
dmbasedados1.IBQPecaPLACACAR.Value:= dmbasedados1.IBQOrdemPLACACARRO.Value;
dbgrid1.SetFocus;
end;

procedure TFmordem.SpeedButton2Click(Sender: TObject);


begin


dmbasedados1.IBQCarro.Append;
dmbasedados1.IBQOrdem.Append;
DBEdit2.SetFocus;
 with dmBasedados1.IBQPeca do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PECA');
    SQL.Add('WHERE (CODORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
  end;
dmBasedados1.IBQPeca.Edit;
dmbasedados1.IBQPecaCODORDEM.Value:= strtoint (DBEdit1.Text);

 with dmBasedados1.IBQServico do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SERVICO');
    SQL.Add('WHERE (CORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
  end;
dmbasedados1.IBQServico.Edit;
dmbasedados1.IBQServicoCORDEM.Value:=dmbasedados1.IBQOrdemCODORDEM.Value;

end;


procedure TFmordem.SpeedButton3Click(Sender: TObject);
begin
dmbasedados1.IBQOrdem.Edit;
Fmpesqcar:= TFmpesqcar.Create(self);
Fmpesqcar.ShowModal();
dmbasedados1.IBQOrdem.FieldByName('PLACACARRO').AsString:=Fmpesqcar.chave;
Fmpesqcar.Destroy();
dmbasedados1.ibqpeca.edit;
dmbasedados1.ibqservico.edit;
dmbasedados1.IBQPecaPLACACAR.Value:=trim(DBEdit2.Text);
dmbasedados1.IBQServicoPLACA.Value:=trim(DBEdit2.Text);

end;

procedure TFmordem.SpeedButton4Click(Sender: TObject);
begin
dmbasedados1.IBQPeca.ApplyUpdates();
dmbasedados1.IBQServico.ApplyUpdates();
dmbasedados1.IBQOrdem.ApplyUpdates();
close;
end;

procedure TFmordem.SpeedButton5Click(Sender: TObject);
begin
dmbasedados1.IBQPeca.Delete;
end;

procedure TFmordem.SpeedButton6Click(Sender: TObject);
begin
dmbasedados1.IBQServico.Delete;
end;

procedure TFmordem.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:= caFree;
end;

procedure TFmordem.SpeedButton7Click(Sender: TObject);
begin
dmbasedados1.IBQServico.Append;
dmbasedados1.IBQServicoCORDEM.Value:=dmbasedados1.IBQOrdemCODORDEM.Value;
dmbasedados1.IBQServicoPLACA.Value:=dmbasedados1.IBQOrdemPLACACARRO.Value;
dbgrid2.SetFocus;
end;

procedure TFmordem.SpeedButton8Click(Sender: TObject);
begin
dmbasedados1.IBQOrdem.Prior;
dmbasedados1.IBQOrdem.Edit;

DBEdit3.SetFocus;

with dmBasedados1.IBQCarro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CARRO');
    SQL.Add('WHERE (PLACA = :Pdt)');
    ParamByName('Pdt').AsString:= TRIM(DBEdit2.Text);
    Prepare;
    Open;
  end;
with dmBasedados1.IBQPeca do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PECA');
    SQL.Add('WHERE (CODORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
  end;

 with dmBasedados1.IBQServico do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SERVICO');
    SQL.Add('WHERE (CORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
  end;
dmbasedados1.IBQPeca.Last;
dmbasedados1.IBQServico.Last;

end;

procedure TFmordem.SpeedButton9Click(Sender: TObject);
begin
dmbasedados1.IBQOrdem.Next;

dmbasedados1.IBQOrdem.Edit;
DBEdit3.SetFocus;
with dmBasedados1.IBQCarro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CARRO');
    SQL.Add('WHERE (PLACA = :Pdt)');
    ParamByName('Pdt').AsString:= TRIM(DBEdit2.Text);
    Prepare;
    Open;
  end;
with dmBasedados1.IBQPeca do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PECA');
    SQL.Add('WHERE (CODORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
  end;

 with dmBasedados1.IBQServico do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SERVICO');
    SQL.Add('WHERE (CORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
end;
dmbasedados1.IBQPeca.Last;
dmbasedados1.IBQServico.Last;

end;


procedure TFmordem.SpeedButton10Click(Sender: TObject);
begin
dmbasedados1.IBQOrdem.First;
dmbasedados1.IBQOrdem.Edit;

DBEdit3.SetFocus;

with dmBasedados1.IBQCarro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CARRO');
    SQL.Add('WHERE (PLACA = :Pdt)');
    ParamByName('Pdt').AsString:= TRIM(DBEdit2.Text);
    Prepare;
    Open;
  end;
with dmBasedados1.IBQPeca do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PECA');
    SQL.Add('WHERE (CODORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
  end;
with dmBasedados1.IBQServico do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SERVICO');
    SQL.Add('WHERE (CORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
end;
dmbasedados1.IBQPeca.Last;
dmbasedados1.IBQServico.Last;

end;

procedure TFmordem.SpeedButton11Click(Sender: TObject);


begin
dmbasedados1.IBQOrdem.Last;
dmbasedados1.IBQOrdem.Edit;

DBEdit3.SetFocus;

with dmBasedados1.IBQCarro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CARRO');
    SQL.Add('WHERE (PLACA = :Pdt)');
    ParamByName('Pdt').AsString:= TRIM(DBEdit2.Text);
    Prepare;
    Open;
  end;
with dmBasedados1.IBQPeca do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PECA');
    SQL.Add('WHERE (CODORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
  end;
with dmBasedados1.IBQServico do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SERVICO');
    SQL.Add('WHERE (CORDEM = :Pdt)');
    ParamByName('Pdt').AsInteger:= StrToint(DBEdit1.Text);
    Prepare;
    Open;
end;
dmbasedados1.IBQPeca.Last;
dmbasedados1.IBQServico.Last;


end;

procedure TFmordem.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_Return then
speedbutton1.Click;
end;

procedure TFmordem.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_Return then
speedbutton7.Click;
end;

procedure TFmordem.SpeedButton12Click(Sender: TObject);
begin
Fmpesqordem:= TFmpesqordem.Create(self);
Fmpesqordem.ShowModal;
Fmpesqordem.Destroy;
end;

procedure TFmordem.SpeedButton13Click(Sender: TObject);
begin
  FmRelatorios.RvProject4.Close();
  FmRelatorios.RvProject4.ProjectFile:= 'C:\agenda\Rave\Ordem.rav';
  FmRelatorios.RvProject4.Open();
  FmRelatorios.RvProject4.Execute();
  FmRelatorios.RvProject4.Close();
end;

procedure TFmordem.DBEdit2Change(Sender: TObject);
begin
 if (DBEdit2.Text = '') then
 begin
 speedButton3.Enabled:= true;
 end
 else
 begin
 speedButton3.Enabled:= false;
 end;
 end;

procedure TFmordem.SpeedButton14Click(Sender: TObject);
begin
speedbutton3.Enabled:=true;
end;

procedure TFmordem.SpeedButton15Click(Sender: TObject);
begin
speedbutton3.Enabled:=false;
end;

end.
