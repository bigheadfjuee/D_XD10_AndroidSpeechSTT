unit Androidapi.JNI.Speech;

interface

uses
  Androidapi.JNI.OS,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.App;


type
  {Class forward declarations}
  JUtteranceProgressListener = interface;//android.speech.tts.UtteranceProgressListener
  JSynthesisRequest = interface;//android.speech.tts.SynthesisRequest
  JSpeechRecognizer = interface;//android.speech.SpeechRecognizer
  JTextToSpeech = interface;//android.speech.tts.TextToSpeech
  JTextToSpeech_OnInitListener = interface;//android.speech.tts.TextToSpeech$OnInitListener
  JRecognizerIntent = interface;//android.speech.RecognizerIntent
  JRecognizerResultsIntent = interface;//android.speech.RecognizerResultsIntent
  JTextToSpeech_EngineInfo = interface;//android.speech.tts.TextToSpeech$EngineInfo
  JSynthesisCallback = interface;//android.speech.tts.SynthesisCallback
  JRecognitionListener = interface;//android.speech.RecognitionListener
  JTextToSpeech_OnUtteranceCompletedListener = interface;//android.speech.tts.TextToSpeech$OnUtteranceCompletedListener
  JTextToSpeechService = interface;//android.speech.tts.TextToSpeechService
  JTextToSpeech_Engine = interface;//android.speech.tts.TextToSpeech$Engine
  JRecognitionService = interface;//android.speech.RecognitionService
  JRecognitionService_Callback = interface;//android.speech.RecognitionService$Callback

JUtteranceProgressListenerClass = interface(JObjectClass)
['{9D335A6E-78BE-4060-B3C1-6028E603073D}']
  {Methods}
  function init: JUtteranceProgressListener; cdecl;
end;

[JavaSignature('android/speech/tts/UtteranceProgressListener')]
JUtteranceProgressListener = interface(JObject)
['{75D1A7E1-86E7-47D6-B9EC-96F0D69DC535}']
  {Methods}
  procedure onStart(P1: JString); cdecl;
  procedure onDone(P1: JString); cdecl;
  procedure onError(P1: JString); cdecl;
end;
TJUtteranceProgressListener = class(TJavaGenericImport<JUtteranceProgressListenerClass, JUtteranceProgressListener>) end;

JSynthesisRequestClass = interface(JObjectClass)
['{6E0AE57B-6C0D-4C9D-AFE0-91676BA059C9}']
  {Methods}
  function init(P1: JString; P2: JBundle): JSynthesisRequest; cdecl;
end;

[JavaSignature('android/speech/tts/SynthesisRequest')]
JSynthesisRequest = interface(JObject)
['{1E8FE9BA-9A87-40D7-9198-89C56CE2039C}']
  {Methods}
  function getText: JString; cdecl;
  function getLanguage: JString; cdecl;
  function getCountry: JString; cdecl;
  function getVariant: JString; cdecl;
  function getSpeechRate: Integer; cdecl;
  function getPitch: Integer; cdecl;
  function getParams: JBundle; cdecl;
end;
TJSynthesisRequest = class(TJavaGenericImport<JSynthesisRequestClass, JSynthesisRequest>) end;

JSpeechRecognizerClass = interface(JObjectClass)
['{256567F6-C4BF-4744-B1C9-F81311A1F18D}']
  {Property Methods}
  function _GetRESULTS_RECOGNITION: JString;
  function _GetCONFIDENCE_SCORES: JString;
  function _GetERROR_NETWORK_TIMEOUT: Integer;
  function _GetERROR_NETWORK: Integer;
  function _GetERROR_AUDIO: Integer;
  function _GetERROR_SERVER: Integer;
  function _GetERROR_CLIENT: Integer;
  function _GetERROR_SPEECH_TIMEOUT: Integer;
  function _GetERROR_NO_MATCH: Integer;
  function _GetERROR_RECOGNIZER_BUSY: Integer;
  function _GetERROR_INSUFFICIENT_PERMISSIONS: Integer;
  {Methods}
  function isRecognitionAvailable(P1: JContext): Boolean; cdecl;
  function createSpeechRecognizer(P1: JContext): JSpeechRecognizer; cdecl; overload;
  function createSpeechRecognizer(P1: JContext; P2: JComponentName): JSpeechRecognizer; cdecl; overload;
  {Properties}
  property RESULTS_RECOGNITION: JString read _GetRESULTS_RECOGNITION;
  property CONFIDENCE_SCORES: JString read _GetCONFIDENCE_SCORES;
  property ERROR_NETWORK_TIMEOUT: Integer read _GetERROR_NETWORK_TIMEOUT;
  property ERROR_NETWORK: Integer read _GetERROR_NETWORK;
  property ERROR_AUDIO: Integer read _GetERROR_AUDIO;
  property ERROR_SERVER: Integer read _GetERROR_SERVER;
  property ERROR_CLIENT: Integer read _GetERROR_CLIENT;
  property ERROR_SPEECH_TIMEOUT: Integer read _GetERROR_SPEECH_TIMEOUT;
  property ERROR_NO_MATCH: Integer read _GetERROR_NO_MATCH;
  property ERROR_RECOGNIZER_BUSY: Integer read _GetERROR_RECOGNIZER_BUSY;
  property ERROR_INSUFFICIENT_PERMISSIONS: Integer read _GetERROR_INSUFFICIENT_PERMISSIONS;
end;

[JavaSignature('android/speech/SpeechRecognizer')]
JSpeechRecognizer = interface(JObject)
['{A67520B9-5BB4-481E-9310-3A673D724235}']
  {Methods}
  procedure setRecognitionListener(P1: JRecognitionListener); cdecl;
  procedure startListening(P1: JIntent); cdecl;
  procedure stopListening; cdecl;
  procedure cancel; cdecl;
  procedure destroy; cdecl;
end;
TJSpeechRecognizer = class(TJavaGenericImport<JSpeechRecognizerClass, JSpeechRecognizer>) end;

JTextToSpeechClass = interface(JObjectClass)
['{BE260883-0916-456E-B84C-6B237C8382DA}']
  {Property Methods}
  function _GetSUCCESS: Integer;
  function _GetERROR: Integer;
  function _GetQUEUE_FLUSH: Integer;
  function _GetQUEUE_ADD: Integer;
  function _GetLANG_COUNTRY_VAR_AVAILABLE: Integer;
  function _GetLANG_COUNTRY_AVAILABLE: Integer;
  function _GetLANG_AVAILABLE: Integer;
  function _GetLANG_MISSING_DATA: Integer;
  function _GetLANG_NOT_SUPPORTED: Integer;
  function _GetACTION_TTS_QUEUE_PROCESSING_COMPLETED: JString;
  {Methods}
  function init(P1: JContext; P2: JTextToSpeech_OnInitListener): JTextToSpeech; cdecl; overload;
  function init(P1: JContext; P2: JTextToSpeech_OnInitListener; P3: JString): JTextToSpeech; cdecl; overload;
  {Properties}
  property SUCCESS: Integer read _GetSUCCESS;
  property ERROR: Integer read _GetERROR;
  property QUEUE_FLUSH: Integer read _GetQUEUE_FLUSH;
  property QUEUE_ADD: Integer read _GetQUEUE_ADD;
  property LANG_COUNTRY_VAR_AVAILABLE: Integer read _GetLANG_COUNTRY_VAR_AVAILABLE;
  property LANG_COUNTRY_AVAILABLE: Integer read _GetLANG_COUNTRY_AVAILABLE;
  property LANG_AVAILABLE: Integer read _GetLANG_AVAILABLE;
  property LANG_MISSING_DATA: Integer read _GetLANG_MISSING_DATA;
  property LANG_NOT_SUPPORTED: Integer read _GetLANG_NOT_SUPPORTED;
  property ACTION_TTS_QUEUE_PROCESSING_COMPLETED: JString read _GetACTION_TTS_QUEUE_PROCESSING_COMPLETED;
end;

[JavaSignature('android/speech/tts/TextToSpeech')]
JTextToSpeech = interface(JObject)
['{38B05C3C-B672-4FEC-849B-0CF4D89AA507}']
  {Methods}
  procedure shutdown; cdecl;
  function addSpeech(P1: JString; P2: JString; P3: Integer): Integer; cdecl; overload;
  function addSpeech(P1: JString; P2: JString): Integer; cdecl; overload;
  function addEarcon(P1: JString; P2: JString; P3: Integer): Integer; cdecl; overload;
  function addEarcon(P1: JString; P2: JString): Integer; cdecl; overload;
  function speak(P1: JString; P2: Integer; P3: JHashMap): Integer; cdecl;
  function playEarcon(P1: JString; P2: Integer; P3: JHashMap): Integer; cdecl;
  function playSilence(P1: Int64; P2: Integer; P3: JHashMap): Integer; cdecl;
  function getFeatures(P1: JLocale): JSet; cdecl;
  function isSpeaking: Boolean; cdecl;
  function stop: Integer; cdecl;
  function setSpeechRate(P1: Single): Integer; cdecl;
  function setPitch(P1: Single): Integer; cdecl;
  function setLanguage(P1: JLocale): Integer; cdecl;
  function getLanguage: JLocale; cdecl;
  function isLanguageAvailable(P1: JLocale): Integer; cdecl;
  function synthesizeToFile(P1: JString; P2: JHashMap; P3: JString): Integer; cdecl;
  function setOnUtteranceCompletedListener(P1: JTextToSpeech_OnUtteranceCompletedListener): Integer; cdecl;
  function setOnUtteranceProgressListener(P1: JUtteranceProgressListener): Integer; cdecl;
  function setEngineByPackageName(P1: JString): Integer; cdecl;
  function getDefaultEngine: JString; cdecl;
  function areDefaultsEnforced: Boolean; cdecl;
  function getEngines: JList; cdecl;
end;
TJTextToSpeech = class(TJavaGenericImport<JTextToSpeechClass, JTextToSpeech>) end;

JTextToSpeech_OnInitListenerClass = interface(IJavaClass)
['{B01450B5-524A-4B99-95DC-9158B7B8CC15}']
end;

[JavaSignature('android/speech/tts/TextToSpeech$OnInitListener')]
JTextToSpeech_OnInitListener = interface(IJavaInstance)
['{94CC537C-E958-4EA5-B613-1465AEF6014B}']
  {Methods}
  procedure onInit(P1: Integer); cdecl;
end;
TJTextToSpeech_OnInitListener = class(TJavaGenericImport<JTextToSpeech_OnInitListenerClass, JTextToSpeech_OnInitListener>) end;

JRecognizerIntentClass = interface(JObjectClass)
['{A60D33ED-3B87-49A2-8EF9-B0E861A95205}']
  {Property Methods}
  function _GetEXTRA_CALLING_PACKAGE: JString;
  function _GetACTION_RECOGNIZE_SPEECH: JString;
  function _GetACTION_WEB_SEARCH: JString;
  function _GetACTION_VOICE_SEARCH_HANDS_FREE: JString;
  function _GetEXTRA_SECURE: JString;
  function _GetEXTRA_SPEECH_INPUT_MINIMUM_LENGTH_MILLIS: JString;
  function _GetEXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS: JString;
  function _GetEXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS: JString;
  function _GetEXTRA_LANGUAGE_MODEL: JString;
  function _GetLANGUAGE_MODEL_FREE_FORM: JString;
  function _GetLANGUAGE_MODEL_WEB_SEARCH: JString;
  function _GetEXTRA_PROMPT: JString;
  function _GetEXTRA_LANGUAGE: JString;
  function _GetEXTRA_ORIGIN: JString;
  function _GetEXTRA_MAX_RESULTS: JString;
  function _GetEXTRA_WEB_SEARCH_ONLY: JString;
  function _GetEXTRA_PARTIAL_RESULTS: JString;
  function _GetEXTRA_RESULTS_PENDINGINTENT: JString;
  function _GetEXTRA_RESULTS_PENDINGINTENT_BUNDLE: JString;
  function _GetRESULT_NO_MATCH: Integer;
  function _GetRESULT_CLIENT_ERROR: Integer;
  function _GetRESULT_SERVER_ERROR: Integer;
  function _GetRESULT_NETWORK_ERROR: Integer;
  function _GetRESULT_AUDIO_ERROR: Integer;
  function _GetEXTRA_RESULTS: JString;
  function _GetEXTRA_CONFIDENCE_SCORES: JString;
  function _GetDETAILS_META_DATA: JString;
  function _GetACTION_GET_LANGUAGE_DETAILS: JString;
  function _GetEXTRA_ONLY_RETURN_LANGUAGE_PREFERENCE: JString;
  function _GetEXTRA_LANGUAGE_PREFERENCE: JString;
  function _GetEXTRA_SUPPORTED_LANGUAGES: JString;
  {Methods}
  function getVoiceDetailsIntent(P1: JContext): JIntent; cdecl;
  {Properties}
  property EXTRA_CALLING_PACKAGE: JString read _GetEXTRA_CALLING_PACKAGE;
  property ACTION_RECOGNIZE_SPEECH: JString read _GetACTION_RECOGNIZE_SPEECH;
  property ACTION_WEB_SEARCH: JString read _GetACTION_WEB_SEARCH;
  property ACTION_VOICE_SEARCH_HANDS_FREE: JString read _GetACTION_VOICE_SEARCH_HANDS_FREE;
  property EXTRA_SECURE: JString read _GetEXTRA_SECURE;
  property EXTRA_SPEECH_INPUT_MINIMUM_LENGTH_MILLIS: JString read _GetEXTRA_SPEECH_INPUT_MINIMUM_LENGTH_MILLIS;
  property EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS: JString read _GetEXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS;
  property EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS: JString read _GetEXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS;
  property EXTRA_LANGUAGE_MODEL: JString read _GetEXTRA_LANGUAGE_MODEL;
  property LANGUAGE_MODEL_FREE_FORM: JString read _GetLANGUAGE_MODEL_FREE_FORM;
  property LANGUAGE_MODEL_WEB_SEARCH: JString read _GetLANGUAGE_MODEL_WEB_SEARCH;
  property EXTRA_PROMPT: JString read _GetEXTRA_PROMPT;
  property EXTRA_LANGUAGE: JString read _GetEXTRA_LANGUAGE;
  property EXTRA_ORIGIN: JString read _GetEXTRA_ORIGIN;
  property EXTRA_MAX_RESULTS: JString read _GetEXTRA_MAX_RESULTS;
  property EXTRA_WEB_SEARCH_ONLY: JString read _GetEXTRA_WEB_SEARCH_ONLY;
  property EXTRA_PARTIAL_RESULTS: JString read _GetEXTRA_PARTIAL_RESULTS;
  property EXTRA_RESULTS_PENDINGINTENT: JString read _GetEXTRA_RESULTS_PENDINGINTENT;
  property EXTRA_RESULTS_PENDINGINTENT_BUNDLE: JString read _GetEXTRA_RESULTS_PENDINGINTENT_BUNDLE;
  property RESULT_NO_MATCH: Integer read _GetRESULT_NO_MATCH;
  property RESULT_CLIENT_ERROR: Integer read _GetRESULT_CLIENT_ERROR;
  property RESULT_SERVER_ERROR: Integer read _GetRESULT_SERVER_ERROR;
  property RESULT_NETWORK_ERROR: Integer read _GetRESULT_NETWORK_ERROR;
  property RESULT_AUDIO_ERROR: Integer read _GetRESULT_AUDIO_ERROR;
  property EXTRA_RESULTS: JString read _GetEXTRA_RESULTS;
  property EXTRA_CONFIDENCE_SCORES: JString read _GetEXTRA_CONFIDENCE_SCORES;
  property DETAILS_META_DATA: JString read _GetDETAILS_META_DATA;
  property ACTION_GET_LANGUAGE_DETAILS: JString read _GetACTION_GET_LANGUAGE_DETAILS;
  property EXTRA_ONLY_RETURN_LANGUAGE_PREFERENCE: JString read _GetEXTRA_ONLY_RETURN_LANGUAGE_PREFERENCE;
  property EXTRA_LANGUAGE_PREFERENCE: JString read _GetEXTRA_LANGUAGE_PREFERENCE;
  property EXTRA_SUPPORTED_LANGUAGES: JString read _GetEXTRA_SUPPORTED_LANGUAGES;
end;

[JavaSignature('android/speech/RecognizerIntent')]
JRecognizerIntent = interface(JObject)
['{0432BC72-3F99-4EF0-9F02-B5E55BD974CE}']
end;
TJRecognizerIntent = class(TJavaGenericImport<JRecognizerIntentClass, JRecognizerIntent>) end;

JRecognizerResultsIntentClass = interface(JObjectClass)
['{5F9C0F34-CE2D-4B4A-B432-49CF198F5AF2}']
  {Property Methods}
  function _GetACTION_VOICE_SEARCH_RESULTS: JString;
  function _GetEXTRA_VOICE_SEARCH_RESULT_STRINGS: JString;
  function _GetEXTRA_VOICE_SEARCH_RESULT_URLS: JString;
  function _GetEXTRA_VOICE_SEARCH_RESULT_HTML: JString;
  function _GetEXTRA_VOICE_SEARCH_RESULT_HTML_BASE_URLS: JString;
  function _GetEXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS: JString;
  function _GetURI_SCHEME_INLINE: JString;
  {Properties}
  property ACTION_VOICE_SEARCH_RESULTS: JString read _GetACTION_VOICE_SEARCH_RESULTS;
  property EXTRA_VOICE_SEARCH_RESULT_STRINGS: JString read _GetEXTRA_VOICE_SEARCH_RESULT_STRINGS;
  property EXTRA_VOICE_SEARCH_RESULT_URLS: JString read _GetEXTRA_VOICE_SEARCH_RESULT_URLS;
  property EXTRA_VOICE_SEARCH_RESULT_HTML: JString read _GetEXTRA_VOICE_SEARCH_RESULT_HTML;
  property EXTRA_VOICE_SEARCH_RESULT_HTML_BASE_URLS: JString read _GetEXTRA_VOICE_SEARCH_RESULT_HTML_BASE_URLS;
  property EXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS: JString read _GetEXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS;
  property URI_SCHEME_INLINE: JString read _GetURI_SCHEME_INLINE;
end;

[JavaSignature('android/speech/RecognizerResultsIntent')]
JRecognizerResultsIntent = interface(JObject)
['{ECEE440F-2767-455A-A868-81A4F4A72F24}']
end;
TJRecognizerResultsIntent = class(TJavaGenericImport<JRecognizerResultsIntentClass, JRecognizerResultsIntent>) end;

JTextToSpeech_EngineInfoClass = interface(JObjectClass)
['{ECA80D2D-D36F-43E4-9820-90A8F2122E29}']
  {Methods}
  function init: JTextToSpeech_EngineInfo; cdecl;
end;

[JavaSignature('android/speech/tts/TextToSpeech$EngineInfo')]
JTextToSpeech_EngineInfo = interface(JObject)
['{931C3765-0057-4A59-93EC-93CBEE991ADD}']
  {Property Methods}
  function _Getname: JString;
  procedure _Setname(Value: JString);
  function _Getlabel: JString;
  procedure _Setlabel(Value: JString);
  function _Geticon: Integer;
  procedure _Seticon(Value: Integer);
  {Methods}
  function toString: JString; cdecl;
  {Properties}
  property name: JString read _Getname write _Setname;
  property &label: JString read _Getlabel write _Setlabel;
  property icon: Integer read _Geticon write _Seticon;
end;
TJTextToSpeech_EngineInfo = class(TJavaGenericImport<JTextToSpeech_EngineInfoClass, JTextToSpeech_EngineInfo>) end;

JSynthesisCallbackClass = interface(IJavaClass)
['{241AE5F6-F249-4B95-8D2D-1C5B068C57D2}']
end;

[JavaSignature('android/speech/tts/SynthesisCallback')]
JSynthesisCallback = interface(IJavaInstance)
['{22155271-C2C9-4212-B0C6-01BE152D4F43}']
  {Methods}
  function getMaxBufferSize: Integer; cdecl;
  function start(P1: Integer; P2: Integer; P3: Integer): Integer; cdecl;
  function audioAvailable(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
  function done: Integer; cdecl;
  procedure error; cdecl;
end;
TJSynthesisCallback = class(TJavaGenericImport<JSynthesisCallbackClass, JSynthesisCallback>) end;

JRecognitionListenerClass = interface(IJavaClass)
['{57171073-E9C7-49D8-AE11-323FA3855BD3}']
end;

[JavaSignature('android/speech/RecognitionListener')]
JRecognitionListener = interface(IJavaInstance)
['{24846D38-C77E-4971-B8AC-65D1860CEB44}']
  {Methods}
  procedure onReadyForSpeech(P1: JBundle); cdecl;
  procedure onBeginningOfSpeech; cdecl;
  procedure onRmsChanged(P1: Single); cdecl;
  procedure onBufferReceived(P1: TJavaArray<Byte>); cdecl;
  procedure onEndOfSpeech; cdecl;
  procedure onError(P1: Integer); cdecl;
  procedure onResults(P1: JBundle); cdecl;
  procedure onPartialResults(P1: JBundle); cdecl;
  procedure onEvent(P1: Integer; P2: JBundle); cdecl;
end;
TJRecognitionListener = class(TJavaGenericImport<JRecognitionListenerClass, JRecognitionListener>) end;

JTextToSpeech_OnUtteranceCompletedListenerClass = interface(IJavaClass)
['{83D093B7-6FB6-46FE-A08E-1B0D25BDA841}']
end;

[JavaSignature('android/speech/tts/TextToSpeech$OnUtteranceCompletedListener')]
JTextToSpeech_OnUtteranceCompletedListener = interface(IJavaInstance)
['{3EA0D21E-74E4-4204-A18F-2F68FE126E18}']
  {Methods}
  procedure onUtteranceCompleted(P1: JString); cdecl;
end;
TJTextToSpeech_OnUtteranceCompletedListener = class(TJavaGenericImport<JTextToSpeech_OnUtteranceCompletedListenerClass, JTextToSpeech_OnUtteranceCompletedListener>) end;

JTextToSpeechServiceClass = interface(JServiceClass)
['{2A7E4DA5-50FC-43AA-8ACC-98487C02147B}']
  {Methods}
  function init: JTextToSpeechService; cdecl;
end;

[JavaSignature('android/speech/tts/TextToSpeechService')]
JTextToSpeechService = interface(JService)
['{52D88001-D8F7-4D5B-8194-CF6AEFD0C918}']
  {Methods}
  procedure onCreate; cdecl;
  procedure onDestroy; cdecl;
  function onBind(P1: JIntent): JIBinder; cdecl;
end;
TJTextToSpeechService = class(TJavaGenericImport<JTextToSpeechServiceClass, JTextToSpeechService>) end;

JTextToSpeech_EngineClass = interface(JObjectClass)
['{75457E65-C0B1-4AF3-A166-A553887479C5}']
  {Property Methods}
  function _GetDEFAULT_STREAM: Integer;
  function _GetCHECK_VOICE_DATA_PASS: Integer;
  function _GetCHECK_VOICE_DATA_FAIL: Integer;
  function _GetCHECK_VOICE_DATA_BAD_DATA: Integer;
  function _GetCHECK_VOICE_DATA_MISSING_DATA: Integer;
  function _GetCHECK_VOICE_DATA_MISSING_VOLUME: Integer;
  function _GetINTENT_ACTION_TTS_SERVICE: JString;
  function _GetSERVICE_META_DATA: JString;
  function _GetACTION_INSTALL_TTS_DATA: JString;
  function _GetACTION_TTS_DATA_INSTALLED: JString;
  function _GetACTION_CHECK_TTS_DATA: JString;
  function _GetEXTRA_VOICE_DATA_ROOT_DIRECTORY: JString;
  function _GetEXTRA_VOICE_DATA_FILES: JString;
  function _GetEXTRA_VOICE_DATA_FILES_INFO: JString;
  function _GetEXTRA_AVAILABLE_VOICES: JString;
  function _GetEXTRA_UNAVAILABLE_VOICES: JString;
  function _GetEXTRA_CHECK_VOICE_DATA_FOR: JString;
  function _GetEXTRA_TTS_DATA_INSTALLED: JString;
  function _GetKEY_PARAM_STREAM: JString;
  function _GetKEY_PARAM_UTTERANCE_ID: JString;
  function _GetKEY_PARAM_VOLUME: JString;
  function _GetKEY_PARAM_PAN: JString;
  function _GetKEY_FEATURE_NETWORK_SYNTHESIS: JString;
  function _GetKEY_FEATURE_EMBEDDED_SYNTHESIS: JString;
  {Methods}
  function init(P1: JTextToSpeech): JTextToSpeech_Engine; cdecl;
  {Properties}
  property DEFAULT_STREAM: Integer read _GetDEFAULT_STREAM;
  property CHECK_VOICE_DATA_PASS: Integer read _GetCHECK_VOICE_DATA_PASS;
  property CHECK_VOICE_DATA_FAIL: Integer read _GetCHECK_VOICE_DATA_FAIL;
  property CHECK_VOICE_DATA_BAD_DATA: Integer read _GetCHECK_VOICE_DATA_BAD_DATA;
  property CHECK_VOICE_DATA_MISSING_DATA: Integer read _GetCHECK_VOICE_DATA_MISSING_DATA;
  property CHECK_VOICE_DATA_MISSING_VOLUME: Integer read _GetCHECK_VOICE_DATA_MISSING_VOLUME;
  property INTENT_ACTION_TTS_SERVICE: JString read _GetINTENT_ACTION_TTS_SERVICE;
  property SERVICE_META_DATA: JString read _GetSERVICE_META_DATA;
  property ACTION_INSTALL_TTS_DATA: JString read _GetACTION_INSTALL_TTS_DATA;
  property ACTION_TTS_DATA_INSTALLED: JString read _GetACTION_TTS_DATA_INSTALLED;
  property ACTION_CHECK_TTS_DATA: JString read _GetACTION_CHECK_TTS_DATA;
  property EXTRA_VOICE_DATA_ROOT_DIRECTORY: JString read _GetEXTRA_VOICE_DATA_ROOT_DIRECTORY;
  property EXTRA_VOICE_DATA_FILES: JString read _GetEXTRA_VOICE_DATA_FILES;
  property EXTRA_VOICE_DATA_FILES_INFO: JString read _GetEXTRA_VOICE_DATA_FILES_INFO;
  property EXTRA_AVAILABLE_VOICES: JString read _GetEXTRA_AVAILABLE_VOICES;
  property EXTRA_UNAVAILABLE_VOICES: JString read _GetEXTRA_UNAVAILABLE_VOICES;
  property EXTRA_CHECK_VOICE_DATA_FOR: JString read _GetEXTRA_CHECK_VOICE_DATA_FOR;
  property EXTRA_TTS_DATA_INSTALLED: JString read _GetEXTRA_TTS_DATA_INSTALLED;
  property KEY_PARAM_STREAM: JString read _GetKEY_PARAM_STREAM;
  property KEY_PARAM_UTTERANCE_ID: JString read _GetKEY_PARAM_UTTERANCE_ID;
  property KEY_PARAM_VOLUME: JString read _GetKEY_PARAM_VOLUME;
  property KEY_PARAM_PAN: JString read _GetKEY_PARAM_PAN;
  property KEY_FEATURE_NETWORK_SYNTHESIS: JString read _GetKEY_FEATURE_NETWORK_SYNTHESIS;
  property KEY_FEATURE_EMBEDDED_SYNTHESIS: JString read _GetKEY_FEATURE_EMBEDDED_SYNTHESIS;
end;

[JavaSignature('android/speech/tts/TextToSpeech$Engine')]
JTextToSpeech_Engine = interface(JObject)
['{A876F830-EEA2-4A8E-B40D-B7AA567205EE}']
end;
TJTextToSpeech_Engine = class(TJavaGenericImport<JTextToSpeech_EngineClass, JTextToSpeech_Engine>) end;

JRecognitionServiceClass = interface(JServiceClass)
['{38BB1897-9457-4C99-B64E-6B4CFDDC1CE2}']
  {Property Methods}
  function _GetSERVICE_INTERFACE: JString;
  function _GetSERVICE_META_DATA: JString;
  {Methods}
  function init: JRecognitionService; cdecl;
  {Properties}
  property SERVICE_INTERFACE: JString read _GetSERVICE_INTERFACE;
  property SERVICE_META_DATA: JString read _GetSERVICE_META_DATA;
end;

[JavaSignature('android/speech/RecognitionService')]
JRecognitionService = interface(JService)
['{5A5D7D5D-CD74-4498-96B5-496207272EB2}']
  {Methods}
  function onBind(P1: JIntent): JIBinder; cdecl;
  procedure onDestroy; cdecl;
end;
TJRecognitionService = class(TJavaGenericImport<JRecognitionServiceClass, JRecognitionService>) end;

JRecognitionService_CallbackClass = interface(JObjectClass)
['{925781D8-028E-474D-BA6B-77929050BF14}']
end;

[JavaSignature('android/speech/RecognitionService$Callback')]
JRecognitionService_Callback = interface(JObject)
['{80A61346-2FB7-4936-8A93-C5A64B38C75C}']
  {Methods}
  procedure beginningOfSpeech; cdecl;
  procedure bufferReceived(P1: TJavaArray<Byte>); cdecl;
  procedure endOfSpeech; cdecl;
  procedure error(P1: Integer); cdecl;
  procedure partialResults(P1: JBundle); cdecl;
  procedure readyForSpeech(P1: JBundle); cdecl;
  procedure results(P1: JBundle); cdecl;
  procedure rmsChanged(P1: Single); cdecl;
end;
TJRecognitionService_Callback = class(TJavaGenericImport<JRecognitionService_CallbackClass, JRecognitionService_Callback>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JUtteranceProgressListener', TypeInfo(Androidapi.JNI.Speech.JUtteranceProgressListener));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JSynthesisRequest', TypeInfo(Androidapi.JNI.Speech.JSynthesisRequest));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JSpeechRecognizer', TypeInfo(Androidapi.JNI.Speech.JSpeechRecognizer));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JTextToSpeech', TypeInfo(Androidapi.JNI.Speech.JTextToSpeech));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JTextToSpeech_OnInitListener', TypeInfo(Androidapi.JNI.Speech.JTextToSpeech_OnInitListener));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JRecognizerIntent', TypeInfo(Androidapi.JNI.Speech.JRecognizerIntent));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JRecognizerResultsIntent', TypeInfo(Androidapi.JNI.Speech.JRecognizerResultsIntent));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JTextToSpeech_EngineInfo', TypeInfo(Androidapi.JNI.Speech.JTextToSpeech_EngineInfo));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JSynthesisCallback', TypeInfo(Androidapi.JNI.Speech.JSynthesisCallback));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JRecognitionListener', TypeInfo(Androidapi.JNI.Speech.JRecognitionListener));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JTextToSpeech_OnUtteranceCompletedListener', TypeInfo(Androidapi.JNI.Speech.JTextToSpeech_OnUtteranceCompletedListener));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JTextToSpeechService', TypeInfo(Androidapi.JNI.Speech.JTextToSpeechService));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JTextToSpeech_Engine', TypeInfo(Androidapi.JNI.Speech.JTextToSpeech_Engine));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JRecognitionService', TypeInfo(Androidapi.JNI.Speech.JRecognitionService));
  TRegTypes.RegisterType('Androidapi.JNI.Speech.JRecognitionService_Callback', TypeInfo(Androidapi.JNI.Speech.JRecognitionService_Callback));
end;

initialization
  RegisterTypes;
end.


