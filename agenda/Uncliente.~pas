unit Uncliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, jpeg;

type
  TFmcliente = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmcliente: TFmcliente;

implementation
uses datamodule, URotinasGerais, Unprincipal, Uncadcli, Unpesqcli, Unirelatorios ;
{$R *.dfm}
procedure TFmcliente.FormShow(Sender: TObject);
begin
dmBaseDados1.IBQCliente.SQL.Text:= 'Select * from CLIENTE';
dmBasedados1.IBQCliente.Open;
end;

procedure TFmcliente.SpeedButton1Click(Sender: TObject);
begin

Fmcadcli:=TFmcadcli.Create(self);
Fmcadcli.Tag:=1;
Fmcadcli.ShowModal;
Fmcadcli.Destroy;
end;

procedure TFmcliente.SpeedButton3Click(Sender: TObject);
begin
Fmcadcli:=TFmcadcli.Create(self);
Fmcadcli.Tag:=3;
Fmcadcli.ShowModal;
Fmcadcli.Destroy;
end;

procedure TFmcliente.SpeedButton4Click(Sender: TObject);
begin
if( Confirma('Você tem certeza que quer excluir esse topico da linha ')=6) then
         dmBaseDados1.IBQCliente.Delete
         else
end;

procedure TFmcliente.SpeedButton5Click(Sender: TObject);
begin
close;
end;

procedure TFmcliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dmBaseDados1.IBQCliente.Close;
Action:= caFree;
end;



procedure TFmcliente.SpeedButton2Click(Sender: TObject);
begin
Fmpesqcli:=TFmpesqcli.Create(self);
Fmpesqcli.Tag:=2;
Fmpesqcli.ShowModal;
Fmpesqcli.Destroy;
end;

procedure TFmcliente.SpeedButton6Click(Sender: TObject);
begin
  FmRelatorios.RvProject3.Close();
  FmRelatorios.RvProject3.ProjectFile:= 'C:\agenda\Rave\telefones.rav';
  FmRelatorios.RvProject3.Open();
  FmRelatorios.RvProject3.Execute();
  FmRelatorios.RvProject3.Close();
end;

end.
