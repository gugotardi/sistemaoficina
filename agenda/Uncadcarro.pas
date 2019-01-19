unit Uncadcarro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DBCtrls, Mask, ExtCtrls, jpeg;

type
  TFmcadcarro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
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
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    DBEdit2: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Fmcadcarro: TFmcadcarro;

implementation
uses datamodule, URotinasGerais, Unpesqcli;
{$R *.dfm}
procedure TFmcadcarro.FormShow(Sender: TObject);
begin
case (Fmcadcarro.Tag) of
 1:begin
  dmbasedados1.IBQCarro.Last();
  dmBaseDados1.IBQCarro.Append();

  Fmcadcarro.DBEdit2.Enabled := false;
  Fmcadcarro.DBEdit1.SetFocus;

  end;
  3:begin
         Fmcadcarro.DBEdit2.Enabled:=False;
         dmBaseDados1.IBQCarro.Edit();

         Fmcadcarro.DBEdit3.SetFocus();

 end;
 end;
end;

procedure TFmcadcarro.SpeedButton1Click(Sender: TObject);
begin
case (Fmcadcarro.Tag) of
 1:begin
        if(DBEdit1.Text='')then
        begin
        Mensagem('É necessario preencher a placa !!');
        end
        else
        begin
        dmbasedados1.IBQCarro.ApplyUpdates();
        dmbasedados1.IBQCarro.Last;
        dmBaseDados1.IBQCarro.Append();
        Fmcadcarro.DBEdit2.Enabled := false;
        Fmcadcarro.DBEdit1.SetFocus();

        end;
 end;
 3:begin
        if(dmBasedados1.IBQCarro.FieldByName('PLACA').IsNull) then
         begin
         Mensagem('Faltou preencher Placa');
         end
         else
         begin
         dmBaseDados1.IBQCarro.ApplyUpdates();

         end;
       end;
end;
end;



procedure TFmcadcarro.SpeedButton3Click(Sender: TObject);
begin

Fmpesqcli:= TFmpesqcli.Create(self);
Fmpesqcli.ShowModal();
dmbasedados1.IBQCarro.FieldByName('NOME').AsString:=Fmpesqcli.chave;
dmbasedados1.IBQCarroNCLIENTE.Value:= dmbasedados1.IBQClienteCODCLIENTE.Value;
dmbasedados1.IBQCarroCPF.Value:= dmbasedados1.IBQClienteCPF.Value;
dmbasedados1.IBQCarroTEL.Value:= dmbasedados1.IBQClienteTELEFONE.Value;
Fmpesqcli.Destroy;
end;
procedure TFmcadcarro.SpeedButton2Click(Sender: TObject);
begin

 close;
 end;

procedure TFmcadcarro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fmcadcarro.DBEdit2.Enabled := true;

end;

end.
