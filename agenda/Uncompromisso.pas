unit Uncompromisso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, datamodule, Grids, DBGrids, Buttons,
  DBCtrls;

type
  TForm1 = class(TForm)
    pncalendario: TPanel;
    Calendario: TMonthCalendar;
    grdcompromissos: TDBGrid;
    btnincluir: TSpeedButton;
    btnalterar: TSpeedButton;
    btnexcluir: TSpeedButton;
    btnsair: TSpeedButton;
    Panel1: TPanel;
    ibldata: TLabel;
    iblhora: TLabel;
    iblcompromisso: TLabel;
    Datacompromisso: TLabel;
    fldcompromisso: TLabel;
    Mencom: TMemo;
    cmbhorario: TComboBox;
    RadioGroup1: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsairClick(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
    procedure CalendarioClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
  



  private
    procedure ConsultaAgenda;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DB, IBQuery, URotinasGerais, Global;

{$R *.dfm}

procedure TForm1.ConsultaAgenda;
begin
  with dmBasedados1.IBQagenda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM AGENDA');
    SQL.Add('WHERE (Datacompromisso = :Pdt)');
    ParamByName('Pdt').AsDate:= StrToDate(fldcompromisso.Caption);
    Prepare;
    Open;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  fldcompromisso.Caption := datetostr(date);
  Calendario.Date := Date;
  ConsultaAgenda;
  cmbhorario.ItemIndex := 0;
end;

procedure TForm1.btnincluirClick(Sender: TObject);
begin

  if (Mencom.Text = '') then
  begin
   Mensagem ('Digite alguma coisa');
  end
  else
  begin

  dmBasedados1.IBQagenda.Append;

  dmBasedados1.IBQagendaDATACOMPROMISSO.AsDateTime:= StrToDate(fldcompromisso.Caption);
  dmBasedados1.IBQagendaHORARIO.AsDateTime :=strtotime(cmbhorario.Text);
  dmBasedados1.IBQagendaDescricao.AsString := Trim(Mencom.Text);

   if (self.RadioGroup1.ItemIndex =0) then
   begin
   dmBaseDados1.IBQagendaTERMINADO.AsString := 'sim';
   end
   else
   begin
   dmbasedados1.IBQagendaTERMINADO.AsString := 'Não';
   end;
  dmBaseDados1.IBQagenda.Post;
  dmBasedados1.IBTransaction1.Commit;
  fldCompromisso.Caption := Datetostr(date);
  cmbhorario.ItemIndex :=0;
  Mencom.Text :='';
  Mencom.SetFocus;
  dmBaseDados1.IBQagenda.Active := false;
  dmBaseDados1.IBQagenda.Active := true;
  end;
end;

procedure TForm1.CalendarioClick(Sender: TObject);
begin
  fldcompromisso.Caption:= DateToStr(Calendario.Date);
  ConsultaAgenda;
end;


procedure TForm1.btnalterarClick(Sender: TObject);
begin
 if (Mencom.Text = '') then
  begin
   Mensagem ('Digite alguma coisa');
  end
  else
  begin
   dmBasedados1.IBQagenda.Edit;
   dmBasedados1.IBQagendaDATACOMPROMISSO.AsDateTime:= StrToDate(fldcompromisso.Caption);
   dmBasedados1.IBQagendaHORARIO.AsDateTime :=strtotime(cmbhorario.Text);
   dmBasedados1.IBQagendaDescricao.AsString := Trim(Mencom.Text);
   if (self.RadioGroup1.ItemIndex =0) then
   begin
   dmBaseDados1.IBQagendaTERMINADO.AsString := 'sim';
   end
   else
   begin
   dmbasedados1.IBQagendaTERMINADO.AsString := 'Não';
    end;
   dmBaseDados1.IBQagenda.Post;
   dmBasedados1.IBTransaction1.Commit;
   fldCompromisso.Caption := Datetostr(date);
   cmbhorario.ItemIndex :=0;
   
   Mencom.Text := '';
   Mencom.SetFocus;
   dmBaseDados1.IBQagenda.Active := false;
  dmBaseDados1.IBQagenda.Active := true;
  end;
end;

procedure TForm1.btnexcluirClick(Sender: TObject);
begin
if( Confirma('Você tem certeza que quer excluir esse topico da linha ')=6) then
         dmBaseDados1.IBQagenda.Delete
         else
end;

procedure TForm1.btnsairClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmbasedados1.IBQagenda.Close;
  Action := caFree;
end;
end.




