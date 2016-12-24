unit pUsak;

interface

uses
  Vcl.Controls, Vcl.Forms, System.SysUtils, System.Variants, System.Classes, System.Character, Vcl.ComCtrls,
  glwin32viewer, GLObjects;

Type
  TUsak = class(TObject)
  public
    sondosya: TextFile;
    sonuc01: string;
    sonuc02: string;
    sonuc03: string;
    sonuc04: string;
    sonuc05: string;
    sonuc06: string;
    sonuc07: string;
    sonuc08: string;
    sonuc09: string;
    sonuc10: string;
    sonuc11: string;
    sonuc12: string;
    sonuc13: string;
    sonuc14: string;
    sonuc15: string;
    sonuc16: string;
    sonuc17: string;
    sonuc18: string;
    sonuc19: string;
    sonuc20: string;
    sonuc21: string;
    sonuc22: string;
    sonuc23: string;
    sonuc24: string;
    sonuc25: string;
    sonuc26: string;
    sonuc27: string;
    sonuc28: string;
    sonuc29: string;
    sonuc30: string;
    sonuc31: string;
    sonuc32: string;
    yazi: string;
    stre: string;
    hataflag: Boolean;
    yol, ktpyol, lcdyol, deryol, ortakyol, mcrsyol, mcrsyyol: string;
    m: TStringList;
    constructor Create;
    destructor Destroy;
    procedure temiz;
    procedure yolkontrolayar;
    procedure noktavirgul;
    procedure esit;
    procedure bos;
    procedure parametre;
    procedure virg;
    function rawCode(text: string): string;

    function numarami(s: string): Boolean;
  private

  end;

implementation

uses Pikyazfrm;
{ TSetup }

procedure TUsak.bos;
var
  I: Integer;
begin
  temiz;
  m.Clear;
  m.Delimiter := ' ';
  m.StrictDelimiter := True;
  m.DelimitedText := yazi;
  for I := m.Count - 1 downto 0 do
    if m[i] = '' then
      m.Delete(i);
  for I := 0 to m.Count-1 do
  begin
    if i=0 then sonuc01 := m[0];
    if i=1 then sonuc02 := m[1];
    if i=2 then sonuc03 := m[2];
    if i=3 then sonuc04 := m[3];
    if i=4 then sonuc05 := m[4];
    if i=5 then sonuc06 := m[5];
    if i=6 then sonuc07 := m[6];
    if i=7 then sonuc08 := m[7];
    if i=8 then sonuc09 := m[8];
    if i=9 then sonuc10 := m[9];
  end;
end;

constructor TUsak.Create;
begin
  inherited;
  m := TStringList.Create;
  //
end;

destructor TUsak.Destroy;
begin
  m.Free;
  inherited;
  //
end;

procedure TUsak.esit;
var
  I: Integer;
begin
  temiz;
  m.Clear;
  m.Delimiter := '=';
  m.StrictDelimiter := True;
  m.DelimitedText := yazi;
  for I := m.Count - 1 downto 0 do
    if m[i] = '' then
      m.Delete(i);
  for I := 0 to m.Count-1 do
  begin
    if i=0 then sonuc01 := m[0];
    if i=1 then sonuc02 := m[1];
    if i=2 then sonuc03 := m[2];
    if i=3 then sonuc04 := m[3];
    if i=4 then sonuc05 := m[4];
    if i=5 then sonuc06 := m[5];
    if i=6 then sonuc07 := m[6];
    if i=7 then sonuc08 := m[7];
    if i=8 then sonuc09 := m[8];
    if i=9 then sonuc10 := m[9];
  end;

end;

procedure TUsak.noktavirgul;
var
  rowtrmed: string;
begin
  temiz;
  rowtrmed := Copy(yazi, 0, Pos(';', yazi) - 1);
  sonuc01 := Trim(LowerCase(rowtrmed));
  sonuc02 := Copy(yazi, Pos(';', yazi), Length(yazi));
end;

function TUsak.numarami(s: string): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to Length(s) - 1 do
    if not isNumber(s, i+1) then
      Result := False;

end;

procedure TUsak.parametre;
var
  I: Integer;
begin
  temiz;
  { TODO -oey�p -cGeneral : ( karakterine g�re ayr�m her durum i�in uyarm� kontrol et }
  m.Clear;
  m.Delimiter := '(';
  m.StrictDelimiter := True;
  m.DelimitedText := yazi;
  for I := m.Count - 1 downto 0 do
    if m[i] = '' then
      m.Delete(i);
  for I := 0 to m.Count-1 do
  begin
    if i=0 then sonuc01 := m[0];
    if i=1 then sonuc02 := m[1];
    if i=2 then sonuc03 := m[2];
    if i=3 then sonuc04 := m[3];
    if i=4 then sonuc05 := m[4];
    if i=5 then sonuc06 := m[5];
    if i=6 then sonuc07 := m[6];
    if i=7 then sonuc08 := m[7];
    if i=8 then sonuc09 := m[8];
    if i=9 then sonuc10 := m[9];
  end;
end;

function TUsak.rawCode(text: string): string;
var
  sl: TStringList;
  I: Integer;
begin
  Result := '';
  sl := TStringList.Create;
  sl.Delimiter := #13;
  sl.StrictDelimiter := True;
  sl.DelimitedText := text;
  for I := sl.Count - 1 downto 0 do
  begin
    if Pos(';', sl[i]) > 0 then  // e�er sat�rda yorum varsa, sat�rdaki ilk g�rd��� ; karakterinden sonras�n� trimler
      sl[i] := Copy(sl[i], 0, Pos(';', sl[i]) - 1);
    sl[i] := Trim(sl[i]);
    if sl[i] = '' then
      sl.Delete(i);
  end;
  Result := sl.text;

  sl.Free;

end;

procedure TUsak.temiz;
begin
  hataflag := False;
  sonuc01 := '';
  sonuc02 := '';
  sonuc03 := '';
  sonuc04 := '';
  sonuc05 := '';
  sonuc06 := '';
  sonuc07 := '';
  sonuc08 := '';
  sonuc09 := '';
  sonuc10 := '';
  sonuc11 := '';
  sonuc12 := '';
  sonuc13 := '';
  sonuc14 := '';
  sonuc15 := '';
  sonuc16 := '';
  sonuc17 := '';
  sonuc18 := '';
  sonuc19 := '';
  sonuc20 := '';
  sonuc21 := '';
  sonuc22 := '';
  sonuc23 := '';
  sonuc24 := '';
  sonuc25 := '';
  sonuc26 := '';
  sonuc27 := '';
  sonuc28 := '';
  sonuc29 := '';
  sonuc30 := '';
  sonuc31 := '';
  sonuc32 := '';
  stre := '';
end;

procedure TUsak.virg;
var
  rowtrmed: string;
  i: Integer;
begin
  temiz;
  rowtrmed := Copy(yazi, 0, Pos('{', yazi) - 1);
  m.Clear;
  m.Delimiter := ',';
  m.StrictDelimiter := True;
  m.DelimitedText := yazi;
  for I := m.Count - 1 downto 0 do
    if m[i] = '' then
      m.Delete(i);
  for I := 0 to m.Count-1 do
  begin
    if i=0 then sonuc01 := m[0];
    if i=1 then sonuc02 := m[1];
    if i=2 then sonuc03 := m[2];
    if i=3 then sonuc04 := m[3];
    if i=4 then sonuc05 := m[4];
    if i=5 then sonuc06 := m[5];
    if i=6 then sonuc07 := m[6];
    if i=7 then sonuc08 := m[7];
    if i=8 then sonuc09 := m[8];
    if i=9 then sonuc10 := m[9];
  end;
end;

procedure TUsak.yolkontrolayar;
begin
  { TODO -oEy�p -cCategory : unix ve windows sisteme g�re yollar ayarlanmal� }
  { TODO -oEy�p -cCategory : yol folder� programfile yazma problemi y�z�nden ileride de�i�tirlmeli }
  { TODO -oEy�p -cCategory : exe kenar�nda duracaklar ve durmayacaklar belirlenmeli }
  // unix windows sisteme g�re / karakteri ayarlnmal�
  yol := ExtractFilePath(Application.ExeName);
  ktpyol := yol + 'ktp';
  lcdyol := ktpyol + '\lcd';
  deryol := yol + 'der';
  ortakyol := deryol + '\ortak';
  mcrsyol := yol + 'mcrs';
  mcrsyyol := yol + 'mcrsy';
  if not DirectoryExists(ktpyol) then
    MkDir(ktpyol);
  if not DirectoryExists(lcdyol) then
    MkDir(lcdyol);
  if not DirectoryExists(deryol) then
    MkDir(deryol);
  if not DirectoryExists(ortakyol) then
    MkDir(ortakyol);
  if not DirectoryExists(mcrsyol) then
    MkDir(mcrsyol);
  if not DirectoryExists(mcrsyyol) then
    MkDir(mcrsyyol);
  if not FileExists(yol + 'sondosya.txt') then
  begin
    AssignFile(sondosya, yol + 'sondosya.txt');
    Rewrite(sondosya);
    CloseFile(sondosya);
  end;
  { TODO -oEy�p -cCategory : der\ortak i�indeki macrolar.asm, pin, komut }
  { TODO -oEy�p -cCategory : ktp\lcd i�indeki macro.asm, pin,komut }
end;

end.
