object dmBasedados1: TdmBasedados1
  OldCreateOrder = True
  Left = 354
  Top = 278
  Height = 442
  Width = 519
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\agenda\Banco\OFI.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 32
    Top = 176
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 104
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = IBQagenda
    Left = 344
    Top = 8
  end
  object IBQagenda: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from AGENDA')
    UpdateObject = IBUpdateSQL1
    GeneratorField.Field = 'REGISTRO'
    GeneratorField.Generator = 'REGISTRO'
    Left = 176
    Top = 8
    object IBQagendaREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'AGENDA.REGISTRO'
      Required = True
    end
    object IBQagendaDATACOMPROMISSO: TDateField
      FieldName = 'DATACOMPROMISSO'
      Origin = 'AGENDA.DATACOMPROMISSO'
    end
    object IBQagendaHORARIO: TTimeField
      FieldName = 'HORARIO'
      Origin = 'AGENDA.HORARIO'
    end
    object IBQagendaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'AGENDA.DESCRICAO'
      Size = 100
    end
    object IBQagendaTERMINADO: TIBStringField
      FieldName = 'TERMINADO'
      Origin = 'AGENDA.TERMINADO'
      Size = 30
    end
  end
  object IBUpdateSQL1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  REGISTRO,'
      '  DATACOMPROMISSO,'
      '  HORARIO,'
      '  DESCRICAO,'
      '  TERMINADO'
      'from AGENDA '
      'where'
      '  REGISTRO = :REGISTRO')
    ModifySQL.Strings = (
      'update AGENDA'
      'set'
      '  REGISTRO = :REGISTRO,'
      '  DATACOMPROMISSO = :DATACOMPROMISSO,'
      '  HORARIO = :HORARIO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TERMINADO = :TERMINADO'
      'where'
      '  REGISTRO = :OLD_REGISTRO')
    InsertSQL.Strings = (
      'insert into AGENDA'
      '  (REGISTRO, DATACOMPROMISSO, HORARIO, DESCRICAO, TERMINADO)'
      'values'
      
        '  (:REGISTRO, :DATACOMPROMISSO, :HORARIO, :DESCRICAO, :TERMINADO' +
        ')')
    DeleteSQL.Strings = (
      'delete from AGENDA'
      'where'
      '  REGISTRO = :OLD_REGISTRO')
    Left = 256
    Top = 8
  end
  object IBQcheque: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CHEQUE')
    UpdateObject = IBUpdateSQL2
    GeneratorField.Field = 'CODCHEQUE'
    GeneratorField.Generator = 'COCHEQUE'
    Left = 176
    Top = 64
    object IBQchequeNCHEQUE: TIBStringField
      DisplayWidth = 27
      FieldName = 'NCHEQUE'
      Origin = 'CHEQUE.NCHEQUE'
      Required = True
      Size = 100
    end
    object IBQchequeCLIENTE: TIBStringField
      DisplayWidth = 32
      FieldName = 'CLIENTE'
      Origin = 'CHEQUE.CLIENTE'
      Size = 100
    end
    object IBQchequeBANCO: TIBStringField
      DisplayWidth = 17
      FieldName = 'BANCO'
      Origin = 'CHEQUE.BANCO'
      Size = 100
    end
    object IBQchequeVALOR: TIBStringField
      DisplayWidth = 12
      FieldName = 'VALOR'
      Origin = 'CHEQUE.VALOR'
      EditMask = 'R$ 9999,99;1;_'
      Size = 100
    end
    object IBQchequeCPF: TIBStringField
      DisplayWidth = 24
      FieldName = 'CPF'
      Origin = 'CHEQUE.CPF'
      EditMask = '999999999-99;1;_'
      Size = 100
    end
    object IBQchequeDATA: TIBStringField
      DisplayWidth = 15
      FieldName = 'DATA'
      Origin = 'CHEQUE.DATA'
      EditMask = '!99/99/00;1;_'
      Size = 25
    end
    object IBQchequeCODCHEQUE: TIntegerField
      DisplayWidth = 14
      FieldName = 'CODCHEQUE'
      Origin = 'CHEQUE.CODCHEQUE'
    end
  end
  object IBUpdateSQL2: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  NCHEQUE,'
      '  CLIENTE,'
      '  BANCO,'
      '  VALOR,'
      '  CPF,'
      '  DATA,'
      '  CODCHEQUE'
      'from CHEQUE '
      'where'
      '  CODCHEQUE = :CODCHEQUE')
    ModifySQL.Strings = (
      'update CHEQUE'
      'set'
      '  NCHEQUE = :NCHEQUE,'
      '  CLIENTE = :CLIENTE,'
      '  BANCO = :BANCO,'
      '  VALOR = :VALOR,'
      '  CPF = :CPF,'
      '  DATA = :DATA,'
      '  CODCHEQUE = :CODCHEQUE'
      'where'
      '  CODCHEQUE = :OLD_CODCHEQUE')
    InsertSQL.Strings = (
      'insert into CHEQUE'
      '  (NCHEQUE, CLIENTE, BANCO, VALOR, CPF, DATA, CODCHEQUE)'
      'values'
      '  (:NCHEQUE, :CLIENTE, :BANCO, :VALOR, :CPF, :DATA, :CODCHEQUE)')
    DeleteSQL.Strings = (
      'delete from CHEQUE'
      'where'
      '  CODCHEQUE = :OLD_CODCHEQUE')
    Left = 256
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = IBQcheque
    Left = 344
    Top = 64
  end
  object IBQCliente: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CLIENTE')
    UpdateObject = IBUpdateSQL3
    Left = 176
    Top = 120
    object IBQClienteNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CLIENTE.NOME'
      Size = 200
    end
    object IBQClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Origin = 'CLIENTE.CODCLIENTE'
      Required = True
    end
    object IBQClienteENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CLIENTE.ENDERECO'
      Size = 200
    end
    object IBQClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'CLIENTE.NUMERO'
    end
    object IBQClienteCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CLIENTE.CEP'
      Size = 10
    end
    object IBQClienteBAIRRA: TIBStringField
      FieldName = 'BAIRRA'
      Origin = 'CLIENTE.BAIRRA'
      Size = 200
    end
    object IBQClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CLIENTE.CIDADE'
      Size = 200
    end
    object IBQClienteESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = 'CLIENTE.ESTADO'
      Size = 2
    end
    object IBQClienteRG: TIBStringField
      FieldName = 'RG'
      Origin = 'CLIENTE.RG'
      EditMask = '99999999-99;1;_'
      Size = 10
    end
    object IBQClienteCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'CLIENTE.CPF'
      EditMask = '999999999-99;1;_'
      Size = 12
    end
    object IBQClienteTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = 'CLIENTE.TELEFONE'
      EditMask = '(99)-9999-9999;1;_'
      Size = 16
    end
    object IBQClienteCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = 'CLIENTE.CELULAR'
      EditMask = '(99)-9999-9999;1;_'
      Size = 16
    end
    object IBQClienteTELETRAB: TIBStringField
      FieldName = 'TELETRAB'
      Origin = 'CLIENTE.TELETRAB'
      EditMask = '(99)-9999-9999;1;_'
      Size = 16
    end
  end
  object IBUpdateSQL3: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODCLIENTE,'
      '  NOME,'
      '  ENDERECO,'
      '  NUMERO,'
      '  CEP,'
      '  BAIRRA,'
      '  CIDADE,'
      '  ESTADO,'
      '  RG,'
      '  CPF,'
      '  TELEFONE,'
      '  CELULAR,'
      '  TELETRAB'
      'from CLIENTE '
      'where'
      '  CODCLIENTE = :CODCLIENTE')
    ModifySQL.Strings = (
      'update CLIENTE'
      'set'
      '  CODCLIENTE = :CODCLIENTE,'
      '  NOME = :NOME,'
      '  ENDERECO = :ENDERECO,'
      '  NUMERO = :NUMERO,'
      '  CEP = :CEP,'
      '  BAIRRA = :BAIRRA,'
      '  CIDADE = :CIDADE,'
      '  ESTADO = :ESTADO,'
      '  RG = :RG,'
      '  CPF = :CPF,'
      '  TELEFONE = :TELEFONE,'
      '  CELULAR = :CELULAR,'
      '  TELETRAB = :TELETRAB'
      'where'
      '  CODCLIENTE = :OLD_CODCLIENTE')
    InsertSQL.Strings = (
      'insert into CLIENTE'
      
        '  (CODCLIENTE, NOME, ENDERECO, NUMERO, CEP, BAIRRA, CIDADE, ESTA' +
        'DO, RG, '
      '   CPF, TELEFONE, CELULAR, TELETRAB)'
      'values'
      
        '  (:CODCLIENTE, :NOME, :ENDERECO, :NUMERO, :CEP, :BAIRRA, :CIDAD' +
        'E, :ESTADO, '
      '   :RG, :CPF, :TELEFONE, :CELULAR, :TELETRAB)')
    DeleteSQL.Strings = (
      'delete from CLIENTE'
      'where'
      '  CODCLIENTE = :OLD_CODCLIENTE')
    Left = 256
    Top = 120
  end
  object DataSource3: TDataSource
    DataSet = IBQCliente
    Left = 344
    Top = 120
  end
  object IBQCarro: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CARRO')
    UpdateObject = IBUpdateSQL4
    Left = 168
    Top = 176
    object IBQCarroPLACA: TIBStringField
      DisplayWidth = 10
      FieldName = 'PLACA'
      Origin = 'CARRO.PLACA'
      Required = True
      Size = 8
    end
    object IBQCarroNCLIENTE: TIntegerField
      DisplayWidth = 12
      FieldName = 'NCLIENTE'
      Origin = 'CARRO.NCLIENTE'
    end
    object IBQCarroNOME: TIBStringField
      DisplayWidth = 35
      FieldName = 'NOME'
      Origin = 'CARRO.NOME'
      Size = 200
    end
    object IBQCarroNOMECARRO: TIBStringField
      DisplayWidth = 15
      FieldName = 'NOMECARRO'
      Origin = 'CARRO.NOMECARRO'
      Size = 200
    end
    object IBQCarroANO: TIBStringField
      DisplayWidth = 6
      FieldName = 'ANO'
      Origin = 'CARRO.ANO'
      EditMask = '99/99;1;_'
      Size = 5
    end
    object IBQCarroFABRICANTE: TIBStringField
      DisplayWidth = 16
      FieldName = 'FABRICANTE'
      Origin = 'CARRO.FABRICANTE'
      Size = 200
    end
    object IBQCarroCOR: TIBStringField
      DisplayWidth = 13
      FieldName = 'COR'
      Origin = 'CARRO.COR'
      Size = 200
    end
    object IBQCarroCOMBUSTIVEL: TIBStringField
      DisplayWidth = 21
      FieldName = 'COMBUSTIVEL'
      Origin = 'CARRO.COMBUSTIVEL'
      Size = 200
    end
    object IBQCarroCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'CARRO.CPF'
      Size = 30
    end
    object IBQCarroTEL: TIBStringField
      FieldName = 'TEL'
      Origin = 'CARRO.TEL'
      EditMask = '(99)-9999-9999;1;_'
      Size = 16
    end
  end
  object IBUpdateSQL4: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PLACA,'
      '  NCLIENTE,'
      '  NOME,'
      '  NOMECARRO,'
      '  ANO,'
      '  FABRICANTE,'
      '  COR,'
      '  COMBUSTIVEL,'
      '  CPF,'
      '  TEL'
      'from CARRO '
      'where'
      '  PLACA = :PLACA')
    ModifySQL.Strings = (
      'update CARRO'
      'set'
      '  PLACA = :PLACA,'
      '  NCLIENTE = :NCLIENTE,'
      '  NOME = :NOME,'
      '  NOMECARRO = :NOMECARRO,'
      '  ANO = :ANO,'
      '  FABRICANTE = :FABRICANTE,'
      '  COR = :COR,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  CPF = :CPF,'
      '  TEL = :TEL'
      'where'
      '  PLACA = :OLD_PLACA')
    InsertSQL.Strings = (
      'insert into CARRO'
      
        '  (PLACA, NCLIENTE, NOME, NOMECARRO, ANO, FABRICANTE, COR, COMBU' +
        'STIVEL, '
      '   CPF, TEL)'
      'values'
      
        '  (:PLACA, :NCLIENTE, :NOME, :NOMECARRO, :ANO, :FABRICANTE, :COR' +
        ', :COMBUSTIVEL, '
      '   :CPF, :TEL)')
    DeleteSQL.Strings = (
      'delete from CARRO'
      'where'
      '  PLACA = :OLD_PLACA')
    Left = 248
    Top = 176
  end
  object DataSource4: TDataSource
    DataSet = IBQCarro
    Left = 344
    Top = 176
  end
  object IBQOrdem: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ORDEM')
    UpdateObject = IBUpdateSQL5
    GeneratorField.Field = 'CODORDEM'
    GeneratorField.Generator = 'NORDEM'
    Left = 168
    Top = 232
    object IBQOrdemCODORDEM: TIntegerField
      FieldName = 'CODORDEM'
      Origin = 'ORDEM.CODORDEM'
      Required = True
    end
    object IBQOrdemPLACACARRO: TIBStringField
      FieldName = 'PLACACARRO'
      Origin = 'ORDEM.PLACACARRO'
      Size = 8
    end
    object IBQOrdemDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = 'ORDEM.DATAENTRADA'
    end
    object IBQOrdemDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      Origin = 'ORDEM.DATASAIDA'
    end
    object IBQOrdemKM: TFloatField
      FieldName = 'KM'
      Origin = 'ORDEM.KM'
    end
    object IBQOrdemOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = 'ORDEM.OBSERVACAO'
      Size = 100
    end
    object IBQOrdemTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'ORDEM.TOTAL'
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
    end
    object IBQOrdemRESPONSAVEL: TIBStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'ORDEM.RESPONSAVEL'
      Size = 50
    end
    object IBQOrdemPAGO: TIBStringField
      FieldName = 'PAGO'
      Origin = 'ORDEM.PAGO'
      Size = 30
    end
  end
  object IBQPeca: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PECA')
    UpdateObject = IBUpdateSQL6
    GeneratorField.Field = 'CODPECA'
    GeneratorField.Generator = 'PECA'
    Left = 168
    Top = 288
    object IBQPecaCODPECA: TIntegerField
      FieldName = 'CODPECA'
      Origin = 'PECA.CODPECA'
      Required = True
    end
    object IBQPecaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'PECA.QUANTIDADE'
    end
    object IBQPecaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PECA.DESCRICAO'
      Size = 50
    end
    object IBQPecaPRECOUNITARIO: TFloatField
      FieldName = 'PRECOUNITARIO'
      Origin = 'PECA.PRECOUNITARIO'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object IBQPecaPRECOTOTAL: TFloatField
      FieldName = 'PRECOTOTAL'
      Origin = 'PECA.PRECOTOTAL'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object IBQPecaTOTALPECA: TFloatField
      FieldName = 'TOTALPECA'
      Origin = 'PECA.TOTALPECA'
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
    end
    object IBQPecaPLACACAR: TIBStringField
      FieldName = 'PLACACAR'
      Origin = 'PECA.PLACACAR'
      Size = 9
    end
    object IBQPecaCODORDEM: TIntegerField
      FieldName = 'CODORDEM'
      Origin = 'PECA.CODORDEM'
    end
  end
  object IBQServico: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SERVICO')
    UpdateObject = IBUpdateSQL7
    GeneratorField.Field = 'CODSERVICO'
    GeneratorField.Generator = 'SERVICO'
    Left = 168
    Top = 352
    object IBQServicoCODSERVICO: TIntegerField
      FieldName = 'CODSERVICO'
      Origin = 'SERVICO.CODSERVICO'
      Required = True
    end
    object IBQServicoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SERVICO.DESCRICAO'
      Size = 50
    end
    object IBQServicoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'SERVICO.VALOR'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object IBQServicoTOTALSERVICO: TFloatField
      FieldName = 'TOTALSERVICO'
      Origin = 'SERVICO.TOTALSERVICO'
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
    end
    object IBQServicoPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'SERVICO.PLACA'
      Size = 9
    end
    object IBQServicoCORDEM: TIntegerField
      FieldName = 'CORDEM'
      Origin = 'SERVICO.CORDEM'
    end
  end
  object IBUpdateSQL5: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODORDEM,'
      '  PLACACARRO,'
      '  DATAENTRADA,'
      '  DATASAIDA,'
      '  KM,'
      '  OBSERVACAO,'
      '  TOTAL,'
      '  RESPONSAVEL,'
      '  PAGO'
      'from ORDEM '
      'where'
      '  CODORDEM = :CODORDEM')
    ModifySQL.Strings = (
      'update ORDEM'
      'set'
      '  CODORDEM = :CODORDEM,'
      '  PLACACARRO = :PLACACARRO,'
      '  DATAENTRADA = :DATAENTRADA,'
      '  DATASAIDA = :DATASAIDA,'
      '  KM = :KM,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  TOTAL = :TOTAL,'
      '  RESPONSAVEL = :RESPONSAVEL,'
      '  PAGO = :PAGO'
      'where'
      '  CODORDEM = :OLD_CODORDEM')
    InsertSQL.Strings = (
      'insert into ORDEM'
      
        '  (CODORDEM, PLACACARRO, DATAENTRADA, DATASAIDA, KM, OBSERVACAO,' +
        ' TOTAL, '
      '   RESPONSAVEL, PAGO)'
      'values'
      
        '  (:CODORDEM, :PLACACARRO, :DATAENTRADA, :DATASAIDA, :KM, :OBSER' +
        'VACAO, '
      '   :TOTAL, :RESPONSAVEL, :PAGO)')
    DeleteSQL.Strings = (
      'delete from ORDEM'
      'where'
      '  CODORDEM = :OLD_CODORDEM')
    Left = 240
    Top = 232
  end
  object IBUpdateSQL6: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODPECA,'
      '  QUANTIDADE,'
      '  DESCRICAO,'
      '  PRECOUNITARIO,'
      '  PRECOTOTAL,'
      '  TOTALPECA,'
      '  PLACACAR,'
      '  CODORDEM'
      'from PECA '
      'where'
      '  CODPECA = :CODPECA')
    ModifySQL.Strings = (
      'update PECA'
      'set'
      '  CODPECA = :CODPECA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  DESCRICAO = :DESCRICAO,'
      '  PRECOUNITARIO = :PRECOUNITARIO,'
      '  PRECOTOTAL = :PRECOTOTAL,'
      '  TOTALPECA = :TOTALPECA,'
      '  PLACACAR = :PLACACAR,'
      '  CODORDEM = :CODORDEM'
      'where'
      '  CODPECA = :OLD_CODPECA')
    InsertSQL.Strings = (
      'insert into PECA'
      
        '  (CODPECA, QUANTIDADE, DESCRICAO, PRECOUNITARIO, PRECOTOTAL, TO' +
        'TALPECA, '
      '   PLACACAR, CODORDEM)'
      'values'
      
        '  (:CODPECA, :QUANTIDADE, :DESCRICAO, :PRECOUNITARIO, :PRECOTOTA' +
        'L, :TOTALPECA, '
      '   :PLACACAR, :CODORDEM)')
    DeleteSQL.Strings = (
      'delete from PECA'
      'where'
      '  CODPECA = :OLD_CODPECA')
    Left = 240
    Top = 288
  end
  object IBUpdateSQL7: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODSERVICO,'
      '  DESCRICAO,'
      '  VALOR,'
      '  TOTALSERVICO,'
      '  PLACA,'
      '  CORDEM'
      'from SERVICO '
      'where'
      '  CODSERVICO = :CODSERVICO')
    ModifySQL.Strings = (
      'update SERVICO'
      'set'
      '  CODSERVICO = :CODSERVICO,'
      '  DESCRICAO = :DESCRICAO,'
      '  VALOR = :VALOR,'
      '  TOTALSERVICO = :TOTALSERVICO,'
      '  PLACA = :PLACA,'
      '  CORDEM = :CORDEM'
      'where'
      '  CODSERVICO = :OLD_CODSERVICO')
    InsertSQL.Strings = (
      'insert into SERVICO'
      '  (CODSERVICO, DESCRICAO, VALOR, TOTALSERVICO, PLACA, CORDEM)'
      'values'
      
        '  (:CODSERVICO, :DESCRICAO, :VALOR, :TOTALSERVICO, :PLACA, :CORD' +
        'EM)')
    DeleteSQL.Strings = (
      'delete from SERVICO'
      'where'
      '  CODSERVICO = :OLD_CODSERVICO')
    Left = 240
    Top = 360
  end
  object DataSource5: TDataSource
    DataSet = IBQOrdem
    Left = 344
    Top = 240
  end
  object DataSource6: TDataSource
    DataSet = IBQPeca
    Left = 344
    Top = 296
  end
  object DataSource7: TDataSource
    DataSet = IBQServico
    Left = 344
    Top = 352
  end
end
