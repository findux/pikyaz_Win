object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Pikyaz'
  ClientHeight = 641
  ClientWidth = 845
  Color = 6455054
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 845
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        Width = 839
      end>
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 11
      Top = 0
      Width = 830
      Height = 25
      UseSystemFont = False
      ActionManager = ActionManager1
      Caption = 'ActionMainMenuBar1'
      Color = clMenuBar
      ColorMap.DisabledFontColor = 7171437
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedFont = clBlack
      ColorMap.UnusedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Spacing = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 526
    Width = 845
    Height = 115
    Align = alBottom
    Caption = 'Panel1'
    ParentColor = True
    ShowCaption = False
    TabOrder = 1
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 90
      Width = 843
      Height = 24
      Align = alBottom
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 843
      Height = 70
      Align = alClient
      Lines.Strings = (
        'Memo1')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 71
      Width = 843
      Height = 19
      Panels = <>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 70
    Width = 845
    Height = 456
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 2
    object Panel3: TPanel
      Left = 659
      Top = 1
      Width = 185
      Height = 454
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Panel3'
      ParentColor = True
      ShowCaption = False
      TabOrder = 0
    end
    object RichEdit1: TRichEdit
      Left = 1
      Top = 1
      Width = 658
      Height = 454
      Align = alClient
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '          '
        '          '
        '          '
        'kod ayar(){'
        '          '
        '          '
        '     }'
        'kod bas(){'
        '          '
        '          '
        '     }'
        'kod kesme1(){'
        '          '
        '          '
        '     }'
        'kod kesme2(){'
        '          '
        '          '
        '     }')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
      Zoom = 100
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 29
    Width = 845
    Height = 41
    Align = alTop
    Caption = 'Panel4'
    ShowCaption = False
    TabOrder = 3
    object Splitter1: TSplitter
      Left = 193
      Top = 1
      Width = 24
      Height = 39
      Color = 6455054
      ParentColor = False
    end
    object Splitter2: TSplitter
      Left = 313
      Top = 1
      Width = 24
      Height = 39
      Color = 6455054
      ParentColor = False
    end
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 48
      Height = 39
      Align = alLeft
      Caption = 'Button1'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 49
      Top = 1
      Width = 48
      Height = 39
      Action = FileOpen1
      Align = alLeft
      TabOrder = 1
    end
    object Button3: TButton
      Left = 97
      Top = 1
      Width = 48
      Height = 39
      Align = alLeft
      Caption = 'Button1'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 145
      Top = 1
      Width = 48
      Height = 39
      Action = FileSaveAs1
      Align = alLeft
      TabOrder = 3
    end
    object Button5: TButton
      Left = 217
      Top = 1
      Width = 48
      Height = 39
      Align = alLeft
      Caption = 'Button5'
      TabOrder = 4
    end
    object Button6: TButton
      Left = 265
      Top = 1
      Width = 48
      Height = 39
      Align = alLeft
      Caption = 'Button5'
      TabOrder = 5
    end
    object Button7: TButton
      Left = 385
      Top = 1
      Width = 48
      Height = 39
      Align = alLeft
      Caption = 'Button5'
      TabOrder = 6
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 337
      Top = 1
      Width = 48
      Height = 39
      Action = Derle
      Align = alLeft
      TabOrder = 7
      ExplicitLeft = 331
      ExplicitTop = 4
    end
  end
  object ListBox01: TListBox
    Left = 665
    Top = 76
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 4
  end
  object ListBox02: TListBox
    Left = 751
    Top = 76
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 5
  end
  object ListBox03: TListBox
    Left = 665
    Top = 151
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 6
  end
  object ListBox04: TListBox
    Left = 751
    Top = 151
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 7
  end
  object ListBox05: TListBox
    Left = 665
    Top = 226
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 8
  end
  object ListBox06: TListBox
    Left = 751
    Top = 226
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 9
  end
  object ListBox07: TListBox
    Left = 665
    Top = 301
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 10
  end
  object ListBox08: TListBox
    Left = 751
    Top = 301
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 11
  end
  object ListBox09: TListBox
    Left = 665
    Top = 376
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 12
  end
  object ListBox10: TListBox
    Left = 751
    Top = 376
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 13
  end
  object ListBox11: TListBox
    Left = 665
    Top = 451
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 14
  end
  object ListBox12: TListBox
    Left = 751
    Top = 451
    Width = 80
    Height = 69
    ItemHeight = 13
    TabOrder = 15
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = FileOpen1
                ImageIndex = 19
                ShortCut = 16463
              end
              item
                Action = FileOpenWith1
                Caption = 'O&pen with...'
              end
              item
                Action = FileSaveAs1
                ImageIndex = 20
              end
              item
                Action = FilePrintSetup1
              end
              item
                Action = FilePageSetup1
                Caption = 'Pa&ge Setup...'
              end
              item
                Action = FileRun1
              end
              item
                Action = FileExit1
                ImageIndex = 21
              end
              item
                Action = BrowseForFolder1
                Caption = '&BrowseForFolder1'
              end>
            Caption = '&Dosya'
          end
          item
            Items = <
              item
                Action = EditCut1
                ImageIndex = 14
                ShortCut = 16472
              end
              item
                Action = EditCopy1
                ImageIndex = 15
                ShortCut = 16451
              end
              item
                Action = EditPaste1
                ImageIndex = 16
                ShortCut = 16470
              end
              item
                Action = EditSelectAll1
                ShortCut = 16449
              end
              item
                Action = EditUndo1
                ImageIndex = 17
                ShortCut = 16474
              end
              item
                Action = EditDelete1
                ImageIndex = 18
                ShortCut = 46
              end>
            Caption = 'D'#252'&zenle'
          end
          item
            Items = <
              item
                Action = Action1
                Caption = '&Action1'
              end>
            Caption = '&Kitapl'#305'k'
          end
          item
            Items = <
              item
                Action = Derle
              end
              item
                Action = Yukle
              end
              item
                Action = KtplkEkle
              end
              item
                Action = SeriPort
              end>
            Caption = #304'&slem'
          end
          item
            Items = <
              item
                Items = <
                  item
                    Action = LedYakma
                  end
                  item
                    Action = pingiris
                  end
                  item
                    Action = Analog
                  end
                  item
                    Action = AltYordam
                  end
                  item
                    Action = INT012kesmesi
                  end
                  item
                    Action = PORTBDegisimkesmesi
                  end
                  item
                    Action = TIMER0kesmesi
                  end>
                Caption = '&Giri'#351' '#199#305'k'#305#351' '#304#351'lemleri'
                CommandStyle = csComboBox
                CommandProperties.Width = -1
              end
              item
                Items = <
                  item
                    Action = KursorGosterKapat
                  end
                  item
                    Action = KursorKonum
                  end
                  item
                    Action = YaziYazma
                  end
                  item
                    Action = DegiskenYazma
                  end
                  item
                    Action = GLCDyazi
                  end
                  item
                    Action = GLCDDegisken
                  end>
                Caption = '&LCD'
              end
              item
                Items = <
                  item
                    Action = SeriIletisim
                  end
                  item
                    Action = SPIiletisimyazilimsal
                  end
                  item
                    Action = SPIiletisimdonanimsal
                  end
                  item
                    Action = I2Ciletisim
                  end>
                Caption = '&'#304'letisim'
              end
              item
                Items = <
                  item
                    Action = Tusokuma
                  end
                  item
                    Action = Sayiyacevirme
                  end>
                Caption = '&Keypad'
              end
              item
                Items = <
                  item
                    Action = EgerEgerson
                  end
                  item
                    Action = ForNext
                  end
                  item
                    Action = SelectCase
                  end
                  item
                    Action = KaraSimsek
                  end>
                Caption = '&D'#246'ng'#252'ler'
              end
              item
                Items = <
                  item
                    Action = EpromaOkumaYazma
                  end>
                Caption = '&Eprom'
              end
              item
                Items = <
                  item
                    Action = DCmotorPWM
                  end
                  item
                    Action = ServoMotor
                  end
                  item
                    Action = StepMotor
                  end>
                Caption = '&Motor'
              end
              item
                Items = <
                  item
                    Action = SdKartBaglanti
                  end
                  item
                    Action = SdDosyaAcma
                  end
                  item
                    Action = SdDosyayaYazma
                  end
                  item
                    Action = SdDosyaOkuma
                  end>
                Caption = '&SD'
              end
              item
                Items = <
                  item
                    Action = TFTYazim
                  end
                  item
                    Action = TFTCizim
                  end>
                Caption = '&TFT'
              end
              item
                Items = <
                  item
                    Action = KlavyeTusOkuma
                  end
                  item
                    Action = KlavyeLCDkursor
                  end>
                Caption = 'Kl&avye'
              end
              item
                Items = <
                  item
                    Action = UyariSesi
                  end
                  item
                    Action = Muzik
                  end>
                Caption = 'Ses'
              end>
            Caption = #214'&rnekler'
          end
          item
            Items = <
              item
                Action = Pikyazkomutlari
              end
              item
                Action = Pikyazbilgileri
              end
              item
                Action = KitaplikOlusturma
              end
              item
                Action = PICUlak
              end>
            Caption = '&Yard'#305'm'
          end>
        ActionBar = ActionMainMenuBar1
      end
      item
        Items = <
          item
            Action = FileOpen1
            ImageIndex = 19
            ShortCut = 16463
          end
          item
            Action = FileSaveAs1
            ImageIndex = 20
          end>
      end>
    DisabledImages = SmallDisImgLst
    LargeDisabledImages = LargeDisImgLst
    LargeImages = LargeImgLst
    Images = SmallImgLst
    Left = 360
    Top = 232
    StyleName = 'Platform Default'
    object Action1: TAction
      Category = 'Kitaplik'
      Caption = 'Action1'
    end
    object ControlAction1: TControlAction
      Caption = 'ControlAction1'
    end
    object DatasetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
    end
    object DatasetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
    end
    object DatasetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
    end
    object DatasetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
    end
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
    object DatasetRefresh1: TDataSetRefresh
      Category = 'Dataset'
      Caption = '&Refresh'
      Hint = 'Refresh'
      ImageIndex = 9
    end
    object DatasetClientDataSetApply1: TClientDataSetApply
      Category = 'DataSnap Client'
      Caption = 'Apply Updates'
      ImageIndex = 10
      DisplayErrorDlg = False
    end
    object DatasetClientDataSetRevert1: TClientDataSetRevert
      Category = 'DataSnap Client'
      Caption = 'Revert'
      ImageIndex = 11
    end
    object DatasetClientDataSetUndo1: TClientDataSetUndo
      Category = 'DataSnap Client'
      Caption = 'Undo'
      ImageIndex = 12
      FollowChange = False
    end
    object DialogOpenPicture1: TOpenPicture
      Category = 'Dialog'
      Caption = '&Open Picture...'
      Hint = 'Open Picture'
      ShortCut = 16463
    end
    object DialogSavePicture1: TSavePicture
      Category = 'Dialog'
      Caption = '&Save Picture...'
      Hint = 'Save Picture'
      ShortCut = 16467
    end
    object DialogColorSelect1: TColorSelect
      Category = 'Dialog'
      Caption = 'Select &Color...'
      Hint = 'Color Select'
    end
    object DialogFontEdit1: TFontEdit
      Category = 'Dialog'
      Caption = 'Select &Font...'
      Dialog.Font.Charset = DEFAULT_CHARSET
      Dialog.Font.Color = clWindowText
      Dialog.Font.Height = -11
      Dialog.Font.Name = 'Tahoma'
      Dialog.Font.Style = []
      Hint = 'Font Select'
    end
    object DialogPrintDlg1: TPrintDlg
      Category = 'Dialog'
      Caption = '&Print...'
      ImageIndex = 13
      ShortCut = 16464
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 14
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 15
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 16
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 17
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 18
      ShortCut = 46
    end
    object FileOpen1: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Hint = 'Open|Opens an existing file'
      ImageIndex = 19
      ShortCut = 16463
      BeforeExecute = FileOpen1BeforeExecute
    end
    object FileOpenWith1: TFileOpenWith
      Category = 'File'
      Caption = 'Open with...'
      FileName = ''
    end
    object FileSaveAs1: TFileSaveAs
      Category = 'File'
      Caption = 'Save &As...'
      Hint = 'Save As|Saves the active file with a new name'
      ImageIndex = 20
    end
    object FilePrintSetup1: TFilePrintSetup
      Category = 'File'
      Caption = 'Print Set&up...'
      Hint = 'Print Setup'
    end
    object FilePageSetup1: TFilePageSetup
      Category = 'File'
      Caption = 'Page Set&up...'
      Dialog.MinMarginLeft = 0
      Dialog.MinMarginTop = 0
      Dialog.MinMarginRight = 0
      Dialog.MinMarginBottom = 0
      Dialog.MarginLeft = 2500
      Dialog.MarginTop = 2500
      Dialog.MarginRight = 2500
      Dialog.MarginBottom = 2500
      Dialog.PageWidth = 21000
      Dialog.PageHeight = 29700
    end
    object FileRun1: TFileRun
      Category = 'File'
      Browse = False
      BrowseDlg.Title = 'Run'
      Caption = '&Run...'
      Hint = 'Run|Runs an application'
      Operation = 'open'
      ShowCmd = scShowNormal
    end
    object FileExit1: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 21
    end
    object BrowseForFolder1: TBrowseForFolder
      Category = 'File'
      Caption = 'BrowseForFolder1'
      DialogCaption = 'BrowseForFolder1'
      BrowseOptions = []
    end
    object FormatRichEditBold1: TRichEditBold
      Category = 'Format'
      AutoCheck = True
      Caption = '&Bold'
      Hint = 'Bold'
      ImageIndex = 22
      ShortCut = 16450
    end
    object FormatRichEditItalic1: TRichEditItalic
      Category = 'Format'
      AutoCheck = True
      Caption = '&Italic'
      Hint = 'Italic'
      ImageIndex = 23
      ShortCut = 16457
    end
    object FormatRichEditUnderline1: TRichEditUnderline
      Category = 'Format'
      AutoCheck = True
      Caption = '&Underline'
      Hint = 'Underline'
      ImageIndex = 24
      ShortCut = 16469
    end
    object FormatRichEditStrikeOut1: TRichEditStrikeOut
      Category = 'Format'
      AutoCheck = True
      Caption = '&Strikeout'
      Hint = 'Strikeout'
      ImageIndex = 25
    end
    object FormatRichEditBullets1: TRichEditBullets
      Category = 'Format'
      AutoCheck = True
      Caption = '&Bullets'
      Hint = 'Bullets|Inserts a bullet on the current line'
      ImageIndex = 26
    end
    object FormatRichEditAlignLeft1: TRichEditAlignLeft
      Category = 'Format'
      AutoCheck = True
      Caption = 'Align &Left'
      Hint = 'Align Left|Aligns text at the left indent'
      ImageIndex = 27
    end
    object FormatRichEditAlignRight1: TRichEditAlignRight
      Category = 'Format'
      AutoCheck = True
      Caption = 'Align &Right'
      Hint = 'Align Right|Aligns text at the right indent'
      ImageIndex = 28
    end
    object FormatRichEditAlignCenter1: TRichEditAlignCenter
      Category = 'Format'
      AutoCheck = True
      Caption = '&Center'
      Hint = 'Center|Centers text between margins'
      ImageIndex = 29
    end
    object HelpContents1: THelpContents
      Category = 'Help'
      Caption = '&Contents'
      Enabled = False
      Hint = 'Help Contents'
      ImageIndex = 30
    end
    object HelpTopicSearch1: THelpTopicSearch
      Category = 'Help'
      Caption = '&Topic Search'
      Enabled = False
      Hint = 'Topic Search'
      ImageIndex = 31
    end
    object HelpOnHelp1: THelpOnHelp
      Category = 'Help'
      Caption = '&Help on Help'
      Enabled = False
      Hint = 'Help on help'
    end
    object HelpContextAction1: THelpContextAction
      Category = 'Help'
      Caption = 'HelpContextAction1'
      Enabled = False
      ImageIndex = 32
    end
    object InternetBrowseURL1: TBrowseURL
      Category = 'Internet'
      Caption = '&Browse URL'
      Hint = 'Browse URL'
    end
    object InternetDownLoadURL1: TDownLoadURL
      Category = 'Internet'
      Caption = '&Download URL'
      Hint = 'Download from URL'
    end
    object InternetSendMail1: TSendMail
      Category = 'Internet'
      Caption = '&Send Mail...'
      Hint = 'Send email'
    end
    object ListControlCopySelection1: TListControlCopySelection
      Category = 'List'
      Caption = '&Copy Selection'
      Hint = 'Copy Selection'
    end
    object ListControlDeleteSelection1: TListControlDeleteSelection
      Category = 'List'
      Caption = '&Delete Selection'
      Hint = 'Delete Selection'
    end
    object ListControlSelectAll1: TListControlSelectAll
      Category = 'List'
      Caption = '&Select All'
      Hint = 'Select All'
    end
    object ListControlClearSelection1: TListControlClearSelection
      Category = 'List'
      Caption = 'Clear Selection'
      Hint = 'Clear Selection'
    end
    object ListControlMoveSelection1: TListControlMoveSelection
      Category = 'List'
      Caption = '&Move Selection'
      Hint = 'Move Selection'
    end
    object StaticListAction1: TStaticListAction
      Category = 'List'
      Caption = 'StaticListAction1'
      Items = <>
    end
    object VirtualListAction1: TVirtualListAction
      Category = 'List'
      Caption = 'VirtualListAction1'
    end
    object LiveBindingsBindNavigateFirst1: TBindNavigateFirst
      Category = 'LiveBindings'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 33
    end
    object LiveBindingsBindNavigatePrior1: TBindNavigatePrior
      Category = 'LiveBindings'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 34
    end
    object LiveBindingsBindNavigateNext1: TBindNavigateNext
      Category = 'LiveBindings'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 35
    end
    object LiveBindingsBindNavigateLast1: TBindNavigateLast
      Category = 'LiveBindings'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 36
    end
    object LiveBindingsBindNavigateInsert1: TBindNavigateInsert
      Category = 'LiveBindings'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 37
    end
    object LiveBindingsBindNavigateDelete1: TBindNavigateDelete
      Category = 'LiveBindings'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 38
    end
    object LiveBindingsBindNavigateEdit1: TBindNavigateEdit
      Category = 'LiveBindings'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 39
    end
    object LiveBindingsBindNavigatePost1: TBindNavigatePost
      Category = 'LiveBindings'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 40
    end
    object LiveBindingsBindNavigateCancel1: TBindNavigateCancel
      Category = 'LiveBindings'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 41
    end
    object LiveBindingsBindNavigateRefresh1: TBindNavigateRefresh
      Category = 'LiveBindings'
      Caption = '&Refresh'
      Hint = 'Refresh'
      ImageIndex = 42
    end
    object LiveBindingsBindNavigateApplyUpdates1: TBindNavigateApplyUpdates
      Category = 'LiveBindings'
      Caption = 'Apply Updates'
      Hint = 'Apply Updates'
      ImageIndex = 43
    end
    object LiveBindingsBindNavigateCancelUpdates1: TBindNavigateCancelUpdates
      Category = 'LiveBindings'
      Caption = 'Cancel Updates'
      Hint = 'Cancel Updates'
      ImageIndex = 44
    end
    object SearchFind1: TSearchFind
      Category = 'Search'
      Caption = '&Find...'
      Hint = 'Find|Finds the specified text'
      ImageIndex = 45
      ShortCut = 16454
    end
    object SearchFindNext1: TSearchFindNext
      Category = 'Search'
      Caption = 'Find &Next'
      Hint = 'Find Next|Repeats the last find'
      ImageIndex = 46
      ShortCut = 114
    end
    object SearchReplace1: TSearchReplace
      Category = 'Search'
      Caption = '&Replace'
      Hint = 'Replace|Replaces specific text with different text'
      ImageIndex = 47
    end
    object SearchFindFirst1: TSearchFindFirst
      Category = 'Search'
      Caption = 'F&ind First'
      Hint = 'Find First|Finds the first occurance of specified text'
    end
    object TabPreviousTab1: TPreviousTab
      Category = 'Tab'
      Caption = '&Previous'
      Enabled = False
      Hint = 'Previous|Go back to the previous tab'
    end
    object TabNextTab1: TNextTab
      Category = 'Tab'
      Caption = '&Next'
      Enabled = False
      Hint = 'Next|Go to the next tab'
    end
    object CustomizeActionBars1: TCustomizeActionBars
      Category = 'Tools'
      Caption = '&Customize...'
      CustomizeDlg.StayOnTop = False
    end
    object WindowClose1: TWindowClose
      Category = 'Window'
      Caption = 'C&lose'
      Enabled = False
      Hint = 'Close'
    end
    object WindowCascade1: TWindowCascade
      Category = 'Window'
      Caption = '&Cascade'
      Enabled = False
      Hint = 'Cascade'
      ImageIndex = 48
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Tile &Horizontally'
      Enabled = False
      Hint = 'Tile Horizontal'
      ImageIndex = 49
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Window'
      Caption = '&Tile Vertically'
      Enabled = False
      Hint = 'Tile Vertical'
      ImageIndex = 50
    end
    object WindowMinimizeAll1: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
      Enabled = False
      Hint = 'Minimize All'
    end
    object WindowArrange1: TWindowArrange
      Category = 'Window'
      Caption = '&Arrange'
      Enabled = False
    end
    object Derle: TAction
      Category = #304'slem'
      Caption = '&Derle'
      OnExecute = DerleExecute
    end
    object Yukle: TAction
      Category = #304'slem'
      Caption = '&Y'#252'kle'
    end
    object KtplkEkle: TAction
      Category = #304'slem'
      Caption = '&Kitapl'#305'k Ekleme'
    end
    object SeriPort: TAction
      Category = #304'slem'
      Caption = '&Seri Port'
    end
    object LedYakma: TAction
      Category = #214'rnekler'
      Caption = '&Led Yakma'
      OnExecute = LedYakmaExecute
    end
    object pingiris: TAction
      Category = #214'rnekler'
      Caption = '&pin giri'#351
      OnExecute = pingirisExecute
    end
    object Analog: TAction
      Category = #214'rnekler'
      Caption = '&Analog'
      OnExecute = AnalogExecute
    end
    object AltYordam: TAction
      Category = #214'rnekler'
      Caption = 'Al&t Yordam'
      OnExecute = AltYordamExecute
    end
    object INT012kesmesi: TAction
      Category = #214'rnekler'
      Caption = '&INT0/1/2 Kesmesi'
      OnExecute = INT012kesmesiExecute
    end
    object PORTBDegisimkesmesi: TAction
      Category = #214'rnekler'
      Caption = 'P&ORTB de'#287'i'#351'im kesmesi'
      OnExecute = PORTBDegisimkesmesiExecute
    end
    object TIMER0kesmesi: TAction
      Category = #214'rnekler'
      Caption = 'TI&MER0 Kesmesi'
      OnExecute = TIMER0kesmesiExecute
    end
    object KursorGosterKapat: TAction
      Category = #214'rnekler'
      Caption = '&Kursor G'#246'ster Kapat'
      OnExecute = KursorGosterKapatExecute
    end
    object KursorKonum: TAction
      Category = #214'rnekler'
      Caption = 'K&ursor Konum'
      OnExecute = KursorKonumExecute
    end
    object YaziYazma: TAction
      Category = #214'rnekler'
      Caption = '&Yaz'#305' Yazma'
      OnExecute = YaziYazmaExecute
    end
    object DegiskenYazma: TAction
      Category = #214'rnekler'
      Caption = '&De'#287'isken Yazma'
      OnExecute = DegiskenYazmaExecute
    end
    object GLCDyazi: TAction
      Category = #214'rnekler'
      Caption = '&GLCD yaz'#305
      OnExecute = GLCDyaziExecute
    end
    object GLCDDegisken: TAction
      Category = #214'rnekler'
      Caption = 'G&LCD De'#287'isken'
      OnExecute = GLCDDegiskenExecute
    end
    object SeriIletisim: TAction
      Category = #214'rnekler'
      Caption = '&Seri '#304'leti'#351'im'
      OnExecute = SeriIletisimExecute
    end
    object SPIiletisimyazilimsal: TAction
      Category = #214'rnekler'
      Caption = 'S&PI '#304'letisim (Yaz'#305'l'#305'msal)'
      OnExecute = SPIiletisimyazilimsalExecute
    end
    object SPIiletisimdonanimsal: TAction
      Category = #214'rnekler'
      Caption = 'SP&I '#304'leti'#351'im donan'#305'msal'
      OnExecute = SPIiletisimdonanimsalExecute
    end
    object I2Ciletisim: TAction
      Category = #214'rnekler'
      Caption = 'I&2C '#304'leti'#351'im'
      OnExecute = I2CiletisimExecute
    end
    object Tusokuma: TAction
      Category = #214'rnekler'
      Caption = '&Tus Okuma'
      OnExecute = TusokumaExecute
    end
    object Sayiyacevirme: TAction
      Category = #214'rnekler'
      Caption = '&Sayiya '#199'evirme'
      OnExecute = SayiyacevirmeExecute
    end
    object EgerEgerson: TAction
      Category = #214'rnekler'
      Caption = '&E'#287'er E'#287'erson'
      OnExecute = EgerEgersonExecute
    end
    object ForNext: TAction
      Category = #214'rnekler'
      Caption = '&For Next'
      OnExecute = ForNextExecute
    end
    object SelectCase: TAction
      Category = #214'rnekler'
      Caption = '&Select/Case'
      OnExecute = SelectCaseExecute
    end
    object KaraSimsek: TAction
      Category = #214'rnekler'
      Caption = '&Kara '#350'im'#351'ek'
      OnExecute = KaraSimsekExecute
    end
    object EpromaOkumaYazma: TAction
      Category = #214'rnekler'
      Caption = '&Eproma Okuma Yazma'
      OnExecute = EpromaOkumaYazmaExecute
    end
    object DCmotorPWM: TAction
      Category = #214'rnekler'
      Caption = '&DC Motor PWM'
      OnExecute = DCmotorPWMExecute
    end
    object ServoMotor: TAction
      Category = #214'rnekler'
      Caption = '&Servo Motor'
      OnExecute = ServoMotorExecute
    end
    object StepMotor: TAction
      Category = #214'rnekler'
      Caption = 'S&tep Motor'
      OnExecute = StepMotorExecute
    end
    object SdKartBaglanti: TAction
      Category = #214'rnekler'
      Caption = '&Sd Kart Ba'#287'lant'#305
      OnExecute = SdKartBaglantiExecute
    end
    object SdDosyaAcma: TAction
      Category = #214'rnekler'
      Caption = '&Dosya A'#231'ma'
      OnExecute = SdDosyaAcmaExecute
    end
    object SdDosyayaYazma: TAction
      Category = #214'rnekler'
      Caption = 'D&osyaya Yazma'
      OnExecute = SdDosyayaYazmaExecute
    end
    object SdDosyaOkuma: TAction
      Category = #214'rnekler'
      Caption = 'Dos&ya Okuma'
      OnExecute = SdDosyaOkumaExecute
    end
    object TFTYazim: TAction
      Category = #214'rnekler'
      Caption = '&Yaz'#305'm'
      OnExecute = TFTYazimExecute
    end
    object TFTCizim: TAction
      Category = #214'rnekler'
      Caption = '&'#199'izim'
      OnExecute = TFTCizimExecute
    end
    object KlavyeTusOkuma: TAction
      Category = #214'rnekler'
      Caption = '&Tu'#351' Okuma'
      OnExecute = KlavyeTusOkumaExecute
    end
    object KlavyeLCDkursor: TAction
      Category = #214'rnekler'
      Caption = '&Klavye LCD kursor'
      OnExecute = KlavyeLCDkursorExecute
    end
    object UyariSesi: TAction
      Category = #214'rnekler'
      Caption = '&Uyar'#305' Sesi'
      OnExecute = UyariSesiExecute
    end
    object Muzik: TAction
      Category = #214'rnekler'
      Caption = '&M'#252'zik'
      OnExecute = MuzikExecute
    end
    object Pikyazkomutlari: TAction
      Category = 'Yard'#305'm'
      Caption = '&Pikyaz Komutlar'#305
    end
    object Pikyazbilgileri: TAction
      Category = 'Yard'#305'm'
      Caption = 'P&ikyaz Bilgileri'
    end
    object KitaplikOlusturma: TAction
      Category = 'Yard'#305'm'
      Caption = '&Kitapl'#305'k Olu'#351'turma'
    end
    object PICUlak: TAction
      Category = 'Yard'#305'm'
      Caption = 'PI&C|Ulak'
    end
  end
  object SmallImgLst: TImageList
    Left = 512
    Top = 168
    Bitmap = {
      494C010133003800540010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000D0000000010020000000000000D0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FFFFFF00FFFFFF0080000000800000008000000080000000800000008000
      00008000000080000000FFFFFF00800000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FFFFFF00FFFFFF0080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000FFFFFF008000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF008000
      000080000000800000008000000080000000800000008000000080000000FFFF
      FF00800000000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000FFFFFF008000000000000000000000000000000080000000800000008000
      00008000000080000000FFFFFF00800000008000000080000000800000008000
      0000FFFFFF008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      00008000000080000000800000008000000080000000FFFFFF00800000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D7D700CCCCCC00000000000000000000000000CCCCCC00CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006666CC000033CC009999CC0000000000C0C0C0003333CC006666
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006699CC000033CC003333CC009999CC003333CC000033CC006666
      CC000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009999CC000033CC000000CC000033CC006699CC000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC660000CC66
      00000000000000000000C0C0C0000033CC000000CC000033CC009999CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC660000CC66
      00000000000099CCCC003333CC000033CC003366CC000033CC003333CC009999
      CC00000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006666CC000000CC006666CC00D7D7D7009999CC000000CC003333
      CC00000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000C0C0C0000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000086868600000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000000000000000000000000000CC660000CC66
      000000000000CCCCCC009999CC00DDDDDD0000000000DDDDDD009999CC00C0C0
      C000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000C0C0C0000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000CC660000CC66
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000000000000000000000000000CC66330099660000996600009966
      000099660000CC66330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000C0C0C00000000000000000000000
      00000000000000000000000000000000000000000000FF660000FFCC6600FF99
      330099660000D7D7D70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF660000FF66
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DDDDDD00DDDDDD00DDDDDD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDDDDD00DDDDDD00DDDDDD000000000000000000DDDDDD00DDDDDD00DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      000000000000DDDDDD00CCCC9900C0C0C000DDDDDD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B2B2003366330099CC9900DDDDDD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDDDDD00DDDDDD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDDD
      DD00CCCCCC00D7D7D700D7D7D700DDDDDD00DDDDDD00CCCCCC00D7D7D700DDDD
      DD00DDDDDD000000000000000000000000000000000000000000000000000000
      0000CCCCCC00CC993300CC996600DDDDDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066993300336600003366000066996600CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDDDDD00D7D7D700D7D7D700DDDDDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      CC000033CC009999CC00D7D7D700D7D7D7009999CC000033CC009999CC00D7D7
      D700DDDDDD00000000000000000000000000000000000000000000000000D7D7
      D700CC993300CC993300D7D7D700DDDDDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099CC99003366000066996600999966003366000066993300C0C0
      C00000000000000000000000000000000000000000000000000000000000DDDD
      DD006699330099996600CCCCCC00D7D7D700DDDDDD00DDDDDD00000000000000
      0000000000000000000000000000000000000000000000000000000000006666
      CC000000CC000033CC009999CC009999CC000033CC000000CC006666CC00DDDD
      DD0000000000000000000000000000000000000000000000000000000000CC99
      3300CC660000C0C0C000DDDDDD0000000000DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD000000000000000000000000000000000000000000CC66
      0000CC660000B2B2B20099CC9900CCCCCC00DDDDDD0066996600336600003399
      3300B2B2B20000000000000000000000000000000000000000000000000099CC
      9900336600003366000066996600CCCCCC00D7D7D700D7D7D700DDDDDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006666CC000000CC000033CC000033CC000000CC006666CC00DDDDDD000000
      0000000000000000000000000000000000000000000000000000CCCCCC00CC66
      0000CC993300D7D7D700DDDDDD0000000000DDDDDD00D7D7D700D7D7D700CCCC
      CC00CCCCCC00D7D7D7000000000000000000000000000000000000000000CC66
      0000CC66000000000000000000000000000000000000D7D7D700669966003366
      00003366330099CC990000000000000000000000000000000000DDDDDD003366
      000033660000669933003366000033993300C0C0C000CCCCCC00D7D7D700DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000DDDDDD003333CC000000CC000000CC003333CC00D7D7D700D7D7D700DDDD
      DD00000000000000000000000000000000000000000000000000CCCC9900CC66
      0000CC996600D7D7D700DDDDDD0000000000CC660000CC660000CC660000CC66
      0000CC660000CCCCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D7D7006699
      66003366000033993300000000000000000000000000FF33FF00999966003399
      330066996600DDDDDD0066993300336600003366330099999900CCCCCC00D7D7
      D700DDDDDD000000000000000000000000000000000000000000000000000000
      00009999CC000033CC000000CC000000CC000033CC009999CC00D7D7D700DDDD
      DD00000000000000000000000000000000000000000000000000CC996600CC66
      0000CC993300CCCCCC00D7D7D700DDDDDD00DDDDDD00CC996600CC660000CC66
      0000CC660000CCCCCC000000000000000000000000000000000000000000CC66
      0000CC660000000000000000000000000000000000000000000000000000D7D7
      D70099CC9900C0C0C00000000000000000000000000000000000000000000000
      00000000000000000000DDDDDD0066993300336600003366000096969600CCCC
      CC00D7D7D700DDDDDD0000000000000000000000000000000000000000009999
      CC000033CC000000CC006666CC006666CC000000CC000033CC009999CC00D7D7
      D700DDDDDD000000000000000000000000000000000000000000CCCC9900CC66
      0000CC660000C0C0C000CCCCCC00D7D7D700C0C0C000CC993300CC660000CC66
      0000CC660000CCCCCC000000000000000000000000000000000000000000CC66
      0000CC6600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DDDDDD006699330033660000336600006699
      6600D7D7D700DDDDDD0000000000000000000000000000000000000000006666
      CC000000CC006666CC00DDDDDD00000000006666CC000000CC006666CC00DDDD
      DD00000000000000000000000000000000000000000000000000DDDDDD00CC66
      3300CC660000CC663300CC996600CC993300CC660000CC660000CC660000CC99
      3300CC660000D7D7D70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066993300336600003399
      3300CCCCCC00DDDDDD000000000000000000000000000000000000000000DDDD
      DD009999CC00000000000000000000000000000000009999CC00DDDDDD000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC00CC993300CC660000CC660000CC660000CC660000CC660000CCCC9900DDDD
      DD00CC660000DDDDDD00000000000000000000000000CC663300996600009966
      00009966000099660000CC663300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDDDD0099996600D7D7
      D700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCC9900CC996600CC996600CCCC9900D7D7D700000000000000
      0000DDDDDD000000000000000000000000000000000000000000FF660000FFCC
      6600FF99330099660000D7D7D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF66
      0000FF6600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDDDDD00D7D7D700CCCCCC00D7D7D700DDDDDD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC66
      3300D7D7D7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D7D700C0C0C000B2B2B200C0C0C000D7D7D700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      0000CC660000CC996600D7D7D700000000000000000000000000000000000000
      0000FF9933009966000000000000000000000000000000000000000000000000
      0000000000000033CC003366FF000033CC00B2B2B200CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009966
      0000CC660000CC660000CC660000CC996600D7D7D70000000000000000000000
      0000FF9933009966000000000000000000000000000000000000DDDDDD00D7D7
      D700CCCCCC000033CC003366FF000033CC00B2B2B200C0C0C000CCCCCC00D7D7
      D700DDDDDD000000000000000000000000000000000000000000DDDDDD00D7D7
      D700CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00D7D7
      D700DDDDDD000000000000000000000000000000000000000000DDDDDD00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000B2B2B200B2B2
      B200C0C0C0000000000000000000000000000000000000000000000000009966
      0000CC660000CC660000CC660000CC660000CC660000CC996600D7D7D7000000
      0000FF9933009966000000000000000000000000000000000000D7D7D700C0C0
      C000B2B2B2000033CC003366FF000033CC00A4A0A000B2B2B200B2B2B200C0C0
      C000D7D7D7000000000000000000000000000000000000000000D7D7D700C0C0
      C000B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200C0C0
      C000D7D7D70000000000000000000000000000000000D7D7D700808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000C0C0C0000000000000000000000000000000000000000000000000009966
      0000FF660000FF990000FF990000FF660000CC660000CC660000CC660000C0C0
      C000FF99330099660000000000000000000000000000000000000033CC000033
      CC000033CC000033CC003366FF000033CC000033CC000033CC000033CC00B2B2
      B200CCCCCC0000000000000000000000000000000000000000000033CC000033
      CC000033CC000033CC000033CC000033CC000033CC000033CC000033CC00B2B2
      B200CCCCCC000000000000000000000000000000000000000000CCCC99008080
      0000CC990000CC990000CC990000CC990000CC990000CC99000080800000CCCC
      9900DDDDDD000000000000000000000000000000000000000000000000009966
      0000FF993300FFCC9900FFCC6600FF993300CC660000CC663300C0C0C0000000
      0000FF99330099660000000000000000000000000000000000003366FF003366
      FF003366FF003366FF003366FF003366FF003366FF003366FF003366FF00C0C0
      C000D7D7D70000000000000000000000000000000000000000003366FF003366
      FF003366FF003366FF003366FF003366FF003366FF003366FF003366FF00C0C0
      C000D7D7D700000000000000000000000000000000000000000000000000CCCC
      990080800000FFCC0000FFCC3300FFCC0000CC99000080800000CCCC9900DDDD
      DD00000000000000000000000000000000000000000000000000000000009966
      0000FFCC6600FFCC6600FF660000CC663300CCCC990000000000000000000000
      0000FF99330099660000000000000000000000000000000000000033CC000033
      CC000033CC000033CC003366FF000033CC000033CC000033CC000033CC00D7D7
      D700DDDDDD0000000000000000000000000000000000000000000033CC000033
      CC000033CC000033CC000033CC000033CC000033CC000033CC000033CC00D7D7
      D700DDDDDD000000000000000000000000000000000000000000000000000000
      0000CCCC990080800000FFCC3300FFCC000080800000CCCC9900DDDDDD000000
      0000000000000000000000000000000000000000000000000000000000009966
      0000FF660000CC663300CCCC9900000000000000000000000000000000000000
      0000FF9933009966000000000000000000000000000000000000000000000000
      0000000000000033CC003366FF000033CC00B2B2B200CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCC99008080000080800000CCCC9900DDDDDD00000000000000
      000000000000000000000000000000000000000000000000000000000000CC66
      3300CCCC99000000000000000000000000000000000000000000000000000000
      0000FF9933009966000000000000000000000000000000000000000000000000
      0000000000000033CC003366FF000033CC00C0C0C000D7D7D700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCC9900CCCC99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000033CC003366FF000033CC00D7D7D700DDDDDD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7D7
      D700CC6633000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D7D700CC66
      330000000000000000000000000000000000000000000000000000000000CC66
      3300D7D7D7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      000080000000000000000000000000000000000000000000000099660000FF99
      33000000000000000000000000000000000000000000D7D7D700CC996600CC66
      0000996600000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7D7D700CC996600CC6600009966
      0000000000000000000000000000000000000000000000000000000000009966
      0000CC660000CC996600D7D7D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099660000FF99
      3300000000000000000000000000D7D7D700CC996600CC660000CC660000CC66
      0000996600000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D700CC996600CC660000CC660000CC6600009966
      0000000000000000000000000000000000000000000000000000000000009966
      0000CC660000CC660000CC660000CC996600D7D7D70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      000080000000000000000000000000000000000000000000000099660000FF99
      330000000000D7D7D700CC996600CC660000CC660000CC660000CC660000CC66
      0000996600000000000000000000000000000000000000000000000000000000
      0000D7D7D700CC996600CC660000CC660000CC660000CC660000CC6600009966
      0000000000000000000000000000000000000000000000000000000000009966
      0000CC660000CC660000CC660000CC660000CC660000CC996600D7D7D7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      000080000000000000000000000000000000000000000000000099660000FF99
      3300C0C0C000CC660000CC660000CC660000FF660000FF990000FF990000FF66
      000099660000000000000000000000000000000000000000000000000000C0C0
      C000CC660000CC660000CC660000FF660000FF990000FF990000FF6600009966
      0000000000000000000000000000000000000000000000000000000000009966
      0000FF660000FF990000FF990000FF660000CC660000CC660000CC660000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      000080000000800000000000000000000000000000000000000099660000FF99
      330000000000C0C0C000CC663300CC660000FF993300FFCC6600FF996600FF99
      3300996600000000000000000000000000000000000000000000000000000000
      0000C0C0C000CC663300CC660000FF993300FFCC6600FFCC9900FF9933009966
      0000000000000000000000000000000000000000000000000000000000009966
      0000FF993300FFCC9900FFCC6600FF993300CC660000CC663300C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000800000008000000000000000000000000000000099660000FF99
      3300000000000000000000000000CCCC9900CC663300FF660000FFCC6600FFCC
      6600996600000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCC9900CC663300FF660000FFCC6600FFCC66009966
      0000000000000000000000000000000000000000000000000000000000009966
      0000FFCC6600FFCC6600FF660000CC663300CCCC990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000000000000000
      000000000000800000008000000080000000000000000000000099660000FF99
      33000000000000000000000000000000000000000000CCCC9900CC663300FF66
      0000996600000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCC9900CC663300FF6600009966
      0000000000000000000000000000000000000000000000000000000000009966
      0000FF660000CC663300CCCC9900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000000000000000
      000000000000800000008000000080000000000000000000000099660000FF99
      330000000000000000000000000000000000000000000000000000000000CCCC
      9900CC6633000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCC9900CC66
      330000000000000000000000000000000000000000000000000000000000CC66
      3300CCCC99000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000000000000000
      0000000000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080008000800086868600000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000800080008000FFFFFF00FFFFFF00C0C0C000868686000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      800080008000FFFFFF00FFFFFF000000000000000000C0C0C000C0C0C0008686
      86000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008686860000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000868686008000800080008000FFFF
      FF00FFFFFF000000000000000000800080008000800000000000C0C0C000C0C0
      C0008686860000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000868686000000000000000000FFFF00008686
      8600868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860080008000FFFFFF000000
      000000000000800080008000800080008000800080008000800000000000C0C0
      C000C0C0C00086868600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860000000000000000008000
      800080008000800080000080800000FFFF008000800080008000800080000000
      0000C0C0C000C0C0C000868686000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFF000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860080008000800080008000
      8000800080008000800080008000008080008000800080008000800080008000
      800000000000C0C0C000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000086868600FFFF0000FFFF0000000000008686
      8600868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080008000FFFFFF008000
      80008000800080008000800080008000800000FFFF0000FFFF00800080008000
      80008000800000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008686860000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080008000FFFF
      FF0080008000800080008000800080008000800080000080800000FFFF0000FF
      FF008000800080008000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      8000FFFFFF00800080008000800080008000008080008000800000FFFF0000FF
      FF008000800080008000800080000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080008000FFFFFF00800080008000800000FFFF0000FFFF0000FFFF008000
      80008000800080008000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080008000FFFFFF00800080008000800080008000800080008000
      80000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080008000FFFFFF008000800080008000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860086868600868686008686
      8600868686008686860086868600868686008686860086868600FFFFFF00C0C0
      C00086868600C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860086868600868686008686
      860086868600868686008686860086868600868686008686860086868600FFFF
      FF0086868600FFFFFF0086868600868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      00000000000000000000868686008686860086868600FFFFFF00FFFFFF00FFFF
      FF00800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000000000000000000086868600FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000008080000000000000000000000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000000000080
      8000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600008080008686
      8600008080008686860080000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000000
      0000000000000000000000000000000000000000000000808000868686000080
      8000868686000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000086868600008080008686
      8600008080008686860080000000FFFFFF00000000000000000000000000FFFF
      FF00800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000008080000000000000000000000000000000000000808000868686000080
      8000868686000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000000000000663300006633
      0000663300006633000066330000000000000000000000000000000000000000
      0000000000006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000080800000808000008080000080800000808000008080000080
      8000008080000080800000000000000000000000000086868600008080008686
      8600008080008686860080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000008000000000000000000000000000000000000000996600006666
      0000666600009966000000000000000000000000000000000000000000000000
      0000000000006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000868686000080
      8000868686000080800080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000996600006666
      000099660000CC99660000000000000000000000000000000000000000000000
      0000000000006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000086868600008080008686
      8600008080008686860000808000868686000080800086868600008080008686
      8600008080000000000000000000000000000000000000000000996600009966
      0000CC99660066660000CC996600000000000000000000000000000000000000
      0000CC9966006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000808000868686000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600868686000000000000000000000000000000000000000000996600000000
      000000000000CC9966006666000066660000CC9966000000000000000000CC99
      660066660000CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600868686000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC9966006666000066660000666600006666
      0000CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000868686000080
      80000000000000FFFF00000000000000000000FFFF0000000000868686000080
      8000868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000800000000000000000000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000800000000000000000000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000FFFF0000FFFF0000FFFF00C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000868686008686860086868600C0C0C000C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000008000000080000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C00000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF000000000000000000FFFF
      FF00800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C00000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600868686008686860086868600868686008686
      8600868686000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000868686008686
      8600868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000000000000000000000000
      0000868686008686860086868600868686000000000086868600868686000000
      0000868686008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000868686000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000868686000000000086868600FFFFFF00FFFF
      FF00000000008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000008686860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000868686000000000000000000000000000000000000000000868686000000
      0000FFFFFF00000000000000000086868600000000008686860000000000FFFF
      FF00868686008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000086868600000000000000000000000000000000008686860000000000FFFF
      FF00000000008686860086868600000000000000000000000000868686008686
      8600868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000868686000000000000000000000000008686860086868600FFFFFF000000
      0000868686008686860086868600000000000000000000000000000000000000
      0000868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600000000008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000868686000000000000000000000000000000000000000000FFFFFF008686
      8600868686008686860000000000000000000000000000000000868686008686
      8600000000008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868600FFFFFF00000000000000
      0000868686000000000000000000000000000000000086868600868686000000
      0000868686000000000086868600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868600FFFFFF00000000008686
      8600868686000000000000000000000000008686860086868600000000000000
      0000000000008686860000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000008686
      86008686860000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000086868600868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600000000000000000086868600000000008686860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860000000000FFFFFF008686
      8600000000008686860000000000000000000000000000000000868686000000
      0000868686008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000868686000000000000000000FFFF
      FF0086868600000000008686860000000000000000000000000000000000FFFF
      FF00868686008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000868686008686860000000000FFFF
      FF00FFFFFF008686860000000000000000008686860000000000FFFFFF008686
      8600868686008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600868686000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00868686008686
      8600868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000868686008686
      8600000000000000000000000000000000000000000000000000868686008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600808000008686860086868600868686008686860086868600868686000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000868686000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000868686008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000868686000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000D00000000100010000000000800600000000000000000000
      000000000000000000000000FFFFFF00FC00FFFFFFFF0000FC00800380030000
      FC00800380030000FC00800380030000E000800380030000E000800380030000
      E000800380030000E00780038003000080078003800300008007800380030000
      8007800380030000801F800380030000801F800380030000801F800380030000
      801FFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFB6E7F9CFFFFFFE49B76B
      F88F07C1FE498427F80F07C1FFFFB76BFC1F07C1FFFFCEE7CC1F0101C7C7FFFF
      C80F0001C7C7C7C7F80F0001C387C7C7C88F0001C007C387CFFF8003C007C007
      FFFFC107C007C00703FFC107C007C00783FFE38FC007C007CFFFE38FF39FC007
      FFFFE38FF39FF39FFFFFFFFFF39FF39FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFF
      FFFFF18FF87FFC3FF9FFE007F0FFFC1FF0FFE007E0FFF80FE03FE00FE103E007
      E01FF01FC103E783C00FF00FC103FFC38007F00FC003E7E3FC03E007C003E7FF
      FE03E10FC003FFFFFF83E79FE00381FFFF8FFFFFF837C1FFFFFFFFFFFFFFE7FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF83FFFFFFFFFE7FFF83FFFFFFFFFE1F3F83FFFFFFFFFE073C007C007C007
      E013C007C0078007E003C007C007C007E013C007C007E00FE073C007C007F01F
      E1F3F83FFFFFF83FE7F3F83FFFFFFCFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFF
      F9FFFFFFFFFFFFFFF3C7FFE7FFCFE7FF73C7CF87FF0FE1FF27FFCE07FC0FE07F
      07C7C807F00FE01F00C7C007E00FE00F01E3C807F00FE01F03F1CE07FC0FE07F
      0638CF87FF0FE1FF0E38CFE7FFCFE7FF1E38FFFFFFFFFFFF3F01FFFFFFFFFFFF
      7F83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F000C
      FFFFFFFFF81F0008C007C007E00F0001FFFFFFFF80070063F807F83F000300C3
      FFFFFFFF000101EBC007C0070000016BFFFFFFFF00010023F807F01F80010067
      FFFFFFFFC001000FC007C007E000000FFFFFFFFFF000000FF807F83FF803005F
      FFFFFFFFFC0F003FFFFFFFFFFE3F007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E00FFFFF8FFFFFFFFFFFFFFF8C03C007F83F10388FFFFFFFF39FBAD7FFFFC03F
      F39F0000FFFFFFFFF39FD6378FFFC007F39FC6D78C03FFFFF39FEED68FFFC03F
      F39FEC38FFFFFFFFF39FFFFFFFFFC007E10FFFFF8FFFFFFFFFFFFFFF8C03C03F
      FFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFF7E0000FFFFFFFFBFFF0000FFFFFFFF
      F0030000FFFFFFFFE003E007FFFFFFFFE003E007F00F81FFE003E007F8C7E3FF
      E003E007F8C7F1FF2003E007F8C7F8FFE002E007F80FFC7FE003E007F8C7FE3F
      E003E007F8C7FF1FE003FFFFF8C7FF8FE003F81FF00FFF03FFFFF81FFFFFFFFF
      BF7DF81FFFFFFFFF7F7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFFFFFFFFFF
      8000FFFFEFFD001F0000FFFFC7FF000F0000FFFFC3FB00070000FFFFE3F70003
      0001C1FBF1E700010003C3FBF8CF00000003C3FBFC1F001F0003C1F3FE3F001F
      0003D863FC1F001F0FC3FE07F8CF8FF10003FFFFE1E7FFF98007FFFFC3F3FF75
      F87FFFFFC7FDFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC007F9FFFFFF
      FFFF8003F6CFFE00FFFF0001F6B7FE00FFFF0001F6B7FE00FFF70001F8B78000
      C1F70000FE8F8000C3FB0000FE3F8000C7FB8000FF7F8000CBFBC000FE3F8001
      DCF7E001FEBF8003FF0FE007FC9F8007FFFFF007FDDF807FFFFFF003FDDF80FF
      FFFFF803FDDF81FFFFFFFFFFFFFFFFFFFFFFFFFFFC07F9C7FFFFFFFFF807E093
      FFFFFFFFF807CE8BFFFFFC7FF80794A3F3E7F0FFF807A9C7F1C7F1FFF80711E7
      F88FE3FFF80743C3FC1FE7FFF80F2791FE3FE707FF7F2738FC1FE387FE3F261C
      F88FE107FC1F4393F1C7F007FFFF6123F3E7F837FEFF2043FFFFFFFFFFFF9B87
      FFFFFFFFFDFFCFCFFFFFFFFF6FFFE01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFBFFFC7FFFFFFFFFF1FF
      FC7FFFFFE007E0FFE00FE007F00FC47FE00FE007F81FCE3FE00FE007FC3FFF1F
      FC7FFFFFFE7FFF8FFC7FFFFFFFFFFFC7FC7FFFFFFFFFFFE7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7FF9FF9FFE7E7
      E787FE1FF87FE1E7E607F81FF81FE067E007F01FF80FE007E607F81FF81FE067
      E787FE1FF87FE1E7E7E7FF9FF9FFE7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object SmallDisImgLst: TImageList
    Left = 512
    Top = 216
  end
  object LargeImgLst: TImageList
    Left = 512
    Top = 280
  end
  object LargeDisImgLst: TImageList
    Left = 512
    Top = 336
  end
end
