unit Unprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, ToolWin, ImgList, jpeg;

type
  TFormprincipal = class(TForm)
    mnuPrincipal: TMainMenu;
    tmrRelogio0: TTimer;
    Compromissos1: TMenuItem;
    Agenda1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    N2: TMenuItem;
    Cadastro1: TMenuItem;
    Cheque1: TMenuItem;
    cblbotoes: TCoolBar;
    ToolBar1: TToolBar;
    ilBotoes: TImageList;
    BtnAgenda: TToolButton;
    ToolButton1: TToolButton;
    btnCadastroCheque: TToolButton;
    StsMensagens: TStatusBar;
    Image1: TImage;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Cliente1: TMenuItem;
    Btncliente: TToolButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    Veiculo1: TMenuItem;
    Relatrio1: TMenuItem;
    Cheque2: TMenuItem;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    Ordemdeservio1: TMenuItem;
    Ordemdeservio2: TMenuItem;
    Sobre1: TMenuItem;
    Sair2: TMenuItem;
    Carros1: TMenuItem;
    elefones1: TMenuItem;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    Mensagem1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure Cheque1Click(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure tmrRelogio0Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAgendaClick(Sender: TObject);
    procedure btnCadastroChequeClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure BtnclienteClick(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Veiculo1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure Cheque2Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure Ordemdeservio2Click(Sender: TObject);
    procedure Carros1Click(Sender: TObject);
    procedure elefones1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure Mensagem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formprincipal: TFormprincipal;

implementation
uses Uncompromisso, Unche, URotinasGerais, Global, Uncliente, Uncarro, Unirelatorios, Unordem, Unsobre, Unotes;
{$R *.dfm}
procedure TFormprincipal.ShowHint(Sender: Tobject);
Begin
 stsMensagens.Panels[2].text := Application.Hint;
end;
procedure TFormprincipal.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFormprincipal.Agenda1Click(Sender: TObject);
var
Form1: TForm1;
begin
Form1:= TForm1.Create(application);
Form1.Top := 0;
Form1.Left := 0;


end;

procedure TFormprincipal.Cheque1Click(Sender: TObject);
Var
Fche: TFche;
begin
Fche:= TFche.Create(application);
Fche.Top:= 0;
Fche.Left:= 0;

end;

procedure TFormprincipal.tmrRelogio0Timer(Sender: TObject);
begin
stsMensagens.Panels[1].Text := TimeToStr(Time);
end;

procedure TFormprincipal.FormCreate(Sender: TObject);
begin
application.OnHint := ShowHint;
end;

procedure TFormprincipal.FormShow(Sender: TObject);
begin
With Formprincipal do
begin
    top:= 0;
    Left:= 0;
    Width := Screen.Width;
    Height := screen.Height;
end;
//Mostra a data na barra de status
stsMensagens.Panels[0].Text := MostraData(date);
//cblBotoes.Bitmap.LoadFromFile('FUNDO.BMP');
stsMensagens.Panels[2].Text := '';

end;

procedure TFormprincipal.BtnAgendaClick(Sender: TObject);
var
Form1: TForm1;
begin
Form1:= TForm1.Create(application);
Form1.Top := 0;
Form1.Left := 0;

end;

procedure TFormprincipal.btnCadastroChequeClick(Sender: TObject);
Var
Fche: TFche;
begin
Fche:= TFche.Create(application);
Fche.Top:= 0;
Fche.Left:= 0;

end;

procedure TFormprincipal.ToolButton2Click(Sender: TObject);
begin
close;
end;

procedure TFormprincipal.BtnclienteClick(Sender: TObject);
Var
Fmcliente: TFmcliente;
begin
Fmcliente:= TFmcliente.Create(application);
Fmcliente.Top:= 0;
Fmcliente.Left:= 0;
end;

procedure TFormprincipal.Cliente1Click(Sender: TObject);
Var
Fmcliente: TFmcliente;
begin
Fmcliente:= TFmcliente.Create(application);
Fmcliente.Top:= 0;
Fmcliente.Left:= 0;
end;

procedure TFormprincipal.Veiculo1Click(Sender: TObject);
Var
Fmcarro:TFmcarro;
begin
Fmcarro:= TFmcarro.Create(application);
Fmcarro.Top:= 0;
Fmcarro.Left:=0;
end;

procedure TFormprincipal.ToolButton4Click(Sender: TObject);
Var
Fmcarro:TFmcarro;
begin
Fmcarro:= TFmcarro.Create(application);
Fmcarro.Top:= 0;
Fmcarro.Left:=0;
end;

procedure TFormprincipal.Sair2Click(Sender: TObject);
begin
close;
end;

procedure TFormprincipal.ToolButton7Click(Sender: TObject);
var
Fmordem: TFmordem;
begin
Fmordem:= TFmordem.Create(application);
Fmordem.Top:=0;
Fmordem.Left:=0;
end;

procedure TFormprincipal.Ordemdeservio2Click(Sender: TObject);
var
Fmordem: TFmordem;
begin
Fmordem:= TFmordem.Create(application);
Fmordem.Top:=0;
Fmordem.Left:=0;
end;

procedure TFormprincipal.Cheque2Click(Sender: TObject);
begin
  FmRelatorios.RvProject1.Close();
  FmRelatorios.RvProject1.ProjectFile:= 'C:\agenda\Rave\Project1.rav';
  FmRelatorios.RvProject1.Open();
  FmRelatorios.RvProject1.Execute();
  FmRelatorios.RvProject1.Close();
end;

procedure TFormprincipal.Carros1Click(Sender: TObject);
begin
  FmRelatorios.RvProject2.Close();
  FmRelatorios.RvProject2.ProjectFile:= 'C:\agenda\Rave\carros.rav';
  FmRelatorios.RvProject2.Open();
  FmRelatorios.RvProject2.Execute();
  FmRelatorios.RvProject2.Close();
end;

procedure TFormprincipal.elefones1Click(Sender: TObject);
begin
  FmRelatorios.RvProject3.Close();
  FmRelatorios.RvProject3.ProjectFile:= 'C:\agenda\Rave\telefones.rav';
  FmRelatorios.RvProject3.Open();
  FmRelatorios.RvProject3.Execute();
  FmRelatorios.RvProject3.Close();
end;

procedure TFormprincipal.Sobre1Click(Sender: TObject);
var
Fmsobre:TFmSobre;
begin
Fmsobre:= TFmSobre.Create(application);
Fmsobre.Top:=0;
Fmsobre.Left:=0;
end;

procedure TFormprincipal.ToolButton9Click(Sender: TObject);
var
Fmnotes:TFmnotes;
begin
Fmnotes:= TFmnotes.Create(application);
Fmnotes.Top:=0;
Fmnotes.Left:=0;
end;

procedure TFormprincipal.Mensagem1Click(Sender: TObject);
var
Fmnotes:TFmnotes;
begin
Fmnotes:= TFmnotes.Create(application);
Fmnotes.Top:=0;
Fmnotes.Left:=0;

end;

end.
