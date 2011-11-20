inherited frmNavegador: TfrmNavegador
  Left = 273
  Top = 199
  Caption = 'Navegador'
  OnActivate = FormActivate
  PixelsPerInch = 120
  TextHeight = 16
  object viewer: ThtmlLite
    Left = 0
    Top = 0
    Width = 688
    Height = 448
    ViewImages = False
    TabOrder = 0
    Align = alClient
    BorderStyle = htFocused
    HistoryMaxCount = 0
    DefFontName = 'Times New Roman'
    DefPreFontName = 'Courier New'
    NoSelect = False
    CharSet = DEFAULT_CHARSET
    htOptions = []
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = False
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 40
    Top = 80
  end
end
