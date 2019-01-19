unit Unpescar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  TFmpesqcar = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RadioGroup1: TRadioGroup;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Chave:string;
  end;

var
  Fmpesqcar: TFmpesqcar;

implementation
uses Datamodule, Unirelatorios, Unordem;
{$R *.dfm}

procedure TFmpesqcar.FormCreate(Sender: TObject);
begin
dmBaseDados1.IBQCarro.SQL.Text:= 'Select * from CARRO';
DmBaseDados1.IBQCarro.Open;
end;

procedure TFmpesqcar.SpeedButton1Click(Sender: TObject);
begin
if (self.RadioGroup1.ItemIndex =0) then
begin
dmBaseDados1.IBQCarro.Active:= false;
DmBaseDados1.IBQCarro.SQL.Text:= ' Select * from CARRO ' +
      ' where PLACA like ' + '''' + '%' + Edit1.Text + '%' + '''' ;
dmBaseDados1.IBQCarro.Active:= true;
end
else
begin
dmBaseDados1.IBQCarro.Active:= false;
DmBaseDados1.IBQCarro.SQL.Text:= ' Select * from CARRO ' +
      ' where NOME like ' + '''' + '%' + Edit1.Text + '%' + '''' ;
dmBaseDados1.IBQCarro.Active:= true;
end;

end;
procedure TFmpesqcar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (self.RadioGroup1.ItemIndex =0) then
   begin
   Fmpesqcar.chave:=dmBaseDados1.IBQCarro.fieldbyname('PLACA').AsString;
   dmBaseDados1.IBQCarro.Active:= false;
   dmBaseDados1.IBQCarro.SQL.Text:= 'Select * from CARRO';
   dmBaseDados1.IBQCARRO.Active:= true;
   dmBaseDados1.IBQCARRO.Locate('PLACA',Fmpesqcar.Chave,[]);
   end
   else
   begin
   Fmpesqcar.chave:=dmBaseDados1.IBQCarro.fieldbyname('NOME').AsString;
   dmBaseDados1.IBQCarro.Active:= false;
   dmBaseDados1.IBQCarro.SQL.Text:= 'Select * from CARRO';
   dmBaseDados1.IBQCARRO.Active:= true;
   dmBaseDados1.IBQCARRO.Locate('NOME',Fmpesqcar.Chave,[])
   end;

end;

procedure TFmpesqcar.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure TFmpesqcar.SpeedButton3Click(Sender: TObject);
begin
  FmRelatorios.RvProject2.Close();
  FmRelatorios.RvProject2.ProjectFile:= 'C:\agenda\Rave\carros.rav';
  FmRelatorios.RvProject2.Open();
  FmRelatorios.RvProject2.Execute();
  FmRelatorios.RvProject2.Close();
end;

end.
