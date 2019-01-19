unit Uncadche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons;

type
  TFmcadche = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBText1: TDBText;
    Panel1: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Ultimo:integer;
  end;

var
  Fmcadche: TFmcadche;

implementation
uses datamodule,Global,URotinasGerais,Unche,Unpesq;

{$R *.dfm}

procedure TFmcadche.FormShow(Sender: TObject);
begin

case (Fmcadche.Tag) of
 1:begin
  dmbasedados1.IBQcheque.Last();
  //Ultimo:= dmBaseDados1.IBQcheque.fieldByName ('CODCHEQUE').AsInteger;
  dmBaseDados1.IBQcheque.Append();
  Ultimo:= Ultimo+1;
  //dmBaseDados1.IBQcheque.fieldByName ('CODCHEQUE').asinteger:= Ultimo;
  Fmcadche.DBText1.Enabled:= false;
  Fmcadche.DBEdit2.SetFocus;

  end;
  3:begin
         Fmcadche.DBText1.Enabled:=False;
         dmBaseDados1.IBQcheque.Edit();
         Fmcadche.DBEdit2.SetFocus();

 end;
 end;
end;



procedure TFmcadche.SpeedButton1Click(Sender: TObject);
begin
case (Fmcadche.Tag) of
 1:begin
        if(DBEdit2.Text='')then
        begin
        Mensagem('É necessario colocar o numero do cheque!!');
        end
        else
        begin
        dmBaseDados1.IBQcheque.ApplyUpdates();
        dmBaseDados1.IBQcheque.Last;
        //Ultimo:=(dmBaseDados1.IBQcheque.fieldByname('CODCHEQUE').AsInteger);
        dmBaseDados1.IBQcheque.Append();
        Ultimo:=(Ultimo+1);
        //dmBaseDados1.IBQcheque.FieldByName('CODCHEQUE').AsInteger:= Ultimo;
         Fmcadche.DBEdit2.SetFocus();

        end;
 end;
 3:begin
        if(dmBasedados1.IBQcheque.FieldByName('NCHEQUE').IsNull) then
         begin
         Mensagem('Faltou preencher descricao');
         end
         else
         begin
         dmBaseDados1.IBQcheque.ApplyUpdates();
         end;
       end;
end;
end;

procedure TFmcadche.SpeedButton2Click(Sender: TObject);
begin
close;
end;
procedure TFmcadche.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Fmcadche.DBText1.Enabled:=true;

end;
end.
