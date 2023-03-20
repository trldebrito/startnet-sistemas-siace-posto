object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 720
  Width = 1217
  object SQLC: TSQLConnection
    ConnectionName = 'SIACE'
    DriverName = 'Interbase'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\SIACE\SIACE.GDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    BeforeConnect = SQLCBeforeConnect
    Left = 20
    Top = 8
  end
  object SPC_Usuarios: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_USUARIOS'
    Left = 503
    Top = 340
  end
  object SDS_Usuarios: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'SELECT * FROM USUARIOS ORDER BY NOME'
    DataSet.DataSource = DTS_Usuarios
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 562
    Top = 333
    object SDS_UsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_UsuariosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SDS_UsuariosSENHA: TStringField
      FieldName = 'SENHA'
      FixedChar = True
      Size = 15
    end
    object SDS_UsuariosDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object SDS_UsuariosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object SDS_UsuariosFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 50
    end
    object SDS_UsuariosEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      Size = 1
    end
    object SDS_UsuariosEDITAR: TStringField
      FieldName = 'EDITAR'
      Size = 1
    end
    object SDS_UsuariosINSERIR: TStringField
      FieldName = 'INSERIR'
      Size = 1
    end
    object SDS_UsuariosS01: TStringField
      FieldName = 'S01'
      Size = 1
    end
    object SDS_UsuariosS02: TStringField
      FieldName = 'S02'
      Size = 1
    end
    object SDS_UsuariosS03: TStringField
      FieldName = 'S03'
      Size = 1
    end
    object SDS_UsuariosS04: TStringField
      FieldName = 'S04'
      Size = 1
    end
    object SDS_UsuariosS05: TStringField
      FieldName = 'S05'
      Size = 1
    end
    object SDS_UsuariosS06: TStringField
      FieldName = 'S06'
      Size = 1
    end
    object SDS_UsuariosS07: TStringField
      FieldName = 'S07'
      Size = 1
    end
    object SDS_UsuariosS08: TStringField
      FieldName = 'S08'
      Size = 1
    end
    object SDS_UsuariosS09: TStringField
      FieldName = 'S09'
      Size = 1
    end
    object SDS_UsuariosS10: TStringField
      FieldName = 'S10'
      Size = 1
    end
    object SDS_UsuariosS11: TStringField
      FieldName = 'S11'
      Size = 1
    end
    object SDS_UsuariosS12: TStringField
      FieldName = 'S12'
      Size = 1
    end
    object SDS_UsuariosS13: TStringField
      FieldName = 'S13'
      Size = 1
    end
    object SDS_UsuariosS14: TStringField
      FieldName = 'S14'
      Size = 1
    end
    object SDS_UsuariosS15: TStringField
      FieldName = 'S15'
      Size = 1
    end
    object SDS_UsuariosS16: TStringField
      FieldName = 'S16'
      Size = 1
    end
    object SDS_UsuariosS17: TStringField
      FieldName = 'S17'
      Size = 1
    end
    object SDS_UsuariosS18: TStringField
      FieldName = 'S18'
      Size = 1
    end
    object SDS_UsuariosS19: TStringField
      FieldName = 'S19'
      Size = 1
    end
    object SDS_UsuariosS20: TStringField
      FieldName = 'S20'
      Size = 1
    end
    object SDS_UsuariosS21: TStringField
      FieldName = 'S21'
      Size = 1
    end
    object SDS_UsuariosS22: TStringField
      FieldName = 'S22'
      Size = 1
    end
    object SDS_UsuariosS23: TStringField
      FieldName = 'S23'
      Size = 1
    end
    object SDS_UsuariosS24: TStringField
      FieldName = 'S24'
      Size = 1
    end
    object SDS_UsuariosS25: TStringField
      FieldName = 'S25'
      Size = 1
    end
    object SDS_UsuariosS26: TStringField
      FieldName = 'S26'
      Size = 1
    end
    object SDS_UsuariosS27: TStringField
      FieldName = 'S27'
      Size = 1
    end
    object SDS_UsuariosS28: TStringField
      FieldName = 'S28'
      Size = 1
    end
    object SDS_UsuariosS29: TStringField
      FieldName = 'S29'
      Size = 1
    end
    object SDS_UsuariosS30: TStringField
      FieldName = 'S30'
      Size = 1
    end
    object SDS_UsuariosS31: TStringField
      FieldName = 'S31'
      Size = 1
    end
    object SDS_UsuariosS32: TStringField
      FieldName = 'S32'
      Size = 1
    end
    object SDS_UsuariosS33: TStringField
      FieldName = 'S33'
      Size = 1
    end
    object SDS_UsuariosS34: TStringField
      FieldName = 'S34'
      Size = 1
    end
    object SDS_UsuariosS35: TStringField
      FieldName = 'S35'
      Size = 1
    end
    object SDS_UsuariosS36: TStringField
      FieldName = 'S36'
      Size = 1
    end
    object SDS_UsuariosS37: TStringField
      FieldName = 'S37'
      Size = 1
    end
    object SDS_UsuariosS38: TStringField
      FieldName = 'S38'
      Size = 1
    end
    object SDS_UsuariosS39: TStringField
      FieldName = 'S39'
      Size = 1
    end
    object SDS_UsuariosS40: TStringField
      FieldName = 'S40'
      Size = 1
    end
    object SDS_UsuariosS41: TStringField
      FieldName = 'S41'
      Size = 1
    end
    object SDS_UsuariosS42: TStringField
      FieldName = 'S42'
      Size = 1
    end
    object SDS_UsuariosS43: TStringField
      FieldName = 'S43'
      Size = 1
    end
    object SDS_UsuariosS44: TStringField
      FieldName = 'S44'
      Size = 1
    end
    object SDS_UsuariosS45: TStringField
      FieldName = 'S45'
      Size = 1
    end
    object SDS_UsuariosS46: TStringField
      FieldName = 'S46'
      Size = 1
    end
    object SDS_UsuariosS47: TStringField
      FieldName = 'S47'
      Size = 1
    end
    object SDS_UsuariosS48: TStringField
      FieldName = 'S48'
      Size = 1
    end
    object SDS_UsuariosS49: TStringField
      FieldName = 'S49'
      Size = 1
    end
    object SDS_UsuariosS50: TStringField
      FieldName = 'S50'
      Size = 1
    end
    object SDS_UsuariosS51: TStringField
      FieldName = 'S51'
      Size = 1
    end
    object SDS_UsuariosS52: TStringField
      FieldName = 'S52'
      Size = 1
    end
    object SDS_UsuariosS53: TStringField
      FieldName = 'S53'
      Size = 1
    end
    object SDS_UsuariosS54: TStringField
      FieldName = 'S54'
      Size = 1
    end
    object SDS_UsuariosS55: TStringField
      FieldName = 'S55'
      Size = 1
    end
    object SDS_UsuariosS56: TStringField
      FieldName = 'S56'
      Size = 1
    end
    object SDS_UsuariosS57: TStringField
      FieldName = 'S57'
      Size = 1
    end
    object SDS_UsuariosS58: TStringField
      FieldName = 'S58'
      Size = 1
    end
    object SDS_UsuariosS59: TStringField
      FieldName = 'S59'
      Size = 1
    end
    object SDS_UsuariosS60: TStringField
      FieldName = 'S60'
      Size = 1
    end
    object SDS_UsuariosS61: TStringField
      FieldName = 'S61'
      Size = 1
    end
    object SDS_UsuariosS62: TStringField
      FieldName = 'S62'
      Size = 1
    end
    object SDS_UsuariosS63: TStringField
      FieldName = 'S63'
      Size = 1
    end
    object SDS_UsuariosS64: TStringField
      FieldName = 'S64'
      Size = 1
    end
    object SDS_UsuariosS65: TStringField
      FieldName = 'S65'
      Size = 1
    end
    object SDS_UsuariosS66: TStringField
      FieldName = 'S66'
      Size = 1
    end
    object SDS_UsuariosS67: TStringField
      FieldName = 'S67'
      Size = 1
    end
    object SDS_UsuariosS68: TStringField
      FieldName = 'S68'
      Size = 1
    end
    object SDS_UsuariosS69: TStringField
      FieldName = 'S69'
      Size = 1
    end
    object SDS_UsuariosS70: TStringField
      FieldName = 'S70'
      Size = 1
    end
    object SDS_UsuariosS71: TStringField
      FieldName = 'S71'
      Size = 1
    end
    object SDS_UsuariosS72: TStringField
      FieldName = 'S72'
      Size = 1
    end
    object SDS_UsuariosS73: TStringField
      FieldName = 'S73'
      Size = 1
    end
    object SDS_UsuariosS74: TStringField
      FieldName = 'S74'
      Size = 1
    end
    object SDS_UsuariosS75: TStringField
      FieldName = 'S75'
      Size = 1
    end
    object SDS_UsuariosS76: TStringField
      FieldName = 'S76'
      Size = 1
    end
    object SDS_UsuariosS77: TStringField
      FieldName = 'S77'
      Size = 1
    end
    object SDS_UsuariosS78: TStringField
      FieldName = 'S78'
      Size = 1
    end
    object SDS_UsuariosS79: TStringField
      FieldName = 'S79'
      Size = 1
    end
    object SDS_UsuariosS80: TStringField
      FieldName = 'S80'
      Size = 1
    end
    object SDS_UsuariosS81: TStringField
      FieldName = 'S81'
      Size = 1
    end
    object SDS_UsuariosS82: TStringField
      FieldName = 'S82'
      Size = 1
    end
    object SDS_UsuariosS83: TStringField
      FieldName = 'S83'
      Size = 1
    end
    object SDS_UsuariosS84: TStringField
      FieldName = 'S84'
      Size = 1
    end
    object SDS_UsuariosS85: TStringField
      FieldName = 'S85'
      Size = 1
    end
    object SDS_UsuariosS86: TStringField
      FieldName = 'S86'
      Size = 1
    end
    object SDS_UsuariosS87: TStringField
      FieldName = 'S87'
      Size = 1
    end
    object SDS_UsuariosS88: TStringField
      FieldName = 'S88'
      Size = 1
    end
    object SDS_UsuariosS89: TStringField
      FieldName = 'S89'
      Size = 1
    end
    object SDS_UsuariosS90: TStringField
      FieldName = 'S90'
      Size = 1
    end
    object SDS_UsuariosS91: TStringField
      FieldName = 'S91'
      Size = 1
    end
    object SDS_UsuariosS92: TStringField
      FieldName = 'S92'
      Size = 1
    end
    object SDS_UsuariosS93: TStringField
      FieldName = 'S93'
      Size = 1
    end
    object SDS_UsuariosS94: TStringField
      FieldName = 'S94'
      Size = 1
    end
    object SDS_UsuariosS95: TStringField
      FieldName = 'S95'
      Size = 1
    end
    object SDS_UsuariosS96: TStringField
      FieldName = 'S96'
      Size = 1
    end
    object SDS_UsuariosS97: TStringField
      FieldName = 'S97'
      Size = 1
    end
    object SDS_UsuariosS98: TStringField
      FieldName = 'S98'
      Size = 1
    end
    object SDS_UsuariosS99: TStringField
      FieldName = 'S99'
      Size = 1
    end
    object SDS_UsuariosS100: TStringField
      FieldName = 'S100'
      Size = 1
    end
    object SDS_UsuariosS101: TStringField
      FieldName = 'S101'
      Size = 1
    end
    object SDS_UsuariosS102: TStringField
      FieldName = 'S102'
      Size = 1
    end
    object SDS_UsuariosS103: TStringField
      FieldName = 'S103'
      Size = 1
    end
    object SDS_UsuariosS104: TStringField
      FieldName = 'S104'
      Size = 1
    end
    object SDS_UsuariosS105: TStringField
      FieldName = 'S105'
      Size = 1
    end
    object SDS_UsuariosS106: TStringField
      FieldName = 'S106'
      Size = 1
    end
    object SDS_UsuariosS107: TStringField
      FieldName = 'S107'
      Size = 1
    end
    object SDS_UsuariosS108: TStringField
      FieldName = 'S108'
      Size = 1
    end
    object SDS_UsuariosS109: TStringField
      FieldName = 'S109'
      Size = 1
    end
    object SDS_UsuariosS110: TStringField
      FieldName = 'S110'
      Size = 1
    end
    object SDS_UsuariosS111: TStringField
      FieldName = 'S111'
      Size = 1
    end
    object SDS_UsuariosS112: TStringField
      FieldName = 'S112'
      Size = 1
    end
    object SDS_UsuariosS113: TStringField
      FieldName = 'S113'
      Size = 1
    end
    object SDS_UsuariosS114: TStringField
      FieldName = 'S114'
      Size = 1
    end
    object SDS_UsuariosS115: TStringField
      FieldName = 'S115'
      Size = 1
    end
    object SDS_UsuariosS116: TStringField
      FieldName = 'S116'
      Size = 1
    end
    object SDS_UsuariosS117: TStringField
      FieldName = 'S117'
      Size = 1
    end
    object SDS_UsuariosS118: TStringField
      FieldName = 'S118'
      Size = 1
    end
    object SDS_UsuariosS119: TStringField
      FieldName = 'S119'
      Size = 1
    end
    object SDS_UsuariosS120: TStringField
      FieldName = 'S120'
      Size = 1
    end
    object SDS_UsuariosS121: TStringField
      FieldName = 'S121'
      Size = 1
    end
    object SDS_UsuariosS122: TStringField
      FieldName = 'S122'
      Size = 1
    end
    object SDS_UsuariosAUTORIZA: TStringField
      FieldName = 'AUTORIZA'
      Size = 1
    end
    object SDS_UsuariosCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Size = 1
    end
    object SDS_UsuariosVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 1
    end
    object SDS_UsuariosUSER: TStringField
      FieldName = 'USER'
      Size = 1
    end
    object SDS_UsuariosV_TOTAL_VENDAS: TStringField
      FieldName = 'V_TOTAL_VENDAS'
      Size = 1
    end
    object SDS_UsuariosS123: TStringField
      FieldName = 'S123'
      Size = 1
    end
    object SDS_UsuariosS124: TStringField
      FieldName = 'S124'
      Size = 1
    end
    object SDS_UsuariosS125: TStringField
      FieldName = 'S125'
      Size = 1
    end
    object SDS_UsuariosS126: TStringField
      FieldName = 'S126'
      Size = 1
    end
    object SDS_UsuariosS127: TStringField
      FieldName = 'S127'
      Size = 1
    end
    object SDS_UsuariosS128: TStringField
      FieldName = 'S128'
      Size = 1
    end
    object SDS_UsuariosS129: TStringField
      FieldName = 'S129'
      Size = 1
    end
    object SDS_UsuariosS130: TStringField
      FieldName = 'S130'
      Size = 1
    end
    object SDS_UsuariosS131: TStringField
      FieldName = 'S131'
      Size = 1
    end
    object SDS_UsuariosS132: TStringField
      FieldName = 'S132'
      Size = 1
    end
    object SDS_UsuariosS133: TStringField
      FieldName = 'S133'
      Size = 1
    end
    object SDS_UsuariosS134: TStringField
      FieldName = 'S134'
      Size = 1
    end
    object SDS_UsuariosS135: TStringField
      FieldName = 'S135'
      Size = 1
    end
    object SDS_UsuariosS136: TStringField
      FieldName = 'S136'
      Size = 1
    end
    object SDS_UsuariosS137: TStringField
      FieldName = 'S137'
      Size = 1
    end
    object SDS_UsuariosS138: TStringField
      FieldName = 'S138'
      Size = 1
    end
    object SDS_UsuariosS139: TStringField
      FieldName = 'S139'
      Size = 1
    end
    object SDS_UsuariosS140: TStringField
      FieldName = 'S140'
      Size = 1
    end
    object SDS_UsuariosMOSTRA_CUSTOS: TStringField
      FieldName = 'MOSTRA_CUSTOS'
      Size = 1
    end
    object SDS_UsuariosCPF_VENDEDOR: TStringField
      FieldName = 'CPF_VENDEDOR'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object SDS_UsuariosS141: TStringField
      FieldName = 'S141'
      Size = 1
    end
    object SDS_UsuariosS142: TStringField
      FieldName = 'S142'
      Size = 1
    end
    object SDS_UsuariosS143: TStringField
      FieldName = 'S143'
      Size = 1
    end
    object SDS_UsuariosDATA: TDateField
      FieldName = 'DATA'
    end
    object SDS_UsuariosSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
    object SDS_UsuariosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object SDS_UsuariosMOSTRA_PENDENTES: TStringField
      FieldName = 'MOSTRA_PENDENTES'
      Size = 1
    end
    object SDS_UsuariosUTILIZA_NFCE: TStringField
      FieldName = 'UTILIZA_NFCE'
      Size = 1
    end
    object SDS_UsuariosIMP_DARUMA_NFCE: TStringField
      FieldName = 'IMP_DARUMA_NFC-E'
      Size = 1
    end
    object SDS_UsuariosUTILIZA_NFSE: TStringField
      FieldName = 'UTILIZA_NFSE'
      Size = 1
    end
    object SDS_UsuariosUTILIZA_NFE: TStringField
      FieldName = 'UTILIZA_NFE'
      Size = 1
    end
    object SDS_UsuariosBLOQUEIA_VENDA: TStringField
      FieldName = 'BLOQUEIA_VENDA'
      Size = 1
    end
    object SDS_UsuariosOCULTA_GRID: TStringField
      FieldName = 'OCULTA_GRID'
      Size = 1
    end
    object SDS_UsuariosEXPORTA_VENDA: TStringField
      FieldName = 'EXPORTA_VENDA'
      Size = 1
    end
  end
  object DTS_Usuarios: TDataSource
    DataSet = SDS_Usuarios
    Left = 568
    Top = 379
  end
  object DTS_Clientes: TDataSource
    DataSet = SDS_Clientes
    Left = 182
    Top = 595
  end
  object SDS_Clientes: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CLIENTES order by NOME_RS ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 184
    Top = 536
    object SDS_ClientesCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_ClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_ClientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_ClientesCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999-999;1;_'
      FixedChar = True
      Size = 10
    end
    object SDS_ClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      LookupDataSet = SDS_Agencias
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object SDS_ClientesNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object SDS_ClientesFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object Sds_clientesBairro: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_ClientesFAX: TStringField
      FieldName = 'FAX'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_ClientesDATACAD: TDateField
      Alignment = taCenter
      FieldName = 'DATACAD'
    end
    object SDS_ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object SDS_ClientesOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_ClientesCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object SDS_ClientesESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object SDS_ClientesRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object SDS_ClientesPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object SDS_ClientesMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object SDS_ClientesNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object SDS_ClientesCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      EditMask = '999.999.999-99;1;_'
      FixedChar = True
    end
    object SDS_ClientesNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object SDS_ClientesTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object SDS_ClientesPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object SDS_ClientesLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object SDS_ClientesPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object SDS_ClientesTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object SDS_ClientesNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object SDS_ClientesCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object SDS_ClientesNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object SDS_ClientesNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object SDS_ClientesTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_ClientesBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object SDS_ClientesAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object SDS_ClientesSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object SDS_ClientesTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
    end
    object SDS_ClientesOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object SDS_ClientesOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object SDS_ClientesNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 12
    end
    object SDS_ClientesBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object SDS_ClientesPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientesREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      currency = True
      Precision = 15
    end
    object SDS_ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object SDS_ClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_ClientesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_ClientesORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object SDS_ClientesDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object SDS_ClientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object SDS_ClientesNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object SDS_ClientesCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object SDS_ClientesCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object SDS_ClientesDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object SDS_ClientesCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object SDS_ClientesTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_ClientesPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object SDS_ClientesATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_ClientesCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object SDS_ClientesCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object SDS_ClientesCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object SDS_ClientesVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_ClientesTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object SDS_ClientesNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object SDS_ClientesENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object SDS_ClientesENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object SDS_ClientesDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object SDS_ClientesDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object SDS_ClientesRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object SDS_ClientesRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object SDS_ClientesDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object SDS_ClientesFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_ClientesENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object SDS_ClientesCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      EditMask = '99999-999;1;_'
      FixedChar = True
      Size = 10
    end
    object SDS_ClientesCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object SDS_ClientesCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object SDS_ClientesLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_ClientesINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object SDS_ClientesPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_ClientesINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object SDS_ClientesCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object SDS_ClientesCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object SDS_ClientesBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object SDS_ClientesUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object SDS_ClientesNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object SDS_ClientesCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object SDS_ClientesNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object SDS_ClientesNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object SDS_ClientesCOD_IBGE: TStringField
      FieldKind = fkLookup
      FieldName = 'COD_IBGE'
      LookupDataSet = Sds_cidades
      LookupKeyFields = 'COD_CIDADE'
      LookupResultField = 'COD_IBGE'
      KeyFields = 'COD_CIDADE'
      Size = 10
      Lookup = True
    end
    object SDS_ClientesSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object SDS_ClientesSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object SDS_ClientesSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object SDS_ClientesSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object SDS_ClientesCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_ClientesDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object SDS_ClientesDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object SDS_ClientesCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object SDS_ClientesFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object SDS_ClientesREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object SDS_ClientesENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object SDS_ClientesRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object SDS_ClientesENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object SDS_ClientesRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object SDS_ClientesENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object SDS_ClientesRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object SDS_ClientesENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object SDS_ClientesRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object SDS_ClientesAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object SDS_ClientesAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object SDS_ClientesAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object SDS_ClientesCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      EditMask = '999.999.999-99;1;_'
      FixedChar = True
    end
    object SDS_ClientesCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      EditMask = '000.000.000-00;1;_'
      FixedChar = True
    end
    object SDS_ClientesCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      EditMask = '999.999.999-99;1;_'
      FixedChar = True
    end
    object SDS_ClientesFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object SDS_ClientesCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
    object SDS_ClientesTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Size = 1
    end
    object SDS_ClientesTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Size = 1
    end
    object SDS_ClientesCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
    end
    object SDS_ClientesFOTO: TStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object SDS_ClientesDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
    end
    object SDS_ClientesFUNC_SALARIO: TFMTBCDField
      FieldName = 'FUNC_SALARIO'
      Precision = 15
      Size = 2
    end
    object SDS_ClientesFUNC_DATA_ADMISSAO: TDateField
      FieldName = 'FUNC_DATA_ADMISSAO'
    end
    object SDS_ClientesFUNC_SITUACAO: TStringField
      FieldName = 'FUNC_SITUACAO'
      Size = 1
    end
    object SDS_ClientesFUNC_DEMISSAO: TDateField
      FieldName = 'FUNC_DEMISSAO'
    end
    object SDS_ClientesFUNC_CARGO: TStringField
      FieldName = 'FUNC_CARGO'
      Size = 30
    end
    object SDS_ClientesDOCUMENTOS: TBlobField
      FieldName = 'DOCUMENTOS'
      Size = 1
    end
  end
  object DTS_Empresa: TDataSource
    DataSet = SDS_Empresa
    Left = 700
    Top = 387
  end
  object SDS_Empresa: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select *  from EMPRESA order by codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 644
    Top = 396
    object SDS_EmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_EmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object SDS_EmpresaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 50
    end
    object SDS_EmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_EmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_EmpresaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_EmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_EmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SDS_EmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object SDS_EmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object SDS_EmpresaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object SDS_EmpresaIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object SDS_EmpresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SDS_EmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object SDS_EmpresaIM: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object SDS_EmpresaLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Size = 1
    end
    object SDS_EmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object SDS_EmpresaCOD_CID_IBGE: TStringField
      FieldName = 'COD_CID_IBGE'
      Size = 10
    end
    object SDS_EmpresaURS_INDEA: TStringField
      FieldName = 'URS_INDEA'
    end
    object SDS_EmpresaULE_INDEA: TStringField
      FieldName = 'ULE_INDEA'
    end
    object SDS_EmpresaMATRICULA_INDEA: TStringField
      FieldName = 'MATRICULA_INDEA'
      Size = 10
    end
    object SDS_EmpresaPROPRIETARIO: TStringField
      FieldName = 'PROPRIETARIO'
      Size = 50
    end
    object SDS_EmpresaRESPONSAVEL_TECINICO: TStringField
      FieldName = 'RESPONSAVEL_TECINICO'
      Size = 50
    end
    object SDS_EmpresaCRMV_N: TStringField
      FieldName = 'CRMV_N'
      Size = 15
    end
    object SDS_EmpresaFLAG_VETERINARIA: TStringField
      FieldName = 'FLAG_VETERINARIA'
      Size = 1
    end
    object SDS_EmpresaREGIME: TStringField
      FieldName = 'REGIME'
      Size = 1
    end
    object SDS_EmpresaALIC_SIMPLES: TFMTBCDField
      FieldName = 'ALIC_SIMPLES'
      Precision = 15
      Size = 2
    end
    object SDS_EmpresaALIC_PIS: TFMTBCDField
      FieldName = 'ALIC_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_EmpresaALIC_COFINS: TFMTBCDField
      FieldName = 'ALIC_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_EmpresaALIC_IRPJ: TFMTBCDField
      FieldName = 'ALIC_IRPJ'
      Precision = 15
      Size = 2
    end
    object SDS_EmpresaALIC_CSLL: TFMTBCDField
      FieldName = 'ALIC_CSLL'
      Precision = 15
      Size = 2
    end
    object SDS_EmpresaSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object SDS_EmpresaNOME_CONTADOR: TStringField
      FieldName = 'NOME_CONTADOR'
      Size = 50
    end
    object SDS_EmpresaCRC_CONTADOR: TStringField
      FieldName = 'CRC_CONTADOR'
      Size = 15
    end
    object SDS_EmpresaENDERECO_CONTADOR: TStringField
      FieldName = 'ENDERECO_CONTADOR'
      Size = 40
    end
    object SDS_EmpresaCEP_CONTADOR: TStringField
      FieldName = 'CEP_CONTADOR'
      FixedChar = True
      Size = 10
    end
    object SDS_EmpresaNUM_CONTADOR: TIntegerField
      FieldName = 'NUM_CONTADOR'
    end
    object SDS_EmpresaBAIRRO_CONTADOR: TStringField
      FieldName = 'BAIRRO_CONTADOR'
      Size = 30
    end
    object SDS_EmpresaCOMPL_CONTADOR: TStringField
      FieldName = 'COMPL_CONTADOR'
      Size = 40
    end
    object SDS_EmpresaFONE_CONTADOR: TStringField
      FieldName = 'FONE_CONTADOR'
      Size = 15
    end
    object SDS_EmpresaFAX_CONTADOR: TStringField
      FieldName = 'FAX_CONTADOR'
      Size = 15
    end
    object SDS_EmpresaEMAIL_CONTADOR: TStringField
      FieldName = 'EMAIL_CONTADOR'
      Size = 15
    end
    object SDS_EmpresaCOD_IBGE_CONTADOR: TStringField
      FieldName = 'COD_IBGE_CONTADOR'
      Size = 7
    end
    object SDS_EmpresaCNPJ_CONTADOR: TStringField
      FieldName = 'CNPJ_CONTADOR'
      FixedChar = True
    end
    object SDS_EmpresaCPF_CONTADOR: TStringField
      FieldName = 'CPF_CONTADOR'
      FixedChar = True
    end
    object SDS_EmpresaCIDADE_CONTADOR: TStringField
      FieldName = 'CIDADE_CONTADOR'
      Size = 40
    end
    object SDS_EmpresaUF_CONTADOR: TStringField
      FieldName = 'UF_CONTADOR'
      Size = 2
    end
    object SDS_EmpresaCPF_RESPONSAVEL: TStringField
      FieldName = 'CPF_RESPONSAVEL'
    end
    object SDS_EmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 44
    end
    object SDS_EmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 18
    end
  end
  object DTS_Unidades: TDataSource
    DataSet = SDS_Unidades
    Left = 368
    Top = 109
  end
  object SPC_Unidades: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_UNIDADES'
    Left = 344
    Top = 10
  end
  object SDS_Unidades: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select *  from UNIDADES order by descricao'
    DataSet.DataSource = DTS_Unidades
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 344
    Top = 66
    object SDS_UnidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_UnidadesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_UnidadesABREVIATURA: TStringField
      FieldName = 'ABREVIATURA'
      Size = 6
    end
    object SDS_UnidadesDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
  end
  object DTS_Marcas: TDataSource
    DataSet = SDS_Marcas
    Left = 433
    Top = 110
  end
  object SDS_Marcas: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from MARCAS order by descricao'
    DataSet.DataSource = DTS_Marcas
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 426
    Top = 66
    object SDS_MarcasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_MarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_MarcasDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object SDS_MarcasUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
  end
  object DTS_Grupos: TDataSource
    DataSet = SDS_Grupos
    Left = 498
    Top = 119
  end
  object SDS_Grupos: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from GRUPOS order by descricao'
    DataSet.DataSource = DTS_Grupos
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 496
    Top = 67
    object SDS_GruposDESCRICAO: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_GruposCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_GruposDATACADASTRO: TDateField
      DisplayWidth = 10
      FieldName = 'DATACADASTRO'
    end
    object SDS_GruposUSERCAD: TStringField
      DisplayWidth = 20
      FieldName = 'USERCAD'
    end
    object SDS_GruposNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
  end
  object SPC_Fornecedores: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_FORNECEDORES'
    Left = 579
    Top = 14
  end
  object SDS_Fornecedores: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from FORNECEDORES order by Nome'
    DataSet.DataSource = DTS_Fornecedores
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 580
    Top = 68
    object SDS_FornecedoresCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_FornecedoresNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object SDS_FornecedoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_FornecedoresCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_FornecedoresESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object SDS_FornecedoresCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999-999;1;_'
      FixedChar = True
      Size = 10
    end
    object SDS_FornecedoresTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_FornecedoresFAX: TStringField
      FieldName = 'FAX'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_FornecedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object t: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object SDS_FornecedoresCNPJ: TStringField
      FieldName = 'CNPJ'
      Required = True
      FixedChar = True
    end
    object SDS_FornecedoresIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object SDS_FornecedoresBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_FornecedoresUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_FornecedoresDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object SDS_FornecedoresOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_FornecedoresREPRESNOME: TStringField
      FieldName = 'REPRESNOME'
      Size = 50
    end
    object SDS_FornecedoresREPRESFONEFAX: TStringField
      FieldName = 'REPRESFONEFAX'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_FornecedoresREPRESEMAIL: TStringField
      FieldName = 'REPRESEMAIL'
      Size = 50
    end
    object SDS_FornecedoresREPRESOBSERVACOES: TBlobField
      FieldName = 'REPRESOBSERVACOES'
      Size = 1
    end
    object SDS_FornecedoresREPRESCELULAR: TStringField
      FieldName = 'REPRESCELULAR'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_FornecedoresPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_FornecedoresINSC_PRODUTOR: TStringField
      FieldName = 'INSC_PRODUTOR'
      Size = 15
    end
    object SDS_FornecedoresCOD_LINHA: TIntegerField
      FieldName = 'COD_LINHA'
    end
    object SDS_FornecedoresLINHA: TStringField
      FieldName = 'LINHA'
      Size = 50
    end
    object SDS_FornecedoresCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_FornecedoresVALOR_LEITE: TFMTBCDField
      FieldName = 'VALOR_LEITE'
      Precision = 15
      Size = 2
    end
    object SDS_FornecedoresFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object SDS_Fornecedorescodigo_ibge: TStringField
      FieldName = 'codigo_ibge'
      Size = 7
    end
    object SDS_FornecedoresNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SDS_FornecedoresCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_FornecedoresTP: TStringField
      FieldName = 'TP'
      Size = 1
    end
  end
  object DTS_Fornecedores: TDataSource
    DataSet = SDS_Fornecedores
    Left = 582
    Top = 120
  end
  object SPC_Bancos: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_BANCOS'
    Left = 663
    Top = 15
  end
  object SDS_Bancos: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select*  from BANCOS order by Codigo asc'
    DataSet.DataSource = DTS_Bancos
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 664
    Top = 69
    object SDS_BancosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_BancosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object SDS_BancosSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object SDS_BancosUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_BancosDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_BancosFEBRABAN: TStringField
      FieldName = 'FEBRABAN'
      Size = 3
    end
  end
  object DTS_Bancos: TDataSource
    DataSet = SDS_Bancos
    Left = 666
    Top = 121
  end
  object SPC_Agencias: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_AGENCIAS'
    Left = 736
    Top = 16
  end
  object SDS_Agencias: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select  * from AGENCIAS order by Nome'
    DataSet.DataSource = DTS_Agencias
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'LINK'
        ParamType = ptInput
        Value = 3
      end>
    IndexFieldNames = 'LINK'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Bancos
    PacketRecords = 0
    Params = <>
    Left = 737
    Top = 70
    object SDS_AgenciasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_AgenciasBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object SDS_AgenciasGERENTE: TStringField
      FieldName = 'GERENTE'
      Size = 50
    end
    object SDS_AgenciasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_AgenciasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_AgenciasCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999-999;1;_'
      FixedChar = True
      Size = 10
    end
    object SDS_AgenciasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_AgenciasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_AgenciasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_AgenciasFAX: TStringField
      FieldName = 'FAX'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_AgenciasSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object SDS_AgenciasEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object SDS_AgenciasLINK: TIntegerField
      FieldName = 'LINK'
      Required = True
    end
    object SDS_AgenciasUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_AgenciasDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_AgenciasNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object SDS_AgenciasNUM_AGENCIA: TStringField
      FieldName = 'NUM_AGENCIA'
      Required = True
      Size = 8
    end
    object SDS_AgenciasFEBRABAN: TStringField
      FieldName = 'FEBRABAN'
      Size = 3
    end
  end
  object DTS_Agencias: TDataSource
    DataSet = SDS_Agencias
    Left = 739
    Top = 122
  end
  object SPC_SubGrupos: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_SUBGRUPOS'
    Left = 19
    Top = 167
  end
  object SDS_SubGrupos: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select*  from SUBGRUPOS order by NOME'
    DataSet.DataSource = DTS_SubGrupos
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'LINK'
        ParamType = ptInput
        Value = 20
      end>
    IndexFieldNames = 'LINK'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Grupos
    PacketRecords = 0
    Params = <>
    Left = 25
    Top = 229
    object SDS_SubGruposCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_SubGruposNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object SDS_SubGruposGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 50
    end
    object SDS_SubGruposLINK: TIntegerField
      FieldName = 'LINK'
      Required = True
    end
    object SDS_SubGruposUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_SubGruposDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_SubGrupos: TDataSource
    DataSet = SDS_SubGrupos
    Left = 22
    Top = 281
  end
  object SPC_NotasFiscais: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
        Value = 97
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_NOTASFISCAIS'
    Left = 349
    Top = 178
  end
  object SDS_NotasFiscais: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from NOTASFISCAIS order by codigo_nota'
    DataSet.DataSource = DTS_NotasFiscais
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 357
    Top = 232
    object SDS_NotasFiscaisCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object SDS_NotasFiscaisNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Required = True
    end
    object SDS_NotasFiscaisCFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      Size = 5
    end
    object SDS_NotasFiscaisDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SDS_NotasFiscaisCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object SDS_NotasFiscaisFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SDS_NotasFiscaisDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_NotasFiscaisTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object SDS_NotasFiscaisIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object SDS_NotasFiscaisUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_NotasFiscaisDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_NotasFiscaisOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_NotasFiscaisMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object SDS_NotasFiscaisANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object SDS_NotasFiscaisPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      Size = 30
    end
    object SDS_NotasFiscaisBASE_CALCULO_ICMS: TFMTBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisBASE_CALC_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS_SUBST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_ICMS_SUBST: TFMTBCDField
      FieldName = 'VALOR_ICMS_SUBST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_OUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'VALOR_OUTRAS_DESPESAS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_TOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_TOTAL_ITENS_NOTA: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITENS_NOTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 15
    end
    object SDS_NotasFiscaisVLR_ICMS_GARANTIDO: TFMTBCDField
      FieldName = 'VLR_ICMS_GARANTIDO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaiscod_pagto: TIntegerField
      FieldName = 'cod_pagto'
    end
    object SDS_NotasFiscaisTP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object SDS_NotasFiscaisENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Size = 40
    end
    object SDS_NotasFiscaisEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
    end
    object SDS_NotasFiscaisCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object SDS_NotasFiscaisCEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object SDS_NotasFiscaisBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object SDS_NotasFiscaisTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
    end
    object SDS_NotasFiscaisTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SDS_NotasFiscaisCIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object SDS_NotasFiscaisUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object SDS_NotasFiscaisDESC_PAGTO: TStringField
      FieldName = 'DESC_PAGTO'
      Size = 50
    end
    object SDS_NotasFiscaisVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaispagamento: TStringField
      FieldName = 'pagamento'
      Size = 30
    end
    object SDS_NotasFiscaisMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object SDS_NotasFiscaisEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 1
    end
    object SDS_NotasFiscaisCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 44
    end
    object SDS_NotasFiscaisVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_PIS_ST: TFMTBCDField
      FieldName = 'VALOR_PIS_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisVALOR_COFIS_ST: TFMTBCDField
      FieldName = 'VALOR_COFIS_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object SDS_NotasFiscaisSUB_SERIE: TStringField
      FieldName = 'SUB_SERIE'
      Size = 10
    end
  end
  object DTS_NotasFiscais: TDataSource
    DataSet = SDS_NotasFiscais
    Left = 357
    Top = 275
  end
  object SPC_NotasFiscaisItens: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
        Value = 600
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_NOTASFISCAISITENS'
    Left = 433
    Top = 178
  end
  object SDS_NotasFiscaisItens: TSimpleDataSet
    Aggregates = <>
    AggregatesActive = True
    Connection = SQLC
    DataSet.CommandText = 'select * from NOTASFISCAIS_ITENS order by codigo_item'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_NOTA'
    MasterFields = 'CODIGO_NOTA'
    MasterSource = DTS_NotasFiscais
    PacketRecords = 0
    Params = <>
    Left = 435
    Top = 233
    object SDS_NotasFiscaisItensCODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Required = True
    end
    object SDS_NotasFiscaisItensCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object SDS_NotasFiscaisItensCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 13
    end
    object SDS_NotasFiscaisItensCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object SDS_NotasFiscaisItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_NotasFiscaisItensNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object SDS_NotasFiscaisItensCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object SDS_NotasFiscaisItensCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object SDS_NotasFiscaisItensDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object SDS_NotasFiscaisItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_NotasFiscaisItensVALOR_UNI: TFMTBCDField
      FieldName = 'VALOR_UNI'
      currency = True
      Precision = 15
    end
    object SDS_NotasFiscaisItensVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensDATA: TDateField
      FieldName = 'DATA'
    end
    object SDS_NotasFiscaisItensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object SDS_NotasFiscaisItensDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object SDS_NotasFiscaisItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_NotasFiscaisItensQUANT_FRACIONADA: TFMTBCDField
      FieldName = 'QUANT_FRACIONADA'
      Precision = 15
    end
    object SDS_NotasFiscaisItensLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object SDS_NotasFiscaisItensMARG_LUCRO: TFMTBCDField
      FieldName = 'MARG_LUCRO'
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_NotasFiscaisItensBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NotasFiscaisItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object DTS_NotasFiscaisItens: TDataSource
    DataSet = SDS_NotasFiscaisItens
    Left = 437
    Top = 284
  end
  object SPC_Retorno: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_RETORNO'
    Left = 511
    Top = 170
  end
  object SDS_Retorno: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select *   from MOTIVORETORNO ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 512
    Top = 225
    object SDS_RetornoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_RetornoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object SDS_RetornoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_RetornoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_Retorno: TDataSource
    DataSet = SDS_Retorno
    Left = 513
    Top = 285
  end
  object SPC_ContasPagar: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_CONTASPAGAR'
    Left = 652
    Top = 163
  end
  object SDS_ContasPagar: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONTASPAGAR order by CODIGO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 653
    Top = 218
    object SDS_ContasPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ContasPagarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_ContasPagarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SDS_ContasPagarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_ContasPagarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_ContasPagarTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SDS_ContasPagarCODIGO_FORNECEDOR: TIntegerField
      FieldName = 'CODIGO_FORNECEDOR'
      Required = True
    end
    object SDS_ContasPagarFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SDS_ContasPagarVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object SDS_ContasPagarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object SDS_ContasPagarN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SDS_ContasPagarPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SDS_ContasPagarSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SDS_ContasPagarDIA_VENCIMENTO: TStringField
      FieldName = 'DIA_VENCIMENTO'
      Size = 2
    end
    object SDS_ContasPagarTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_ContasPagarCOND_PAGTO: TStringField
      FieldName = 'COND_PAGTO'
      Size = 30
    end
    object SDS_ContasPagarCOND_PAGTO_COD: TIntegerField
      FieldName = 'COND_PAGTO_COD'
    end
    object SDS_ContasPagarMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object SDS_ContasPagarANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object SDS_ContasPagarCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
    end
  end
  object DTS_ContasPagar: TDataSource
    DataSet = SDS_ContasPagar
    Left = 654
    Top = 270
  end
  object SPC_Contas_Pagar: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_CONTAS_PAGAR'
    Left = 735
    Top = 170
  end
  object SDS_Contas_Pagar: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONTAS_PAGAR order by DATA_VENCIMENTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Value = 3
      end>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO'
    MasterSource = DTS_ContasPagar
    PacketRecords = 0
    Params = <>
    BeforeInsert = SDS_Contas_PagarBeforeInsert
    Left = 729
    Top = 233
    object SDS_Contas_PagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Contas_PagarCODIGO_GERA: TIntegerField
      FieldName = 'CODIGO_GERA'
      Required = True
    end
    object SDS_Contas_PagarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_Contas_PagarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SDS_Contas_PagarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object SDS_Contas_PagarDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_Contas_PagarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_Contas_PagarUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SDS_Contas_PagarUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_Contas_PagarTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SDS_Contas_PagarFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SDS_Contas_PagarDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
    end
    object SDS_Contas_PagarMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
    end
    object SDS_Contas_PagarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
    end
    object SDS_Contas_PagarVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object SDS_Contas_PagarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object SDS_Contas_PagarVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
    end
    object SDS_Contas_PagarN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SDS_Contas_PagarSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SDS_Contas_PagarAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_Contas_PagarOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_Contas_PagarTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_Contas_PagarPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 7
    end
  end
  object DTS_Contas_Pagar: TDataSource
    DataSet = SDS_Contas_Pagar
    Left = 721
    Top = 285
  end
  object DTS_CP_Autorizar: TDataSource
    DataSet = SDS_CP_Autorizar
    Left = 84
    Top = 379
  end
  object SDS_CP_Autorizar: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 
      'select * from CONTAS_PAGAR where AUTORIZACAO = '#39'N'#39' order by DATA' +
      '_VENCIMENTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 83
    Top = 315
    object SDS_CP_AutorizarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CP_AutorizarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_CP_AutorizarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SDS_CP_AutorizarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_CP_AutorizarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_CP_AutorizarTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SDS_CP_AutorizarFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SDS_CP_AutorizarDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SDS_CP_AutorizarPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SDS_CP_AutorizarSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SDS_CP_AutorizarAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_CP_AutorizarCODIGO_GERA: TIntegerField
      FieldName = 'CODIGO_GERA'
      Required = True
    end
    object SDS_CP_AutorizarDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CP_AutorizarUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SDS_CP_AutorizarUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CP_AutorizarVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
    end
    object SDS_CP_AutorizarOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_CP_AutorizarTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_CP_AutorizarVALOR_ADIANTAMENTO: TFMTBCDField
      FieldName = 'VALOR_ADIANTAMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CP_AutorizarVALOR_AUTORIZADO: TFMTBCDField
      FieldName = 'VALOR_AUTORIZADO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CP_AutorizarVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTS_CP_Baixar: TDataSource
    DataSet = SDS_CP_Baixar
    Left = 284
    Top = 237
  end
  object SDS_CP_Baixar: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 
      'select * from CONTAS_PAGAR where AUTORIZACAO = '#39'S'#39' order by DATA' +
      '_VENCIMENTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 277
    Top = 189
    object SDS_CP_BaixarCODIGO_GERA: TIntegerField
      FieldName = 'CODIGO_GERA'
      Required = True
    end
    object SDS_CP_BaixarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CP_BaixarDATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_CP_BaixarDATA_EMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_EMISSAO'
    end
    object SDS_CP_BaixarDATA_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_CP_BaixarDATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CP_BaixarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_CP_BaixarUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SDS_CP_BaixarUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CP_BaixarTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SDS_CP_BaixarFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SDS_CP_BaixarDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
    end
    object SDS_CP_BaixarN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SDS_CP_BaixarPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object SDS_CP_BaixarSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SDS_CP_BaixarAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_CP_BaixarOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_CP_BaixarTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_CP_BaixarVALOR_ADIANTAMENTO: TFMTBCDField
      FieldName = 'VALOR_ADIANTAMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CP_BaixarVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CP_BaixarVALOR_AUTORIZADO: TFMTBCDField
      FieldName = 'VALOR_AUTORIZADO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object SDS_PRODUTOS: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 
      'select * from PRODUTOS ORDER BY DESCRICAO, REFERENCIA, CODIGO_BA' +
      'RRAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 101
    Top = 189
    object SDS_PRODUTOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_PRODUTOSCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object SDS_PRODUTOSABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Size = 29
    end
    object SDS_PRODUTOSPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSMARGEM_LUCRO: TFMTBCDField
      FieldName = 'MARGEM_LUCRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object SDS_PRODUTOSFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSICMS: TFMTBCDField
      FieldName = 'ICMS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSIPI_IRPJ: TFMTBCDField
      FieldName = 'IPI_IRPJ'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSOUTROS_IMPOSTOS: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSDESCONTOS: TFMTBCDField
      FieldName = 'DESCONTOS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Size = 6
    end
    object SDS_PRODUTOSSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_PRODUTOSCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
      Size = 3
    end
    object SDS_PRODUTOSDESCONTO_MAXIMO: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
    end
    object SDS_PRODUTOSCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
    end
    object SDS_PRODUTOSCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
    end
    object SDS_PRODUTOSNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object SDS_PRODUTOSNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Size = 40
    end
    object SDS_PRODUTOSNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object SDS_PRODUTOSNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 40
    end
    object SDS_PRODUTOSCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
    end
    object SDS_PRODUTOSFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object SDS_PRODUTOSESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object SDS_PRODUTOSESTOQUE_VENDIDO: TFMTBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
    object SDS_PRODUTOSVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
      Size = 6
    end
    object SDS_PRODUTOSVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      currency = True
      Precision = 15
      Size = 6
    end
    object SDS_PRODUTOSESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
    end
    object SDS_PRODUTOSESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
    end
    object SDS_PRODUTOSDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_PRODUTOSUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_PRODUTOSVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      currency = True
      Precision = 15
      Size = 6
    end
    object SDS_PRODUTOSULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
    object SDS_PRODUTOSVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      currency = True
      Precision = 15
      Size = 6
    end
    object SDS_PRODUTOSSECCAO: TIntegerField
      FieldName = 'SECCAO'
    end
    object SDS_PRODUTOSCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object SDS_PRODUTOSLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object SDS_PRODUTOSAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 250
    end
    object SDS_PRODUTOSESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Size = 50
    end
    object SDS_PRODUTOSGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
    end
    object SDS_PRODUTOSBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object SDS_PRODUTOSETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 1
    end
    object SDS_PRODUTOSATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_PRODUTOSREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
    object SDS_PRODUTOSCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_PRODUTOSDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object SDS_PRODUTOSPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Precision = 15
      Size = 3
    end
    object SDS_PRODUTOSPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 15
      Size = 3
    end
    object SDS_PRODUTOSFONETICO: TStringField
      FieldName = 'FONETICO'
      Size = 60
    end
    object SDS_PRODUTOSDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
    end
    object SDS_PRODUTOSCUSTOREPOSICAO: TFMTBCDField
      FieldName = 'CUSTOREPOSICAO'
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSPRECO_ANT: TFMTBCDField
      FieldName = 'PRECO_ANT'
      currency = True
      Precision = 15
      Size = 3
    end
    object SDS_PRODUTOSPRECO_PROMOCAO: TFMTBCDField
      FieldName = 'PRECO_PROMOCAO'
      currency = True
      Precision = 15
      Size = 3
    end
    object SDS_PRODUTOSFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Size = 1
    end
    object SDS_PRODUTOSDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
    end
    object SDS_PRODUTOSDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
    end
    object SDS_PRODUTOSCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
    end
    object SDS_PRODUTOSLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 50
    end
    object SDS_PRODUTOSPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Size = 50
    end
    object SDS_PRODUTOSMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Size = 1
    end
    object SDS_PRODUTOSQTD_FRACIONADA: TFMTBCDField
      FieldName = 'QTD_FRACIONADA'
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSQTD_CAIXA: TFMTBCDField
      FieldName = 'QTD_CAIXA'
      Precision = 15
      Size = 0
    end
    object SDS_PRODUTOSMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Size = 3
    end
    object SDS_PRODUTOSLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object SDS_PRODUTOSVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object SDS_PRODUTOSCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object SDS_PRODUTOSPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      currency = True
      Precision = 15
      Size = 3
    end
    object SDS_PRODUTOSMARGEM_LUCRO2: TFMTBCDField
      FieldName = 'MARGEM_LUCRO2'
      Precision = 15
      Size = 2
    end
    object SDS_PRODUTOSVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object SDS_PRODUTOSPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_PRODUTOSUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
    end
    object SDS_PRODUTOSDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Size = 6
    end
    object SDS_PRODUTOSQUANT_SAIDA: TFMTBCDField
      FieldName = 'QUANT_SAIDA'
      Precision = 15
    end
    object SDS_PRODUTOSQUANT_ENTRADA: TFMTBCDField
      FieldName = 'QUANT_ENTRADA'
      Precision = 15
    end
    object SDS_PRODUTOSESTOQUE_FRACAO: TFMTBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Precision = 15
    end
    object SDS_PRODUTOSDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object SDS_PRODUTOSFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_PRODUTOSNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object SDS_PRODUTOSCOD_MS: TStringField
      FieldName = 'COD_MS'
      Size = 13
    end
    object SDS_PRODUTOSProdutoComposto: TStringField
      FieldName = 'ProdutoComposto'
      Size = 5
    end
    object SDS_PRODUTOSTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object SDS_PRODUTOSCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Size = 5
    end
    object SDS_PRODUTOSCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
    end
    object SDS_PRODUTOSCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
    end
    object SDS_PRODUTOSLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Size = 1
    end
    object SDS_PRODUTOSGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
    end
    object SDS_PRODUTOSCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 1
    end
    object SDS_PRODUTOSCOR: TIntegerField
      FieldName = 'COR'
    end
    object SDS_PRODUTOSENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Required = True
    end
    object SDS_PRODUTOSID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
    end
    object SDS_PRODUTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object SDS_PRODUTOSCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Size = 9
    end
    object SDS_PRODUTOSCESTA: TStringField
      FieldName = 'CESTA'
      Size = 1
    end
    object SDS_PRODUTOSML_QUANT_BEB: TFMTBCDField
      FieldName = 'ML_QUANT_BEB'
      Precision = 15
      Size = 3
    end
    object SDS_PRODUTOSUND_TRIB: TStringField
      FieldName = 'UND_TRIB'
      Size = 3
    end
    object SDS_PRODUTOSCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 44
    end
    object SDS_PRODUTOSCOR_DESC: TStringField
      FieldName = 'COR_DESC'
      Size = 30
    end
    object SDS_PRODUTOSN_MOTOR: TStringField
      FieldName = 'N_MOTOR'
      Size = 30
    end
    object SDS_PRODUTOSANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Size = 4
    end
    object SDS_PRODUTOSANO_MOD_FAB: TStringField
      FieldName = 'ANO_MOD_FAB'
      Size = 4
    end
    object SDS_PRODUTOSTIPO_VEIC: TStringField
      FieldName = 'TIPO_VEIC'
      Size = 10
    end
    object SDS_PRODUTOSN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Size = 30
    end
    object SDS_PRODUTOSCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Size = 30
    end
    object SDS_PRODUTOSESPECIE_VEICULO: TStringField
      FieldName = 'ESPECIE_VEICULO'
      Size = 10
    end
    object SDS_PRODUTOSCOD_COR_DENATRAN: TStringField
      FieldName = 'COD_COR_DENATRAN'
      Size = 10
    end
    object SDS_PRODUTOSTIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Size = 10
    end
    object SDS_PRODUTOSVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 1
    end
    object SDS_PRODUTOSUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object SDS_PRODUTOSUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object SDS_PRODUTOSUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
  end
  object DTS_PRODUTOS: TDataSource
    AutoEdit = False
    DataSet = SDS_PRODUTOS
    Left = 88
    Top = 246
  end
  object SDS_CONFIGURACOES: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONFIGURACOES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 632
    Top = 320
    object SDS_CONFIGURACOESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CONFIGURACOESDESCONTO_MAXIMO_FV: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO_FV'
      Precision = 15
    end
    object SDS_CONFIGURACOESNUMERO_SERIE: TStringField
      FieldName = 'NUMERO_SERIE'
    end
    object SDS_CONFIGURACOESFORM_PEDIDOS: TStringField
      FieldName = 'FORM_PEDIDOS'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESDDIP: TIntegerField
      FieldName = 'DDIP'
    end
    object SDS_CONFIGURACOESDCP: TIntegerField
      FieldName = 'DCP'
    end
    object SDS_CONFIGURACOESJUROS_CHEQUE: TFMTBCDField
      FieldName = 'JUROS_CHEQUE'
      Precision = 15
    end
    object SDS_CONFIGURACOESDIAS_CARENCIA: TIntegerField
      FieldName = 'DIAS_CARENCIA'
    end
    object SDS_CONFIGURACOESALTERA_PRECOVENDA: TStringField
      FieldName = 'ALTERA_PRECOVENDA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESTIPO_DESCONTOVENDA: TStringField
      FieldName = 'TIPO_DESCONTOVENDA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESREGISTRADORA: TStringField
      FieldName = 'REGISTRADORA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESMSG_CUPOMFISCAL: TStringField
      FieldName = 'MSG_CUPOMFISCAL'
      Size = 250
    end
    object SDS_CONFIGURACOESCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 1
    end
    object SDS_CONFIGURACOESCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Size = 1
    end
    object SDS_CONFIGURACOESBOLETO: TStringField
      FieldName = 'BOLETO'
      Size = 1
    end
    object SDS_CONFIGURACOESDUPLICATA: TStringField
      FieldName = 'DUPLICATA'
      Size = 1
    end
    object SDS_CONFIGURACOESLIMITE_CREDITO: TStringField
      FieldName = 'LIMITE_CREDITO'
      Size = 1
    end
    object SDS_CONFIGURACOESESTOQUE_NEGATIVO: TStringField
      FieldName = 'ESTOQUE_NEGATIVO'
      Size = 1
    end
    object SDS_CONFIGURACOESPESQ_PADRAO: TStringField
      FieldName = 'PESQ_PADRAO'
      Size = 1
    end
    object SDS_CONFIGURACOESIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
    object SDS_CONFIGURACOESCLIENTE_PADRAO: TIntegerField
      FieldName = 'CLIENTE_PADRAO'
    end
    object SDS_CONFIGURACOESLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Size = 1
    end
    object SDS_CONFIGURACOESPRODUTO_PADRAO: TIntegerField
      FieldName = 'PRODUTO_PADRAO'
    end
    object SDS_CONFIGURACOESCUPON_VINCULADO: TStringField
      FieldName = 'CUPON_VINCULADO'
      Size = 1
    end
    object SDS_CONFIGURACOESJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
    end
    object SDS_CONFIGURACOESOS_PRIORIDADE: TIntegerField
      FieldName = 'OS_PRIORIDADE'
    end
    object SDS_CONFIGURACOESOS_TIPO: TIntegerField
      FieldName = 'OS_TIPO'
    end
    object SDS_CONFIGURACOESOS_STATUS: TIntegerField
      FieldName = 'OS_STATUS'
    end
    object SDS_CONFIGURACOESPRECO_PADRAO: TStringField
      FieldName = 'PRECO_PADRAO'
      Size = 1
    end
    object SDS_CONFIGURACOESMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
    end
    object SDS_CONFIGURACOESUSA_FRACAO: TStringField
      FieldName = 'USA_FRACAO'
      Size = 1
    end
    object SDS_CONFIGURACOESIMP_NOTA: TStringField
      FieldName = 'IMP_NOTA'
      Size = 1
    end
    object SDS_CONFIGURACOESTP_DESCONTO: TStringField
      FieldName = 'TP_DESCONTO'
      Size = 1
    end
    object SDS_CONFIGURACOESLIB_PRECO_VENDA: TStringField
      FieldName = 'LIB_PRECO_VENDA'
      Size = 1
    end
    object SDS_CONFIGURACOESDESC_MAXIMO_PERC: TIntegerField
      FieldName = 'DESC_MAXIMO_PERC'
    end
    object SDS_CONFIGURACOESUTILIZA_NFE: TStringField
      FieldName = 'UTILIZA_NFE'
      Size = 1
    end
    object SDS_CONFIGURACOESCOD_PAGTO_PADRAO: TStringField
      FieldName = 'COD_PAGTO_PADRAO'
      Size = 1
    end
    object SDS_CONFIGURACOESIMP_VENDA: TStringField
      FieldName = 'IMP_VENDA'
      Size = 1
    end
    object SDS_CONFIGURACOESLEITOT_SERIAL: TStringField
      FieldName = 'LEITOT_SERIAL'
      Size = 1
    end
    object SDS_CONFIGURACOESCLIENTE_VENDEDOR: TStringField
      FieldName = 'CLIENTE_VENDEDOR'
      Size = 1
    end
    object SDS_CONFIGURACOESDEBITOS_CLIENTE: TStringField
      FieldName = 'DEBITOS_CLIENTE'
      Size = 1
    end
    object SDS_CONFIGURACOESDATA_TRAB: TDateField
      FieldName = 'DATA_TRAB'
    end
    object SDS_CONFIGURACOESNFE_CERTIFICAO: TStringField
      FieldName = 'NFE_CERTIFICAO'
      Size = 60
    end
    object SDS_CONFIGURACOESNFE_SENHA: TStringField
      FieldName = 'NFE_SENHA'
    end
    object SDS_CONFIGURACOESNFE_LOGOMARCA: TStringField
      FieldName = 'NFE_LOGOMARCA'
      Size = 100
    end
    object SDS_CONFIGURACOESNFE_CAMINHO_XML: TStringField
      FieldName = 'NFE_CAMINHO_XML'
      Size = 100
    end
    object SDS_CONFIGURACOESUSA_GAVETA: TStringField
      FieldName = 'USA_GAVETA'
      Size = 1
    end
    object SDS_CONFIGURACOESOBS_FISCO: TStringField
      FieldName = 'OBS_FISCO'
      Size = 200
    end
    object SDS_CONFIGURACOESMODELO_ECF: TStringField
      FieldName = 'MODELO_ECF'
      Size = 1
    end
    object SDS_CONFIGURACOESPREVIEW: TStringField
      FieldName = 'PREVIEW'
      Size = 1
    end
    object SDS_CONFIGURACOESDEFAULT_LOCAL_ORIGEM: TIntegerField
      FieldName = 'DEFAULT_LOCAL_ORIGEM'
    end
    object SDS_CONFIGURACOESDEFAULT_LOCAL_DESTINO: TIntegerField
      FieldName = 'DEFAULT_LOCAL_DESTINO'
    end
    object SDS_CONFIGURACOESDATA_INICIO_ESTOQUE: TDateField
      FieldName = 'DATA_INICIO_ESTOQUE'
    end
    object SDS_CONFIGURACOESCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_CONFIGURACOESCODIGO_LOCAL_ESTOQUE_VENDAS: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE_VENDAS'
    end
    object SDS_CONFIGURACOESLOCAL_BACKUP: TStringField
      FieldName = 'LOCAL_BACKUP'
      Size = 255
    end
    object SDS_CONFIGURACOESTIPO_IMPRESSAO_DANFE: TStringField
      FieldName = 'TIPO_IMPRESSAO_DANFE'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESFORMA_EMISSAO_DANFE: TIntegerField
      FieldName = 'FORMA_EMISSAO_DANFE'
    end
    object SDS_CONFIGURACOESSALVAR_LOG_DANFE: TStringField
      FieldName = 'SALVAR_LOG_DANFE'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESAMBIENTE_DANFE: TStringField
      FieldName = 'AMBIENTE_DANFE'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESSERVIDOR_SMTP: TStringField
      FieldName = 'SERVIDOR_SMTP'
      Size = 100
    end
    object SDS_CONFIGURACOESPORTA_SMTP: TStringField
      FieldName = 'PORTA_SMTP'
      Size = 10
    end
    object SDS_CONFIGURACOESUSUARIO_SMTP: TStringField
      FieldName = 'USUARIO_SMTP'
      Size = 80
    end
    object SDS_CONFIGURACOESSENHA_SMTP: TStringField
      FieldName = 'SENHA_SMTP'
      Size = 60
    end
    object SDS_CONFIGURACOESASSUNTO_EMAIL_DANFE: TStringField
      FieldName = 'ASSUNTO_EMAIL_DANFE'
      Size = 150
    end
    object SDS_CONFIGURACOESSMTP_CONEXAO_SEGURA: TStringField
      FieldName = 'SMTP_CONEXAO_SEGURA'
      FixedChar = True
      Size = 1
    end
    object SDS_CONFIGURACOESMENSAGEM_EMAIL_DANFE: TStringField
      FieldName = 'MENSAGEM_EMAIL_DANFE'
      Size = 200
    end
    object SDS_CONFIGURACOESPASTA_CANCELADAS_DANFE: TStringField
      FieldName = 'PASTA_CANCELADAS_DANFE'
      Size = 100
    end
    object SDS_CONFIGURACOESPASTA_INUTILIZADAS_DANFE: TStringField
      FieldName = 'PASTA_INUTILIZADAS_DANFE'
      Size = 100
    end
    object SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE: TStringField
      FieldName = 'PASTA_TRANSMITIDAS_DANFE'
      Size = 100
    end
    object SDS_CONFIGURACOESFROM_SMTP: TStringField
      FieldName = 'FROM_SMTP'
      Size = 100
    end
    object SDS_CONFIGURACOESCAMINHO_ARQUIVOS_PDF: TStringField
      FieldName = 'CAMINHO_ARQUIVOS_PDF'
      Size = 100
    end
    object SDS_CONFIGURACOESESTADO_NFE: TStringField
      FieldName = 'ESTADO_NFE'
      Size = 2
    end
    object SDS_CONFIGURACOESCAMINHO_CERTIFICADO: TStringField
      FieldName = 'CAMINHO_CERTIFICADO'
      Size = 100
    end
    object SDS_CONFIGURACOESCST_CUPON: TStringField
      FieldName = 'CST_CUPON'
      Size = 3
    end
    object SDS_CONFIGURACOESCFOP_CUPON: TStringField
      FieldName = 'CFOP_CUPON'
      Size = 5
    end
    object SDS_CONFIGURACOESTP_DESC: TStringField
      FieldName = 'TP_DESC'
      Size = 1
    end
    object SDS_CONFIGURACOESPROX_LINHA: TStringField
      FieldName = 'PROX_LINHA'
      Size = 1
    end
    object SDS_CONFIGURACOESUSUARIO_FP: TStringField
      FieldName = 'USUARIO_FP'
      Size = 50
    end
    object SDS_CONFIGURACOESSENHA_FP: TStringField
      FieldName = 'SENHA_FP'
    end
    object SDS_CONFIGURACOESUSA_FP: TStringField
      FieldName = 'USA_FP'
      Size = 1
    end
    object SDS_CONFIGURACOESCHS: TStringField
      FieldName = 'CHS'
      Size = 1
    end
    object SDS_CONFIGURACOESCONCENTRADOR: TStringField
      FieldName = 'CONCENTRADOR'
      Size = 1
    end
    object SDS_CONFIGURACOESCONCENT_PORTA: TStringField
      FieldName = 'CONCENT_PORTA'
      Size = 4
    end
    object SDS_CONFIGURACOESUNIT_TOTAL: TStringField
      FieldName = 'UNIT_TOTAL'
      Size = 1
    end
    object SDS_CONFIGURACOESVALOR_GERENCIAL: TIntegerField
      FieldName = 'VALOR_GERENCIAL'
    end
    object SDS_CONFIGURACOESTEXTO_GERENCIAL: TStringField
      FieldName = 'TEXTO_GERENCIAL'
      Size = 50
    end
    object SDS_CONFIGURACOESTEXTO_GERENCIAL1: TStringField
      FieldName = 'TEXTO_GERENCIAL1'
      Size = 50
    end
    object SDS_CONFIGURACOESTEXTO_GERENCIAL2: TStringField
      FieldName = 'TEXTO_GERENCIAL2'
      Size = 50
    end
    object SDS_CONFIGURACOESTEXTO_GERENCIAL4: TStringField
      FieldName = 'TEXTO_GERENCIAL4'
      Size = 50
    end
    object SDS_CONFIGURACOESUSA_GERENCIAL: TStringField
      FieldName = 'USA_GERENCIAL'
      Size = 1
    end
    object SDS_CONFIGURACOESCON_VALORMINUTO: TFMTBCDField
      FieldName = 'CON_VALORMINUTO'
      Precision = 15
      Size = 2
    end
    object SDS_CONFIGURACOESCON_CCEXTRA: TStringField
      FieldName = 'CON_CCEXTRA'
      FixedChar = True
      Size = 3
    end
    object SDS_CONFIGURACOESCON_VALORCEXTRA: TFMTBCDField
      FieldName = 'CON_VALORCEXTRA'
      Precision = 15
      Size = 2
    end
    object SDS_CONFIGURACOESCON_HORADIARIA: TStringField
      FieldName = 'CON_HORADIARIA'
      Size = 8
    end
    object SDS_CONFIGURACOESPLANO_VENDA_AV: TIntegerField
      FieldName = 'PLANO_VENDA_AV'
    end
    object SDS_CONFIGURACOESPLANO_VENDA_AP: TIntegerField
      FieldName = 'PLANO_VENDA_AP'
    end
    object SDS_CONFIGURACOESPLANO_OS_AV: TIntegerField
      FieldName = 'PLANO_OS_AV'
    end
    object SDS_CONFIGURACOESPLANO_OS_AP: TIntegerField
      FieldName = 'PLANO_OS_AP'
    end
    object SDS_CONFIGURACOESPLANO_OUTRAS_ENTRADAS: TIntegerField
      FieldName = 'PLANO_OUTRAS_ENTRADAS'
    end
    object SDS_CONFIGURACOESPLANO_OUTRAS_SAIDAS: TIntegerField
      FieldName = 'PLANO_OUTRAS_SAIDAS'
    end
    object SDS_CONFIGURACOESPLANO_RECEBIMENTO_CREDIARIO: TIntegerField
      FieldName = 'PLANO_RECEBIMENTO_CREDIARIO'
    end
    object SDS_CONFIGURACOESPLANO_DUPLICATA_NFE: TIntegerField
      FieldName = 'PLANO_DUPLICATA_NFE'
    end
    object SDS_CONFIGURACOESECF_MODELO: TStringField
      FieldName = 'ECF_MODELO'
      Size = 30
    end
    object SDS_CONFIGURACOESECF_PORTA: TStringField
      FieldName = 'ECF_PORTA'
      Size = 10
    end
    object SDS_CONFIGURACOESECF_TIPO: TStringField
      FieldName = 'ECF_TIPO'
    end
    object SDS_CONFIGURACOESECF_MARCA: TStringField
      FieldName = 'ECF_MARCA'
      Size = 30
    end
    object SDS_CONFIGURACOESABRE_VENDA: TStringField
      FieldName = 'ABRE_VENDA'
      Size = 1
    end
    object SDS_CONFIGURACOESCAMINHO_RELATORIO_DANFE: TStringField
      FieldName = 'CAMINHO_RELATORIO_DANFE'
      Size = 50
    end
    object SDS_CONFIGURACOESTOKEN: TStringField
      FieldName = 'TOKEN'
      Size = 6
    end
    object SDS_CONFIGURACOESID_TOKEN: TStringField
      FieldName = 'ID_TOKEN'
      Size = 35
    end
    object SDS_CONFIGURACOESNFCE_OFF: TStringField
      FieldName = 'NFCE_OFF'
      Size = 1
    end
    object SDS_CONFIGURACOESTP_PESQUISA: TStringField
      FieldName = 'TP_PESQUISA'
      Size = 1
    end
    object SDS_CONFIGURACOESCAIXA_UNICO: TStringField
      FieldName = 'CAIXA_UNICO'
      Size = 1
    end
    object SDS_CONFIGURACOESMARGEM_LUCRO: TFMTBCDField
      FieldName = 'MARGEM_LUCRO'
      Precision = 15
      Size = 2
    end
    object SDS_CONFIGURACOESSERVICO_NFCE: TIntegerField
      FieldName = 'SERVICO_NFCE'
    end
  end
  object DTS_CONFIGURACOES: TDataSource
    DataSet = SDS_CONFIGURACOES
    Left = 712
    Top = 328
  end
  object SDS_Conta_Bancaria: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONTA_BANCARIA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 8
    Top = 392
    object SDS_Conta_BancariaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Conta_BancariaBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object SDS_Conta_BancariaTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_Conta_BancariaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object SDS_Conta_BancariaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object SDS_Conta_BancariaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_Conta_BancariaUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_Conta_BancariaDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_Conta_BancariaFEBRABAN: TStringField
      FieldName = 'FEBRABAN'
      Size = 3
    end
    object strngfldSDS_Conta_BancariaDIGITO: TStringField
      FieldName = 'DIGITO'
      Size = 1
    end
  end
  object SPC_Conta_Bancaria: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_CONTA_BANCARIA'
    Left = 10
    Top = 332
  end
  object DTS_Conta_Bancaria: TDataSource
    DataSet = SDS_Conta_Bancaria
    Left = 47
    Top = 439
  end
  object DTS_PlContas: TDataSource
    DataSet = SDS_PlContas
    Left = 288
    Top = 333
  end
  object SPC_PlContas: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_PLANOCONTAS'
    Left = 304
    Top = 386
  end
  object SDS_PlContas: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from PLANOCONTAS ORDER BY COD_COMPLETO ASC'
    DataSet.DataSource = DTS_PlContas
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 280
    Top = 290
    object SDS_PlContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_PlContasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object SDS_PlContasUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_PlContasDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_PlContasCOD_NATUREZA: TStringField
      FieldName = 'COD_NATUREZA'
      Size = 2
    end
    object SDS_PlContasNIVEL_CTA: TStringField
      FieldName = 'NIVEL_CTA'
      Size = 5
    end
    object SDS_PlContasINDICADOR: TStringField
      FieldName = 'INDICADOR'
      Size = 1
    end
    object SDS_PlContasCOD_COMPLETO: TStringField
      FieldName = 'COD_COMPLETO'
      EditMask = '0.0.0.00.00;1;_'
    end
    object SDS_PlContasSALDO_CTA: TFMTBCDField
      FieldName = 'SALDO_CTA'
      Precision = 15
      Size = 2
    end
    object SDS_PlContasDEB_CRED: TStringField
      FieldName = 'DEB_CRED'
      Size = 1
    end
    object SDS_PlContasCOD_CTA: TStringField
      FieldName = 'COD_CTA'
    end
  end
  object SPC_CondPagamento: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
        Value = 1
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_COND_PAGAMENTO'
    Left = 576
    Top = 178
  end
  object SDS_CondPagamento: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONDICAO_PAGAMENTO ORDER BY DESCRICAO asc'
    DataSet.DataSource = DTS_CondPagamento
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 576
    Top = 232
    object SDS_CondPagamentoCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CondPagamentoNUMERO_PAR: TIntegerField
      FieldName = 'NUMERO_PAR'
    end
    object SDS_CondPagamentoVARIACAO_DIAS: TIntegerField
      FieldName = 'VARIACAO_DIAS'
    end
    object SDS_CondPagamentoPIMEIRA_PAR: TIntegerField
      FieldName = 'PIMEIRA_PAR'
    end
    object SDS_CondPagamentoMEDIA_DIAS: TIntegerField
      FieldName = 'MEDIA_DIAS'
    end
    object SDS_CondPagamentoJUROS_BASE: TFMTBCDField
      FieldName = 'JUROS_BASE'
      Precision = 15
    end
    object SDS_CondPagamentoTIPO_PAGAMENTO: TStringField
      Alignment = taCenter
      FieldName = 'TIPO_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object SDS_CondPagamentoSTATUS: TStringField
      Alignment = taCenter
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SDS_CondPagamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SDS_CondPagamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object SDS_CondPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
    object SDS_CondPagamentoJUROS_DIA: TFMTBCDField
      FieldName = 'JUROS_DIA'
      Precision = 15
    end
    object SDS_CondPagamentoPG_ECF: TStringField
      FieldName = 'PG_ECF'
      Size = 2
    end
  end
  object DTS_CondPagamento: TDataSource
    DataSet = SDS_CondPagamento
    Left = 584
    Top = 275
  end
  object SDS_SECCAO: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from SECCAO ORDER BY CODIGO asc'
    DataSet.DataSource = DTS_SECCAO
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 24
    Top = 488
    object SDS_SECCAOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_SECCAODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_SECCAOUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_SECCAODATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_SECCAO: TDataSource
    DataSet = SDS_SECCAO
    Left = 88
    Top = 488
  end
  object SDS_CATEGORIA: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CATEGORIAS ORDER BY CODIGO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PERC_AVISTA'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'PERC_PRAZO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'USERCAD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATACAD'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 16
    Top = 544
    object SDS_CATEGORIACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CATEGORIADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_CATEGORIAPERC_AVISTA: TFMTBCDField
      FieldName = 'PERC_AVISTA'
      Precision = 15
      Size = 2
    end
    object SDS_CATEGORIAPERC_PRAZO: TFMTBCDField
      FieldName = 'PERC_PRAZO'
      Precision = 15
      Size = 2
    end
    object SDS_CATEGORIAUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_CATEGORIADATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_CATEGORIA: TDataSource
    DataSet = SDS_CATEGORIA
    Left = 96
    Top = 552
  end
  object SDS_AGREGADOS: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from AGREGADOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'CODIGO_PROD'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'AGREGADOS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'USERCAD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATACAD'
        DataType = ftDate
      end
      item
        Name = 'CODIGO_AGREG'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO_PROD'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PRODUTOS
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 305
    Top = 488
    object SDS_AGREGADOSCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Required = True
    end
    object SDS_AGREGADOSAGREGADOS: TStringField
      FieldName = 'AGREGADOS'
      Size = 50
    end
    object SDS_AGREGADOSUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_AGREGADOSDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_AGREGADOSCODIGO_AGREG: TIntegerField
      FieldName = 'CODIGO_AGREG'
    end
  end
  object DTS_AGREGADOS: TDataSource
    DataSet = SDS_AGREGADOS
    Left = 393
    Top = 448
  end
  object SPC_AGREGADOS: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_AGREGADOS'
    Left = 303
    Top = 434
  end
  object SDS_SIMILARES: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'Select * from PRODUTO_SIMILAR'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_PROD'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PRODUTOS
    PacketRecords = 0
    Params = <>
    Left = 567
    Top = 446
    object SDS_SIMILARESCODIGO_SEQ: TIntegerField
      FieldName = 'CODIGO_SEQ'
      Required = True
    end
    object SDS_SIMILARESCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Required = True
    end
    object SDS_SIMILARESCODIGO_SIMILAR: TIntegerField
      FieldName = 'CODIGO_SIMILAR'
    end
    object SDS_SIMILARESDESC_SIMILAR: TStringField
      FieldName = 'DESC_SIMILAR'
      Size = 50
    end
    object SDS_SIMILARESUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_SIMILARESDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_SIMILARES: TDataSource
    DataSet = SDS_SIMILARES
    Left = 648
    Top = 440
  end
  object SPC_SIMILARES: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'INSERECOD_PROD_SIMILAR'
    Left = 720
    Top = 432
  end
  object sds_LyBancos: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from BOLETO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 24
    Top = 592
    object sds_LyBancosCODIGO_BOLETO: TIntegerField
      FieldName = 'CODIGO_BOLETO'
      Required = True
    end
    object sds_LyBancosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_LyBancosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object sds_LyBancosBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object sds_LyBancosQUANT_DIAS_PROTESTO: TSmallintField
      FieldName = 'QUANT_DIAS_PROTESTO'
    end
    object O: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 80
    end
    object sds_LyBancosTIPO: TStringField
      FieldName = 'TIPO'
    end
    object sds_LyBancosNOMECEDENTE: TStringField
      FieldName = 'NOMECEDENTE'
      Size = 80
    end
    object sds_LyBancosCNPJCEDENTE: TStringField
      FieldName = 'CNPJCEDENTE'
      Size = 14
    end
    object sds_LyBancosTIPOPESSOACEDENTE: TStringField
      FieldName = 'TIPOPESSOACEDENTE'
      Size = 8
    end
    object sds_LyBancosCODIGOAGENCIA: TStringField
      FieldName = 'CODIGOAGENCIA'
      Size = 8
    end
    object sds_LyBancosDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      Size = 4
    end
    object sds_LyBancosNUMEROCONTA: TStringField
      FieldName = 'NUMEROCONTA'
      Size = 12
    end
    object sds_LyBancosDIGITOCONTA: TStringField
      FieldName = 'DIGITOCONTA'
      Size = 4
    end
    object sds_LyBancosCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 6
    end
    object sds_LyBancosCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 6
    end
    object sds_LyBancosVLRABATIMENTO: TFloatField
      FieldName = 'VLRABATIMENTO'
    end
    object sds_LyBancosVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sds_LyBancosVLRDESPESACOBRANCA: TFloatField
      FieldName = 'VLRDESPESACOBRANCA'
    end
    object sds_LyBancosVLRIOF: TFloatField
      FieldName = 'VLRIOF'
    end
    object sds_LyBancosVLRMORAJUROS: TFloatField
      FieldName = 'VLRMORAJUROS'
    end
    object sds_LyBancosVLROUTRASDEPESAS: TFloatField
      FieldName = 'VLROUTRASDEPESAS'
    end
    object sds_LyBancosVLROUTROSCREDITOS: TFloatField
      FieldName = 'VLROUTROSCREDITOS'
    end
    object sds_LyBancosFLAG_GERAR_REMESSA: TStringField
      FieldName = 'FLAG_GERAR_REMESSA'
      Size = 1
    end
    object sds_LyBancosNUMERO_REMESSA: TIntegerField
      FieldName = 'NUMERO_REMESSA'
    end
    object sds_LyBancosANO_REFERENCIA: TStringField
      FieldName = 'ANO_REFERENCIA'
      Size = 2
    end
    object sds_LyBancosPROTESTAR_AUTOMATICO: TStringField
      FieldName = 'PROTESTAR_AUTOMATICO'
      Size = 1
    end
    object sds_LyBancosMODELO: TStringField
      FieldName = 'MODELO'
      Size = 6
    end
    object sds_LyBancosUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object sds_LyBancosDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object sds_LyBancosNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
    end
    object sds_LyBancosCEDENTECODIGO: TStringField
      FieldName = 'CEDENTECODIGO'
      Size = 12
    end
    object sds_LyBancosCEDENTECODIGODIGITO: TStringField
      FieldName = 'CEDENTECODIGODIGITO'
      Size = 4
    end
    object sds_LyBancosNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 11
    end
    object sds_LyBancosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sds_LyBancosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sds_LyBancosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sds_LyBancosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object sds_LyBancosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sds_LyBancosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object sds_LyBancosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sds_LyBancosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sds_LyBancosANO: TStringField
      FieldName = 'ANO'
      Size = 2
    end
    object sds_LyBancosTP_COBRANCA: TStringField
      FieldName = 'TP_COBRANCA'
      Size = 1
    end
    object sds_LyBancosLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 1
    end
    object sds_LyBancosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
  end
  object Dts_lyBancos: TDataSource
    DataSet = sds_LyBancos
    Left = 89
    Top = 593
  end
  object SDS_Contrato: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONTRATO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 668
    Top = 498
    object SDS_ContratoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ContratoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object SDS_ContratoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object SDS_ContratoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_ContratoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_Contrato: TDataSource
    DataSet = SDS_Contrato
    Left = 728
    Top = 504
  end
  object Sds_cidades: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CIDADES order by NOME ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterPost = Sds_cidadesAfterPost
    OnReconcileError = Sds_cidadesReconcileError
    Left = 816
    Top = 15
    object Sds_cidadesCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Required = True
    end
    object Sds_cidadesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object Sds_cidadesCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999-999;1;_'
      FixedChar = True
      Size = 10
    end
    object Sds_cidadesCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
      Required = True
    end
    object Sds_cidadesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_cidadesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_cidadesDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Sds_cidadesUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = SDS_estados
      LookupKeyFields = 'COD_ESTADO'
      LookupResultField = 'UF'
      KeyFields = 'COD_ESTADO'
      Size = 2
      Lookup = True
    end
    object Sds_cidadesZONAS: TIntegerField
      FieldName = 'ZONAS'
    end
    object Sds_cidadesCOD_IBGE: TIntegerField
      FieldName = 'COD_IBGE'
    end
  end
  object DTS_cidades: TDataSource
    DataSet = Sds_cidades
    Left = 816
    Top = 64
  end
  object Dts_bairros: TDataSource
    DataSet = sds_bairros
    Left = 888
    Top = 168
  end
  object sds_bairros: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from BAIRRO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'COD_CIDADE'
    MasterFields = 'COD_CIDADE'
    MasterSource = DTS_cidades
    PacketRecords = 0
    Params = <>
    Left = 888
    Top = 120
    object sds_bairrosCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Required = True
    end
    object sds_bairrosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object sds_bairrosCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Required = True
    end
    object sds_bairrosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object sds_bairrosDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object sds_bairrosUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
  end
  object DTS_Estados: TDataSource
    DataSet = SDS_estados
    Left = 824
    Top = 168
  end
  object SDS_estados: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from ESTADOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 816
    Top = 120
    object SDS_estadosDESCRICO: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICO'
      Size = 50
    end
    object SDS_estadosUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Size = 2
    end
    object SDS_estadosCOD_ESTADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_ESTADO'
      Required = True
    end
    object SDS_estadosCOD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_EMPRESA'
      Required = True
      Visible = False
    end
    object SDS_estadosDATACAD: TDateField
      DisplayWidth = 10
      FieldName = 'DATACAD'
      Visible = False
    end
    object SDS_estadosUSERCAD: TStringField
      DisplayWidth = 20
      FieldName = 'USERCAD'
      Visible = False
    end
  end
  object SDS_zonas: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from ZONA_VENDA ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 888
    Top = 16
    object SDS_zonasCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
      Required = True
    end
    object SDS_zonasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object SDS_zonasUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_zonasDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_zonasCOD_EMPRESA: TStringField
      FieldName = 'COD_EMPRESA'
      Size = 1
    end
  end
  object DTS_ZONAS: TDataSource
    DataSet = SDS_zonas
    Left = 896
    Top = 64
  end
  object Sds_bairro: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from BAIRRO order by COD_CIDADE asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 960
    Top = 8
    object Sds_bairroCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Required = True
    end
    object Sds_bairroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object Sds_bairroCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Required = True
    end
    object Sds_bairroCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object Sds_bairroDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Sds_bairroUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_bairroCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE'
      LookupDataSet = Sds_cidades
      LookupKeyFields = 'COD_CIDADE'
      LookupResultField = 'NOME'
      KeyFields = 'COD_CIDADE'
      Size = 30
      Lookup = True
    end
    object Sds_bairroUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = Sds_cidades
      LookupKeyFields = 'COD_CIDADE'
      LookupResultField = 'UF'
      KeyFields = 'COD_CIDADE'
      Size = 2
      Lookup = True
    end
  end
  object Dts_bairro: TDataSource
    DataSet = Sds_bairro
    Left = 960
    Top = 64
  end
  object sds_produtos_Falta: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from PRODUTOS_FALTA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 352
    Top = 544
    object sds_produtos_FaltaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_produtos_FaltaCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object sds_produtos_FaltaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object sds_produtos_FaltaDATA_FALTA: TDateField
      FieldName = 'DATA_FALTA'
    end
    object sds_produtos_FaltaFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object sds_produtos_FaltaQUANT_FRACAO: TIntegerField
      FieldName = 'QUANT_FRACAO'
    end
    object sds_produtos_FaltaQUANT_INTEIRA: TIntegerField
      FieldName = 'QUANT_INTEIRA'
    end
    object sds_produtos_FaltaCODIGO_SEQ: TIntegerField
      FieldName = 'CODIGO_SEQ'
      Required = True
    end
    object sds_produtos_FaltaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dts_produtos_falta: TDataSource
    DataSet = sds_produtos_Falta
    Left = 344
    Top = 592
  end
  object SDS_CFOP: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CFOP'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 368
    Top = 344
    object SDS_CFOPCODIGO_CFOP: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'CODIGO_CFOP'
      Required = True
      Size = 5
    end
    object SDS_CFOPDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o da CFOP'
      DisplayWidth = 80
      FieldName = 'DESCRICAO'
      Size = 80
    end
  end
  object DTS_CFOP: TDataSource
    DataSet = SDS_CFOP
    Left = 368
    Top = 400
  end
  object DTS_CST: TDataSource
    DataSet = SDS_CST
    Left = 424
    Top = 384
  end
  object SDS_CST: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CST'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 424
    Top = 336
    object SDS_CSTCODIGO_CST: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 3
      FieldName = 'CODIGO_CST'
      Required = True
      Visible = False
      Size = 3
    end
    object SDS_CSTDESCRICAO_CST: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO_CST'
      Visible = False
      Size = 50
    end
    object SDS_CSTFL_DIFERENCA_BASE_TOTAL: TStringField
      DisplayWidth = 1
      FieldName = 'FL_DIFERENCA_BASE_TOTAL'
      Visible = False
      Size = 1
    end
    object SDS_CSTFL_ICM: TStringField
      DisplayWidth = 1
      FieldName = 'FL_ICM'
      Visible = False
      Size = 1
    end
    object SDS_CSTFL_REDUCAO: TStringField
      DisplayWidth = 1
      FieldName = 'FL_REDUCAO'
      Visible = False
      Size = 1
    end
    object SDS_CSTFL_ICM_SUBST: TStringField
      DisplayWidth = 1
      FieldName = 'FL_ICM_SUBST'
      Visible = False
      Size = 1
    end
    object SDS_CSTCST_CSOSN: TStringField
      DisplayWidth = 1
      FieldName = 'CST_CSOSN'
      Visible = False
      Size = 1
    end
  end
  object Sds_partidas: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from PARTIDAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 455
    Top = 488
    object Sds_partidasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_partidasN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
    end
    object Sds_partidasCOD_LABORATORIO: TStringField
      FieldName = 'COD_LABORATORIO'
      Size = 10
    end
    object Sds_partidasNOME_LABORATORIO: TStringField
      FieldName = 'NOME_LABORATORIO'
      Size = 50
    end
    object Sds_partidasDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object Sds_partidasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object Sds_partidasTIPO_VACINA: TStringField
      FieldName = 'TIPO_VACINA'
      Size = 25
    end
    object Sds_partidasQUANT_COMPRA: TFMTBCDField
      FieldName = 'QUANT_COMPRA'
      Precision = 15
    end
    object Sds_partidasQUANT_VENDA: TFMTBCDField
      FieldName = 'QUANT_VENDA'
      Precision = 15
    end
    object Sds_partidasNOTA_COMPRA: TStringField
      FieldName = 'NOTA_COMPRA'
      Size = 15
    end
    object Sds_partidasSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
    end
    object Sds_partidasNOME_EMPRESA_COMPRA: TStringField
      FieldName = 'NOME_EMPRESA_COMPRA'
      Size = 50
    end
    object Sds_partidasMUNICIPIO_COMPRA: TStringField
      FieldName = 'MUNICIPIO_COMPRA'
      Size = 40
    end
    object Sds_partidasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_partidasDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object Sds_partidasDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Sds_partidasUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_partidasAFTOSA: TStringField
      FieldName = 'AFTOSA'
      Size = 1
    end
  end
  object Dts_partidas: TDataSource
    DataSet = Sds_partidas
    Left = 440
    Top = 557
  end
  object SPC_Partidas: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'COD_PARTIDA'
    Left = 399
    Top = 500
  end
  object Dts_produtos_c: TDataSource
    AutoEdit = False
    DataSet = Sds_produtos_c
    Left = 496
    Top = 435
  end
  object Sds_produtos_c: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 
      'select * from PRODUTOS ORDER BY DESCRICAO, REFERENCIA, CODIGO_BA' +
      'RRAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 497
    Top = 396
    object Sds_produtos_cCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_produtos_cCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object Sds_produtos_cDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object Sds_produtos_cABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Size = 29
    end
    object Sds_produtos_cPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cMARGEM_LUCRO: TFMTBCDField
      FieldName = 'MARGEM_LUCRO'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object Sds_produtos_cFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cIPI_IRPJ: TFMTBCDField
      FieldName = 'IPI_IRPJ'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cOUTROS_IMPOSTOS: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cDESCONTOS: TFMTBCDField
      FieldName = 'DESCONTOS'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Size = 6
    end
    object Sds_produtos_cSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object Sds_produtos_cCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cDESCONTO_MAXIMO: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
    end
    object Sds_produtos_cCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
    end
    object Sds_produtos_cCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
    end
    object Sds_produtos_cNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object Sds_produtos_cNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Size = 40
    end
    object Sds_produtos_cNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object Sds_produtos_cNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 40
    end
    object Sds_produtos_cCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
    end
    object Sds_produtos_cFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object Sds_produtos_cESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object Sds_produtos_cESTOQUE_VENDIDO: TFMTBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
    object Sds_produtos_cVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
      Size = 6
    end
    object Sds_produtos_cVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Precision = 15
      Size = 6
    end
    object Sds_produtos_cESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
    end
    object Sds_produtos_cESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
    end
    object Sds_produtos_cDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Sds_produtos_cUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_produtos_cVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 15
      Size = 6
    end
    object Sds_produtos_cULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
    object Sds_produtos_cVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Precision = 15
      Size = 6
    end
    object Sds_produtos_cSECCAO: TIntegerField
      FieldName = 'SECCAO'
    end
    object Sds_produtos_cCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object Sds_produtos_cLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object Sds_produtos_cAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 250
    end
    object Sds_produtos_cESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Size = 50
    end
    object Sds_produtos_cGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
    end
    object Sds_produtos_cBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object Sds_produtos_cETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 1
    end
    object Sds_produtos_cATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object Sds_produtos_cREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
    object Sds_produtos_cCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_produtos_cDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object Sds_produtos_cPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cFONETICO: TStringField
      FieldName = 'FONETICO'
      Size = 60
    end
    object Sds_produtos_cDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
    end
    object Sds_produtos_cCUSTOREPOSICAO: TFMTBCDField
      FieldName = 'CUSTOREPOSICAO'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cPRECO_ANT: TFMTBCDField
      FieldName = 'PRECO_ANT'
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cPRECO_PROMOCAO: TFMTBCDField
      FieldName = 'PRECO_PROMOCAO'
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Size = 1
    end
    object Sds_produtos_cDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
    end
    object Sds_produtos_cDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
    end
    object Sds_produtos_cCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
    end
    object Sds_produtos_cLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 70
    end
    object Sds_produtos_cPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Size = 70
    end
    object Sds_produtos_cMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Size = 1
    end
    object Sds_produtos_cQTD_FRACIONADA: TFMTBCDField
      FieldName = 'QTD_FRACIONADA'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cQTD_CAIXA: TFMTBCDField
      FieldName = 'QTD_CAIXA'
      Precision = 15
      Size = 0
    end
    object Sds_produtos_cMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Size = 3
    end
    object Sds_produtos_cLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object Sds_produtos_cVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object Sds_produtos_cCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object Sds_produtos_cPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Precision = 15
      Size = 3
    end
    object Sds_produtos_cMARGEM_LUCRO2: TFMTBCDField
      FieldName = 'MARGEM_LUCRO2'
      Precision = 15
      Size = 2
    end
    object Sds_produtos_cVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object Sds_produtos_cPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object Sds_produtos_cUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
    end
    object Sds_produtos_cDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Size = 6
    end
    object Sds_produtos_cQUANT_SAIDA: TFMTBCDField
      FieldName = 'QUANT_SAIDA'
      Precision = 15
    end
    object Sds_produtos_cQUANT_ENTRADA: TFMTBCDField
      FieldName = 'QUANT_ENTRADA'
      Precision = 15
    end
    object Sds_produtos_cESTOQUE_FRACAO: TFMTBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Precision = 15
    end
    object Sds_produtos_cDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object Sds_produtos_cFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object Sds_produtos_cNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object Sds_produtos_cCOD_MS: TStringField
      FieldName = 'COD_MS'
      Size = 13
    end
    object Sds_produtos_cCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Size = 5
    end
    object Sds_produtos_cPRODUTOCOMPOSTO: TStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Size = 5
    end
    object Sds_produtos_cTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object Sds_produtos_cCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
    end
    object Sds_produtos_cCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
    end
    object Sds_produtos_cLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Size = 1
    end
    object Sds_produtos_cGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
    end
    object Sds_produtos_cCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 1
    end
    object Sds_produtos_cCOR: TIntegerField
      FieldName = 'COR'
    end
    object Sds_produtos_cENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Required = True
    end
    object Sds_produtos_cID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
    end
    object Sds_produtos_cCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Size = 9
    end
  end
  object dts_contratos: TDataSource
    DataSet = SDS_CONTRATOS
    Left = 312
    Top = 144
  end
  object SDS_CONTRATOS: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CONTRATOS ORDER BY NOME_CLIENTE ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 304
    Top = 111
    object SDS_CONTRATOSNOME_CLIENTE: TStringField
      DisplayWidth = 50
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SDS_CONTRATOSCOD_CLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_CLIENTE'
    end
    object SDS_CONTRATOSVALOR: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CONTRATOSDATA_VENCIMENTO: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_CONTRATOSATIVO: TStringField
      DisplayWidth = 1
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_CONTRATOSCOD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_EMPRESA'
      Visible = False
    end
    object SDS_CONTRATOSID_CONTRATO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CONTRATO'
      Required = True
      Visible = False
    end
    object SDS_CONTRATOSDESCRICAO: TBlobField
      DisplayWidth = 10
      FieldName = 'DESCRICAO'
      Visible = False
      Size = 1
    end
    object SDS_CONTRATOSDATA_CONTRATO: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_CONTRATO'
      Visible = False
    end
    object SDS_CONTRATOSCHEK_BOX: TStringField
      DisplayWidth = 1
      FieldName = 'CHEK_BOX'
      Visible = False
      Size = 1
    end
  end
  object SPC_CONTRATOS: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CONTRATO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'COD_CONTRATOS'
    Left = 218
    Top = 120
  end
  object SDS_NFE: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from NFE_NOTA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 808
    Top = 232
    object SDS_NFEN_SEQUENCIA: TIntegerField
      FieldName = 'N_SEQUENCIA'
      Required = True
    end
    object SDS_NFECD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
      Required = True
    end
    object SDS_NFENR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object SDS_NFECOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_NFEFL_IMPRESSO: TStringField
      FieldName = 'FL_IMPRESSO'
      Size = 1
    end
    object SDS_NFESERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object SDS_NFECD_CFOP: TIntegerField
      FieldName = 'CD_CFOP'
    end
    object SDS_NFEDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object SDS_NFEDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object SDS_NFEVL_ACRESCIMOS: TFMTBCDField
      FieldName = 'VL_ACRESCIMOS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_DESCONTOS: TFMTBCDField
      FieldName = 'VL_DESCONTOS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_MERCADORIAS: TFMTBCDField
      FieldName = 'VL_MERCADORIAS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_SERVICOS: TFMTBCDField
      FieldName = 'VL_SERVICOS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFECOD_PGTO: TIntegerField
      FieldName = 'COD_PGTO'
    end
    object SDS_NFEVL_AVISTA: TFMTBCDField
      FieldName = 'VL_AVISTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_PRAZO: TFMTBCDField
      FieldName = 'VL_PRAZO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEPESO_TOTAL: TFMTBCDField
      FieldName = 'PESO_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFEQT_PECAS: TFMTBCDField
      FieldName = 'QT_PECAS'
      Precision = 15
    end
    object SDS_NFECFOP_DESC: TStringField
      FieldName = 'CFOP_DESC'
      Size = 40
    end
    object SDS_NFECD_TRANSPORTADORA: TIntegerField
      FieldName = 'CD_TRANSPORTADORA'
    end
    object SDS_NFEUF_ORIGEM: TStringField
      FieldName = 'UF_ORIGEM'
      Size = 2
    end
    object SDS_NFEUF_DESTINO: TStringField
      FieldName = 'UF_DESTINO'
      Size = 2
    end
    object SDS_NFEPESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_SEGURO: TFMTBCDField
      FieldName = 'VL_SEGURO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFETP_FRETE: TStringField
      FieldName = 'TP_FRETE'
      Size = 1
    end
    object SDS_NFEQT_VOLUMES: TFMTBCDField
      FieldName = 'QT_VOLUMES'
      Precision = 15
    end
    object SDS_NFEESPECIE_VOLUMES: TStringField
      FieldName = 'ESPECIE_VOLUMES'
      Size = 15
    end
    object SDS_NFEMARCA_VOLUMES: TStringField
      FieldName = 'MARCA_VOLUMES'
      Size = 15
    end
    object SDS_NFENR_VOLUMES: TIntegerField
      FieldName = 'NR_VOLUMES'
    end
    object SDS_NFECD_TIPOCOBR: TIntegerField
      FieldName = 'CD_TIPOCOBR'
    end
    object SDS_NFECD_FUNCIONARIO: TIntegerField
      FieldName = 'CD_FUNCIONARIO'
    end
    object SDS_NFEDT_ATZ: TDateField
      FieldName = 'DT_ATZ'
    end
    object SDS_NFEPLACA_TRANSP: TStringField
      FieldName = 'PLACA_TRANSP'
      Size = 8
    end
    object SDS_NFEUF_PLACA_TRANSP: TStringField
      FieldName = 'UF_PLACA_TRANSP'
      Size = 2
    end
    object SDS_NFEVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFENR_PEDIDO: TIntegerField
      FieldName = 'NR_PEDIDO'
    end
    object SDS_NFEVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_DESCONTO_ITEM: TFMTBCDField
      FieldName = 'VL_DESCONTO_ITEM'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ISENTO_ITENS: TFMTBCDField
      FieldName = 'VL_ISENTO_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_OUTROS_ITENS: TFMTBCDField
      FieldName = 'VL_OUTROS_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFENR_PROTOCOLO_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_NFE'
      Size = 15
    end
    object SDS_NFEDT_PROCESSAMENTO_NFE: TDateField
      FieldName = 'DT_PROCESSAMENTO_NFE'
    end
    object SDS_NFESTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object SDS_NFENR_LOTE_NFE: TStringField
      FieldName = 'NR_LOTE_NFE'
      Size = 15
    end
    object SDS_NFENR_RECIBO_NFE: TStringField
      FieldName = 'NR_RECIBO_NFE'
      Size = 15
    end
    object SDS_NFENR_PROTOCOLO_CANC_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_CANC_NFE'
      Size = 15
    end
    object SDS_NFECHAVE_ACESSO_NFE: TStringField
      FieldName = 'CHAVE_ACESSO_NFE'
      Size = 44
    end
    object SDS_NFEVL_FRETE_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_FRETE_CONHECIMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ST_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ST_CONHECIMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ICM_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ICM_CONHECIMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEBASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'BASE_ICM_PROPRIO_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFEVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_NFECNPJ_TRANSP: TStringField
      FieldName = 'CNPJ_TRANSP'
      FixedChar = True
    end
    object SDS_NFENOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Size = 50
    end
    object SDS_NFEIE_TRANSP: TStringField
      FieldName = 'IE_TRANSP'
      Size = 15
    end
    object SDS_NFEEND_TRANSPORTADOR: TStringField
      FieldName = 'END_TRANSPORTADOR'
      Size = 50
    end
    object SDS_NFECIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 40
    end
    object SDS_NFEUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Size = 2
    end
    object SDS_NFETP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object SDS_NFEN_NOTA_ENTRADA: TStringField
      FieldName = 'N_NOTA_ENTRADA'
    end
    object SDS_NFENOME_CLIENTE_FOR: TStringField
      FieldName = 'NOME_CLIENTE_FOR'
      Size = 50
    end
    object SDS_NFECPF_CNPJ_CLIENTE_FORN: TStringField
      FieldName = 'CPF_CNPJ_CLIENTE_FORN'
      FixedChar = True
    end
    object SDS_NFEIE_CLIENTE_FORN: TStringField
      FieldName = 'IE_CLIENTE_FORN'
      Size = 15
    end
    object SDS_NFEENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Size = 40
    end
    object SDS_NFEEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
    end
    object SDS_NFECOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object SDS_NFECEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object SDS_NFEBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object SDS_NFETIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
    end
    object SDS_NFETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SDS_NFECIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object SDS_NFEUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object SDS_NFEIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Size = 15
    end
    object SDS_NFEPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_NFEPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 50
    end
    object SDS_NFESTATUS_INUTILIZADO: TStringField
      FieldName = 'STATUS_INUTILIZADO'
      Size = 1
    end
    object SDS_NFESTATUS_CANCELADO: TStringField
      FieldName = 'STATUS_CANCELADO'
      Size = 1
    end
    object SDS_NFESTATUS_EMAIL: TStringField
      FieldName = 'STATUS_EMAIL'
      Size = 1
    end
    object SDS_NFECOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object SDS_NFEDEPEC: TStringField
      FieldName = 'DEPEC'
      Size = 1
    end
    object SDS_NFECHAVE2: TStringField
      FieldName = 'CHAVE2'
      Size = 50
    end
    object SDS_NFESTATUS_RETORNO: TStringField
      FieldName = 'STATUS_RETORNO'
      Size = 1
    end
    object SDS_NFEJUSTIFICATIVA_CANCEL_INUTIL: TStringField
      FieldName = 'JUSTIFICATIVA_CANCEL_INUTIL'
      Size = 255
    end
  end
  object sds_nfe_itens: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from NFE_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'NR_NOTA'
    MasterFields = 'NR_NOTA'
    MasterSource = DTS_NFE
    PacketRecords = 0
    Params = <>
    Left = 880
    Top = 232
    object sds_nfe_itensNR_SEQUENCIA: TIntegerField
      FieldName = 'NR_SEQUENCIA'
      Required = True
    end
    object sds_nfe_itensNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object sds_nfe_itensCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
    end
    object sds_nfe_itensCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Size = 15
    end
    object sds_nfe_itensCOD_NCM: TStringField
      DisplayWidth = 8
      FieldName = 'COD_NCM'
      Size = 8
    end
    object sds_nfe_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object sds_nfe_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object sds_nfe_itensQT_PRODUTO: TFMTBCDField
      FieldName = 'QT_PRODUTO'
      Precision = 15
    end
    object sds_nfe_itensVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object sds_nfe_itensPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sds_nfe_itensCD_ATUALIZACAO: TIntegerField
      FieldName = 'CD_ATUALIZACAO'
    end
    object sds_nfe_itensCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_nfe_itensPC_RED_BASE_ICM: TFMTBCDField
      FieldName = 'PC_RED_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_ICM_SUBST: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensDT_ALTERACAO: TDateField
      FieldName = 'DT_ALTERACAO'
    end
    object sds_nfe_itensDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 3
    end
    object sds_nfe_itensPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensCD_CONTA: TIntegerField
      FieldName = 'CD_CONTA'
    end
    object sds_nfe_itensCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object sds_nfe_itensVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_CONTABIL: TFMTBCDField
      FieldName = 'VL_CONTABIL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ISENTO: TFMTBCDField
      FieldName = 'VL_ISENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_PIS: TFMTBCDField
      FieldName = 'ALIQ_PIS'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_COFINS: TFMTBCDField
      FieldName = 'ALIQ_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'ALIQ_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_PROPRIO_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensALIQ_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_nfe_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object sds_nfe_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object sds_nfe_itensCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 3
    end
    object sds_nfe_itensCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 3
    end
    object sds_nfe_itensCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 3
    end
  end
  object DTS_NFE: TDataSource
    DataSet = SDS_NFE
    Left = 808
    Top = 280
  end
  object dts_nfe_itens: TDataSource
    DataSet = sds_nfe_itens
    Left = 880
    Top = 280
  end
  object SPC_NOTA_NFE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NR_NOTA'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'CD_EMPRESA'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'COD_NOTA'
    Left = 970
    Top = 328
  end
  object Sds_Transportador: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from TRANSPORTADOR'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 1048
    Top = 16
    object Sds_TransportadorCD_TRANSPORTADOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CD_TRANSPORTADOR'
      Required = True
    end
    object Sds_TransportadorNOME_TRANSP: TStringField
      DisplayLabel = 'Nome Transp'
      DisplayWidth = 40
      FieldName = 'NOME_TRANSP'
      Size = 80
    end
    object Sds_TransportadorNOME_FANTASIA_TRANSP: TStringField
      DisplayLabel = 'Fantasia Transp'
      DisplayWidth = 40
      FieldName = 'NOME_FANTASIA_TRANSP'
      Size = 80
    end
    object Sds_TransportadorCNPJ: TStringField
      DisplayLabel = 'Cnpj'
      DisplayWidth = 18
      FieldName = 'CNPJ'
      Size = 18
    end
    object Sds_TransportadorENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 30
      FieldName = 'ENDERECO'
      Size = 80
    end
    object Sds_TransportadorBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 15
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Sds_TransportadorTELE_TRANSP: TStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 15
      FieldName = 'TELE_TRANSP'
      EditMask = '!\(99\)0000-0000;0;_'
    end
    object Sds_TransportadorCD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'CD_EMPRESA'
      Visible = False
    end
    object Sds_TransportadorINSCRICAO: TStringField
      DisplayWidth = 18
      FieldName = 'INSCRICAO'
      Visible = False
      Size = 18
    end
    object Sds_TransportadorCEP: TStringField
      DisplayWidth = 10
      FieldName = 'CEP'
      Visible = False
      EditMask = '00000\-999;0;_'
      Size = 10
    end
    object Sds_TransportadorCD_CIDADE: TIntegerField
      DisplayWidth = 10
      FieldName = 'CD_CIDADE'
      Visible = False
    end
    object Sds_TransportadorFAX_TRANS: TStringField
      DisplayWidth = 20
      FieldName = 'FAX_TRANS'
      Visible = False
      EditMask = '!\(99\)0000-0000;0;_'
    end
    object Sds_TransportadorPESSOA_CONTATO: TStringField
      DisplayWidth = 50
      FieldName = 'PESSOA_CONTATO'
      Visible = False
      Size = 50
    end
    object Sds_TransportadorE_MAIL: TStringField
      DisplayWidth = 70
      FieldName = 'E_MAIL'
      Visible = False
      Size = 70
    end
    object Sds_TransportadorCEL_TRANSP: TStringField
      DisplayWidth = 20
      FieldName = 'CEL_TRANSP'
      Visible = False
      EditMask = '!\(99\)0000-0000;0;_'
    end
    object Sds_TransportadorDT_ATZ: TDateField
      DisplayWidth = 10
      FieldName = 'DT_ATZ'
      Visible = False
    end
    object Sds_TransportadorFL_FISICO_JURIDICO: TStringField
      DisplayWidth = 1
      FieldName = 'FL_FISICO_JURIDICO'
      Visible = False
      Size = 1
    end
    object Sds_TransportadorCD_FORNECEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'CD_FORNECEDOR'
      Visible = False
    end
    object Sds_TransportadorNUMERO: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Visible = False
    end
    object Sds_TransportadorCOMPLEMENTO: TStringField
      DisplayWidth = 20
      FieldName = 'COMPLEMENTO'
      Visible = False
    end
    object Sds_TransportadorCIDADE: TStringField
      DisplayWidth = 40
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object Sds_TransportadorUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
  end
  object dts_transportador: TDataSource
    DataSet = Sds_Transportador
    Left = 1048
    Top = 80
  end
  object Spc_transportador: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'CD_EMPRESA'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'COD_TRANSPORTADOR'
    Left = 1042
    Top = 136
  end
  object sDS_MOV_DIARIO: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from MOVIMENTO_DIARIO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_VENDA'
    MasterFields = 'CODIGO'
    PacketRecords = 0
    Params = <>
    Left = 1050
    Top = 432
    object sDS_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 2
    end
    object sDS_MOV_DIARIOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sDS_MOV_DIARIODATA: TDateField
      FieldName = 'DATA'
    end
    object sDS_MOV_DIARIOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object sDS_MOV_DIARIOUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object sDS_MOV_DIARIOTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sDS_MOV_DIARIOVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object sDS_MOV_DIARIOCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object sDS_MOV_DIARIONUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object sDS_MOV_DIARIOCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object sDS_MOV_DIARIOORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
  end
  object DTS_MV_DIARIO: TDataSource
    DataSet = sDS_MOV_DIARIO
    Left = 1050
    Top = 488
  end
  object SDS_Cheques: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select *  from CHEQUES order by CODIGO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
        Value = 4
      end>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'CODIGO'
    MasterSource = Dts_vendas
    PacketRecords = 0
    Params = <>
    Left = 814
    Top = 506
    object SDS_ChequesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ChequesCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_ChequesBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_ChequesAGENCIA: TStringField
      Alignment = taCenter
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_ChequesCONTA_CORRENTE: TStringField
      Alignment = taCenter
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_ChequesCONTA_DESDE: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object SDS_ChequesTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_ChequesTIPO_CHEQUE: TStringField
      Alignment = taCenter
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_ChequesN_CHEQUE: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_ChequesQNT: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_ChequesVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
    end
    object SDS_ChequesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_ChequesRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_ChequesDATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_ChequesDATA_DEPOSITO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_ChequesDATA_RETORNO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object SDS_ChequesDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_ChequesUSUARIO_CADASTRO: TStringField
      Alignment = taCenter
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_ChequesUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_ChequesCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_ChequesCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_ChequesNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object SDS_ChequesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SDS_ChequesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object SDS_ChequesCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_ChequesCOD_BARRAS_CHEQUE: TStringField
      FieldName = 'COD_BARRAS_CHEQUE'
      Size = 50
    end
  end
  object DTS_Cheques: TDataSource
    DataSet = SDS_Cheques
    Left = 888
    Top = 498
  end
  object SDS_OTICA: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from OTICA ORDER BY DATA ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 952
    Top = 217
    object SDS_OTICACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_OTICANOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object SDS_OTICAENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_OTICABAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_OTICACOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_OTICANUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SDS_OTICACIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_OTICAUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_OTICATELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)000-0000;0;_'
      Size = 15
    end
    object SDS_OTICAESFERA_D: TStringField
      FieldName = 'ESFERA_D'
      Size = 10
    end
    object SDS_OTICACLILINDRICO_D: TStringField
      FieldName = 'CLILINDRICO_D'
      Size = 10
    end
    object SDS_OTICAEIXO_D: TStringField
      FieldName = 'EIXO_D'
      Size = 10
    end
    object SDS_OTICAESFERA_E: TStringField
      FieldName = 'ESFERA_E'
      Size = 10
    end
    object SDS_OTICACLINDRICO_E: TStringField
      FieldName = 'CLINDRICO_E'
      Size = 10
    end
    object SDS_OTICAEIXO_E: TStringField
      FieldName = 'EIXO_E'
      Size = 10
    end
    object SDS_OTICADP_LONGE: TStringField
      FieldName = 'DP_LONGE'
      Size = 10
    end
    object SDS_OTICADP_PERTO: TStringField
      FieldName = 'DP_PERTO'
      Size = 10
    end
    object SDS_OTICAP_ADICAO: TStringField
      FieldName = 'P_ADICAO'
      Size = 10
    end
    object SDS_OTICADATA: TDateField
      FieldName = 'DATA'
    end
    object SDS_OTICAOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
    object SDS_OTICACPF: TStringField
      FieldName = 'CPF'
      EditMask = '000.000.000-00;0;_'
    end
    object SDS_OTICACOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_OTICACOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
  end
  object DTS_OTICA: TDataSource
    DataSet = SDS_OTICA
    Left = 968
    Top = 272
  end
  object SPC_OTICA: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'COD_OTICA'
    Left = 970
    Top = 384
  end
  object Dts_vendas: TDataSource
    DataSet = sds_vendas
    Left = 864
    Top = 392
  end
  object dts_vendas_itens: TDataSource
    DataSet = Sds_Vendas_itens
    Left = 897
    Top = 440
  end
  object Sds_Vendas_itens: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from PEDIDOS_ITENS order bY Codigo asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = Dts_vendas
    PacketRecords = 0
    Params = <>
    Left = 811
    Top = 454
    object Sds_Vendas_itensCODIGO: TIntegerField
      DisplayLabel = 'Lancamento'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_Vendas_itensCODIGO_ID: TIntegerField
      DisplayLabel = 'Venda'
      DisplayWidth = 10
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object Sds_Vendas_itensITEN: TIntegerField
      DisplayLabel = 'Item'
      DisplayWidth = 10
      FieldName = 'ITEN'
    end
    object Sds_Vendas_itensCODIGO_PROD: TIntegerField
      DisplayLabel = 'Cod. Produto'
      DisplayWidth = 10
      FieldName = 'CODIGO_PROD'
    end
    object Sds_Vendas_itensCODIGO_PRODUTO: TStringField
      DisplayLabel = 'Ean'
      DisplayWidth = 13
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Sds_Vendas_itensDESCRICAO_PRODUTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Sds_Vendas_itensUNIDADE: TStringField
      DisplayLabel = 'Und'
      DisplayWidth = 6
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Sds_Vendas_itensPRECO_UNITARIO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 16
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensDESCONTO: TFMTBCDField
      DisplayLabel = 'Desconto'
      DisplayWidth = 16
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensQUANTIDADE: TFMTBCDField
      DisplayLabel = 'Qtde'
      DisplayWidth = 16
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object Sds_Vendas_itensPRECO_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 16
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensCOMISSAO: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'COMISSAO'
      Visible = False
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensDEV: TStringField
      DisplayWidth = 1
      FieldName = 'DEV'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Sds_Vendas_itensQNT_DEV: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'QNT_DEV'
      Visible = False
      Precision = 15
    end
    object Sds_Vendas_itensVAL_DEV: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VAL_DEV'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensENC_FINANCEIRO: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'ENC_FINANCEIRO'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensSIT_TRIBUTARIA: TStringField
      DisplayWidth = 5
      FieldName = 'SIT_TRIBUTARIA'
      Visible = False
      Size = 5
    end
    object Sds_Vendas_itensVENDEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'VENDEDOR'
      Visible = False
    end
    object Sds_Vendas_itensFRACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FRACAO'
      Visible = False
    end
    object Sds_Vendas_itensCOD_NCM: TStringField
      DisplayWidth = 10
      FieldName = 'COD_NCM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object Sds_Vendas_itensPROD_SERV: TStringField
      DisplayWidth = 1
      FieldName = 'PROD_SERV'
      Visible = False
      Size = 1
    end
    object Sds_Vendas_itensPERC_ISS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_ISS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_ISS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_ISS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_ISS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_ISS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensPERC_ICM: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_ICM'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_ICMS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_ICMS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_ICM: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_ICM'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensPERC_IPI: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_IPI'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_IPI: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_IPI'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_IPI: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_IPI'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensPERC_COFINS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_COFINS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_COFINS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_COFINS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_COFINS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_COFINS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensPERC_ICMS_SUBST: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_ICMS_SUBST'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_ICMS_SUBST: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_ICMS_SUBST'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_ICMS_SUBST: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_ICMS_SUBST'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensPERC_PIS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PERC_PIS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensBASE_PIS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'BASE_PIS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensVL_PIS: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VL_PIS'
      Visible = False
      Precision = 15
      Size = 2
    end
    object Sds_Vendas_itensIMPRIME: TStringField
      DisplayWidth = 3
      FieldName = 'IMPRIME'
      Visible = False
      Size = 3
    end
    object Sds_Vendas_itensCOD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_EMPRESA'
      Required = True
      Visible = False
    end
    object Sds_Vendas_itensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
    end
    object Sds_Vendas_itensID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Size = 5
    end
    object Sds_Vendas_itensID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Size = 5
    end
  end
  object Dts_orcamento: TDataSource
    DataSet = sds_orcamento
    Left = 580
    Top = 507
  end
  object Dts_orcamento_itens: TDataSource
    DataSet = Sds_orcamento_itens
    Left = 501
    Top = 577
  end
  object sds_vendas: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsp_Vendas'
    Left = 872
    Top = 288
    object sds_vendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_vendasVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object sds_vendasDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object sds_vendasDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object sds_vendasCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object sds_vendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object sds_vendasPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object sds_vendasSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sds_vendasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sds_vendasUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object sds_vendasTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object sds_vendasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object sds_vendasCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object sds_vendasCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object sds_vendasN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object sds_vendasN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object sds_vendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_vendasHORA: TTimeField
      FieldName = 'HORA'
    end
    object sds_vendasVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object sds_vendasCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object sds_vendasCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object sds_vendasNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sds_vendasSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object sds_vendasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sds_vendasCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object sds_vendasRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object sds_vendasFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sds_vendasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sds_vendasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sds_vendasN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object sds_vendasPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 50
    end
    object sds_vendasQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
    end
    object sds_vendasSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
    end
    object sds_vendasMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 50
    end
    object sds_vendasDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object sds_vendasVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_vendasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sds_vendasCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object sds_vendasCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object sds_vendasNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object sds_vendasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sds_vendasVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object sds_vendasVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 15
      Size = 2
    end
    object sds_vendasENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 40
    end
    object sds_vendasTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object sds_vendasFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object sds_vendasMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object sds_vendasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 50
    end
    object sds_vendasCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object sds_vendasPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Size = 1
    end
    object sds_vendasIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      FixedChar = True
      Size = 15
    end
    object sds_vendasVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object sds_vendasVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_vendasKM: TIntegerField
      FieldName = 'KM'
    end
    object sds_vendasCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Size = 100
    end
    object sds_vendasCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Size = 30
    end
    object sds_vendasSOMAVALOR_TOTAL: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_TOTAL'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = 'R$: ##,##0.00'
      Expression = 'SUM(VALOR_TOTAL)'
    end
    object sds_vendasCOUNT_VENDAS: TAggregateField
      Alignment = taCenter
      FieldName = 'COUNT_VENDAS'
      Active = True
      DisplayName = ''
      Expression = 'COUNT(CODIGO)'
    end
    object sds_vendasSOMA_AVISTA: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMA_AVISTA'
      Active = True
      DisplayName = ''
      Expression = 'SUM(VALOR_AVISTA)'
    end
    object sds_vendasSoma_prazo: TAggregateField
      FieldName = 'Soma_prazo'
      Active = True
      DisplayName = ''
      Expression = 'SUM(VALOR_PRAZO)'
    end
  end
  object dsp_Vendas: TDataSetProvider
    DataSet = Qry_Vendas
    Left = 800
    Top = 400
  end
  object dsp_orcamento: TDataSetProvider
    DataSet = Qry_orcamento
    Left = 575
    Top = 560
  end
  object Qry_orcamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ORCAMENTOS order by CODIGO ASC')
    SQLConnection = SQLC
    Left = 512
    Top = 501
    object Qry_orcamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_orcamentoVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object Qry_orcamentoVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object Qry_orcamentoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object Qry_orcamentoVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object Qry_orcamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Qry_orcamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object Qry_orcamentoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Qry_orcamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Qry_orcamentoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object Qry_orcamentoENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object Qry_orcamentoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 150
    end
    object Qry_orcamentoCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object Qry_orcamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Qry_orcamentoCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object Qry_orcamentoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Qry_orcamentoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Qry_orcamentoFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object Qry_orcamentoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object Qry_orcamentoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object Qry_orcamentoRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object Qry_orcamentoEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object Qry_orcamentoCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Qry_orcamentoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qry_orcamentoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Qry_orcamentoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Qry_orcamentoCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object Qry_orcamentoPRODUTOR: TStringField
      FieldName = 'PRODUTOR'
      Size = 1
    end
    object Qry_orcamentoIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Size = 15
    end
  end
  object Qry_Vendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PEDIDOS order by CODIGO ASC')
    SQLConnection = SQLC
    Left = 808
    Top = 344
    object Qry_VendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_VendasVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object Qry_VendasENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Qry_VendasDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object Qry_VendasDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object Qry_VendasCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Qry_VendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Qry_VendasPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object Qry_VendasSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object Qry_VendasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object Qry_VendasUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object Qry_VendasTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object Qry_VendasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object Qry_VendasCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object Qry_VendasCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object Qry_VendasN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object Qry_VendasN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object Qry_VendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Qry_VendasHORA: TTimeField
      FieldName = 'HORA'
    end
    object Qry_VendasVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object Qry_VendasCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object Qry_VendasCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object Qry_VendasCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object Qry_VendasNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object Qry_VendasSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object Qry_VendasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Qry_VendasCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object Qry_VendasRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object Qry_VendasFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object Qry_VendasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Qry_VendasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Qry_VendasN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object Qry_VendasPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 50
    end
    object Qry_VendasQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
    end
    object Qry_VendasSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
    end
    object Qry_VendasMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 50
    end
    object Qry_VendasDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object Qry_VendasVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qry_VendasCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object Qry_VendasCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Qry_VendasNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object Qry_VendasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Qry_VendasVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 15
      Size = 2
    end
    object Qry_VendasENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 40
    end
    object Qry_VendasTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object Qry_VendasFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object Qry_VendasMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object Qry_VendasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 50
    end
    object Qry_VendasCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object Qry_VendasPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Size = 1
    end
    object Qry_VendasIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      FixedChar = True
      Size = 15
    end
    object Qry_VendasVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object Qry_VendasVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object Qry_VendasKM: TIntegerField
      FieldName = 'KM'
    end
    object Qry_VendasCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Size = 100
    end
    object Qry_VendasCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Size = 30
    end
  end
  object Sds_orcamento_itens: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from ORCAMENTOS_ITENS order by Codigo asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = Dts_orcamento
    PacketRecords = 0
    Params = <>
    Left = 417
    Top = 599
    object Sds_orcamento_itensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_orcamento_itensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object Sds_orcamento_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object Sds_orcamento_itensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Sds_orcamento_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Sds_orcamento_itensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_orcamento_itensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object Sds_orcamento_itensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_orcamento_itensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object Sds_orcamento_itensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_orcamento_itensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object Sds_orcamento_itensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object Sds_orcamento_itensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 6
    end
    object Sds_orcamento_itensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Sds_orcamento_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object Sds_orcamento_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object Sds_orcamento_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object Sds_orcamento_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
  end
  object sds_orcamento: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsp_orcamento'
    Left = 504
    Top = 552
    object sds_orcamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_orcamentoVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_orcamentoVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_orcamentoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_orcamentoVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_orcamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object sds_orcamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object sds_orcamentoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object sds_orcamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object sds_orcamentoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object sds_orcamentoENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_orcamentoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 150
    end
    object sds_orcamentoCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object sds_orcamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_orcamentoCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object sds_orcamentoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sds_orcamentoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sds_orcamentoFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sds_orcamentoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sds_orcamentoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object sds_orcamentoRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object sds_orcamentoEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object sds_orcamentoCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object sds_orcamentoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sds_orcamentoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sds_orcamentoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sds_orcamentoCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object sds_orcamentoPRODUTOR: TStringField
      FieldName = 'PRODUTOR'
      Size = 1
    end
    object sds_orcamentoIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Size = 15
    end
    object sds_orcamentoSOMAVALOR_TOTAL: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_TOTAL'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = 'R$: ##,##0.00'
      Expression = 'SUM(VALOR_TOTAL)'
    end
    object sds_orcamentoCOUNT_VENDAS: TAggregateField
      Alignment = taCenter
      FieldName = 'COUNT_VENDAS'
      Active = True
      DisplayName = ''
      Expression = 'COUNT(CODIGO)'
    end
  end
  object SDS_NCM: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from TABELA_NCM ORDER BY CODIGO_NCM ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 216
    Top = 184
    object SDS_NCMCODIGO_NCM: TStringField
      FieldName = 'CODIGO_NCM'
      Size = 8
    end
    object SDS_NCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object SDS_NCMALICOTA: TStringField
      FieldName = 'ALICOTA'
      Size = 6
    end
    object SDS_NCMANALITICO: TStringField
      FieldName = 'ANALITICO'
      Size = 1
    end
  end
  object DTS_NCM: TDataSource
    DataSet = SDS_NCM
    Left = 208
    Top = 232
  end
  object SDS_Crediario: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CREDIARIO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'NR_PEDIDO'
    MasterSource = DTS_NFE
    PacketRecords = 0
    Params = <>
    Left = 960
    Top = 120
    object SDS_CrediarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CrediarioCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_CrediarioDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object SDS_CrediarioDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_CrediarioDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CrediarioHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_CrediarioUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SDS_CrediarioUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CrediarioSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_CrediarioVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_CrediarioPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object SDS_CrediarioNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object SDS_CrediarioBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object SDS_CrediarioREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 10
    end
    object SDS_CrediarioDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object SDS_CrediarioID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object SDS_CrediarioENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object SDS_CrediarioCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_CrediarioNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object SDS_CrediarioCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object SDS_CrediarioTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object SDS_CrediarioCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object SDS_CrediarioNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SDS_CrediarioSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object SDS_CrediarioNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object SDS_CrediarioANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object SDS_CrediarioMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object SDS_CrediarioTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object SDS_CrediarioID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object SDS_CrediarioNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object SDS_CrediarioCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object SDS_CrediarioCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioDT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object SDS_CrediarioDIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object SDS_CrediarioN_OS: TStringField
      FieldName = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object SDS_CrediarioVLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioVALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Precision = 15
      Size = 2
    end
  end
  object Dts_crediario: TDataSource
    DataSet = SDS_Crediario
    Left = 952
    Top = 160
  end
  object SDS_CLI: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from CLIENTES ORDER BY NOME_RS ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 1058
    Top = 315
    object SDS_CLICODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CLIENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_CLICIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_CLIUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_CLICEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999-999;1;_'
      FixedChar = True
      Size = 10
    end
    object SDS_CLITELEFONE: TStringField
      FieldName = 'TELEFONE'
      LookupDataSet = SDS_Agencias
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_CLIEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object SDS_CLINASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object SDS_CLIFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object SDS_CLIBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_CLIFAX: TStringField
      FieldName = 'FAX'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_CLICELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_CLIUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_CLIDATACAD: TDateField
      Alignment = taCenter
      FieldName = 'DATACAD'
    end
    object SDS_CLICPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object SDS_CLIOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_CLICREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object SDS_CLIESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object SDS_CLIRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object SDS_CLIPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object SDS_CLIMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object SDS_CLINOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object SDS_CLICPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      EditMask = '999.999.999-99;1;_'
      FixedChar = True
    end
    object SDS_CLINASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object SDS_CLITRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object SDS_CLIPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object SDS_CLILOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object SDS_CLIPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object SDS_CLITELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_CLIFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_CLIOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object SDS_CLINOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object SDS_CLICONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object SDS_CLINOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object SDS_CLINOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object SDS_CLITELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_CLITELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      EditMask = '(99)9999-9999;0;_'
      Size = 15
    end
    object SDS_CLIBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object SDS_CLIAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object SDS_CLISEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object SDS_CLITIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
    end
    object SDS_CLIOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object SDS_CLIOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object SDS_CLINUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 12
    end
    object SDS_CLIBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object SDS_CLIPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      currency = True
      Precision = 15
    end
    object SDS_CLINUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object SDS_CLICOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_CLICOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_CLIORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object SDS_CLIDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object SDS_CLINATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object SDS_CLINATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object SDS_CLICOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object SDS_CLICOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object SDS_CLIDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object SDS_CLICOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object SDS_CLITELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_CLIATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_CLICONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object SDS_CLICONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object SDS_CLICX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object SDS_CLIVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CLITEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object SDS_CLINUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object SDS_CLIENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object SDS_CLIENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object SDS_CLIDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object SDS_CLIDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object SDS_CLIRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object SDS_CLIRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object SDS_CLIDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object SDS_CLIFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      EditMask = '(99)9999-9999;1;_'
      Size = 15
    end
    object SDS_CLIENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object SDS_CLICEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      EditMask = '99999-999;1;_'
      FixedChar = True
      Size = 10
    end
    object SDS_CLICOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object SDS_CLICX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object SDS_CLILIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CLIINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object SDS_CLIPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_CLIINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object SDS_CLICOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object SDS_CLICIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object SDS_CLIBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object SDS_CLIUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object SDS_CLINOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object SDS_CLICONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object SDS_CLINOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object SDS_CLINOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object SDS_CLISOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object SDS_CLICPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_CLIDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object SDS_CLISOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object SDS_CLICPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_CLIDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object SDS_CLISOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object SDS_CLICPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_CLIDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object SDS_CLISOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object SDS_CLICPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      EditMask = '999.999.999-99;1;_'
      Size = 11
    end
    object SDS_CLIDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object SDS_CLIDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object SDS_CLICAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object SDS_CLIFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object SDS_CLIREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object SDS_CLIENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object SDS_CLIRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object SDS_CLIENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object SDS_CLIRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object SDS_CLIENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object SDS_CLIRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object SDS_CLIENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object SDS_CLIRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object SDS_CLIAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object SDS_CLIAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object SDS_CLIAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object SDS_CLICPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      EditMask = '999.999.999-99;1;_'
      FixedChar = True
    end
    object SDS_CLICPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      EditMask = '999.999.999-99;1;_'
      FixedChar = True
    end
    object SDS_CLICPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      EditMask = '999.999.999-99;1;_'
      FixedChar = True
    end
    object SDS_CLICOD_IBGE: TStringField
      FieldKind = fkLookup
      FieldName = 'COD_IBGE'
      LookupDataSet = Sds_cidades
      LookupKeyFields = 'COD_CIDADE'
      LookupResultField = 'COD_IBGE'
      KeyFields = 'COD_CIDADE'
      Size = 7
      Lookup = True
    end
    object SDS_CLIPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 200
    end
    object SDS_CLIFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object SDS_CLICTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
    object SDS_CLITESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Size = 1
    end
    object SDS_CLITESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Size = 1
    end
  end
  object DTS_CLI: TDataSource
    DataSet = SDS_CLI
    Left = 1054
    Top = 371
  end
  object IBDatabase: TIBDatabase
    DatabaseName = 'C:\Siace\SIACE.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction
    ServerType = 'IBServer'
    BeforeConnect = IBDatabaseBeforeConnect
    Left = 112
    Top = 4
  end
  object QConsulta: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 216
    Top = 8
  end
  object IBSQLCod: TIBSQL
    Database = IBDatabase
    Transaction = IBTransaction
    Left = 216
    Top = 64
  end
  object IBTransaction: TIBTransaction
    DefaultDatabase = IBDatabase
    Left = 176
    Top = 8
  end
  object QMotivo: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM MOTIVO_ACERTO')
    Left = 88
    Top = 144
    object QMotivoCOD_MOT: TIntegerField
      FieldName = 'COD_MOT'
      Origin = 'MOTIVO_ACERTO.COD_MOT'
      Required = True
    end
    object QMotivoNOME_MOT: TIBStringField
      FieldName = 'NOME_MOT'
      Origin = 'MOTIVO_ACERTO.NOME_MOT'
      Required = True
      Size = 50
    end
    object QMotivoENTSAI_MOT: TIBStringField
      FieldName = 'ENTSAI_MOT'
      Origin = 'MOTIVO_ACERTO.ENTSAI_MOT'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QLocaisEstoque: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM LOCAIS_ESTOQUE')
    Left = 24
    Top = 64
    object QLocaisEstoqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'LOCAIS_ESTOQUE.CODIGO'
      Required = True
    end
    object QLocaisEstoqueDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'LOCAIS_ESTOQUE.DESCRICAO'
      Required = True
      Size = 60
    end
  end
  object Consulta: TIBSQL
    Database = IBDatabase
    Transaction = IBTransaction
    Left = 272
    Top = 64
  end
  object IBSQL: TIBSQL
    Database = IBDatabase
    Transaction = IBTransaction
    Left = 280
    Top = 8
  end
  object DSLocaisEstoque: TDataSource
    AutoEdit = False
    DataSet = QLocaisEstoque
    Left = 24
    Top = 120
  end
  object DSMotivo: TDataSource
    AutoEdit = False
    DataSet = QMotivo
    Left = 152
    Top = 64
  end
  object Limpa: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'UPDATE NFE_NOTA SET STATUS = '#39#39', STATUS_RETORNO='#39#39', CHAVE2='#39#39' WH' +
        'ERE NR_NOTA = :CODNF')
    Left = 96
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODNF'
        ParamType = ptUnknown
      end>
  end
  object Dts_grupo_Trib: TDataSource
    DataSet = Sds_grupo_trib
    Left = 208
    Top = 328
  end
  object Sds_pis_cofins: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from TABELA_PIS_COFINS order By cod_pis_cofins asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'COD_PIS_COFINS'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 161
    Top = 376
    object Sds_pis_cofinsCOD_PIS_COFINS: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 2
      FieldName = 'COD_PIS_COFINS'
      Required = True
      Size = 2
    end
    object Sds_pis_cofinsDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 150
      FieldName = 'DESCRICAO'
      Size = 150
    end
  end
  object Dts_pis_Cofins: TDataSource
    DataSet = Sds_pis_cofins
    Left = 209
    Top = 376
  end
  object Sds_grupo_trib: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from GRUPO_TRIBUTACAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'COD_GRUPO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FLAG_SUBSTITUICAO_TRIB'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_SUBST_TRIBUTARIA'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'FLAG_SERVICO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_ALIQUOTA_ISS'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'FLAG_FABRICACAO_PROPRIA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_ALIQUOTA_IPI'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'FLAG_PIS_COFINS'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_ALIQUOTA_PIS'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'PERC_ALIQUOTA_COFINS'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'FLAG_ICMSGARANTIDO_INTEGRAL'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_ICMS_GARANTIDO_INTEGRAL'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'CFOP_ESTADUAL_DEV'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_INTERESTADUAL_DEV'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_EST_COMPRA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_INTER_COMPRA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_EST_VENDA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_INTER_VENDA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_EST_TRANSF'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CFOP_INTER_EST_TRASNF'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CST_VENDA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CST_COMPRA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FLAG_ICMS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERC_ICMS_ESTADUAL'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'PERC_ICMS_INTER_ESTADUAL'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'SIT_PIS_VENDA_EST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIT_COFINS_VENDA_EST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIT_PIS_VENDA_INTER_EST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIT_COFINS_VENDA_INTER_EST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIT_PIS_TRANSF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIT_COFINS_TRANSF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CST_VENDA_INTER'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CST_COMPRA_INTER'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PERC_RED_ICMS'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'CST_IPI_ENTRADA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CST_IPI_SAIDA'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 153
    Top = 328
    object Sds_grupo_tribCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Required = True
    end
    object Sds_grupo_tribFLAG_SUBSTITUICAO_TRIB: TStringField
      FieldName = 'FLAG_SUBSTITUICAO_TRIB'
      Required = True
      Size = 1
    end
    object Sds_grupo_tribPERC_SUBST_TRIBUTARIA: TFMTBCDField
      FieldName = 'PERC_SUBST_TRIBUTARIA'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribFLAG_SERVICO: TStringField
      FieldName = 'FLAG_SERVICO'
      Required = True
      Size = 1
    end
    object Sds_grupo_tribPERC_ALIQUOTA_ISS: TFMTBCDField
      FieldName = 'PERC_ALIQUOTA_ISS'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribFLAG_FABRICACAO_PROPRIA: TStringField
      FieldName = 'FLAG_FABRICACAO_PROPRIA'
      Required = True
      Size = 1
    end
    object Sds_grupo_tribPERC_ALIQUOTA_IPI: TFMTBCDField
      FieldName = 'PERC_ALIQUOTA_IPI'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribFLAG_PIS_COFINS: TStringField
      FieldName = 'FLAG_PIS_COFINS'
      Required = True
      Size = 1
    end
    object Sds_grupo_tribPERC_ALIQUOTA_PIS: TFMTBCDField
      FieldName = 'PERC_ALIQUOTA_PIS'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribPERC_ALIQUOTA_COFINS: TFMTBCDField
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribFLAG_ICMSGARANTIDO_INTEGRAL: TStringField
      FieldName = 'FLAG_ICMSGARANTIDO_INTEGRAL'
      Required = True
      Size = 1
    end
    object Sds_grupo_tribPERC_ICMS_GARANTIDO_INTEGRAL: TFMTBCDField
      FieldName = 'PERC_ICMS_GARANTIDO_INTEGRAL'
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribCFOP_ESTADUAL_DEV: TStringField
      FieldName = 'CFOP_ESTADUAL_DEV'
      Size = 4
    end
    object Sds_grupo_tribCFOP_INTERESTADUAL_DEV: TStringField
      FieldName = 'CFOP_INTERESTADUAL_DEV'
      Size = 4
    end
    object Sds_grupo_tribCFOP_EST_COMPRA: TStringField
      FieldName = 'CFOP_EST_COMPRA'
      Size = 4
    end
    object Sds_grupo_tribCFOP_INTER_COMPRA: TStringField
      FieldName = 'CFOP_INTER_COMPRA'
      Size = 4
    end
    object Sds_grupo_tribCFOP_EST_VENDA: TStringField
      FieldName = 'CFOP_EST_VENDA'
      Size = 4
    end
    object Sds_grupo_tribCFOP_INTER_VENDA: TStringField
      FieldName = 'CFOP_INTER_VENDA'
      Size = 4
    end
    object Sds_grupo_tribCFOP_EST_TRANSF: TStringField
      FieldName = 'CFOP_EST_TRANSF'
      Size = 4
    end
    object Sds_grupo_tribCFOP_INTER_EST_TRASNF: TStringField
      FieldName = 'CFOP_INTER_EST_TRASNF'
      Size = 4
    end
    object Sds_grupo_tribCST_VENDA: TStringField
      FieldName = 'CST_VENDA'
      Size = 3
    end
    object Sds_grupo_tribCST_COMPRA: TStringField
      FieldName = 'CST_COMPRA'
      Size = 3
    end
    object Sds_grupo_tribFLAG_ICMS: TStringField
      FieldName = 'FLAG_ICMS'
      Size = 1
    end
    object Sds_grupo_tribPERC_ICMS_ESTADUAL: TFMTBCDField
      FieldName = 'PERC_ICMS_ESTADUAL'
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribPERC_ICMS_INTER_ESTADUAL: TFMTBCDField
      FieldName = 'PERC_ICMS_INTER_ESTADUAL'
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribSIT_PIS_VENDA_EST: TStringField
      FieldName = 'SIT_PIS_VENDA_EST'
      Size = 2
    end
    object Sds_grupo_tribSIT_COFINS_VENDA_EST: TStringField
      FieldName = 'SIT_COFINS_VENDA_EST'
      Size = 2
    end
    object Sds_grupo_tribSIT_PIS_VENDA_INTER_EST: TStringField
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Size = 2
    end
    object Sds_grupo_tribSIT_COFINS_VENDA_INTER_EST: TStringField
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Size = 2
    end
    object Sds_grupo_tribSIT_PIS_TRANSF: TStringField
      FieldName = 'SIT_PIS_TRANSF'
      Size = 2
    end
    object Sds_grupo_tribSIT_COFINS_TRANSF: TStringField
      FieldName = 'SIT_COFINS_TRANSF'
      Size = 2
    end
    object Sds_grupo_tribCST_VENDA_INTER: TStringField
      FieldName = 'CST_VENDA_INTER'
      Size = 3
    end
    object Sds_grupo_tribCST_COMPRA_INTER: TStringField
      FieldName = 'CST_COMPRA_INTER'
      Size = 3
    end
    object Sds_grupo_tribPERC_RED_ICMS: TFMTBCDField
      FieldName = 'PERC_RED_ICMS'
      Precision = 15
      Size = 2
    end
    object Sds_grupo_tribDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Sds_grupo_tribCST_IPI_ENTRADA: TStringField
      FieldName = 'CST_IPI_ENTRADA'
      Size = 2
    end
    object Sds_grupo_tribCST_IPI_SAIDA: TStringField
      FieldName = 'CST_IPI_SAIDA'
      Size = 2
    end
  end
  object DSLab: TDataSource
    AutoEdit = False
    DataSet = QLab
    Left = 152
    Top = 232
  end
  object QLab: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM LABORATORIO')
    Left = 152
    Top = 184
    object QLabCOD_LAB: TIntegerField
      FieldName = 'COD_LAB'
      Origin = 'LABORATORIO.COD_LAB'
      Required = True
    end
    object QLabNOME_LAB: TIBStringField
      FieldName = 'NOME_LAB'
      Origin = 'LABORATORIO.NOME_LAB'
      Required = True
      Size = 50
    end
  end
  object IBTRAux: TIBTransaction
    DefaultDatabase = IBDatabase
    Left = 152
    Top = 128
  end
  object QAdmCartao: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ADMINISTRADORA_CARTAO')
    Left = 160
    Top = 432
    object QAdmCartaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ADMINISTRADORA_CARTAO.CODIGO'
      Required = True
    end
    object QAdmCartaoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ADMINISTRADORA_CARTAO.DESCRICAO'
      Required = True
      Size = 50
    end
    object QAdmCartaoCODIGO_TEF: TIBStringField
      FieldName = 'CODIGO_TEF'
      Origin = 'ADMINISTRADORA_CARTAO.CODIGO_TEF'
      Required = True
      Size = 10
    end
  end
  object DSAdmCartao: TDataSource
    AutoEdit = False
    DataSet = QAdmCartao
    Left = 216
    Top = 432
  end
  object QBandeira: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT B.*, A.DESCRICAO ADMINISTRADORA'
      'FROM BANDEIRAS_CARTAO B'
      'INNER JOIN ADMINISTRADORA_CARTAO A'
      'ON (B.CODIGO_ADMINISTRADORA = A.CODIGO)'
      '')
    Left = 160
    Top = 480
    object QBandeiraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'BANDEIRAS_CARTAO.CODIGO'
      Required = True
    end
    object QBandeiraCODIGO_ADMINISTRADORA: TIntegerField
      FieldName = 'CODIGO_ADMINISTRADORA'
      Origin = 'BANDEIRAS_CARTAO.CODIGO_ADMINISTRADORA'
      Required = True
    end
    object QBandeiraDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'BANDEIRAS_CARTAO.DESCRICAO'
      Required = True
      Size = 50
    end
    object QBandeiraATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'BANDEIRAS_CARTAO.ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBandeiraDIAS_CREDITO: TIntegerField
      FieldName = 'DIAS_CREDITO'
      Origin = 'BANDEIRAS_CARTAO.DIAS_CREDITO'
      Required = True
    end
    object QBandeiraDIAS_DEBITO: TIntegerField
      FieldName = 'DIAS_DEBITO'
      Origin = 'BANDEIRAS_CARTAO.DIAS_DEBITO'
      Required = True
    end
    object QBandeiraTIPO_CARTAO: TIBStringField
      FieldName = 'TIPO_CARTAO'
      Origin = 'BANDEIRAS_CARTAO.TIPO_CARTAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBandeiraADMINISTRADORA: TIBStringField
      FieldName = 'ADMINISTRADORA'
      Origin = 'ADMINISTRADORA_CARTAO.DESCRICAO'
      Required = True
      Size = 50
    end
    object QBandeiraCALC_TIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_TIPO'
      Calculated = True
    end
    object QBandeiraCODIGO_TEF: TIBStringField
      FieldName = 'CODIGO_TEF'
      Origin = 'BANDEIRAS_CARTAO.CODIGO_TEF'
      Required = True
      Size = 10
    end
    object QBandeiraTAXA_CREDITO: TFloatField
      FieldName = 'TAXA_CREDITO'
      Origin = 'BANDEIRAS_CARTAO.TAXA_CREDITO'
    end
    object QBandeiraTAXA_DEBITO: TFloatField
      FieldName = 'TAXA_DEBITO'
      Origin = 'BANDEIRAS_CARTAO.TAXA_DEBITO'
    end
  end
  object DSBandeira: TDataSource
    AutoEdit = False
    DataSet = QBandeira
    Left = 216
    Top = 480
  end
  object SDS_SECCAO1: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from SECCAO ORDER BY CODIGO asc'
    DataSet.DataSource = DTS_SECCAO
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'SECCAO'
    MasterSource = DTS_PRODUTOS
    PacketRecords = 0
    Params = <>
    Left = 136
    Top = 280
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'USERCAD'
    end
    object DateField1: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DTS_SECCAO1: TDataSource
    DataSet = SDS_SECCAO1
    Left = 192
    Top = 280
  end
  object sds_seccao2: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from SECCAO ORDER BY CODIGO asc'
    DataSet.DataSource = DTS_SECCAO
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'SECCAO'
    MasterSource = Dts_produtos_c
    PacketRecords = 0
    Params = <>
    Left = 256
    Top = 534
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'USERCAD'
    end
    object DateField2: TDateField
      FieldName = 'DATACAD'
    end
  end
  object dts_seccao2: TDataSource
    DataSet = sds_seccao2
    Left = 248
    Top = 590
  end
  object ProxCod1: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = True
    ParamCheck = True
    SQL.Strings = (
      'select max(codigo) as N_CODIGO FROM categorias')
    Left = 416
    Top = 8
    object ProxCod1N_CODIGO: TIntegerField
      FieldName = 'N_CODIGO'
    end
  end
  object ProxCod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(codigo) as N_CODIGO FROM categorias')
    SQLConnection = SQLC
    Left = 488
    Top = 8
    object ProxCodN_CODIGO: TIntegerField
      FieldName = 'N_CODIGO'
    end
  end
  object Sds_Cst_ipi: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from TABELA_IPI order by cst_ipi asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 672
    Top = 568
    object Sds_Cst_ipiCST_IPI: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 2
      FieldName = 'CST_IPI'
      Size = 2
    end
    object Sds_Cst_ipiIPI_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 200
      FieldName = 'IPI_DESCRICAO'
      Size = 200
    end
  end
  object Dts_Cst_ipi: TDataSource
    DataSet = Sds_Cst_ipi
    Left = 736
    Top = 568
  end
  object Dts_IdSistema: TDataSource
    DataSet = sds_IdSistema
    Left = 112
    Top = 431
  end
  object sds_IdSistema: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from ID_CLIENTE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 224
    Top = 639
    object sds_IdSistemaSEQ: TIntegerField
      FieldName = 'SEQ'
      Required = True
    end
    object sds_IdSistemaCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object sds_IdSistemaCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 50
    end
  end
  object fxrelatorio: TfrxDBDataset
    UserName = 'fxrelatorio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LINHA1=LINHA1'
      'LINHA2=LINHA2'
      'LINHA3=LINHA3'
      'LINHA4=LINHA4'
      'LINHA5=LINHA5'
      'LINHA6=LINHA6'
      'LINHA7=LINHA7'
      'LINHA8=LINHA8'
      'LINHA9=LINHA9'
      'LINHA10=LINHA10'
      'VALOR1=VALOR1'
      'VALOR2=VALOR2'
      'VALOR3=VALOR3'
      'VALOR4=VALOR4'
      'VALOR5=VALOR5'
      'VALOR6=VALOR6'
      'VALOR7=VALOR7'
      'VALOR8=VALOR8'
      'VALOR9=VALOR9'
      'VALOR10=VALOR10'
      'VALOR11=VALOR11'
      'VALOR12=VALOR12'
      'VALOR13=VALOR13'
      'VALOR14=VALOR14'
      'VALOR15=VALOR15'
      'VALOR16=VALOR16'
      'VALOR17=VALOR17'
      'VALOR18=VALOR18'
      'VALOR19=VALOR19'
      'VALOR20=VALOR20'
      'VALOR21=VALOR21'
      'VALOR22=VALOR22'
      'VALOR23=VALOR23'
      'VALOR24=VALOR24'
      'VALOR25=VALOR25'
      'VALOR26=VALOR26'
      'VALOR27=VALOR27'
      'VALOR28=VALOR28'
      'VALOR29=VALOR29'
      'VALOR30=VALOR30'
      'VALOR31=VALOR31'
      'VALOR32=VALOR32'
      'VALOR33=VALOR33'
      'VALOR34=VALOR34'
      'VALOR35=VALOR35'
      'TEXTO_GRANDE=TEXTO_GRANDE'
      'TP=TP')
    DataSet = QRRELATORIO
    BCDToCurrency = False
    Left = 1120
    Top = 18
  end
  object fxemitente: TfrxDBDataset
    UserName = 'fxemitente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'RAZAO_SOCIAL=RAZAO_SOCIAL'
      'NOME_FANTASIA=NOME_FANTASIA'
      'ENDERECO=ENDERECO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'HOMEPAGE=HOMEPAGE'
      'IE=IE'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'IM=IM'
      'LOGOMARCA=LOGOMARCA'
      'CNAE=CNAE'
      'COD_CID_IBGE=COD_CID_IBGE'
      'URS_INDEA=URS_INDEA'
      'ULE_INDEA=ULE_INDEA'
      'MATRICULA_INDEA=MATRICULA_INDEA'
      'PROPRIETARIO=PROPRIETARIO'
      'RESPONSAVEL_TECINICO=RESPONSAVEL_TECINICO'
      'CRMV_N=CRMV_N'
      'FLAG_VETERINARIA=FLAG_VETERINARIA'
      'REGIME=REGIME'
      'ALIC_SIMPLES=ALIC_SIMPLES'
      'ALIC_PIS=ALIC_PIS'
      'ALIC_COFINS=ALIC_COFINS'
      'ALIC_IRPJ=ALIC_IRPJ'
      'ALIC_CSLL=ALIC_CSLL'
      'SUFRAMA=SUFRAMA'
      'NOME_CONTADOR=NOME_CONTADOR'
      'CRC_CONTADOR=CRC_CONTADOR'
      'ENDERECO_CONTADOR=ENDERECO_CONTADOR'
      'CEP_CONTADOR=CEP_CONTADOR'
      'NUM_CONTADOR=NUM_CONTADOR'
      'BAIRRO_CONTADOR=BAIRRO_CONTADOR'
      'COMPL_CONTADOR=COMPL_CONTADOR'
      'FONE_CONTADOR=FONE_CONTADOR'
      'FAX_CONTADOR=FAX_CONTADOR'
      'COD_IBGE_CONTADOR=COD_IBGE_CONTADOR'
      'CNPJ_CONTADOR=CNPJ_CONTADOR'
      'CPF_CONTADOR=CPF_CONTADOR'
      'CIDADE_CONTADOR=CIDADE_CONTADOR'
      'UF_CONTADOR=UF_CONTADOR'
      'CPF_RESPONSAVEL=CPF_RESPONSAVEL'
      'COMPLEMENTO=COMPLEMENTO'
      'CNPJ=CNPJ'
      'EMAIL_CONTADOR=EMAIL_CONTADOR'
      'TIPO_SEGMENTO=TIPO_SEGMENTO')
    DataSet = SDS_Empresa
    BCDToCurrency = False
    Left = 1120
    Top = 66
  end
  object fxPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 1120
    Top = 114
  end
  object fxEmail: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 1120
    Top = 162
  end
  object fxTXT: TfrxSimpleTextExport
    FileName = 'C:\Documents and Settings\ELENO\Desktop\F000001.txt'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    DeleteEmptyColumns = True
    Left = 1120
    Top = 210
  end
  object fxGIF: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 1120
    Top = 258
  end
  object fxTIF: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 1120
    Top = 306
  end
  object fxJPEG: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 1120
    Top = 354
  end
  object fxWord: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 1120
    Top = 450
  end
  object fxExcel: TfrxXLSExport
    FileName = 'C:\Documents and Settings\ELENO\Desktop\F000001.xls'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 1120
    Top = 498
  end
  object fxHTML: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 1120
    Top = 546
  end
  object QRRELATORIO: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from L000003'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 968
    Top = 448
  end
  object sds_nfce_itens1: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from NFECE_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'NR_NOTA'
    MasterFields = 'NR_NOTA'
    MasterSource = Dts_nfce
    PacketRecords = 0
    Params = <>
    Left = 1029
    Top = 546
    object sds_nfce_itens1NR_SEQUENCIA: TIntegerField
      FieldName = 'NR_SEQUENCIA'
      Required = True
    end
    object sds_nfce_itens1NR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object sds_nfce_itens1COD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Size = 15
    end
    object sds_nfce_itens1COD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 8
    end
    object sds_nfce_itens1DESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object sds_nfce_itens1PROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object sds_nfce_itens1QT_PRODUTO: TFMTBCDField
      FieldName = 'QT_PRODUTO'
      Precision = 15
    end
    object sds_nfce_itens1VL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1DT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object sds_nfce_itens1PESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sds_nfce_itens1CD_ATUALIZACAO: TIntegerField
      FieldName = 'CD_ATUALIZACAO'
    end
    object sds_nfce_itens1CST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_nfce_itens1PC_RED_BASE_ICM: TFMTBCDField
      FieldName = 'PC_RED_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1ALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1ALIQ_ICM_SUBST: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1ALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1ALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1DT_ALTERACAO: TDateField
      FieldName = 'DT_ALTERACAO'
    end
    object sds_nfce_itens1DESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 3
    end
    object sds_nfce_itens1PERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1CD_CONTA: TIntegerField
      FieldName = 'CD_CONTA'
    end
    object sds_nfce_itens1CFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object sds_nfce_itens1VL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_CONTABIL: TFMTBCDField
      FieldName = 'VL_CONTABIL'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_ISENTO: TFMTBCDField
      FieldName = 'VL_ISENTO'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1ALIQ_PIS: TFMTBCDField
      FieldName = 'ALIQ_PIS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1ALIQ_COFINS: TFMTBCDField
      FieldName = 'ALIQ_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1ALIQ_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'ALIQ_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_BASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1ALIQ_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1VL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_nfce_itens1ITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object sds_nfce_itens1CODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object sds_nfce_itens1CST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 3
    end
    object sds_nfce_itens1CST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 3
    end
    object sds_nfce_itens1CST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 2
    end
    object sds_nfce_itens1COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object sds_nfce_itens1VL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Precision = 15
      Size = 5
    end
  end
  object SDS_NFCE: TSimpleDataSet
    Aggregates = <>
    Connection = SQLC
    DataSet.CommandText = 'select * from NFECE_NOTA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 960
    Top = 506
    object SDS_NFCECD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
      Required = True
    end
    object SDS_NFCENR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object SDS_NFCECOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_NFCEFL_IMPRESSO: TStringField
      FieldName = 'FL_IMPRESSO'
      Size = 1
    end
    object SDS_NFCESERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object SDS_NFCECD_CFOP: TIntegerField
      FieldName = 'CD_CFOP'
    end
    object SDS_NFCEDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object SDS_NFCEDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object SDS_NFCEVL_ACRESCIMOS: TFMTBCDField
      FieldName = 'VL_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_DESCONTOS: TFMTBCDField
      FieldName = 'VL_DESCONTOS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_MERCADORIAS: TFMTBCDField
      FieldName = 'VL_MERCADORIAS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_SERVICOS: TFMTBCDField
      FieldName = 'VL_SERVICOS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFCECOD_PGTO: TIntegerField
      FieldName = 'COD_PGTO'
    end
    object SDS_NFCEVL_AVISTA: TFMTBCDField
      FieldName = 'VL_AVISTA'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_PRAZO: TFMTBCDField
      FieldName = 'VL_PRAZO'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEPESO_TOTAL: TFMTBCDField
      FieldName = 'PESO_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEQT_PECAS: TFMTBCDField
      FieldName = 'QT_PECAS'
      Precision = 15
    end
    object SDS_NFCECFOP_DESC: TStringField
      FieldName = 'CFOP_DESC'
      Size = 40
    end
    object SDS_NFCECD_TRANSPORTADORA: TIntegerField
      FieldName = 'CD_TRANSPORTADORA'
    end
    object SDS_NFCEUF_ORIGEM: TStringField
      FieldName = 'UF_ORIGEM'
      Size = 2
    end
    object SDS_NFCEUF_DESTINO: TStringField
      FieldName = 'UF_DESTINO'
      Size = 2
    end
    object SDS_NFCEPESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_SEGURO: TFMTBCDField
      FieldName = 'VL_SEGURO'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCETP_FRETE: TStringField
      FieldName = 'TP_FRETE'
      Size = 1
    end
    object SDS_NFCEQT_VOLUMES: TFMTBCDField
      FieldName = 'QT_VOLUMES'
      Precision = 15
    end
    object SDS_NFCEESPECIE_VOLUMES: TStringField
      FieldName = 'ESPECIE_VOLUMES'
      Size = 15
    end
    object SDS_NFCEMARCA_VOLUMES: TStringField
      FieldName = 'MARCA_VOLUMES'
      Size = 15
    end
    object SDS_NFCENR_VOLUMES: TIntegerField
      FieldName = 'NR_VOLUMES'
    end
    object SDS_NFCECD_TIPOCOBR: TIntegerField
      FieldName = 'CD_TIPOCOBR'
    end
    object SDS_NFCECD_FUNCIONARIO: TIntegerField
      FieldName = 'CD_FUNCIONARIO'
    end
    object SDS_NFCEDT_ATZ: TDateField
      FieldName = 'DT_ATZ'
    end
    object SDS_NFCEPLACA_TRANSP: TStringField
      FieldName = 'PLACA_TRANSP'
      Size = 8
    end
    object SDS_NFCEUF_PLACA_TRANSP: TStringField
      FieldName = 'UF_PLACA_TRANSP'
      Size = 2
    end
    object SDS_NFCEVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCENR_PEDIDO: TIntegerField
      FieldName = 'NR_PEDIDO'
    end
    object SDS_NFCEVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_DESCONTO_ITEM: TFMTBCDField
      FieldName = 'VL_DESCONTO_ITEM'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_ISENTO_ITENS: TFMTBCDField
      FieldName = 'VL_ISENTO_ITENS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_OUTROS_ITENS: TFMTBCDField
      FieldName = 'VL_OUTROS_ITENS'
      Precision = 15
      Size = 2
    end
    object SDS_NFCENR_PROTOCOLO_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_NFE'
      Size = 15
    end
    object SDS_NFCEDT_PROCESSAMENTO_NFE: TDateField
      FieldName = 'DT_PROCESSAMENTO_NFE'
    end
    object SDS_NFCESTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object SDS_NFCENR_LOTE_NFE: TStringField
      FieldName = 'NR_LOTE_NFE'
      Size = 15
    end
    object SDS_NFCENR_RECIBO_NFE: TStringField
      FieldName = 'NR_RECIBO_NFE'
      Size = 15
    end
    object SDS_NFCENR_PROTOCOLO_CANC_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_CANC_NFE'
      Size = 15
    end
    object SDS_NFCECHAVE_ACESSO_NFE: TStringField
      FieldName = 'CHAVE_ACESSO_NFE'
      Size = 44
    end
    object SDS_NFCEVL_FRETE_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_FRETE_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_ST_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ST_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_ICM_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ICM_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEBASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'BASE_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFCEVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object SDS_NFCECNPJ_TRANSP: TStringField
      FieldName = 'CNPJ_TRANSP'
      FixedChar = True
      Size = 18
    end
    object SDS_NFCENOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Size = 70
    end
    object SDS_NFCEIE_TRANSP: TStringField
      FieldName = 'IE_TRANSP'
    end
    object SDS_NFCEEND_TRANSPORTADOR: TStringField
      FieldName = 'END_TRANSPORTADOR'
      Size = 70
    end
    object SDS_NFCECIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 40
    end
    object SDS_NFCEUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Size = 2
    end
    object SDS_NFCETP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object SDS_NFCEN_NOTA_ENTRADA: TStringField
      FieldName = 'N_NOTA_ENTRADA'
    end
    object SDS_NFCENOME_CLIENTE_FOR: TStringField
      FieldName = 'NOME_CLIENTE_FOR'
      Size = 70
    end
    object SDS_NFCECPF_CNPJ_CLIENTE_FORN: TStringField
      FieldName = 'CPF_CNPJ_CLIENTE_FORN'
      FixedChar = True
      Size = 18
    end
    object SDS_NFCEIE_CLIENTE_FORN: TStringField
      FieldName = 'IE_CLIENTE_FORN'
    end
    object SDS_NFCEENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Size = 44
    end
    object SDS_NFCEEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
    end
    object SDS_NFCECOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object SDS_NFCECEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object SDS_NFCEBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object SDS_NFCETIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
    end
    object SDS_NFCETELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SDS_NFCECIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object SDS_NFCEUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object SDS_NFCEIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
    end
    object SDS_NFCEPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_NFCEPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 70
    end
    object SDS_NFCESTATUS_INUTILIZADO: TStringField
      FieldName = 'STATUS_INUTILIZADO'
      Size = 1
    end
    object SDS_NFCESTATUS_CANCELADO: TStringField
      FieldName = 'STATUS_CANCELADO'
      Size = 1
    end
    object SDS_NFCESTATUS_EMAIL: TStringField
      FieldName = 'STATUS_EMAIL'
      Size = 1
    end
    object SDS_NFCECOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object SDS_NFCEDEPEC: TStringField
      FieldName = 'DEPEC'
      Size = 1
    end
    object SDS_NFCECHAVE2: TStringField
      FieldName = 'CHAVE2'
      Size = 70
    end
    object SDS_NFCESTATUS_RETORNO: TStringField
      FieldName = 'STATUS_RETORNO'
      Size = 1
    end
    object SDS_NFCEJUSTIFICATIVA_CANCEL_INUTIL: TStringField
      FieldName = 'JUSTIFICATIVA_CANCEL_INUTIL'
      Size = 255
    end
    object SDS_NFCEMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object SDS_NFCECORRECAO: TStringField
      FieldName = 'CORRECAO'
      Size = 1
    end
    object SDS_NFCEVL_TROCO: TFMTBCDField
      FieldName = 'VL_TROCO'
      Precision = 15
      Size = 2
    end
  end
  object Dts_nfce: TDataSource
    DataSet = SDS_NFCE
    Left = 960
    Top = 564
  end
  object dts_nfce_itens: TDataSource
    Left = 1064
    Top = 602
  end
  object ACBrEAD1: TACBrEAD
    Left = 896
    Top = 560
  end
  object logEst: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      ' INSERT INTO PRODUTOS_ESTOQUES_LOG ('
      '    ID_EMPRESA,'
      '    ID_FILIAL,'
      '    ID_AJUSTE,'
      '    ID_PRODUTO,'
      '    ID_LOTE,'
      '    ID_PRODUTO_SERIE,'
      '    DATA,'
      '    ID_USUARIO,'
      '    ID_MOVIMENTO,'
      '    FRACAO,'
      '    ESTOQUE_ANTERIOR,'
      '    QUANTIDADE,'
      '    ESTOQUE_POSTERIOR,'
      '    SITUACAO_ESTOQUE,'
      '    OPERACAO,'
      '    ACAO_BD,'
      '    SITUACAO_ESTOQUE_OLD,'
      '    COD_VENDA,'
      '    COD_COMPRA,'
      '    HISTORICO,'
      '    HORA)'
      '  VALUES ('
      '    :ID_EMPRESA,'
      '    :ID_FILIAL,'
      '    :ID_AJUSTE,'
      '    :ID_PRODUTO,'
      '    :ID_LOTE,'
      '    :ID_PRODUTO_SERIE,'
      '    :DATA,'
      '    :ID_USUARIO,'
      '    :ID_MOVIMENTO,'
      '    :FRACAO,'
      '    :ESTOQUE_ANTERIOR,'
      '    :QUANTIDADE,'
      '    :ESTOQUE_POSTERIOR,'
      '    :SITUACAO_ESTOQUE,'
      '    :OPERACAO,'
      '    :ACAO_BD,'
      '    :SITUACAO_ESTOQUE_OLD,'
      '    :COD_VENDA,'
      '    :COD_COMPRA,'
      '    :HISTORICO,'
      '    :HORA);')
    Left = 1176
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FILIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_AJUSTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_PRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_PRODUTO_SERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_MOVIMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FRACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTOQUE_ANTERIOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QUANTIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTOQUE_POSTERIOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITUACAO_ESTOQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPERACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACAO_BD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITUACAO_ESTOQUE_OLD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_VENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_COMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HISTORICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HORA'
        ParamType = ptUnknown
      end>
  end
  object LogPro: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'INSERT INTO PRODUTOS_PRECOS_LOG ('
      '    ID_EMPRESA,'
      '    ID_FILIAL,'
      '    ID_PRODUTO,'
      '    ID_OCORRENCIA,'
      '    TIPO_ALTERACAO,'
      '    DATA_HORA,'
      '    ID_USUARIO,'
      '    P_COMPRA_ANT,'
      '    P_CUSTO_ANT,'
      '    P_CUSTO_MEDIO_ANT,'
      '    P_VENDA_ANT,'
      '    P_COMPRA_NOVO,'
      '    P_CUSTO_NOVO,'
      '    P_CUSTO_MEDIO_NOVO,'
      '    P_VENDA_NOVO)'
      '  VALUES ('
      '    :ID_EMPRESA,'
      '    :ID_FILIAL,'
      '    :ID_PRODUTO,'
      '    :ID_OCORRENCIA,'
      '    :TIPO_ALTERACAO,'
      '    :DATA_HORA,'
      '    :ID_USUARIO,'
      '    :P_COMPRA_ANT,'
      '    :P_CUSTO_ANT,'
      '    :P_CUSTO_MEDIO_ANT,'
      '    :P_VENDA_ANT,'
      '    :P_COMPRA_NOVO,'
      '    :P_CUSTO_NOVO,'
      '    :P_CUSTO_MEDIO_NOVO,'
      '    :P_VENDA_NOVO);')
    Left = 1232
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FILIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_PRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_OCORRENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_ALTERACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_HORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_COMPRA_ANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_CUSTO_ANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_CUSTO_MEDIO_ANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_VENDA_ANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_COMPRA_NOVO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_CUSTO_NOVO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_CUSTO_MEDIO_NOVO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_VENDA_NOVO'
        ParamType = ptUnknown
      end>
  end
  object ACBrNFe1: TACBrNFe
    OnStatusChange = ACBrNFe1StatusChange
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Arquivos.PathSalvar = 'C:\SIACE\NFE\'
    Configuracoes.Arquivos.PathSchemas = 'C:\Siace\Schemas\NFe\'
    Configuracoes.Arquivos.SepararPorCNPJ = True
    Configuracoes.Arquivos.SepararPorModelo = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.PathNFe = 'C:\SIACE\NFE\'
    Configuracoes.Arquivos.PathInu = 'C:\SIACE\NFE\'
    Configuracoes.Arquivos.PathEvento = 'C:\SIACE\NFE\'
    Configuracoes.WebServices.UF = 'MT'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFEFR1
    Left = 1040
    Top = 192
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFEFR
    PathPDF = 'C:\siace\nfe\'
    Sistema = 'Siace Sistemas'
    Site = 'www.siacesistemas.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe1
    ExpandirDadosAdicionaisAuto = True
    EspessuraBorda = 1
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 1042
    Top = 264
  end
  object SPC_NFCE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLC
    StoredProcName = 'SP_NFCE_CODIGO'
    Left = 882
    Top = 344
  end
end
