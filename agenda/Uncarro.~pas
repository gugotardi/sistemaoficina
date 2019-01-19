unit Uncarro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, jpeg;

type
  TFmcarro = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmcarro: TFmcarro;

implementation
uses datamodule, Uncadcarro, URotinasGerais, Unpescar, Unirelatorios;

{$R *.dfm}

procedure TFmcarro.FormClose(Sender: TObject; var Action: TCloseAction);
begin

dmbasedados1.IBQCarro.Close;
Action:= caFree;
end;

procedure TFmcarro.FormShow(Sender: TObject);
begin
dmBaseDados1.IBQCarro.SQL.Text:= 'Select * from CARRO';
dmbasedados1.IBQCarro.Open;
end;

procedure TFmcarro.SpeedButton1Click(Sender: TObject);
begin
Fmcadcarro:=TFmcadcarro.Create(self);
Fmcadcarro.Tag:=1;//inserir
Fmcadcarro.ShowModal;
Fmcadcarro.Destroy;
end;

procedure TFmcarro.SpeedButton4Click(Sender: TObject);
begin
Fmcadcarro:=TFmcadcarro.Create(self);
Fmcadcarro.Tag:=3;
Fmcadcarro.ShowModal;
Fmcadcarro.Destroy;
end;

procedure TFmcarro.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure TFmcarro.SpeedButton5Click(Sender: TObject);
begin
if( Confirma('Você tem certeza que quer excluir esse topico da linha ')=6) then
dmbasedados1.IBQCarro.Delete;
end;

procedure TFmcarro.SpeedButton3Click(Sender: TObject);
begin
Fmpesqcar:= TFmpesqcar.Create(self);
Fmpesqcar.Tag := 2;
Fmpesqcar.ShowModal;
Fmpesqcar.Destroy;
end;

procedure TFmcarro.SpeedButton6Click(Sender: TObject);
begin
  FmRelatorios.RvProject2.Close();
  FmRelatorios.RvProject2.ProjectFile:= 'C:\agenda\Rave\carros.rav';
  FmRelatorios.RvProject2.Open();
  FmRelatorios.RvProject2.Execute();
  FmRelatorios.RvProject2.Close();
end;

end.
