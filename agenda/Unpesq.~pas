unit Unpesq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TFmpeq = class(TForm)
    GrdClientes: TDBGrid;
    Panel1: TPanel;
    LblMensagem: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RadioGroup1: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Chave: string;
  end;

var
  Fmpeq: TFmpeq;

implementation

{$R *.dfm}
 uses datamodule,Global,Unirelatorios;
procedure TFmpeq.FormCreate(Sender: TObject);
begin
DmBaseDados1.IBQcheque.Active:= true;
end;

procedure TFmpeq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (self.RadioGroup1.ItemIndex =0) then
   begin
   Fmpeq.chave:=dmBaseDados1.IBQcheque.fieldbyname('CLIENTE').AsString;
   dmBaseDados1.IBQcheque.Active:= false;
   dmBaseDados1.IBQcheque.SQL.Text:= 'Select * from CHEQUE';
   dmBaseDados1.IBQcheque.Active:= true;
   dmBaseDados1.IBQcheque.Locate('CLIENTE',Fmpeq.Chave,[]);
    end
    else
   begin
   Fmpeq.chave:=dmBaseDados1.IBQcheque.fieldbyname('NCHEQUE').AsString;
   dmBaseDados1.IBQcheque.Active:= false;
   dmBaseDados1.IBQcheque.SQL.Text:= 'Select * from CHEQUE';
   dmBaseDados1.IBQcheque.Active:= true;
   dmBaseDados1.IBQcheque.Locate('NCHEQUE',Fmpeq.Chave,[]);
   end;
end;

procedure TFmpeq.SpeedButton1Click(Sender: TObject);
begin
if (self.RadioGroup1.ItemIndex =0) then
begin
dmBaseDados1.IBQcheque.Active:= false;
DmBaseDados1.IBQcheque.SQL.Text:= ' Select * from CHEQUE ' +
      ' where CLIENTE like ' + '''' + '%' + Edit1.Text + '%' + '''' ;
dmBaseDados1.IBQcheque.Active:= true;
end
else
begin
dmBaseDados1.IBQcheque.Active:= false;
DmBaseDados1.IBQcheque.SQL.Text:= ' Select * from CHEQUE ' +
      ' where NCHEQUE like ' + '''' + '%' + Edit1.Text + '%' + '''' ;
dmBaseDados1.IBQcheque.Active:= true;
end;
end;

procedure TFmpeq.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure TFmpeq.SpeedButton3Click(Sender: TObject);
begin
  FmRelatorios.RvProject1.Close();
  FmRelatorios.RvProject1.ProjectFile:= 'C:\agenda\Rave\Project1.rav';
  FmRelatorios.RvProject1.Open();
  FmRelatorios.RvProject1.Execute();
  FmRelatorios.RvProject1.Close();
end;

end.
