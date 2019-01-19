unit Unpesqcli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TFmpesqcli = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Edit2: TEdit;
    SpeedButton3: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  chave : string;
  end;

var
  Fmpesqcli: TFmpesqcli;

implementation
uses datamodule, URotinasGerais, Unirelatorios;
{$R *.dfm}

procedure TFmpesqcli.FormCreate(Sender: TObject);
begin
dmBaseDados1.IBQCliente.Active := true;
end;

procedure TFmpesqcli.SpeedButton1Click(Sender: TObject);
begin
dmBaseDados1.IBQCliente.Active:= false;
DmBaseDados1.IBQCliente.SQL.Text:= ' Select * from CLIENTE ' +
      ' where NOME like ' + '''' + '%' + Edit2.Text + '%' + '''' ;
dmBaseDados1.IBQCliente.Active:= true;
end;

procedure TFmpesqcli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Fmpesqcli.chave:=dmBaseDados1.IBQCliente.fieldbyname('NOME').AsString;
   dmBaseDados1.IBQCliente.Active:= false;
   dmBaseDados1.IBQCliente.SQL.Text:= 'Select * from CLIENTE';
   dmBaseDados1.IBQCliente.Active:= true;
   dmBaseDados1.IBQCliente.Locate('NOME',Fmpesqcli.chave,[]);
end;


procedure TFmpesqcli.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure TFmpesqcli.SpeedButton3Click(Sender: TObject);
begin
  FmRelatorios.RvProject3.Close();
  FmRelatorios.RvProject3.ProjectFile:= 'C:\agenda\Rave\telefones.rav';
  FmRelatorios.RvProject3.Open();
  FmRelatorios.RvProject3.Execute();
  FmRelatorios.RvProject3.Close();
end;

end.
