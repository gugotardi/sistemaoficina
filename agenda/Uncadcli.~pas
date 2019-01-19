unit Uncadcli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons, Grids, DBGrids;

type
  TFmcadcli = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label15: TLabel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);



  private
  { Private declarations }
            //procedure Consultacarro;
  public
    { Public declarations }
  Ultimo: integer;
  end;

var
  Fmcadcli: TFmcadcli;

implementation
uses datamodule,Global,URotinasGerais;
{$R *.dfm}


procedure TFmcadcli.FormShow(Sender: TObject);
begin
with dmBasedados1.IBQCarro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CARRO');
    SQL.Add('WHERE (NCLIENTE = :Pdt)');
    ParamByName('Pdt').AsString:= trim(Fmcadcli.DBText1.Caption);
    Prepare;
    Open;
  end;
dmbasedados1.IBQCliente.open;
case (Fmcadcli.Tag) of
 1:begin

 
  dmbasedados1.IBQCliente.Last();
  Ultimo:= dmBaseDados1.IBQCliente.fieldByName ('CODCLIENTE').AsInteger;
  dmBaseDados1.IBQCliente.Append();
  Ultimo:= Ultimo+1;
  dmBaseDados1.IBQCliente.fieldByName ('CODCLIENTE').asinteger:= Ultimo;
  Fmcadcli.DBText1.Enabled:= false;
  Fmcadcli.DBEdit1.SetFocus;

  end;
  3:begin

         Fmcadcli.DBText1.Enabled:=False;
         dmBaseDados1.IBQCliente.Edit();
         Fmcadcli.DBEdit1.SetFocus();

   end;

end;
end;


procedure TFmcadcli.SpeedButton1Click(Sender: TObject);

begin
with dmBasedados1.IBQCarro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CARRO');
    SQL.Add('WHERE (NCLIENTE = :Pdt)');
    ParamByName('Pdt').AsString:= trim(Fmcadcli.DBText1.Caption);
    Prepare;
    Open;
  end;
case (Fmcadcli.Tag) of
 1:begin

        if(DBEdit1.Text='')then
        begin
        Mensagem('É necessario colocar o numero do cheque!!');
        end
        else
        begin
        dmBaseDados1.IBQCliente.ApplyUpdates();
        dmBaseDados1.IBQCliente.Last;
        Ultimo:=(dmBaseDados1.IBQCliente.fieldByname('CODCLIENTE').AsInteger);
        dmBaseDados1.IBQCliente.Append();
        Ultimo:=(Ultimo+1);
        dmBaseDados1.IBQCliente.FieldByName('CODCLIENTE').AsInteger:= Ultimo;
         Fmcadcli.DBEdit1.SetFocus();

        end;
 end;
 3:begin

        if(dmBasedados1.IBQCliente.FieldByName('NOME').IsNull) then
         begin
         Mensagem('Faltou preencher descricao');
         end
         else
         begin
         dmBaseDados1.IBQCliente.ApplyUpdates();
         end;
       end;
end;
end;

procedure TFmcadcli.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure TFmcadcli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Fmcadcli.DBText1.Enabled:=true;
 dmbasedados1.IBQCliente.Close;
 dmbasedados1.IBQCliente.Open;
 end;



end.
