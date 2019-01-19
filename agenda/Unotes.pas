unit Unotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFmnotes = class(TForm)
    Memo: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmnotes: TFmnotes;

implementation
uses URotinasGerais, Unprincipal;
{$R *.dfm}

procedure TFmnotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:= caFree;
end;

end.
