program Project1;

uses
  Forms,
  Uncompromisso in 'Uncompromisso.pas' {Form1},
  datamodule in 'datamodule.pas' {dmBasedados1: TDataModule},
  Unprincipal in 'Unprincipal.pas' {Formprincipal},
  Unche in 'Unche.pas' {Fche},
  URotinasGerais in 'URotinasGerais.pas',
  Global in 'Global.pas',
  Unpesq in 'Unpesq.pas' {Fmpeq},
  Uncadche in 'Uncadche.pas' {Fmcadche},
  Uncliente in 'Uncliente.pas' {Fmcliente},
  Uncadcli in 'Uncadcli.pas' {Fmcadcli},
  Unpesqcli in 'Unpesqcli.pas' {Fmpesqcli},
  Uncarro in 'Uncarro.pas' {Fmcarro},
  Uncadcarro in 'Uncadcarro.pas' {Fmcadcarro},
  Unirelatorios in 'Rave\Unirelatorios.pas' {FmRelatorios: TDataModule},
  Unpescar in 'Unpescar.pas' {Fmpesqcar},
  Unordem in 'Unordem.pas' {Fmordem},
  Unpesqordem in 'Unpesqordem.pas' {Fmpesqordem},
  Unsobre in 'Unsobre.pas' {Fmsobre},
  Unotes in 'Unotes.pas' {Fmnotes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmBasedados1, dmBasedados1);
  Application.CreateForm(TFormprincipal, Formprincipal);
  Application.CreateForm(TFmRelatorios, FmRelatorios);
  Application.Run;
end.
