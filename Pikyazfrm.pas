unit Pikyazfrm;
{ TODO -oOwner -cCategory :
  k�t�phane dosyalar� d�zeltilecek
  skpnz  btfsc  STATUS,Z
  skpnc  btfsc STATUS,C
  skpc   btfss STATUS,C
  skpz   btfss STATUS,Z
  clrc   bcf STATUS,C
}
{ TODO -oOwner -cCategory : setup ta mpasm yola eklenmeli }
{ TODO -oEy�p -cCategory : listbox lar� i�in bitince Tstringlistlerle de�i�tir }
{ TODO -o  Ey�p -cCategory : runtime kitapl�k �rnek ekleme }

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin,
  Vcl.ActnCtrls, Vcl.ActnMan, Vcl.ActnMenus, Vcl.PlatformDefaultStyleActnCtrls, System.Actions,
  Vcl.ActnList, Vcl.StdActns, Vcl.BandActn, Vcl.ExtActns, Vcl.Bind.Navigator, Vcl.ListActns,
  Vcl.DBClientActns, Vcl.DBActns, Vcl.ImgList, pUsak, Winapi.ShellAPI, System.IOUtils,
  System.StrUtils;

type
  TForm1 = class(TForm)
    CoolBar1: TCoolBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RichEdit1: TRichEdit;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    SmallImgLst: TImageList;
    SmallDisImgLst: TImageList;
    LargeImgLst: TImageList;
    LargeDisImgLst: TImageList;
    Action1: TAction;
    ControlAction1: TControlAction;
    DatasetFirst1: TDataSetFirst;
    DatasetPrior1: TDataSetPrior;
    DatasetNext1: TDataSetNext;
    DatasetLast1: TDataSetLast;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    DatasetRefresh1: TDataSetRefresh;
    DatasetClientDataSetApply1: TClientDataSetApply;
    DatasetClientDataSetRevert1: TClientDataSetRevert;
    DatasetClientDataSetUndo1: TClientDataSetUndo;
    DialogOpenPicture1: TOpenPicture;
    DialogSavePicture1: TSavePicture;
    DialogColorSelect1: TColorSelect;
    DialogFontEdit1: TFontEdit;
    DialogPrintDlg1: TPrintDlg;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    FileOpen1: TFileOpen;
    FileOpenWith1: TFileOpenWith;
    FileSaveAs1: TFileSaveAs;
    FilePrintSetup1: TFilePrintSetup;
    FilePageSetup1: TFilePageSetup;
    FileRun1: TFileRun;
    FileExit1: TFileExit;
    BrowseForFolder1: TBrowseForFolder;
    FormatRichEditBold1: TRichEditBold;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    FormatRichEditStrikeOut1: TRichEditStrikeOut;
    FormatRichEditBullets1: TRichEditBullets;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    HelpContents1: THelpContents;
    HelpTopicSearch1: THelpTopicSearch;
    HelpOnHelp1: THelpOnHelp;
    HelpContextAction1: THelpContextAction;
    InternetBrowseURL1: TBrowseURL;
    InternetDownLoadURL1: TDownLoadURL;
    InternetSendMail1: TSendMail;
    ListControlCopySelection1: TListControlCopySelection;
    ListControlDeleteSelection1: TListControlDeleteSelection;
    ListControlSelectAll1: TListControlSelectAll;
    ListControlClearSelection1: TListControlClearSelection;
    ListControlMoveSelection1: TListControlMoveSelection;
    StaticListAction1: TStaticListAction;
    VirtualListAction1: TVirtualListAction;
    LiveBindingsBindNavigateFirst1: TBindNavigateFirst;
    LiveBindingsBindNavigatePrior1: TBindNavigatePrior;
    LiveBindingsBindNavigateNext1: TBindNavigateNext;
    LiveBindingsBindNavigateLast1: TBindNavigateLast;
    LiveBindingsBindNavigateInsert1: TBindNavigateInsert;
    LiveBindingsBindNavigateDelete1: TBindNavigateDelete;
    LiveBindingsBindNavigateEdit1: TBindNavigateEdit;
    LiveBindingsBindNavigatePost1: TBindNavigatePost;
    LiveBindingsBindNavigateCancel1: TBindNavigateCancel;
    LiveBindingsBindNavigateRefresh1: TBindNavigateRefresh;
    LiveBindingsBindNavigateApplyUpdates1: TBindNavigateApplyUpdates;
    LiveBindingsBindNavigateCancelUpdates1: TBindNavigateCancelUpdates;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    SearchReplace1: TSearchReplace;
    SearchFindFirst1: TSearchFindFirst;
    TabPreviousTab1: TPreviousTab;
    TabNextTab1: TNextTab;
    CustomizeActionBars1: TCustomizeActionBars;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    Derle: TAction;
    Yukle: TAction;
    KtplkEkle: TAction;
    SeriPort: TAction;
    LedYakma: TAction;
    pingiris: TAction;
    Analog: TAction;
    AltYordam: TAction;
    INT012kesmesi: TAction;
    PORTBDegisimkesmesi: TAction;
    TIMER0kesmesi: TAction;
    KursorGosterKapat: TAction;
    KursorKonum: TAction;
    YaziYazma: TAction;
    DegiskenYazma: TAction;
    GLCDyazi: TAction;
    GLCDDegisken: TAction;
    SeriIletisim: TAction;
    SPIiletisimyazilimsal: TAction;
    SPIiletisimdonanimsal: TAction;
    I2Ciletisim: TAction;
    Tusokuma: TAction;
    Sayiyacevirme: TAction;
    EgerEgerson: TAction;
    ForNext: TAction;
    SelectCase: TAction;
    KaraSimsek: TAction;
    EpromaOkumaYazma: TAction;
    DCmotorPWM: TAction;
    ServoMotor: TAction;
    StepMotor: TAction;
    SdKartBaglanti: TAction;
    SdDosyaAcma: TAction;
    SdDosyayaYazma: TAction;
    SdDosyaOkuma: TAction;
    TFTYazim: TAction;
    TFTCizim: TAction;
    KlavyeTusOkuma: TAction;
    KlavyeLCDkursor: TAction;
    UyariSesi: TAction;
    Muzik: TAction;
    Pikyazkomutlari: TAction;
    Pikyazbilgileri: TAction;
    KitaplikOlusturma: TAction;
    PICUlak: TAction;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Splitter1: TSplitter;
    Button5: TButton;
    Button6: TButton;
    Splitter2: TSplitter;
    Button7: TButton;
    Button8: TButton;
    ListBox01: TListBox;
    ListBox02: TListBox;
    ListBox03: TListBox;
    ListBox04: TListBox;
    ListBox05: TListBox;
    ListBox06: TListBox;
    ListBox07: TListBox;
    ListBox08: TListBox;
    ListBox09: TListBox;
    ListBox10: TListBox;
    ListBox11: TListBox;
    ListBox12: TListBox;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    procedure FileOpen1BeforeExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DerleExecute(Sender: TObject);
    procedure LedYakmaExecute(Sender: TObject);
    procedure pingirisExecute(Sender: TObject);
    procedure AnalogExecute(Sender: TObject);
    procedure AltYordamExecute(Sender: TObject);
    procedure INT012kesmesiExecute(Sender: TObject);
    procedure PORTBDegisimkesmesiExecute(Sender: TObject);
    procedure TIMER0kesmesiExecute(Sender: TObject);
    procedure KursorGosterKapatExecute(Sender: TObject);
    procedure KursorKonumExecute(Sender: TObject);
    procedure YaziYazmaExecute(Sender: TObject);
    procedure DegiskenYazmaExecute(Sender: TObject);
    procedure GLCDyaziExecute(Sender: TObject);
    procedure GLCDDegiskenExecute(Sender: TObject);
    procedure SeriIletisimExecute(Sender: TObject);
    procedure SPIiletisimyazilimsalExecute(Sender: TObject);
    procedure SPIiletisimdonanimsalExecute(Sender: TObject);
    procedure I2CiletisimExecute(Sender: TObject);
    procedure TusokumaExecute(Sender: TObject);
    procedure SayiyacevirmeExecute(Sender: TObject);
    procedure EgerEgersonExecute(Sender: TObject);
    procedure ForNextExecute(Sender: TObject);
    procedure SelectCaseExecute(Sender: TObject);
    procedure KaraSimsekExecute(Sender: TObject);
    procedure EpromaOkumaYazmaExecute(Sender: TObject);
    procedure DCmotorPWMExecute(Sender: TObject);
    procedure ServoMotorExecute(Sender: TObject);
    procedure StepMotorExecute(Sender: TObject);
    procedure SdKartBaglantiExecute(Sender: TObject);
    procedure SdDosyaAcmaExecute(Sender: TObject);
    procedure SdDosyayaYazmaExecute(Sender: TObject);
    procedure SdDosyaOkumaExecute(Sender: TObject);
    procedure TFTYazimExecute(Sender: TObject);
    procedure TFTCizimExecute(Sender: TObject);
    procedure KlavyeTusOkumaExecute(Sender: TObject);
    procedure KlavyeLCDkursorExecute(Sender: TObject);
    procedure UyariSesiExecute(Sender: TObject);
    procedure MuzikExecute(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    hata: string;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  usak: TUsak;

implementation

{$R *.dfm}

procedure TForm1.AltYordamExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\altyordam');
end;

procedure TForm1.AnalogExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\analog');
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  i: Integer;
  row: string;
  m: TStringList;
begin
ShowMessage(usak.rawCode(RichEdit1.Lines.Text));


  //
//  m := TStringList.Create;
//  row := 'altkod(prt){';
//  m.Clear;
//  m.Delimiter := '(';
//  m.StrictDelimiter := True;
//  m.DelimitedText := row;
//  for I := m.Count - 1 downto 0 do
//    if m[i] = '' then
//      m.Delete(i);
//  LeftStr(m[1], Pos(')', m[1]) - 1);
//  AnsiMidStr(row, 6, 6);
//  m.Free;
end;

procedure TForm1.DCmotorPWMExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : dc motor �rne�i }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';K�t�phane hen�z eklenmedi');
end;

procedure TForm1.DegiskenYazmaExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\leddeg');
end;

procedure TForm1.DerleExecute(Sender: TObject);
var
  adosya, bdosya, sl, slline: TStringList;
  afile: TextFile;
  I, kbiU, kbiF, j, k, t, ksm, ana: Integer;
  kb: Double;
  komut: string;
  HexFailFlag: Boolean;
  aline, yalan, yazi1, yazi2, yazi3, yazi4, yazi5, yazi6, yazi7, yazi8, yazi9, yazi10, myLine, mcvar, eiki: String;
  ii: Integer;

label
  bvd, dmn, cikl;
begin
  Screen.Cursor := crHourGlass;
  kb := 0;
  kbiU := 0;
  kbiF := 0;
  komut := '';
  HexFailFlag := True;
  Derle.Enabled := False;
  adosya := TStringList.Create;
  bdosya := TStringList.Create;
  sl := TStringList.Create;
  slline := TStringList.Create;
  { TODO -oOwner -cCategory : temizlik asl�nda gerek yok �st�ne yaz�yorum }
  // deletefile('C:\_Pikyaz\asmmanueldeneme\kyt.asm');
  // deletefile('C:\_Pikyaz\asmmanueldeneme\kyt.ERR');
  // deletefile('C:\_Pikyaz\asmmanueldeneme\kyt.HEX');
  // deletefile('C:\_Pikyaz\asmmanueldeneme\kyt.LST');
  // deletefile('C:\_Pikyaz\asmmanueldeneme\kyt.O');

  ProgressBar1.Position := 0;
  { TODO -oEy�p -cCategory : liste 3 � tekar doldurmaya gerek varm� komut i�in ??? }
  ProgressBar1.Position := 5;

  AssignFile(afile, usak.mcrsyyol + '\kyt.pic');
  ReWrite(afile);
  WriteLn(afile,usak.rawCode( RichEdit1.Lines.Text));
  CloseFile(afile);
  // AssignFile(afile, usak.mcrsyyol + '\kyt_saf.pic');
  // ReWrite(afile);
  // WriteLn(afile, RichEdit1.Lines.Text);
  // CloseFile(afile);

  ProgressBar1.Position := 10;

  FileMode := fmOpenRead;
  Reset(afile);
  // while not Eof(afile) do
  // begin
  // ReadLn(afile, text);
  // ShowMessage(text);
  // end;
  CloseFile(afile);
  { DONE -oEy�p -cCategory : test ve pin arr�yoruz liste 7 ye ekleniyor }
  adosya.LoadFromFile(usak.mcrsyyol + '\kyt.pic');
  for I := 0 to adosya.Count - 1 do
  begin
//    usak.yazi := adosya[i];
//    usak.noktavirgul;
    usak.yazi := adosya[i];
    usak.bos;
    if usak.sonuc01 = 'test' then
    begin
      if Length(usak.sonuc02) = 4 then
        usak.sonuc02 := '0' + AnsiRightStr(usak.sonuc02, 1)
      else if Length(usak.sonuc02) = 5 then
        usak.sonuc02 := AnsiRightStr(usak.sonuc02, 2)
      else
      begin
        ShowMessage('"' + adosya[i] + '"' + ' Kodu hatal�!');
        goto bvd;
      end;

      if AnsiLeftStr(usak.sonuc02, 1) = '0' then
      begin
        if ListBox07.Items.IndexOf('bsf TRISA,' + AnsiRightStr(usak.sonuc02, 1)) = -1 then
          ListBox07.Items.Add('bsf TRISA,' + AnsiRightStr(usak.sonuc02, 1));
      end
      else if AnsiLeftStr(usak.sonuc02, 1) = '1' then
      begin
        if ListBox07.Items.IndexOf('bsf TRISB,' + AnsiRightStr(usak.sonuc02, 1)) = -1 then
          ListBox07.Items.Add('bsf TRISB,' + AnsiRightStr(usak.sonuc02, 1));
      end
      else if AnsiLeftStr(usak.sonuc02, 1) = '2' then
      begin
        if ListBox07.Items.IndexOf('bsf TRISC,' + AnsiRightStr(usak.sonuc02, 1)) = -1 then
          ListBox07.Items.Add('bsf TRISC,' + AnsiRightStr(usak.sonuc02, 1));
      end
      else
      begin
        ShowMessage('"' + adosya[i] + '"' + ' Kodu hatal�!');
        goto bvd;
      end;

    end
    else if Copy(usak.sonuc01, 1, 3) = 'pin' then // copy(Usak.sonuc01,1,3)='pin'
    begin
      if Copy(usak.sonuc01, 1, 6) = 'pinler' then
        goto dmn;
      usak.yazi := usak.sonuc01;
      usak.esit;
      if Length(usak.sonuc01) = 4 then
        yazi1 := '0' + Copy(usak.sonuc01, 4, 4)
      else if Length(usak.sonuc01) = 5 then
        yazi1 := Copy(usak.sonuc01, 4, 5)
      else
      begin
        ShowMessage('"' + adosya[i] + '"' + ' Pin belirsiz!' + IntToStr(Length(usak.sonuc01)));
        goto bvd;
      end;
      usak.yazi := adosya[i];
      usak.esit;
      if usak.numarami(usak.sonuc02) then
      begin
        if AnsiLeftStr(yazi1, 1) = '0' then
        begin
          if ListBox07.Items.IndexOf('bcf TRISA,' + AnsiRightStr(usak.sonuc01, 1)) = -1 then
            ListBox07.Items.Add('bcf TRISA,' + AnsiRightStr(usak.sonuc01, 1));
        end
        else if AnsiLeftStr(yazi1, 1) = '1' then
        begin
          if ListBox07.Items.IndexOf('bcf TRISB,' + AnsiRightStr(usak.sonuc01, 1)) = -1 then
            ListBox07.Items.Add('bcf TRISB,' + AnsiRightStr(usak.sonuc01, 1));
        end
        else if AnsiLeftStr(yazi1, 1) = '2' then
        begin
          if ListBox07.Items.IndexOf('bcf TRISC,' + AnsiRightStr(usak.sonuc01, 1)) = -1 then
            ListBox07.Items.Add('bcf TRISC,' + AnsiRightStr(usak.sonuc01, 1));
        end
        else
        begin
          ShowMessage('"' + adosya[i] + '"' + ' Kodu hatal�!');
          goto bvd;
        end;
      end;
    end;
  dmn: // "pinler" varsa atla buraya
  end;
  ProgressBar1.Position := 15;
  { DONE -oEy�p -cCategory : *n5110ciz liste8 le alakal� ve *n5110yaz liste6 ile alakal� ar�yoruz }
  for I := 0 to adosya.Count - 1 do
  begin
    if Pos('n5110ciz', adosya[i]) <> 0 then
    begin
      usak.yazi := adosya[i];
      usak.noktavirgul;
      usak.yazi := usak.sonuc01;
      usak.bos;
      if ListBox08.Items.IndexOf(usak.sonuc02) = -1 then
        ListBox08.Items.Add(usak.sonuc02);
    end;
  end;
  for I := 0 to adosya.Count - 1 do
  begin
    if Pos('n5110yaz', adosya[i]) <> 0 then
    begin
      usak.yazi := adosya[i];
      usak.noktavirgul;
      usak.yazi := usak.sonuc01;
      usak.bos;
      j := 0;
      for k := 1 to Length(usak.sonuc04) do
      begin
        if AnsiMidStr(usak.sonuc04, k, k) = '' then
          eiki := 'bos';
        if AnsiMidStr(usak.sonuc04, k, k) = ' ' then
          eiki := 'bos';
        if AnsiMidStr(usak.sonuc04, k, k) = '|' then
          eiki := 'dik';
        if AnsiMidStr(usak.sonuc04, k, k) = '!' then
          eiki := 'unl';
        if AnsiMidStr(usak.sonuc04, k, k) = '''' then
          eiki := 'utrn';
        if AnsiMidStr(usak.sonuc04, k, k) = '+' then
          eiki := 'art';
        if AnsiMidStr(usak.sonuc04, k, k) = '^' then
          eiki := 'spk';
        if AnsiMidStr(usak.sonuc04, k, k) = '%' then
          eiki := 'yzd';
        if AnsiMidStr(usak.sonuc04, k, k) = '&' then
          eiki := 'app';
        if AnsiMidStr(usak.sonuc04, k, k) = '/' then
          eiki := 'bol';
        if AnsiMidStr(usak.sonuc04, k, k) = '(' then
          eiki := 'pra';
        if AnsiMidStr(usak.sonuc04, k, k) = ')' then
          eiki := 'prk';
        if AnsiMidStr(usak.sonuc04, k, k) = '{' then
          eiki := 'kume';
        if AnsiMidStr(usak.sonuc04, k, k) = '}' then
          eiki := 'kumek';
        if AnsiMidStr(usak.sonuc04, k, k) = '-' then
          eiki := 'tre';
        if AnsiMidStr(usak.sonuc04, k, k) = '_' then
          eiki := 'atre';
        if AnsiMidStr(usak.sonuc04, k, k) = '<' then
          eiki := 'kck';
        if AnsiMidStr(usak.sonuc04, k, k) = '>' then
          eiki := 'byk';
        if AnsiMidStr(usak.sonuc04, k, k) = '.' then
          eiki := 'nkt';
        if AnsiMidStr(usak.sonuc04, k, k) = ',' then
          eiki := 'vrg';
        if AnsiMidStr(usak.sonuc04, k, k) = ';' then
          eiki := 'nv';
        if AnsiMidStr(usak.sonuc04, k, k) = ':' then
          eiki := 'n2';
        if AnsiMidStr(usak.sonuc04, k, k) = '*' then
          eiki := 'crp';
        if AnsiMidStr(usak.sonuc04, k, k) = '$' then
          eiki := 'tl';
        if AnsiMidStr(usak.sonuc04, k, k) = '?' then
          eiki := 'si';
        if AnsiMidStr(usak.sonuc04, k, k) = '=' then
          eiki := 'est';
        if AnsiMidStr(usak.sonuc04, k, k) = '[' then
          eiki := 'dpa';
        if AnsiMidStr(usak.sonuc04, k, k) = ']' then
          eiki := 'dpk';
        if ListBox06.Items.IndexOf(eiki) = -1 then
          ListBox06.Items.Add(eiki);
      end;
    end;
  end;
  ProgressBar1.Position := 20;

  AssignFile(afile, usak.mcrsyol + '\kyt.asm');
  ReWrite(afile);
  adosya.LoadFromFile('src\18f2550config');
  WriteLn(afile, adosya.Text);
  // Pinler
  WriteLn(afile, '    include ' + usak.ortakyol + '\makrolar.asm');
  { DONE -oOwner -cCategory : progres bar 20-25 }

  for I := 0 to ListBox06.Items.Count - 1 do
    WriteLn(afile, '    include ' + usak.ktpyol + '\5110\amakro' + ListBox06.Items[i]);
  for I := 0 to ListBox08.Items.Count - 1 do
    WriteLn(afile, '    include ' + usak.ktpyol + '\5110\n51cizim' + ListBox08.Items[i]);
  adosya.LoadFromFile(usak.mcrsyyol + '\kyt.pic');
  for I := 0 to adosya.Count - 1 do
  begin
    usak.yazi := adosya[i];
    usak.noktavirgul;
    usak.yazi := usak.sonuc01;
    usak.bos;
    { TODO -oOwner -cCategory : burda bi�iyle yap�yor abdurrahman abiyle kontrol et '5110' gerekmeyebilir }
    if usak.sonuc01 = 'ekle' then
    begin
      WriteLn(afile, '    include ' + usak.ktpyol + '\5110\' + usak.sonuc02 + '\makro.asm');
      ListBox02.Items.Add(usak.ktpyol + '\' + usak.sonuc02 + '\pin')
      { TODO -oey�p -cGeneral : kmtekle yaz�lacak abduraahman abiye sor ??? }
      { kmtekle(csp.sonuc2) }
    end;
  end;
  CloseFile(afile);

  ProgressBar1.Position := 25;
  { DONE -oOwner -cCategory : ActionItem progres bar 25 1/2 }
  mcvar := '0';
  ii := 0;
  adosya.LoadFromFile(usak.mcrsyyol + '\kyt.pic');
  for I := 0 to adosya.Count - 1 do
  begin
    ii := ii + Length(adosya[i]);
    usak.yazi := adosya[i];
    usak.noktavirgul;
    usak.yazi := usak.sonuc01;
    usak.bos;
    if Pos('kod', usak.sonuc01) <> 0 then
    begin
      if (usak.sonuc02 = 'bas') or (usak.sonuc02 = 'ayar') then
        Continue;
      mcvar := '1';
      yazi2 := usak.sonuc02;
      usak.yazi := yazi2;
      usak.parametre;
      Append(afile);
      WriteLn(afile, usak.sonuc01 + ' macro ' + LeftStr(usak.sonuc02, Pos(')', usak.sonuc02) - 1));
      CloseFile(afile);

    end
    else if usak.sonuc02 = '}' then
    begin
      if mcvar = '1' then
      begin
        Append(afile);
        WriteLn(afile, '  endm');
        CloseFile(afile);
        mcvar := '0';
        Continue;
      end;
    end
    else
    begin
      if mcvar = '1' then
      begin
        { TODO -oEy�p -cCategory : Arakod subrutini yaz�lacak }
        // arakod(adosya[i]);                        //macro nun i�ine her�eyi i�le
        if hata <> '' then
          RichEdit1.SelStart := i - 1;
        RichEdit1.SelLength := 15;
        ShowMessage(hata + 'Tamam');
        goto bvd;
      end;

    end;

  end;
  ListBox12.Clear;
  Append(afile);
  WriteLn(afile, '   errorlevel -302 ');
  WriteLn(afile, '   radix    dec ');
  { DONE -oOwner -cCategory : ActionItem progres bar 25 2/2 }
  adosya.LoadFromFile(usak.mcrsyyol + '\kyt.pic');
  for I := 0 to adosya.Count - 1 do
  begin
    usak.yazi := adosya[i];
    usak.noktavirgul;
    usak.yazi := usak.sonuc01;
    usak.bos;
    yazi1 := usak.sonuc01;
    if Pos('kesme', yazi1) <> 0 then
      ksm := 1;
    if Pos('analog', yazi1) <> 0 then
    begin
      ana := 2;
      if RightStr(yazi1, 1) = '0' then
        ListBox02.Items.Add('1');
      if RightStr(yazi1, 1) = '1' then
        ListBox02.Items.Add('2');
      if RightStr(yazi1, 1) = '2' then
        ListBox02.Items.Add('3');
      if RightStr(yazi1, 1) = '3' then
        ListBox02.Items.Add('4');
      if RightStr(yazi1, 1) = '4' then
        ListBox02.Items.Add('5');
    end;
    if Pos('pinler', yazi1) <> 0 then
    begin
      usak.yazi := adosya[i];
      usak.parametre;
      yalan := LeftStr(usak.sonuc01, 6);
      usak.parametre;
      if not FileExists(usak.ktpyol + '\' + yalan + '\pin') then
        ShowMessage('..\ktp\' + yalan + '\pin   Dosyas� bulunam�yor!');
      bdosya.LoadFromFile(usak.ktpyol + '\' + yalan + '\pin');
      for k := 0 to bdosya.Count - 1 do
      begin
        if Pos('/', bdosya[k]) <> 0 then
          Break;
        if Pos('pinler', bdosya[k]) <> 0 then
        begin
          usak.yazi := bdosya[k];
          usak.parametre;
          usak.yazi := usak.sonuc02;
          usak.noktavirgul;
          ListBox08.Items.Add(usak.sonuc01);
          ListBox08.Items.Add(bdosya[k]);
        end;
      end;
      for k := 0 to ((ListBox08.Items.Count - 1) div 2) do { TODO -oOwner -cCategory : ActionItem for div 2 problem ��kartabilirmi? }
      begin
        usak.yazi := ListBox08.Items[k * 2];
        usak.virg;
        if usak.sonuc01 <> '' then
          yazi1 := usak.sonuc01;
        if usak.sonuc02 <> '' then
          yazi2 := usak.sonuc02;
        if usak.sonuc03 <> '' then
          yazi3 := usak.sonuc03;
        if usak.sonuc04 <> '' then
          yazi4 := usak.sonuc04;
        if usak.sonuc05 <> '' then
          yazi5 := usak.sonuc05;
        if usak.sonuc06 <> '' then
          yazi6 := usak.sonuc06;
        if usak.sonuc07 <> '' then
          yazi7 := usak.sonuc07;
        if usak.sonuc08 <> '' then
          yazi8 := usak.sonuc08;
        if usak.sonuc09 <> '' then
          yazi9 := usak.sonuc09;
        if usak.sonuc10 <> '' then
          yazi10 := usak.sonuc10;
        usak.yazi := ListBox08.Items[k * 2 + 1];
        usak.parametre;
        usak.yazi := usak.sonuc02;
        usak.virg;
        if usak.sonuc01 <> '' then
          WriteLn(afile, yazi1 + ' equ ' + usak.sonuc01);
        if usak.sonuc02 <> '' then
          WriteLn(afile, yazi2 + ' equ ' + usak.sonuc02);
        if usak.sonuc03 <> '' then
          WriteLn(afile, yazi3 + ' equ ' + usak.sonuc03);
        if usak.sonuc04 <> '' then
          WriteLn(afile, yazi4 + ' equ ' + usak.sonuc04);
        if usak.sonuc05 <> '' then
          WriteLn(afile, yazi5 + ' equ ' + usak.sonuc05);
        if usak.sonuc06 <> '' then
          WriteLn(afile, yazi6 + ' equ ' + usak.sonuc06);
        if usak.sonuc07 <> '' then
          WriteLn(afile, yazi7 + ' equ ' + usak.sonuc07);
        if usak.sonuc08 <> '' then
          WriteLn(afile, yazi8 + ' equ ' + usak.sonuc08);
        if usak.sonuc09 <> '' then
          WriteLn(afile, yazi9 + ' equ ' + usak.sonuc09);
        if usak.sonuc10 <> '' then
          WriteLn(afile, yazi10 + ' equ ' + usak.sonuc10);
        ListBox05.Items.Add(usak.sonuc01);
        ListBox08.Clear;
      end;
    end;
  end;
  mcvar := '';
  CloseFile(afile);
  ProgressBar1.Position := 30;
  { DONE -oOwner -cCategory : ActionItem progres bar 30 }
  for I := 0 to ListBox02.Items.Count - 1 do
  begin
    bdosya.LoadFromFile(ListBox02.Items[i]);
    for k := 0 to bdosya.Count - 1 do
    begin
      usak.yazi := bdosya[k];
      usak.noktavirgul;
      if usak.sonuc01 = '++' then
        goto cikl;
      if mcvar = '1' then
      begin
        usak.yazi := usak.sonuc01;
        usak.noktavirgul;
        if ListBox01.Items.IndexOf(usak.sonuc01) = -1 then
          ListBox01.Items.Add(usak.sonuc01);
      end;
      if yazi10 = '/' then
        mcvar := '1';
    end;
  cikl:
  end;
  Append(afile);
  WriteLn(afile, 'cblock 0x20 ');
  for I := 0 to ListBox01.Items.Count - 1 do
    WriteLn(afile, '     ' + ListBox01.Items[i]);

  { TODO -oOwner -cCategory : ab ab_a temizleme ge�iciolarak eklendi }
  WriteLn(afile, 'ab ');
  WriteLn(afile, 'ab_a ');

  WriteLn(afile, 'endc '); // de�i�ken bilfirimleri bitti
  WriteLn(afile, '              org 0x000 ');
  WriteLn(afile, '              goto _BAS');
  { TODO -oOwner -cCategory : ActionItem }
  if ksm = 1 then
  begin
    WriteLn(afile, '             org 0x008');
    WriteLn(afile, '             goto kesme_1');
    WriteLn(afile, '             org 0x008');
    WriteLn(afile, '             goto kesme_2');
  end;

  WriteLn(afile, '     CLRF ADCON0 ;clear ADCON0 to select channel');
  WriteLn(afile, '     MOVLW 0x0E;VSS,VDD ref. AN0 analog only');
  WriteLn(afile, '     MOVWF ADCON1');
  WriteLn(afile, '     MOVLW 0xA6 ;ADCON2 setup: Left justified, Tacq=2Tad, Tad=2*Tosc (or Fosc/2)');
  WriteLn(afile, '     MOVWF ADCON2');
  WriteLn(afile, '     BSF ADCON0,ADON ;Enable A/D Conversion Module');

  WriteLn(afile, '');
  WriteLn(afile, '_BAS');
  WriteLn(afile, '     clrf        TRISA');
  WriteLn(afile, '     clrf        TRISB');
  WriteLn(afile, '     clrf        TRISC');
  WriteLn(afile, '     bcf UCON, USBEN');
  WriteLn(afile, '     bsf UCFG, UTRDIS');
  WriteLn(afile, '     movlw       0x07');
  WriteLn(afile, '     movwf       CMCON');
  { DONE -oOwner -cCategory : ActionItem analog ekleme }
  if ana = 0 then
  begin
    WriteLn(afile, '     movlw       0x0F');
    WriteLn(afile, '     movwf       ADCON1');
    WriteLn(afile, '     BCF         EECON1, EEPGD');
  end
  else
  begin
    WriteLn(afile, '     CLRF ADCON0 ;clear ADCON0 to select channel');
    WriteLn(afile, '     MOVLW 0x0E;VSS,VDD ref. AN0 analog only');
    WriteLn(afile, '     MOVWF ADCON1');
    WriteLn(afile, '     MOVLW 0xA6 ;ADCON2 setup: Left justified, Tacq=2Tad, Tad=2*Tosc (or Fosc/2)');
    WriteLn(afile, '     MOVWF ADCON2');
    WriteLn(afile, '     BSF ADCON0,ADON ;Enable A/D Conversion Module');
  end;

  { TODO -oOwner -cCategory : ActionItem }
  {
    If ksm = 1 Then kesmeekle
  }
  WriteLn(afile, '');
  { TODO -oOwner -cCategory : ActionItem }
  { '//////////////  AYAR KODLARI  kod ayar(){  ////////////////////////////////////
    For j = 0 To liste2.Count - 1
    liste2.Index = j
    adosya = Open liste2.Text For Read   'kitapl�k  pin dosyas� a��l�yor
    i = - 1000
    While Not Eof(adosya)
    Line Input #adosya, yazi10
    csp.yazi = yazi10
    csp.noktavirg()
    i = i + 1
    If csp.sonuc1 = "++" Then i = 0
    If i > 0 Then
    Print #afile, "     " & yazi10
    Endif
    Wend
    Close #adosya
    Next
  }
  { TODO -oOwner -cCategory : ActionItem }
  { adosya = Open System.User.Home &/ "Pikyaz/mcrsy/kyt.pic" For Read
    While Not Eof(adosya)
    Line Input #adosya, yazi10
    If Trim$(yazi10) Like ("seri*") Then
    Print #afile, "     bcf  TRISC,6"
    Print #afile, "     bcf TRISC, 7"
    Print #afile, "     movlw 253"
    Print #afile, "     movwf SPBRG"
    Print #afile, "     movlw b'10010000'"
    Print #afile, "     movwf RCSTA"
    Print #afile, "     movlw b'00100100'"
    Print #afile, "     movwf TXSTA"
    Print #afile, "     bsf	RCSTA,CREN"
    Goto vjd
    Endif
    Wend
    Close #adosya }
  { TODO -oOwner -cCategory : ActionItem }
  { mcvar = 0
    For i = 0 To liste2.Count - 1
    liste2.Index = i     'liste2 text=/ kullan�lan pin yollar�: ~&/ "Pikyaz/ktp/" & yalan & "/pin"
    liste5.Index = i    '  liste5 = port ad�
    adosya = Open liste2.Text For Read
    j = 0
    While Not Eof(adosya)
    Line Input #adosya, yazi10         '
    If yazi10 = "/" Then Goto atel
    If j = 0 Then
    csp.yazi = yazi10
    csp.noktavirg()
    csp.yazi = csp.sonuc1
    csp.para()
    csp.yazi = csp.sonuc2
    csp.virg()
    yazi9 = csp.sonuc1
    Endif
    If j > 0 Then
    csp.yazi = yazi10  '  d7 c
    csp.bos()
    If csp.sonuc2 = "g" Then  ' ikinci harf g ise  giri�
    Print #afile, "    bsf TRIS" & UCase$(liste5.Text) & "," & (csp.sonuc1)
    Else If csp.sonuc2 = "c" Then        ' ikinci har c ise ��k��...
    Print #afile, "    bcf TRIS" & UCase$(liste5.Text) & "," & (csp.sonuc1)   ' bcf TRISA d7
    Else           '    TRISA = 0xF0   TRISC = b'01011010'
    csp.yazi = yazi10
    csp.esit()
    If csp.sonuc2 <> "" Then
    Print #afile, "     movlw " & csp.sonuc2  ' movlw 0xF0         movlw  b'01011010'
    Print #afile, "     movwf " & UCase$(csp.sonuc1)  ' movwf  TRISA       movwf  TRISC
    Else

    Endif

    Endif
    Endif
    j = j + 1
    Wend
    atel:
    Close #adosya
    Next }
  WriteLn(afile, '   clrf  PORTA');
  WriteLn(afile, '   clrf  PORTB');
  WriteLn(afile, '   clrf  PORTC');
  WriteLn(afile, '   clrf  LATA');
  WriteLn(afile, '   clrf  LATB');
  WriteLn(afile, '   clrf  LATC');
  for I := 0 to ListBox01.Items.Count - 1 do
  begin
    if not(AnsiCompareStr('REG', ListBox01.Items[i]) < 0) then
      WriteLn(afile, '   clrf  ' + ListBox01.Items[i]);
  end;
  { TODO -oOwner -cCategory : ActionItem }
  { For j = 0 To liste7.Count - 1
    liste7.Index = j
    Print #afile, "    " & liste7.Text
    Next
    liste7.Clear
    Print #afile, "   temizle REGB0"
    Print #afile, "   temizle REGA0"
  }
  WriteLn(afile, '   temizle REGB0');
  WriteLn(afile, '   temizle REGA0');
  { TODO -oOwner -cCategory : ActionItem }
  { i = 0
    myFile = Open System.User.Home &/ "Pikyaz/mcrsy/kyt.pic" For Read
    While Not Eof(myFile)
    Line Input #myFile, aline
    i = i + Len(aline)
    csp.yazi = aline
    csp.noktavirg()
    csp.yazi = csp.sonuc1        '
    csp.bos()
    yazi1 = csp.sonuc1
    yazi2 = csp.sonuc2
    If yazi1 = " }{ " 'gene delphide var basic te yok
    mcvar = 0
    Endif
    If mcvar = 1 Then
    If yazi1 Like "kesme*"
    Else
    arakod(aline)  '  makronun i�indeki her kodu i�le.....
    If hata <> "" Then
    TextArea5.Select(i - 1, 15)
    Message(hata, "Tamam")
    Goto bvd
    Endif
    Endif
    Endif

    If yazi1 = "kod" Then
    If yazi2 Like "ayar()*" Then
    mcvar = 1
    Endif
    Endif

    atl:
    Wend
    Close #myFile }
  WriteLn(afile, ' ; ///////////////////////');
  WriteLn(afile, '_BAS2');

  ProgressBar1.Position := 40;
  { myFile = Open System.User.Home &/ "Pikyaz/mcrsy/kyt.pic" For Read   '//////
    While Not Eof(myFile)
    Line Input #myFile, aline
    i = i + Len(aline)
    csp.yazi = aline
    csp.noktavirg()
    csp.yazi = csp.sonuc1        '
    csp.bos()
    yazi1 = csp.sonuc1
    yazi2 = csp.sonuc2
    If yazi1 = " }{ "
    mcvar = 0
    Endif
    If mcvar = 1 Then
    arakod(aline)  ' //////////        makronun i�indeki her kodu i�le.....
    If hata <> "" Then
    TextArea5.Select(i - 1, 15)
    Message(hata, "Tamam")
    Goto bvd
    Endif
    Endif
    If yazi1 = "kod" Then
    If yazi2 Like "bas()*" Then
    mcvar = 1
    Endif
    Endif
    Wend
    If htno > 1 Then
    Message("eson ile kapat�lmayan eger komutu var!", "Tamam")
    Goto bvd
    Endif
    If frno = 1 Then
    Message("next ile kapat�lmayan for komutu var!", "Tamam")
    Goto bvd
    Endif
    If csno = 1 Then
    Message("endcase ile kapat�lmayan case komutu var!", "Tamam")
    Goto bvd
    Endif
    If slno = 1 Then
    Message("endselect ile kapat�lmayan select komutu var!", "Tamam")
    Goto bvd
    Endif
    If tet <> "" Then
    Message("tson ile kapat�lmayan test komutu var!", "Tamam")
    Goto bvd
    Endif
    Close #myFile }
  WriteLn(afile, '   goto _BAS2');
  { If ksm = 1  ' kesme varsa yaz.

    Print #afile, "kesme_1"
    Print #afile, "   movwf wte "

    Print #afile, "   btfsc INTCON,1 "
    Print #afile, "   kesme1"
    Print #afile, "   btfsc INTCON3,0"
    Print #afile, "   kesme2"
    Print #afile, "   btfsc INTCON3,1"
    Print #afile, "   kesme3"
    Print #afile, "   btfsc INTCON,0 "
    Print #afile, "   kesme47"
    Print #afile, "   btfsc INTCON,TMR0IF "
    Print #afile, "   kesme47"
    Print #afile, "   btfsc INTCON,TMR1IF "
    Print #afile, "   kesme47"
    Print #afile, "   BCF INTCON,1"
    Print #afile, "   BCF INTCON3,0"
    Print #afile, "   BCF INTCON3,1"
    Print #afile, "   BCF INTCON,0"
    Print #afile, "   bcf INTCON,RBIF"
    Print #afile, "    bcf    INTCON,TMR0IF"
    Print #afile, "    clrf         TMR0L"
    Print #afile, "    clrf         TMR0H"
    Print #afile, "    bcf    INTCON,TMR1IF"
    Print #afile, "    clrf         TMR1L"
    Print #afile, "    clrf         TMR1H"
    Print #afile, "      RETFIE "
    Print #afile, "kesme_2"
    Print #afile, "  kesme2"
    If kesmeci = "kesmeb0" Then Print #afile, "   BCF INTCON,1"
    If kesmeci = "kesmeb1" Then Print #afile, "   BCF INTCON3,0"
    If kesmeci = "kesmeb2" Then Print #afile, "   BCF INTCON3,1"
    If kesmeci = "kesmeb47" Then Print #afile, "   BCF INTCON,0"
    If kesmeci = "kesmet1" Then
    Print #afile, "    bcf    INTCON,TMR0IF"
    Print #afile, "    clrf         TMR0L"
    Print #afile, "    clrf         TMR0H"
    Endif
    If kesmeci = "kesmet2" Then
    Print #afile, "    bcf    INTCON,TMR1IF"
    Print #afile, "    clrf         TMR1L"
    Print #afile, "    clrf         TMR1H"
    Endif
    Print #afile, "      RETFIE "
    Endif
    adosya = Open System.User.Home &/ "Pikyaz/mcrsy/kyt.pic" For Read
    While Not Eof(adosya)
    Line Input #adosya, yazi10
    If Trim$(yazi10) Like ("ekle kapama") Then
    myFile = Open "kapama" For Read
    Print #afile, ""
    While Not Eof(myFile)
    Line Input #myFile, yalan
    Print #afile, yalan
    Wend
    Close #myFile
    Goto gtt
    Endif
    Wend
    gtt:
    Close #adosya }
  WriteLn(afile, '');
  adosya.LoadFromFile('src\mat');
  WriteLn(afile, adosya.Text);
  WriteLn(afile, '');
  adosya.LoadFromFile('src\kapama');
  WriteLn(afile, adosya.Text);
  WriteLn(afile, '');
  // adosya.LoadFromFile('src\seri');
  // WriteLn(afile, adosya.Text);
  WriteLn(afile, ' ;///////////////////////');
  WriteLn(afile, 'END');
  CloseFile(afile);

  ProgressBar1.Position := 50;
  if not FileExists(usak.mcrsyol + '\kyt.asm') then
    ShowMessage('Ana asm dosyas� olu�turulamad�!!!')
  else
    CopyFile(PChar(usak.mcrsyol + '\kyt.asm'), PChar(usak.deryol + '\ilk.asm'), False); // �st�ne yaz

  if not FileExists(usak.deryol + '\ilk.asm') then
  begin
    ShowMessage('Ana asm dosyas� olu�turulamad�!!!');
  end
  else
  begin
    komut := '/s- ' + usak.deryol + '\ilk.asm';
    ShellExecute(0, nil, 'mpasmx.exe', PChar(komut), nil, SW_HIDE);
  end;
  Sleep(5000);
  if not FileExists(usak.deryol + '\ilk.HEX') then
  begin
    HexFailFlag := False;
    ShowMessage('Derleme Hatas�! HEX Dosyas� olu�turulamad�.!!!');
  end;

  ProgressBar1.Position := 70;
  Memo1.Clear;
  if FileExists(usak.deryol + '\ilk.lst') then
  begin
    adosya.LoadFromFile(usak.deryol + '\ilk.lst');
    for I := 0 to adosya.Count - 1 do
    begin
      if Pos('Message', adosya[i]) <> 0 then
      begin
        Memo1.Lines.Add(adosya[i]);
      end
      else if Pos('Error', adosya[i]) <> 0 then
      begin
        Memo1.Lines.Add(adosya[i]);
      end;
    end;
  end
  else
    ShowMessage('.lst bulunamad�');

  ProgressBar1.Position := 80;
  if FileExists(usak.deryol + '\ilk.lst') then
  begin
    adosya.LoadFromFile(usak.deryol + '\ilk.lst');
    for I := 0 to adosya.Count - 1 do
    begin
      if Pos('Program Memory Bytes Used:', adosya[i]) <> 0 then
      begin
        sl.Delimiter := ':';
        sl.StrictDelimiter := True;
        sl.DelimitedText := adosya[i];
        kb := StrToFloat(sl[1]) / 1000;
        kbiU := Round(kb);
        Memo1.Lines.Add('Kullan�lan Haf�za: ' + IntToStr(kbiU) + ' Kb.');
      end
      else if Pos('Program Memory Bytes Free:', adosya[i]) <> 0 then
      begin
        sl.Delimiter := ':';
        sl.StrictDelimiter := True;
        sl.DelimitedText := adosya[i];
        kb := StrToFloat(sl[1]) / 1000;
        kbiF := Round(kb);
        Memo1.Lines.Add('Kalan Haf�za: ' + IntToStr(kbiF) + ' Kb.');
      end;
    end;
    ProgressBar1.Position := 95;
    if HexFailFlag then
    begin
      if kbiU > 32 then
        MessageDlg('Dikkat! Mikrodenetleyici haf�zas� yetersiz!', mtWarning, [mbOK], 0);
      if (kbiU > 1) and (kbiU < 30) then
      begin
        ProgressBar1.Position := 100;
        MessageDlg('Derleme Ba�ar�l�!', mtInformation, [mbOK], 0);
      end;
      if kbiU > 30 then
      begin
        ProgressBar1.Position := 100;
        MessageDlg('Derleme Ba�ar�l�. Haf�zada fazla yer kalmad�', mtWarning, [mbOK], 0);
      end;
      ProgressBar1.Position := 100;
    end;
  end
  else
    ShowMessage('.lst bulunamad�');
  ProgressBar1.Position := 100;
bvd:
  adosya.Free;
  bdosya.Free;
  sl.Free;
  slline.Free;
  Derle.Enabled := True;
  Screen.Cursor := crDefault;
end;

procedure TForm1.EgerEgersonExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\eger');
end;

procedure TForm1.EpromaOkumaYazmaExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\epromyaz');
end;

procedure TForm1.FileOpen1BeforeExecute(Sender: TObject);
begin
  // RichEdit1.Lines.LoadFromFile(FileOpen1.Caption);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  usak := TUsak.Create;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  sl, slinel: TStringList;
  I: Integer;
begin

  usak.yolkontrolayar;
  sl := TStringList.Create;
  slinel := TStringList.Create;
  slinel.Delimiter := ';';
  slinel.StrictDelimiter := True;
  sl.LoadFromFile(usak.ortakyol + '\komut');
  for I := 0 to sl.Count - 1 do
  begin
    slinel.DelimitedText := sl[i];
    if ListBox03.Items.IndexOf(slinel[0]) = -1 then
      ListBox03.Items.Add(slinel[0]);
    if ListBox10.Items.IndexOf(slinel[1]) = -1 then
      ListBox10.Items.Add(slinel[1]);
  end;

  sl.LoadFromFile(usak.ortakyol + '\pin');
  for I := 2 to sl.Count - 2 do // ortak kullan�lan de�i�kenler ekleniyor
  begin
    slinel.DelimitedText := sl[i];
    if ListBox01.Items.IndexOf(slinel[0]) = -1 then
      ListBox01.Items.Add(slinel[0]);
  end;

  sl.Free;
  slinel.Free;

end;

procedure TForm1.ForNextExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\fornext');
end;

procedure TForm1.GLCDDegiskenExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\glcddeg');
end;

procedure TForm1.GLCDyaziExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\glcdyaz');
end;

procedure TForm1.I2CiletisimExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : i2c ileti�im �rne�i ekle }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';Kutuphane hen�z eklenmedi');
end;

procedure TForm1.INT012kesmesiExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\b47kesmesi');
end;

procedure TForm1.KaraSimsekExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\karasim');
end;

procedure TForm1.KlavyeLCDkursorExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\klavyekursor');
end;

procedure TForm1.KlavyeTusOkumaExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\klavyem');
end;

procedure TForm1.KursorGosterKapatExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\lcdkursor');
end;

procedure TForm1.KursorKonumExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\kursorkonum');
end;

procedure TForm1.LedYakmaExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\ledyak');
end;

procedure TForm1.MuzikExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : m�zik �rne�i? }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';k�t�phane hen�z eklenmedi');
end;

procedure TForm1.pingirisExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\pingiris');
end;

procedure TForm1.PORTBDegisimkesmesiExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\b0kesmes');
end;

procedure TForm1.SayiyacevirmeExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : klavye sayiya �evirme eklesin }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';k�t�phane hen�z eklenmedi');
end;

procedure TForm1.SdDosyaAcmaExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : dosya a�ma }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';k�t�phane hen�z eklenmedi');
end;

procedure TForm1.SdDosyaOkumaExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : sd card dosya okuma }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';k�t�phane hen�z eklenmedi');
end;

procedure TForm1.SdDosyayaYazmaExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : sd card dosyaya yazma }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';k�t�phane hen�z eklenmedi');
end;

procedure TForm1.SdKartBaglantiExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : sd card ba�lant� }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';k�t�phane hen�z eklenmedi');
end;

procedure TForm1.SelectCaseExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\select');
end;

procedure TForm1.SeriIletisimExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\serigonder');
end;

procedure TForm1.ServoMotorExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : servo motor �rne�i }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';k�t�phane hen�z eklenmedi');
end;

procedure TForm1.SPIiletisimdonanimsalExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\spi');
end;

procedure TForm1.SPIiletisimyazilimsalExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\spiy');
end;

procedure TForm1.StepMotorExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : step motor orne�i }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';k�t�phane hen�z eklenmedi');
end;

procedure TForm1.TFTCizimExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : TFT �izim }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';k�t�phane hen�z eklenmedi');
end;

procedure TForm1.TFTYazimExecute(Sender: TObject);
begin
  { TODO -oaulusoy -cCategory : TFT yaz�m }
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(';k�t�phane hen�z eklenmedi');
end;

procedure TForm1.TIMER0kesmesiExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\t0kesme');
end;

procedure TForm1.TusokumaExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\keypad');
end;

procedure TForm1.UyariSesiExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\uyarises');
end;

procedure TForm1.YaziYazmaExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(usak.yol + 'ornek\lcdyazim');
end;

end.
