unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ScrollBox,
  FMX.Memo, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  Androidapi.JNI.GraphicsContentViewText, System.Messaging;

type
  TForm1 = class(TForm)
    ScaledLayout1: TScaledLayout;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function StartSpeechRecognizer: String;
    procedure HandleVoiceSearch(Intent: JIntent);
    procedure IntentCallback(const Sender: TObject; const M: TMessage);
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses
  FMX.Platform.Android,
  Androidapi.JNI.App, // TJActivity
  Androidapi.Helpers, Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Speech;

const
  AppCLASSNAME = 'com.embarcadero.firemonkey.FMXNativeActivity';
  // Delphi 的 Android Activity 的 class 名稱
  RecognizerRequestCode = 1112;

procedure TForm1.Button1Click(Sender: TObject);
begin
  StartSpeechRecognizer;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TMessageManager.DefaultManager.SubscribeToMessage(TMessageResultNotification,
    IntentCallback);
end;

procedure TForm1.HandleVoiceSearch(Intent: JIntent);
var
  guesses: JArrayList;
  guess: JObject;
  x: Integer;
  sData: String;
begin
  guesses := Intent.getStringArrayListExtra
    (TJRecognizerIntent.JavaClass.EXTRA_RESULTS);
  for x := 0 to guesses.Size - 1 do
  begin
    guess := guesses.get(x);
    sData := JStringToString(guess.toString);
    Memo1.Lines.Add(sData);
  end;
end;

function GetTextFromRecognizer(Intent: JIntent): string;
var
  guesses: JArrayList;
  guess: JObject;
  x: Integer;
begin
  guesses := Intent.getStringArrayListExtra
    (TJRecognizerIntent.JavaClass.EXTRA_RESULTS);
  for x := 0 to guesses.Size - 1 do
  begin
    guess := guesses.get(x);
    result := Format('%s%s', [result, JStringToString(guess.toString)]) +
      sLineBreak;
  end;
  Form1.HandleVoiceSearch(Intent);
end;

function TForm1.StartSpeechRecognizer: String;
var
  Recognizer: JIntent;
begin
  Recognizer := TJIntent.JavaClass.init
    (TJRecognizerIntent.JavaClass.ACTION_RECOGNIZE_SPEECH);
  Recognizer.putExtra(TJRecognizerIntent.JavaClass.EXTRA_LANGUAGE_MODEL,
    TJRecognizerIntent.JavaClass.LANGUAGE_MODEL_FREE_FORM);
  Recognizer.putExtra(TJRecognizerIntent.JavaClass.EXTRA_PROMPT,
    StringToJString('請說您的命令!'));
  Recognizer.putExtra(TJRecognizerIntent.JavaClass.EXTRA_MAX_RESULTS, 10);
  // default 5
  Recognizer.putExtra(TJRecognizerIntent.JavaClass.EXTRA_LANGUAGE,
    StringToJString('zh-TW'));

  MainActivity.startActivityForResult(Recognizer, RecognizerRequestCode);
end;

procedure TForm1.IntentCallback(const Sender: TObject; const M: TMessage);
var
  Notification: TMessageResultNotification;
begin
  Notification := TMessageResultNotification(M);
  if Notification.ResultCode = TJActivity.JavaClass.RESULT_OK then
    GetTextFromRecognizer(Notification.Value);
end;

end.
