unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LogMessage(const AMessage: string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Text := PromptDataSource(self.Handle, '');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Memo1.Lines.Text = '' then
  begin
    ShowMessage('No connection string entered');
    Exit;
  end;

  try
    ADOConnection1.LoginPrompt := False;
    ADOConnection1.ConnectionString := Memo1.Lines.Text;
    LogMessage('Connection to database...');
    ADOConnection1.Connected := True;
    LogMessage('Opened connection to database');
    ADOConnection1.Connected := False;
    LogMessage('Closed connection to database');
  except
    on e: Exception do
    begin
      LogMessage('Exception opening database ' + e.Message);
      if ADOConnection1.Connected then
        ADOConnection1.Connected := False;
    end;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.CopyToClipboard;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  Memo2.Clear;
end;

procedure TForm1.LogMessage(const AMessage: string);
begin
  Memo2.Lines.Add(DateTimeToStr(Now) + ' - ' + AMessage);
end;

end.

