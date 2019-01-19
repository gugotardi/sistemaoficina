unit Unche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, DB, Mask, Grids, DBGrids, Buttons;

type
  TFche = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fche: TFche;

implementation

uses datamodule,Global,URotinasGerais,Uncadche,Unpesq,Unirelatorios;

{$R *.dfm}


procedure TFche.FormShow(Sender: TObject);
begin
dmbasedados1.IBQcheque.Open;

end;

procedure TFche.SpeedButton1Click(Sender: TObject);
begin

Fmcadche:=TFmcadche.Create(self);
Fmcadche.Tag:=1;//inserir
Fmcadche.ShowModal;
Fmcadche.Destroy;
end;

procedure TFche.SpeedButton2Click(Sender: TObject);
begin
Fmpeq:= TFmpeq.Create(self);
Fmpeq.Tag := 2;
Fmpeq.ShowModal;
Fmpeq.Destroy;
end;

procedure TFche.SpeedButton3Click(Sender: TObject);
begin
Fmcadche:=TFmcadche.Create(self);
Fmcadche.Tag:=3;//inserir
Fmcadche.ShowModal;
Fmcadche.Destroy;
end;

procedure TFche.SpeedButton5Click(Sender: TObject);
begin
close;
end;

procedure TFche.SpeedButton4Click(Sender: TObject);
begin
if( Confirma('Você tem certeza que quer excluir esse topico da linha ')=6) then
         dmBaseDados1.IBQcheque.Delete
         else
end;

procedure TFche.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dmBaseDados1.IBQcheque.Close;
Action:= caFree;
end;

procedure TFche.SpeedButton6Click(Sender: TObject);
begin
  FmRelatorios.RvProject1.Close();
  FmRelatorios.RvProject1.ProjectFile:= 'C:\agenda\Rave\Project1.rav';
  FmRelatorios.RvProject1.Open();
  FmRelatorios.RvProject1.Execute();
  FmRelatorios.RvProject1.Close();
end;

end.
