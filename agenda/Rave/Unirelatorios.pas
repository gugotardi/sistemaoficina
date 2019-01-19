unit Unirelatorios;

interface

uses
  SysUtils, Classes, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave,
  RpRender, RpRenderPDF, RpRenderText, RpRenderRTF;

type
  TFmRelatorios = class(TDataModule)
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    RvProject2: TRvProject;
    RvSystem2: TRvSystem;
    RvDataSetConnection2: TRvDataSetConnection;
    RvProject3: TRvProject;
    RvSystem3: TRvSystem;
    RvDataSetConnection3: TRvDataSetConnection;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderText1: TRvRenderText;
    RvRenderRTF1: TRvRenderRTF;
    RvProject4: TRvProject;
    RvSystem4: TRvSystem;
    RvDataSetConnection4: TRvDataSetConnection;
    RvProject5: TRvProject;
    RvProject6: TRvProject;
    RvSystem5: TRvSystem;
    RvSystem6: TRvSystem;
    RvDataSetConnection5: TRvDataSetConnection;
    RvDataSetConnection6: TRvDataSetConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRelatorios: TFmRelatorios;

implementation
uses datamodule;
{$R *.dfm}

end.
