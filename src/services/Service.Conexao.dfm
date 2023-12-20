object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 296
  Width = 424
  object FDCon: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\User-J\Desktop\Projetos Delphi\Delphi gov ERP\' +
        'banco de dados\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 64
    Top = 56
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 328
    Top = 48
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 328
    Top = 144
  end
  object Qry_Filial: TFDQuery
    Connection = FDCon
    SQL.Strings = (
      'select * from filial where id = :id')
    Left = 64
    Top = 144
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Qry_FilialID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_FilialRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object Qry_FilialFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 100
    end
    object Qry_FilialCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 30
    end
    object Qry_FilialTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
  end
end
