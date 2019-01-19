unit datamodule;

interface

uses
  SysUtils, Classes, DB, ADODB, IBQuery, IBCustomDataSet, IBTable,
  IBDatabase, IBUpdateSQL;

type
  TdmBasedados1 = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    IBQagenda: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    IBQagendaREGISTRO: TIntegerField;
    IBQagendaDATACOMPROMISSO: TDateField;
    IBQagendaHORARIO: TTimeField;
    IBQagendaDESCRICAO: TIBStringField;
    IBQagendaTERMINADO: TIBStringField;
    IBQcheque: TIBQuery;
    IBUpdateSQL2: TIBUpdateSQL;
    DataSource2: TDataSource;
    IBQchequeNCHEQUE: TIBStringField;
    IBQchequeCLIENTE: TIBStringField;
    IBQchequeBANCO: TIBStringField;
    IBQchequeVALOR: TIBStringField;
    IBQchequeCPF: TIBStringField;
    IBQchequeDATA: TIBStringField;
    IBQchequeCODCHEQUE: TIntegerField;
    IBQCliente: TIBQuery;
    IBUpdateSQL3: TIBUpdateSQL;
    IBQClienteCODCLIENTE: TIntegerField;
    IBQClienteNOME: TIBStringField;
    IBQClienteENDERECO: TIBStringField;
    IBQClienteNUMERO: TIntegerField;
    IBQClienteCEP: TIBStringField;
    IBQClienteBAIRRA: TIBStringField;
    IBQClienteCIDADE: TIBStringField;
    IBQClienteESTADO: TIBStringField;
    IBQClienteRG: TIBStringField;
    IBQClienteCPF: TIBStringField;
    IBQClienteTELEFONE: TIBStringField;
    IBQClienteCELULAR: TIBStringField;
    IBQClienteTELETRAB: TIBStringField;
    DataSource3: TDataSource;
    IBQCarro: TIBQuery;
    IBUpdateSQL4: TIBUpdateSQL;
    IBQCarroPLACA: TIBStringField;
    IBQCarroNCLIENTE: TIntegerField;
    IBQCarroNOME: TIBStringField;
    IBQCarroNOMECARRO: TIBStringField;
    IBQCarroANO: TIBStringField;
    IBQCarroFABRICANTE: TIBStringField;
    IBQCarroCOR: TIBStringField;
    IBQCarroCOMBUSTIVEL: TIBStringField;
    DataSource4: TDataSource;
    IBQOrdem: TIBQuery;
    IBQPeca: TIBQuery;
    IBQServico: TIBQuery;
    IBUpdateSQL5: TIBUpdateSQL;
    IBUpdateSQL6: TIBUpdateSQL;
    IBUpdateSQL7: TIBUpdateSQL;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    IBQOrdemCODORDEM: TIntegerField;
    IBQOrdemPLACACARRO: TIBStringField;
    IBQOrdemDATAENTRADA: TDateField;
    IBQOrdemDATASAIDA: TDateField;
    IBQOrdemKM: TFloatField;
    IBQOrdemOBSERVACAO: TIBStringField;
    IBQOrdemTOTAL: TFloatField;
    IBQOrdemRESPONSAVEL: TIBStringField;
    IBQPecaCODPECA: TIntegerField;
    IBQPecaQUANTIDADE: TIntegerField;
    IBQPecaDESCRICAO: TIBStringField;
    IBQPecaPRECOUNITARIO: TFloatField;
    IBQPecaPRECOTOTAL: TFloatField;
    IBQPecaTOTALPECA: TFloatField;
    IBQServicoCODSERVICO: TIntegerField;
    IBQServicoDESCRICAO: TIBStringField;
    IBQServicoVALOR: TFloatField;
    IBQServicoTOTALSERVICO: TFloatField;
    IBQServicoPLACA: TIBStringField;
    IBQServicoCORDEM: TIntegerField;
    IBQPecaPLACACAR: TIBStringField;
    IBQPecaCODORDEM: TIntegerField;
    IBQCarroCPF: TIBStringField;
    IBQOrdemPAGO: TIBStringField;
    IBQCarroTEL: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBasedados1: TdmBasedados1;

implementation

{$R *.dfm}

end.
