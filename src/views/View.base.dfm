object ViewBase: TViewBase
  Left = 0
  Top = 0
  Caption = 'ViewBase'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001003030000001002000A82500001600000028000000300000006000
    00000100200000000000002400009B2500009B25000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000F4F4F400F4F4F400F4F4F400F4F4F401F4F4F404F4F4F401F4F4F400F4F4
    F400F4F4F40AF4F4F43CF4F4F474F4F4F4A3F4F4F4C5F4F4F4DAF4F4F4E4F4F4
    F4E5F4F4F4DDF4F4F4CAF4F4F4ABF4F4F47FF4F4F448F4F4F412F4F4F400F4F4
    F400F4F4F401F4F4F404F4F4F401F4F4F400F4F4F400F4F4F400000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000F6F6F600F4F4
    F400F4F4F400F4F4F400F4F4F403F4F4F402F4F4F400F4F4F404F4F4F444F4F4
    F49EF4F4F4E1F4F4F4FEF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4EAF4F4F4AEF4F4
    F458F4F4F40CF4F4F400F4F4F401F4F4F403F4F4F400F4F4F400F4F4F400F4F4
    F400000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000F3F3F300F4F4F400F4F4
    F400F4F4F401F4F4F403F4F4F400F4F4F406F4F4F461F4F4F4D7F4F4F4FFF4F4
    F4FEF4F4F4FFF4F4F4FEF4F4F4FCF4F4F4FCF4F4F4FDF4F4F4FEF4F4F4FEF4F4
    F4FEF4F4F4FEF4F4F4FDF4F4F4FCF4F4F4FCF4F4F4FEF4F4F4FFF4F4F4FEF4F4
    F4FFF4F4F4E7F4F4F47DF4F4F411F4F4F400F4F4F403F4F4F402F4F4F400F4F4
    F400F4F4F4000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000F4F4F400F4F4F400F4F4F400F4F4
    F402F4F4F403F4F4F400F4F4F446F4F4F4D6F4F4F4FFF4F4F4FEF4F4F4FDF4F4
    F4FBF4F4F4FDF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FEF4F4F4FBF4F4
    F4FCF4F4F4FEF4F4F4FFF4F4F4E9F4F4F464E6E6E600F4F4F401F4F4F403F4F4
    F400F4F4F400F4F4F40000000000000000000000000000000000000000000000
    0000000000000000000000000000F4F4F400F4F4F400F4F4F400F4F4F403F4F4
    F400F4F4F40AF4F4F49AF4F4F4FFF4F4F4FEF4F4F4FCF4F4F4FDF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FDF4F4F4FBF4F4F4FDF4F4F4FFF4F4F4BCF4F4F41DF4F4F400F4F4
    F404F6F6F600F5F5F500F4F4F400000000000000000000000000000000000000
    00000000000000000000F4F4F400F4F4F400F4F4F400F4F4F404F4F4F400F4F4
    F424F4F4F4D2F4F4F4FFF4F4F4FBF4F4F4FCF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FDF4F4F4FBF4F4F4FFF4F4F4EBF4F4F443F4F4
    F400F4F4F404F5F5F500F5F5F500F4F4F4000000000000000000000000000000
    000000000000F4F4F400F4F4F400F4F4F400F4F4F404F4F4F400F4F4F436F4F4
    F4EAF4F4F4FFF4F4F4FBF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FCF4F4F4FEF4F4F4FDF4F4
    F45CF4F4F400F4F4F404F4F4F400F4F4F400F4F4F40000000000000000000000
    0000F7F7F700F4F4F400F4F4F400F4F4F403F4F4F400F4F4F436F4F4F4F0F4F4
    F4FFF4F4F4FCF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FDF4F4F4FDF4F4
    F4FFF4F4F45EF4F4F400F4F4F404F4F4F400F4F4F400F4F4F400000000000000
    0000F4F4F400F4F4F400F4F4F402F4F4F400F4F4F424F4F4F4E8F4F4F4FFF4F4
    F4FCF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FDF4F4
    F4FDF4F4F4FEF4F4F449F4F4F400F4F4F403F4F4F400F4F4F40000000000F4F4
    F400F4F4F400F4F4F401F5F5F500F4F4F409F4F4F4CBF4F4F4FFF4F4F4FBF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FDF4F4F4FFF4F4F4ECF4F4F425F4F4F400F4F4F402F4F4F400F4F4F400F4F4
    F400F4F4F400F4F4F403F4F4F400F4F4F492F4F4F4FFF4F4F4FBF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FCF4F4F4FFF4F4F4BFF3F3F301F4F4F401F4F4F400F4F4F400F4F4
    F400F4F4F403F4F4F400F4F4F443F4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F3FFF3F3F2FFF3F2
    F1FFF3F2F1FFF4F3F2FFF4F4F3FFF4F4F4FFF4F4F4FFF4F3F3FFF3F3F2FFF3F2
    F1FFF3F2F1FFF4F3F2FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FBF4F4F4FFF4F4F471F4F4F400F4F4F403F5F5F500F4F4
    F401F6F6F600F4F4F402F4F4F4C8F4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F3FFF3F2F1FFF3F3F2FFF5F6F8FFF7FAFFFFF8FD
    FFFFF8FDFFFFF7FBFFFFF6F8FCFFF5F7F9FFF5F7FAFFF6F9FDFFF7FBFFFFF8FC
    FFFFF7FCFFFFF6F8FCFFF4F4F3FFF3F2F1FFF4F4F3FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FEF4F4F4FFF4F4F4EBF4F4F41BF4F4F400F4F4F401F4F4
    F403F4F4F400F4F4F45AF4F4F4FFF4F4F4FCF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F3F3FFF3F2F1FFF5F6F8FFF8FDFFFFF7FCFFFFF1EDE8FFE7D6BCFFDCBD
    8FFFD4A96AFFCE9C52FFCA9444FFC9913EFFC9923FFFCC9749FFD0A15CFFD8B2
    7BFFE2CAA7FFEDE3D5FFF5F7F8FFF7FCFFFFF4F5F5FFF3F2F1FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FBF4F4F4FFF4F4F48CF4F4F400F4F4F404F4F4
    F400F4F4F400F4F4F4C7F4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4F4FFF3F2
    F1FFF5F7F9FFF8FEFFFFF1EEE9FFE0C6A0FFCF9F57FFC68930FFC5872CFFC991
    3EFFCF9E57FFD4AA6CFFD7B17AFFD8B37DFFD6B076FFD2A563FFCB9546FFC384
    26FFBE7810FFC17D19FFCD9A4FFFE1C9A4FFF3F2F0FFF7FAFEFFF3F2F1FFF4F4
    F4FFF4F4F4FFF4F4F5FFF4F3F3FFF4F4F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FEF4F4F4FFF4F4F4ECF4F4F416F4F4F400F4F4
    F400F4F4F43BF4F4F4FFF4F4F4FEF4F4F4FFF4F4F4FFF4F3F2FFF4F4F5FFF8FD
    FFFFEFE9DFFFD8B37DFFCA9240FFCE9B51FFDBBB8AFFE8D9C2FFF1EDE6FFF5F7
    FAFFF7FBFFFFF8FDFFFFF8FDFFFFF8FDFFFFF8FDFFFFF7FCFFFFF6F8FBFFF1ED
    E7FFE7D6BDFFD6AF75FFC48426FFBD760CFFCB9545FFE6D4BAFFF7FBFFFFF4F3
    F3FFF4F4F3FFF3F2F1FFF6F8FCFFF5F5F7FFF3F3F2FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FBF4F4F4FFF4F4F469F4F4F400F4F4
    F400F4F4F48EF4F4F4FFF4F4F4FBF4F4F4FFF3F3F2FFF6F9FCFFF4F4F3FFDDBF
    92FFCF9E56FFDBBA8AFFEDE5D9FFF7FAFEFFF8FDFFFFF7FAFEFFF5F6F8FFF4F4
    F4FFF3F3F2FFF3F2F1FFF3F2F1FFF3F2F1FFF3F2F1FFF3F3F1FFF4F4F3FFF5F6
    F8FFF7FAFEFFF7FCFFFFF0EAE2FFD7B17AFFC07C18FFC17E1CFFDBBB8AFFF6F9
    FCFFF5F5F7FFEFE9E1FFE6D4B9FFF3F1ECFFF6F9FCFFF3F2F1FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FCF4F4F4FFF4F4F4BDF4F4F400F4F4
    F403F4F4F4D2F4F4F4FFF4F4F4FDF4F3F3FFF6FAFEFFECE2D3FFD7B27AFFE0C5
    9EFFF3F2F0FFF8FEFFFFF6F8FAFFF4F3F2FFF3F2F1FFF3F3F2FFF4F3F3FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F3
    F3FFF3F3F1FFF3F2F1FFF5F7F8FFF8FDFFFFE2CBA9FFC38425FFC07B15FFD9B5
    81FFF6FAFEFFF5F6F7FFEDE5D8FFD7B27AFFECE1D0FFF7FAFFFFF3F2F1FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FEF4F4F4FFF4F4F4F2F4F4F423F4F4
    F42EF4F4F4F9F4F4F4FFF4F4F3FEF5F7F9FFEADCC9FFE0C6A0FFF1EDE6FFF8FE
    FFFFF4F5F5FFF3F2F0FFF4F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F3F3FFF4F3F2FFF3F3F1FFF4F3F2FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F3F2FFF3F1EFFFF9FFFFFFDBBA89FFC2801EFFC17E
    1BFFE3CDABFFF6FAFEFFF6FAFEFFEEE6DAFFCB9546FFECE2D2FFF6F9FCFFF4F3
    F2FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FDF4F4F4FFF4F4F45DF4F4
    F460F4F4F4FFF4F4F3FDF5F6F7FFEFE9E0FFEBE0CFFFF6F9FDFFF5F6F8FFF3F2
    F0FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F2
    F1FFF4F3F2FFF5F6F8FFF6FAFEFFF7FBFFFFF6F8FBFFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F3F2FFF5F7F9FFEEE7DCFFC5882EFFC281
    20FFCA9343FFF3F2F1FFF3F2F0FFF9FFFFFFDDBE8FFFCA9443FFF5F7FAFFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FCF4F4F4FFF4F4F496F4F4
    F48EF4F4F4FFF4F4F4FCF4F4F4FFF4F3F2FFF5F7FAFFF4F3F3FFF4F3F3FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F2FFF4F4F4FFF7FC
    FFFFF7FBFEFFF0ECE5FFE9DAC5FFE6D3B7FFEDE4D7FFF5F6F7FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F3FFF4F5F6FFF2EFEAFFC9903CFFC383
    25FFC38222FFE9DAC4FFF6F9FCFFF5F7F9FFECE2D3FFC17E1CFFE8D8C0FFF7FA
    FFFFF3F3F2FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FDF4F4F4FFF4F4F4C3F4F4
    F4B0F4F4F4FFF4F4F4FCF4F4F4FFF4F4F4FFF4F3F3FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F2F1FFF6F9FBFFF5F7F8FFE1C9
    A5FFCD9B50FFC78C34FFC78C35FFC78C35FFC27F1EFFE4D0B1FFF7FBFFFFF3F3
    F1FFF4F4F4FFF4F4F4FFF4F4F4FFF4F3F3FFF5F7FAFFEEE6DAFFC5872BFFC486
    2AFFC2801FFFE7D6BDFFF6F9FEFFF5F6F8FFEEE5D8FFC17E1CFFE0C69FFFF7FC
    FFFFF3F2F1FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FEF4F4F4FFF4F4F4E1F4F4
    F4C6F4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F2F1FFF7FBFFFFECE1D1FFCA9241FFC78C
    35FFDDBE91FFEBE0D0FFF1EDE6FFF5F7F9FFDCBC8EFFE5D1B3FFF7FBFFFFF3F3
    F2FFF4F4F4FFF4F4F4FFF4F4F4FFF3F1EFFFF8FDFFFFDDBF92FFC17F1DFFC383
    25FFC88E38FFF2EFEAFFF4F4F4FFF7FAFFFFE7D6BCFFBF7911FFE4CEAEFFF7FB
    FFFFF3F2F1FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4F2F4F4
    F4D0F4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF3F2F1FFF7FAFFFFE8D8BFFFC17E1CFFD4AB6EFFF5F5
    F5FFF8FCFFFFF5F7FAFFF6F9FCFFF6F8FCFFF3F1EEFFF4F3F1FFF4F4F5FFF4F4
    F4FFF4F4F4FFF4F4F4FFF3F2F1FFF7FAFEFFEEE6DAFFC78B33FFC28121FFC280
    1FFFE5D2B6FFF7FAFFFFF2F0EEFFF7FCFFFFD5AB6EFFC2801EFFEFE8DEFFF5F7
    FAFFF4F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FAF4F4
    F4D0F4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F3F2FFF6F8FBFFEEE5D9FFC27F1EFFD6AF75FFF9FFFFFFF4F3
    F2FFF5F6F8FFF7FAFFFFEDE4D7FFEFEAE1FFF5F6F8FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F3F2FFF6F9FCFFF1EDE7FFCA9240FFBE7810FFC78B34FFE5D2
    B6FFF7FBFFFFF2F0EDFFF7FBFFFFEADDCAFFBF7912FFD8B37DFFF7FBFFFFF3F2
    F1FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FBF4F4
    F4C6F4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF3F3F2FFF7FBFFFFD2A563FFC88F3AFFF5F7F9FFF4F3F3FFF6F9
    FDFFEBE0CEFFD1A360FFCB9646FFF1EDE7FFF5F5F7FFF4F3F3FFF4F4F4FFF4F4
    F4FFF3F3F1FFF5F6F8FFEFE8DFFFCD9B50FFC9903CFFDBB988FFF0EAE1FFF7FA
    FEFFF2F0EDFFF7FBFFFFF2EEE8FFC68930FFCB9647FFF4F3F2FFF4F5F6FFF4F4
    F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4F2F4F4
    F4B1F4F4F4FFF4F4F4FCF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F3FFF5F5F6FFF3F1EEFFC5872CFFDEC298FFF7FBFFFFF6F8FAFFE3CC
    ABFFC38325FFBE770EFFE1C9A5FFF8FDFFFFF3F2F0FFF4F4F4FFF4F4F4FFF4F4
    F4FFF6F8F9FFF4F5F5FFEFE9DFFFEDE4D6FFF4F4F4FFF7FAFFFFF4F5F6FFF5F5
    F6FFF9FFFFFFEDE3D4FFC68A31FFCA9343FFF1EEE8FFF5F7F9FFF4F3F2FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FEF4F4F4FFF4F4F4E2F4F4
    F48FF4F4F4FFF4F4F4FCF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F3FFF5F6F7FFF2EFEBFFC6892FFFE5D2B4FFF8FDFFFFEFE7DDFFC588
    2DFFC2801FFFC9913EFFF2EFEBFFF5F5F6FFF4F4F3FFF4F4F4FFF4F3F2FFF6F8
    FCFFE6D4BAFFF0EBE0FFFAFFFFFFF8FDFEFFF7FBFFFFF7FCFFFFF7FBFFFFEFE9
    DFFFD8B47EFFC38222FFD5AB6FFFF4F3F2FFF5F7F9FFF3F3F2FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FDF4F4F4FFF4F4F4C4F4F4
    F461F4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F3F2FFF7FBFFFFCE9C52FFDEC195FFFBFFFFFFE7D7BFFFC382
    23FFC28121FFCF9F58FFF6F8FAFFF4F3F3FFF4F4F4FFF4F4F4FFF3F2F1FFF8FC
    FFFFD3A969FFCFA059FFE6D3B7FFE7D6BCFFE5D1B4FFDDBF93FFD1A35FFFC88E
    39FFD0A15BFFE9DAC5FFF7FCFFFFF4F5F5FFF3F3F2FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FCF4F4F4FFF4F4F498F4F4
    F42FF4F4F4FAF4F4F4FFF4F4F4FEF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF3F3F2FFF7FBFFFFE7D5BAFFCE9C52FFF7FCFFFFF1EDE8FFC88E
    38FFC17E1CFFCD9A4EFFF5F6F7FFF4F3F2FFF4F4F4FFF4F4F4FFF4F4F3FFF5F6
    F7FFF0EBE4FFDCBC8CFFD4A96AFFD2A664FFD3A868FFD8B37CFFE2CAA6FFEFE8
    DFFFF8FCFFFFF6FAFCFFF3F2F2FFF4F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FDF4F4F4FFF4F4F45FF4F4
    F404F4F4F4D4F4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF3F3F1FFF7FCFFFFDDBF92FFDEC095FFFBFFFFFFE1C8
    A3FFC07C18FFC38325FFE9DAC4FFF8FDFFFFF3F1EEFFF4F4F3FFF4F4F4FFF4F4
    F3FFF5F6F8FFF8FEFFFFF8FCFFFFF7FAFFFFF7FCFFFFF8FEFFFFF8FCFFFFF5F7
    FAFFF3F3F1FFF3F3F2FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F3
    F3FFF4F4F3FFF5F5F6FFF5F5F6FFF4F4F4FEF4F4F4FFF4F4F4F3F4F4F424F4F4
    F400F4F4F491F4F4F4FFF4F4F4FBF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F3F3FFF7FAFDFFE3CCAAFFE6D4B9FFF7FB
    FFFFDDBE91FFBF7A14FFC88D38FFEEE7DBFFF8FEFFFFF5F5F7FFF3F2F1FFF3F3
    F1FFF3F3F1FFF3F2F0FFF3F2F1FFF3F3F2FFF3F3F1FFF3F2F1FFF3F2F1FFF4F3
    F3FFF4F4F4FFF4F4F4FFF4F4F3FFF4F3F3FFF4F3F3FFF4F4F4FFF5F6F7FFF5F7
    FAFFF5F6F7FFF2EFEAFFF1EEE9FFF4F4F5FCF4F4F4FFF4F4F4BFF4F4F400F4F4
    F400F4F4F43DF4F4F4FFF4F4F4FEF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F3F3FFF7FAFDFFEEE5D9FFEFE8
    DDFFF7FCFFFFE5D2B5FFC78C35FFC28020FFDDBF92FFF2EFEAFFF8FDFFFFF8FD
    FFFFF6F9FDFFF5F6F8FFF4F5F5FFF4F4F4FFF4F4F3FFF4F4F3FFF4F4F4FFF4F4
    F5FFF4F5F6FFF5F6F8FFF5F7FAFFF6F8FBFFF6F8FAFFF4F4F4FFF1EDE8FFEDE5
    D8FFEBE0D0FFEDE5D8FFF2F0EDFFF4F4F5FBF4F4F4FFF4F4F46CF4F4F400F2F2
    F200F2F2F200F4F4F4C9F4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F3F2FFF5F7FAFFF4F5
    F5FFF3F2F1FFF7FBFFFFF3F1EDFFDDBF93FFC98F3BFFC78C35FFD3A868FFE0C7
    A1FFEADDCAFFF0EAE2FFF3F1EFFFF4F5F5FFF5F6F8FFF5F6F7FFF4F5F5FFF3F3
    F2FFF2F0ECFFF0EBE4FFEEE6DAFFECE0D0FFE9DCC7FFE9DAC5FFEBDFCCFFEFE8
    DDFFF3F2F0FFF5F6F8FFF4F5F6FEF4F4F4FFF4F4F4EDF4F4F418F4F4F400F4F4
    F404F4F4F400F4F4F45DF4F4F4FFF4F4F4FCF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F3F3FFF4F4
    F4FFF4F4F4FFF3F2F1FFF5F5F6FFF8FCFFFFF5F6F7FFEADDCAFFDEC196FFD6AF
    74FFD3A96AFFD4AA6CFFD6AF75FFD8B47FFFDBBA89FFDDBF93FFDFC49CFFE1C9
    A5FFE4CEAFFFE6D5BAFFEADCC7FFEDE4D7FFF1ECE6FFF4F4F3FFF5F7FAFFF5F7
    F9FFF4F5F5FFF4F3F3FFF4F4F4FBF4F4F4FFF4F4F48EF4F4F400F4F4F404F4F4
    F401F6F6F600F5F5F502F4F4F4CAF4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F3FFF3F2F1FFF4F4F4FFF6F9FDFFF8FDFFFFF8FD
    FFFFF6FAFEFFF4F5F6FFF2F0EDFFF1EEE9FFF1EEE8FFF2EFEAFFF3F1EFFFF4F4
    F4FFF5F6F9FFF6F8FCFFF6F9FCFFF6F8FBFFF5F6F7FFF4F4F4FFF4F3F3FFF4F4
    F3FFF4F4F4FFF4F4F4FEF4F4F4FFF4F4F4EDF4F4F41DF4F4F400F4F4F402F4F4
    F400F4F4F403F4F4F400F4F4F446F4F4F4FFF4F4F4FDF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F3F2FFF3F2F1FFF3F2
    F1FFF4F3F2FFF4F4F4FFF4F5F6FFF5F6F7FFF5F6F7FFF5F5F6FFF4F5F5FFF4F4
    F4FFF4F3F3FFF4F3F2FFF4F3F2FFF4F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FBF4F4F4FFF4F4F474F4F4F400F4F4F403F1F1F100F4F4
    F400F5F5F500F4F4F403F4F4F400F4F4F496F4F4F4FFF4F4F4FBF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FCF4F4F4FFF4F4F4C3F3F3F302F5F5F500F4F4F400F4F4F400F4F4
    F400F4F4F400F4F4F401F4F4F400F4F4F40BF4F4F4CFF4F4F4FFF4F4F4FCF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FDF4F4F4FFF4F4F4EFF4F4F428F4F4F400F4F4F402F4F4F400F4F4F4000000
    0000F4F4F400F4F4F400F4F4F402F4F4F400F4F4F427F4F4F4EBF4F4F4FFF4F4
    F4FCF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FEF4F4
    F4FDF4F4F4FFF4F4F44DF4F4F400F4F4F403F4F4F400F4F4F400000000000000
    0000F5F5F500F4F4F400F4F4F400F4F4F403F4F4F400F4F4F43AF4F4F4F3F4F4
    F4FFF4F4F4FCF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FDF4F4F4FCF4F4
    F4FFF4F4F463F4F4F400F4F4F404F4F4F400F4F4F400F4F4F400000000000000
    000000000000F4F4F400F4F4F400F4F4F400F4F4F404F4F4F400F4F4F43BF4F4
    F4EEF4F4F4FFF4F4F4FBF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FCF4F4F4FEF4F4F4FFF4F4
    F461F4F4F400F4F4F404F4F4F400F4F4F400F4F4F40000000000000000000000
    00000000000000000000F4F4F400F4F4F400F4F4F400F4F4F404F4F4F400F4F4
    F428F4F4F4D7F4F4F4FFF4F4F4FBF4F4F4FDF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FDF4F4F4FBF4F4F4FFF4F4F4EFF4F4F448F4F4
    F400F4F4F404F4F4F400F4F4F400F4F4F4000000000000000000000000000000
    0000000000000000000000000000F4F4F400F4F4F400F4F4F400F4F4F403F4F4
    F400F4F4F40DF4F4F4A0F4F4F4FFF4F4F4FEF4F4F4FCF4F4F4FDF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FDF4F4F4FBF4F4F4FDF4F4F4FFF4F4F4C2F4F4F421F4F4F400F4F4
    F404F4F4F400F4F4F400F4F4F400000000000000000000000000000000000000
    000000000000000000000000000000000000F4F4F400F4F4F400F4F4F400F4F4
    F402F4F4F402F4F4F400F4F4F44BF4F4F4DBF4F4F4FFF4F4F4FEF4F4F4FCF4F4
    F4FBF4F4F4FEF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FEF4F4F4FCF4F4
    F4FCF4F4F4FEF4F4F4FFF4F4F4EDF4F4F46BF4F4F401F4F4F401F4F4F403F4F4
    F400F4F4F400F4F4F40000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000F4F4F400F4F4F400F4F4
    F400F4F4F401F4F4F403F4F4F400F4F4F408F4F4F468F4F4F4DBF4F4F4FFF4F4
    F4FEF4F4F4FFF4F4F4FEF4F4F4FCF4F4F4FCF4F4F4FDF4F4F4FEF4F4F4FEF4F4
    F4FEF4F4F4FEF4F4F4FDF4F4F4FCF4F4F4FCF4F4F4FEF4F4F4FFF4F4F4FEF4F4
    F4FFF4F4F4EAF4F4F484F4F4F414F4F4F400F4F4F403F4F4F402F4F4F400F4F4
    F400F4F4F4000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000F5F5F500F4F4
    F400F4F4F400F4F4F400F4F4F403F4F4F402F4F4F400F4F4F406F4F4F44AF4F4
    F4A4F4F4F4E5F4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
    F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4EEF4F4F4B4F4F4
    F45EF4F4F40FF4F4F400F4F4F401F4F4F403F4F4F401F4F4F400F4F4F400F4F4
    F400000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000F4F4F400F4F4F400F4F4F400F4F4F401F4F4F404F4F4F401F4F4F400F4F4
    F400F4F4F40DF4F4F442F4F4F47BF4F4F4AAF4F4F4CBF4F4F4DFF4F4F4E9F4F4
    F4EAF4F4F4E2F4F4F4D0F4F4F4B2F4F4F485F4F4F44EF4F4F416F4F4F400F4F4
    F400F4F4F400F4F4F404F4F4F402F4F4F400F4F4F400F4F4F400000000000000
    000000000000000000000000000000000000000000000000000000000000FFD0
    80010BFF0000FF44000022FF0000FE900000097F0000FD200000009F0000FA80
    0000012F0000F500000000970000EA00000000570000D4000000002B0000A800
    00000015000090000000000A0000100000000000000020000000000500000000
    0000000200004000000000020000400000000001000080000000000100008000
    0000000100000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000080000000000100008000
    0000000100004000000000010000400000000002000040000000000200002000
    000000050000100000000000000090000000000A0000A800000000150000D400
    0000002B0000EA00000000570000F500000000970000FA800000012F0000FD20
    0000009F0000FE900000097F0000FF44000022FF0000FFD080010BFF0000}
  KeyPreview = True
  OnKeyDown = FormKeyDown
  TextHeight = 15
end
