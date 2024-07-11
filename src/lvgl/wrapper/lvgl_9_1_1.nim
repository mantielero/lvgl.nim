
const
  internallvstrsymbolbullet* = cuint(0)
const
  internallvstrsymbolaudio* = cuint(1)
const
  internallvstrsymbolvideo* = cuint(2)
const
  internallvstrsymbollist* = cuint(3)
const
  internallvstrsymbolok* = cuint(4)
const
  internallvstrsymbolclose* = cuint(5)
const
  internallvstrsymbolpower* = cuint(6)
const
  internallvstrsymbolsettings* = cuint(7)
const
  internallvstrsymbolhome* = cuint(8)
const
  internallvstrsymboldownload* = cuint(9)
const
  internallvstrsymboldrive* = cuint(10)
const
  internallvstrsymbolrefresh* = cuint(11)
const
  internallvstrsymbolmute* = cuint(12)
const
  internallvstrsymbolvolumemid* = cuint(13)
const
  internallvstrsymbolvolumemax* = cuint(14)
const
  internallvstrsymbolimage* = cuint(15)
const
  internallvstrsymboltint* = cuint(16)
const
  internallvstrsymbolprev* = cuint(17)
const
  internallvstrsymbolplay* = cuint(18)
const
  internallvstrsymbolpause* = cuint(19)
const
  internallvstrsymbolstop* = cuint(20)
const
  internallvstrsymbolnext* = cuint(21)
const
  internallvstrsymboleject* = cuint(22)
const
  internallvstrsymbolleft* = cuint(23)
const
  internallvstrsymbolright* = cuint(24)
const
  internallvstrsymbolplus* = cuint(25)
const
  internallvstrsymbolminus* = cuint(26)
const
  internallvstrsymboleyeopen* = cuint(27)
const
  internallvstrsymboleyeclose* = cuint(28)
const
  internallvstrsymbolwarning* = cuint(29)
const
  internallvstrsymbolshuffle* = cuint(30)
const
  internallvstrsymbolup* = cuint(31)
const
  internallvstrsymboldown* = cuint(32)
const
  internallvstrsymbolloop* = cuint(33)
const
  internallvstrsymboldirectory* = cuint(34)
const
  internallvstrsymbolupload* = cuint(35)
const
  internallvstrsymbolcall* = cuint(36)
const
  internallvstrsymbolcut* = cuint(37)
const
  internallvstrsymbolcopy* = cuint(38)
const
  internallvstrsymbolsave* = cuint(39)
const
  internallvstrsymbolbars* = cuint(40)
const
  internallvstrsymbolenvelope* = cuint(41)
const
  internallvstrsymbolcharge* = cuint(42)
const
  internallvstrsymbolpaste* = cuint(43)
const
  internallvstrsymbolbell* = cuint(44)
const
  internallvstrsymbolkeyboard* = cuint(45)
const
  internallvstrsymbolgps* = cuint(46)
const
  internallvstrsymbolfile* = cuint(47)
const
  internallvstrsymbolwifi* = cuint(48)
const
  internallvstrsymbolbatteryfull* = cuint(49)
const
  internallvstrsymbolbattery3* = cuint(50)
const
  internallvstrsymbolbattery2* = cuint(51)
const
  internallvstrsymbolbattery1* = cuint(52)
const
  internallvstrsymbolbatteryempty* = cuint(53)
const
  internallvstrsymbolusb* = cuint(54)
const
  internallvstrsymbolbluetooth* = cuint(55)
const
  internallvstrsymboltrash* = cuint(56)
const
  internallvstrsymboledit* = cuint(57)
const
  internallvstrsymbolbackspace* = cuint(58)
const
  internallvstrsymbolsdcard* = cuint(59)
const
  internallvstrsymbolnewline* = cuint(60)
const
  internallvstrsymboldummy* = cuint(61)
const
  Lvscalemodehorizontaltop* = cuint(0)
const
  Lvscalemodehorizontalbottom* = cuint(1)
const
  Lvscalemodeverticalleft* = cuint(2)
const
  Lvscalemodeverticalright* = cuint(4)
const
  Lvscalemoderoundinner* = cuint(8)
const
  Lvscalemoderoundouter* = cuint(16)
const
  internallvscalemodelast* = cuint(17)
const
  Lvparttextareaplaceholder* = cuint(524288)
const
  Lvvectorfillnonzero* = cuint(0)
const
  Lvvectorfillevenodd* = cuint(1)
const
  Lvvectorstrokecapbutt* = cuint(0)
const
  Lvvectorstrokecapsquare* = cuint(1)
const
  Lvvectorstrokecapround* = cuint(2)
const
  Lvvectorstrokejoinmiter* = cuint(0)
const
  Lvvectorstrokejoinbevel* = cuint(1)
const
  Lvvectorstrokejoinround* = cuint(2)
const
  Lvvectorpathqualitymedium* = cuint(0)
const
  Lvvectorpathqualityhigh* = cuint(1)
const
  Lvvectorpathqualitylow* = cuint(2)
const
  Lvvectorblendsrcover* = cuint(0)
const
  Lvvectorblendsrcin* = cuint(1)
const
  Lvvectorblenddstover* = cuint(2)
const
  Lvvectorblenddstin* = cuint(3)
const
  Lvvectorblendscreen* = cuint(4)
const
  Lvvectorblendmultiply* = cuint(5)
const
  Lvvectorblendnone* = cuint(6)
const
  Lvvectorblendadditive* = cuint(7)
const
  Lvvectorblendsubtractive* = cuint(8)
const
  Lvvectorpathopmoveto* = cuint(0)
const
  Lvvectorpathoplineto* = cuint(1)
const
  Lvvectorpathopquadto* = cuint(2)
const
  Lvvectorpathopcubicto* = cuint(3)
const
  Lvvectorpathopclose* = cuint(4)
const
  Lvvectordrawstylesolid* = cuint(0)
const
  Lvvectordrawstylepattern* = cuint(1)
const
  Lvvectordrawstylegradient* = cuint(2)
const
  Lvvectorgradientspreadpad* = cuint(0)
const
  Lvvectorgradientspreadrepeat* = cuint(1)
const
  Lvvectorgradientspreadreflect* = cuint(2)
const
  Lvvectorgradientstylelinear* = cuint(0)
const
  Lvvectorgradientstyleradial* = cuint(1)
const
  Lvdrawswmaskrestransp* = cuint(0)
const
  Lvdrawswmaskresfullcover* = cuint(1)
const
  Lvdrawswmaskreschanged* = cuint(2)
const
  Lvdrawswmaskresunknown* = cuint(3)
const
  Lvdrawswmasktypeline* = cuint(0)
const
  Lvdrawswmasktypeangle* = cuint(1)
const
  Lvdrawswmasktyperadius* = cuint(2)
const
  Lvdrawswmasktypefade* = cuint(3)
const
  Lvdrawswmasktypemap* = cuint(4)
const
  Lvdrawswmasklinesideleft* = cuint(0)
const
  Lvdrawswmasklinesideright* = cuint(1)
const
  Lvdrawswmasklinesidetop* = cuint(2)
const
  Lvdrawswmasklinesidebottom* = cuint(3)
type
  enumlvresultt* {.size: sizeof(cuint).} = enum
    Lvresultinvalid = 0, Lvresultok = 1
type
  enumlvanimenablet* {.size: sizeof(cuint).} = enum
    Lvanimoff = 0, Lvanimon = 1
type
  enumlvrbcolort* {.size: sizeof(cuint).} = enum
    Lvrbcolorred = 0, Lvrbcolorblack = 1
type
  enumlvalignt* {.size: sizeof(cuint).} = enum
    Lvaligndefault = 0, Lvaligntopleft = 1, Lvaligntopmid = 2,
    Lvaligntopright = 3, Lvalignbottomleft = 4, Lvalignbottommid = 5,
    Lvalignbottomright = 6, Lvalignleftmid = 7, Lvalignrightmid = 8,
    Lvaligncenter = 9, Lvalignouttopleft = 10, Lvalignouttopmid = 11,
    Lvalignouttopright = 12, Lvalignoutbottomleft = 13,
    Lvalignoutbottommid = 14, Lvalignoutbottomright = 15,
    Lvalignoutlefttop = 16, Lvalignoutleftmid = 17, Lvalignoutleftbottom = 18,
    Lvalignoutrighttop = 19, Lvalignoutrightmid = 20, Lvalignoutrightbottom = 21
type
  enumlvdirt* {.size: sizeof(cuint).} = enum
    Lvdirnone = 0, Lvdirleft = 1, Lvdirright = 2, Lvdirhor = 3, Lvdirtop = 4,
    Lvdirbottom = 8, Lvdirver = 12, Lvdirall = 15
type
  enumlvopat* {.size: sizeof(cuint).} = enum
    Lvopatransp = 0, Lvopa10 = 25, Lvopa20 = 51, Lvopa30 = 76, Lvopa40 = 102,
    Lvopa50 = 127, Lvopa60 = 153, Lvopa70 = 178, Lvopa80 = 204, Lvopa90 = 229,
    Lvopa100 = 255
const
  Lvopa0* = enumlvopat.Lvopatransp
const
  Lvopacover* = enumlvopat.Lvopa100
type
  enumlvcolorformatt* {.size: sizeof(cuint).} = enum
    Lvcolorformatunknown = 0, Lvcolorformatraw = 1, Lvcolorformatrawalpha = 2,
    Lvcolorformatl8 = 6, Lvcolorformati1 = 7, Lvcolorformati2 = 8,
    Lvcolorformati4 = 9, Lvcolorformati8 = 10, Lvcolorformata1 = 11,
    Lvcolorformata2 = 12, Lvcolorformata4 = 13, Lvcolorformata8 = 14,
    Lvcolorformatrgb888 = 15, Lvcolorformatargb8888 = 16,
    Lvcolorformatxrgb8888 = 17, Lvcolorformatrgb565 = 18,
    Lvcolorformatargb8565 = 19, Lvcolorformatrgb565a8 = 20,
    Lvcolorformatal88 = 21, Lvcolorformatyuvstart = 32, Lvcolorformati422 = 33,
    Lvcolorformati444 = 34, Lvcolorformati400 = 35, Lvcolorformatnv21 = 36,
    Lvcolorformatnv12 = 37, Lvcolorformatyuy2 = 38, Lvcolorformatuyvy = 39
const
  Lvcolorformati420* = enumlvcolorformatt.Lvcolorformatyuvstart
const
  Lvcolorformatyuvend* = enumlvcolorformatt.Lvcolorformatuyvy
const
  Lvcolorformatnative* = enumlvcolorformatt.Lvcolorformatrgb565
const
  Lvcolorformatnativewithalpha* = enumlvcolorformatt.Lvcolorformatrgb565a8
type
  enumlvpalettet* {.size: sizeof(cuint).} = enum
    Lvpalettered = 0, Lvpalettepink = 1, Lvpalettepurple = 2,
    Lvpalettedeeppurple = 3, Lvpaletteindigo = 4, Lvpaletteblue = 5,
    Lvpalettelightblue = 6, Lvpalettecyan = 7, Lvpaletteteal = 8,
    Lvpalettegreen = 9, Lvpalettelightgreen = 10, Lvpalettelime = 11,
    Lvpaletteyellow = 12, Lvpaletteamber = 13, Lvpaletteorange = 14,
    Lvpalettedeeporange = 15, Lvpalettebrown = 16, Lvpalettebluegrey = 17,
    Lvpalettegrey = 18, internallvpalettelast = 19, Lvpalettenone = 255
type
  enumlvimageflagst* {.size: sizeof(cuint).} = enum
    Lvimageflagspremultiplied = 1, Lvimageflagscompressed = 8,
    Lvimageflagsallocated = 16, Lvimageflagsmodifiable = 32,
    Lvimageflagsuser1 = 256, Lvimageflagsuser2 = 512, Lvimageflagsuser3 = 1024,
    Lvimageflagsuser4 = 2048, Lvimageflagsuser5 = 4096,
    Lvimageflagsuser6 = 8192, Lvimageflagsuser7 = 16384,
    Lvimageflagsuser8 = 32768
type
  enumlvimagecompresst* {.size: sizeof(cuint).} = enum
    Lvimagecompressnone = 0, Lvimagecompressrle = 1, Lvimagecompresslz4 = 2
type
  enumlvthreadpriot* {.size: sizeof(cuint).} = enum
    Lvthreadpriolowest = 0, Lvthreadpriolow = 1, Lvthreadpriomid = 2,
    Lvthreadpriohigh = 3, Lvthreadpriohighest = 4
type
  enumlvcachereservecondrest* {.size: sizeof(cuint).} = enum
    Lvcachereservecondok = 0, Lvcachereservecondtoolarge = 1,
    Lvcachereservecondneedvictim = 2, Lvcachereserveconderror = 3
type
  enumlvfontglyphformatt* {.size: sizeof(cuint).} = enum
    Lvfontglyphformatnone = 0, Lvfontglyphformata1 = 1, Lvfontglyphformata2 = 2,
    Lvfontglyphformata4 = 4, Lvfontglyphformata8 = 8,
    Lvfontglyphformatimage = 9, Lvfontglyphformatvector = 10,
    Lvfontglyphformatsvg = 11, Lvfontglyphformatcustom = 255
type
  enumlvfontsubpxt* {.size: sizeof(cuint).} = enum
    Lvfontsubpxnone = 0, Lvfontsubpxhor = 1, Lvfontsubpxver = 2,
    Lvfontsubpxboth = 3
type
  enumlvfontkerningt* {.size: sizeof(cuint).} = enum
    Lvfontkerningnormal = 0, Lvfontkerningnone = 1
type
  enumlvtextflagt* {.size: sizeof(cuint).} = enum
    Lvtextflagnone = 0, Lvtextflagexpand = 1, Lvtextflagfit = 2
type
  enumlvtextalignt* {.size: sizeof(cuint).} = enum
    Lvtextalignauto = 0, Lvtextalignleft = 1, Lvtextaligncenter = 2,
    Lvtextalignright = 3
type
  enumlvbasedirt* {.size: sizeof(cuint).} = enum
    Lvbasedirltr = 0, Lvbasedirrtl = 1, Lvbasedirauto = 2,
    Lvbasedirneutral = 32, Lvbasedirweak = 33
type
  enumlvlayoutt* {.size: sizeof(cuint).} = enum
    Lvlayoutnone = 0, Lvlayoutflex = 1, Lvlayoutgrid = 2,
    internallvlayoutlast = 3
type
  enumlvflexalignt* {.size: sizeof(cuint).} = enum
    Lvflexalignstart = 0, Lvflexalignend = 1, Lvflexaligncenter = 2,
    Lvflexalignspaceevenly = 3, Lvflexalignspacearound = 4,
    Lvflexalignspacebetween = 5
type
  enumlvflexflowt* {.size: sizeof(cuint).} = enum
    Lvflexflowrow = 0, Lvflexflowcolumn = 1, Lvflexflowrowwrap = 4,
    Lvflexflowcolumnwrap = 5, Lvflexflowrowreverse = 8,
    Lvflexflowcolumnreverse = 9, Lvflexflowrowwrapreverse = 12,
    Lvflexflowcolumnwrapreverse = 13
type
  enumlvgridalignt* {.size: sizeof(cuint).} = enum
    Lvgridalignstart = 0, Lvgridaligncenter = 1, Lvgridalignend = 2,
    Lvgridalignstretch = 3, Lvgridalignspaceevenly = 4,
    Lvgridalignspacearound = 5, Lvgridalignspacebetween = 6
type
  enumlvblendmodet* {.size: sizeof(cuint).} = enum
    Lvblendmodenormal = 0, Lvblendmodeadditive = 1, Lvblendmodesubtractive = 2,
    Lvblendmodemultiply = 3
type
  enumlvtextdecort* {.size: sizeof(cuint).} = enum
    Lvtextdecornone = 0, Lvtextdecorunderline = 1, Lvtextdecorstrikethrough = 2
type
  enumlvbordersidet* {.size: sizeof(cuint).} = enum
    Lvbordersidenone = 0, Lvbordersidebottom = 1, Lvbordersidetop = 2,
    Lvbordersideleft = 4, Lvbordersideright = 8, Lvbordersidefull = 15,
    Lvbordersideinternal = 16
type
  enumlvgraddirt* {.size: sizeof(cuint).} = enum
    Lvgraddirnone = 0, Lvgraddirver = 1, Lvgraddirhor = 2, Lvgraddirlinear = 3,
    Lvgraddirradial = 4, Lvgraddirconical = 5
type
  enumlvgradextendt* {.size: sizeof(cuint).} = enum
    Lvgradextendpad = 0, Lvgradextendrepeat = 1, Lvgradextendreflect = 2
type
  enumlvstylepropt* {.size: sizeof(cuint).} = enum
    Lvstylepropinv = 0, Lvstylewidth = 1, Lvstyleheight = 2, Lvstylelength = 3,
    Lvstyleminwidth = 4, Lvstylemaxwidth = 5, Lvstyleminheight = 6,
    Lvstylemaxheight = 7, Lvstylex = 8, Lvstyley = 9, Lvstylealign = 10,
    Lvstyleradius = 12, Lvstylepadtop = 16, Lvstylepadbottom = 17,
    Lvstylepadleft = 18, Lvstylepadright = 19, Lvstylepadrow = 20,
    Lvstylepadcolumn = 21, Lvstylelayout = 22, Lvstylemargintop = 24,
    Lvstylemarginbottom = 25, Lvstylemarginleft = 26, Lvstylemarginright = 27,
    Lvstylebgcolor = 28, Lvstylebgopa = 29, Lvstylebggraddir = 32,
    Lvstylebgmainstop = 33, Lvstylebggradstop = 34, Lvstylebggradcolor = 35,
    Lvstylebgmainopa = 36, Lvstylebggradopa = 37, Lvstylebggrad = 38,
    Lvstylebasedir = 39, Lvstylebgimagesrc = 40, Lvstylebgimageopa = 41,
    Lvstylebgimagerecolor = 42, Lvstylebgimagerecoloropa = 43,
    Lvstylebgimagetiled = 44, Lvstyleclipcorner = 45, Lvstyleborderwidth = 48,
    Lvstylebordercolor = 49, Lvstyleborderopa = 50, Lvstyleborderside = 52,
    Lvstyleborderpost = 53, Lvstyleoutlinewidth = 56, Lvstyleoutlinecolor = 57,
    Lvstyleoutlineopa = 58, Lvstyleoutlinepad = 59, Lvstyleshadowwidth = 60,
    Lvstyleshadowcolor = 61, Lvstyleshadowopa = 62, Lvstyleshadowoffsetx = 64,
    Lvstyleshadowoffsety = 65, Lvstyleshadowspread = 66, Lvstyleimageopa = 68,
    Lvstyleimagerecolor = 69, Lvstyleimagerecoloropa = 70,
    Lvstylelinewidth = 72, Lvstylelinedashwidth = 73, Lvstylelinedashgap = 74,
    Lvstylelinerounded = 75, Lvstylelinecolor = 76, Lvstylelineopa = 77,
    Lvstylearcwidth = 80, Lvstylearcrounded = 81, Lvstylearccolor = 82,
    Lvstylearcopa = 83, Lvstylearcimagesrc = 84, Lvstyletextcolor = 88,
    Lvstyletextopa = 89, Lvstyletextfont = 90, Lvstyletextletterspace = 91,
    Lvstyletextlinespace = 92, Lvstyletextdecor = 93, Lvstyletextalign = 94,
    Lvstyleopa = 95, Lvstyleopalayered = 96, Lvstylecolorfilterdsc = 97,
    Lvstylecolorfilteropa = 98, Lvstyleanim = 99, Lvstyleanimduration = 100,
    Lvstyletransition = 102, Lvstyleblendmode = 103,
    Lvstyletransformwidth = 104, Lvstyletransformheight = 105,
    Lvstyletranslatex = 106, Lvstyletranslatey = 107,
    Lvstyletransformscalex = 108, Lvstyletransformscaley = 109,
    Lvstyletransformrotation = 110, Lvstyletransformpivotx = 111,
    Lvstyletransformpivoty = 112, Lvstyletransformskewx = 113,
    Lvstyletransformskewy = 114, Lvstylebitmapmasksrc = 115,
    Lvstylerotarysensitivity = 116, Lvstyleflexflow = 125,
    Lvstyleflexmainplace = 126, Lvstyleflexcrossplace = 127,
    Lvstyleflextrackplace = 128, Lvstyleflexgrow = 129,
    Lvstylegridcolumnalign = 130, Lvstylegridrowalign = 131,
    Lvstylegridrowdscarray = 132, Lvstylegridcolumndscarray = 133,
    Lvstylegridcellcolumnpos = 134, Lvstylegridcellcolumnspan = 135,
    Lvstylegridcellxalign = 136, Lvstylegridcellrowpos = 137,
    Lvstylegridcellrowspan = 138, Lvstylegridcellyalign = 139,
    internallvstylelastbuiltinprop = 140, internallvstylenumbuiltinprops = 141,
    Lvstylepropany = 255
const
  internallvstylepropconst* = enumlvstylepropt.Lvstylepropany
type
  enumlvstylerest* {.size: sizeof(cuint).} = enum
    Lvstyleresnotfound = 0, Lvstyleresfound = 1
type
  enumlveventcodet* {.size: sizeof(cuint).} = enum
    Lveventall = 0, Lveventpressed = 1, Lveventpressing = 2,
    Lveventpresslost = 3, Lveventshortclicked = 4, Lveventlongpressed = 5,
    Lveventlongpressedrepeat = 6, Lveventclicked = 7, Lveventreleased = 8,
    Lveventscrollbegin = 9, Lveventscrollthrowbegin = 10, Lveventscrollend = 11,
    Lveventscroll = 12, Lveventgesture = 13, Lveventkey = 14,
    Lveventrotary = 15, Lveventfocused = 16, Lveventdefocused = 17,
    Lveventleave = 18, Lveventhittest = 19, Lveventindevreset = 20,
    Lveventhoverover = 21, Lveventhoverleave = 22, Lveventcovercheck = 23,
    Lveventrefrextdrawsize = 24, Lveventdrawmainbegin = 25,
    Lveventdrawmain = 26, Lveventdrawmainend = 27, Lveventdrawpostbegin = 28,
    Lveventdrawpost = 29, Lveventdrawpostend = 30, Lveventdrawtaskadded = 31,
    Lveventvaluechanged = 32, Lveventinsert = 33, Lveventrefresh = 34,
    Lveventready = 35, Lveventcancel = 36, Lveventcreate = 37,
    Lveventdelete = 38, Lveventchildchanged = 39, Lveventchildcreated = 40,
    Lveventchilddeleted = 41, Lveventscreenunloadstart = 42,
    Lveventscreenloadstart = 43, Lveventscreenloaded = 44,
    Lveventscreenunloaded = 45, Lveventsizechanged = 46,
    Lveventstylechanged = 47, Lveventlayoutchanged = 48,
    Lveventgetselfsize = 49, Lveventinvalidatearea = 50,
    Lveventresolutionchanged = 51, Lveventcolorformatchanged = 52,
    Lveventrefrrequest = 53, Lveventrefrstart = 54, Lveventrefrready = 55,
    Lveventrenderstart = 56, Lveventrenderready = 57, Lveventflushstart = 58,
    Lveventflushfinish = 59, Lveventflushwaitstart = 60,
    Lveventflushwaitfinish = 61, Lveventvsync = 62, internallveventlast = 63,
    Lveventpreprocess = 32768
type
  enumlvfsrest* {.size: sizeof(cuint).} = enum
    Lvfsresok = 0, Lvfsreshwerr = 1, Lvfsresfserr = 2, Lvfsresnotex = 3,
    Lvfsresfull = 4, Lvfsreslocked = 5, Lvfsresdenied = 6, Lvfsresbusy = 7,
    Lvfsrestout = 8, Lvfsresnotimp = 9, Lvfsresoutofmem = 10,
    Lvfsresinvparam = 11, Lvfsresunknown = 12
type
  enumlvfsmodet* {.size: sizeof(cuint).} = enum
    Lvfsmodewr = 1, Lvfsmoderd = 2
type
  enumlvfswhencet* {.size: sizeof(cuint).} = enum
    Lvfsseekset = 0, Lvfsseekcur = 1, Lvfsseekend = 2
type
  enumlvimagesrct* {.size: sizeof(cuint).} = enum
    Lvimagesrcvariable = 0, Lvimagesrcfile = 1, Lvimagesrcsymbol = 2,
    Lvimagesrcunknown = 3
type
  enumlvdrawtasktypet* {.size: sizeof(cuint).} = enum
    Lvdrawtasktypefill = 0, Lvdrawtasktypeborder = 1,
    Lvdrawtasktypeboxshadow = 2, Lvdrawtasktypelabel = 3,
    Lvdrawtasktypeimage = 4, Lvdrawtasktypelayer = 5, Lvdrawtasktypeline = 6,
    Lvdrawtasktypearc = 7, Lvdrawtasktypetriangle = 8,
    Lvdrawtasktypemaskrectangle = 9, Lvdrawtasktypemaskbitmap = 10,
    Lvdrawtasktypevector = 11
type
  enumlvdrawtaskstatet* {.size: sizeof(cuint).} = enum
    Lvdrawtaskstatewaiting = 0, Lvdrawtaskstatequeued = 1,
    Lvdrawtaskstateinprogress = 2, Lvdrawtaskstateready = 3
type
  enumlvdisplayrotationt* {.size: sizeof(cuint).} = enum
    Lvdisplayrotation0 = 0, Lvdisplayrotation90 = 1, Lvdisplayrotation180 = 2,
    Lvdisplayrotation270 = 3
type
  enumlvdisplayrendermodet* {.size: sizeof(cuint).} = enum
    Lvdisplayrendermodepartial = 0, Lvdisplayrendermodedirect = 1,
    Lvdisplayrendermodefull = 2
type
  enumlvscreenloadanimt* {.size: sizeof(cuint).} = enum
    Lvscrloadanimnone = 0, Lvscrloadanimoverleft = 1,
    Lvscrloadanimoverright = 2, Lvscrloadanimovertop = 3,
    Lvscrloadanimoverbottom = 4, Lvscrloadanimmoveleft = 5,
    Lvscrloadanimmoveright = 6, Lvscrloadanimmovetop = 7,
    Lvscrloadanimmovebottom = 8, Lvscrloadanimfadein = 9,
    Lvscrloadanimfadeout = 10, Lvscrloadanimoutleft = 11,
    Lvscrloadanimoutright = 12, Lvscrloadanimouttop = 13,
    Lvscrloadanimoutbottom = 14
const
  Lvscrloadanimfadeon* = enumlvscreenloadanimt.Lvscrloadanimfadein
type
  enumlvobjtreewalkrest* {.size: sizeof(cuint).} = enum
    Lvobjtreewalknext = 0, Lvobjtreewalkskipchildren = 1, Lvobjtreewalkend = 2
type
  enumlvobjpointtransformflagt* {.size: sizeof(cuint).} = enum
    Lvobjpointtransformflagnone = 0, Lvobjpointtransformflagrecursive = 1,
    Lvobjpointtransformflaginverse = 2,
    Lvobjpointtransformflaginverserecursive = 3
type
  enumlvscrollbarmodet* {.size: sizeof(cuint).} = enum
    Lvscrollbarmodeoff = 0, Lvscrollbarmodeon = 1, Lvscrollbarmodeactive = 2,
    Lvscrollbarmodeauto = 3
type
  enumlvscrollsnapt* {.size: sizeof(cuint).} = enum
    Lvscrollsnapnone = 0, Lvscrollsnapstart = 1, Lvscrollsnapend = 2,
    Lvscrollsnapcenter = 3
type
  enumlvstylestatecmpt* {.size: sizeof(cuint).} = enum
    internallvstylestatecmpsame = 0, internallvstylestatecmpdiffredraw = 1,
    internallvstylestatecmpdiffdrawpad = 2,
    internallvstylestatecmpdifflayout = 3
type
  enumlvlayertypet* {.size: sizeof(cuint).} = enum
    Lvlayertypenone = 0, Lvlayertypesimple = 1, Lvlayertypetransform = 2
type
  enumlvobjclasseditablet* {.size: sizeof(cuint).} = enum
    Lvobjclasseditableinherit = 0, Lvobjclasseditabletrue = 1,
    Lvobjclasseditablefalse = 2
type
  enumlvobjclassgroupdeft* {.size: sizeof(cuint).} = enum
    Lvobjclassgroupdefinherit = 0, Lvobjclassgroupdeftrue = 1,
    Lvobjclassgroupdeffalse = 2
type
  enumlvobjclassthemeinheritablet* {.size: sizeof(cuint).} = enum
    Lvobjclassthemeinheritablefalse = 0, Lvobjclassthemeinheritabletrue = 1
type
  enumlvkeyt* {.size: sizeof(cuint).} = enum
    Lvkeyhome = 2, Lvkeyend = 3, Lvkeybackspace = 8, Lvkeynext = 9,
    Lvkeyenter = 10, Lvkeyprev = 11, Lvkeyup = 17, Lvkeydown = 18,
    Lvkeyright = 19, Lvkeyleft = 20, Lvkeyesc = 27, Lvkeydel = 127
type
  enumlvgrouprefocuspolicyt* {.size: sizeof(cuint).} = enum
    Lvgrouprefocuspolicynext = 0, Lvgrouprefocuspolicyprev = 1
type
  enumlvindevtypet* {.size: sizeof(cuint).} = enum
    Lvindevtypenone = 0, Lvindevtypepointer = 1, Lvindevtypekeypad = 2,
    Lvindevtypebutton = 3, Lvindevtypeencoder = 4
type
  enumlvindevstatet* {.size: sizeof(cuint).} = enum
    Lvindevstatereleased = 0, Lvindevstatepressed = 1
type
  enumlvindevmodet* {.size: sizeof(cuint).} = enum
    Lvindevmodenone = 0, Lvindevmodetimer = 1, Lvindevmodeevent = 2
type
  enumlvcoverrest* {.size: sizeof(cuint).} = enum
    Lvcoverrescover = 0, Lvcoverresnotcover = 1, Lvcoverresmasked = 2
type
  enumlvstatet* {.size: sizeof(cuint).} = enum
    Lvstatedefault = 0, Lvstatechecked = 1, Lvstatefocused = 2,
    Lvstatefocuskey = 4, Lvstateedited = 8, Lvstatehovered = 16,
    Lvstatepressed = 32, Lvstatescrolled = 64, Lvstatedisabled = 128,
    Lvstateuser1 = 4096, Lvstateuser2 = 8192, Lvstateuser3 = 16384,
    Lvstateuser4 = 32768, Lvstateany = 65535
type
  enumlvpartt* {.size: sizeof(cuint).} = enum
    Lvpartmain = 0, Lvpartscrollbar = 65536, Lvpartindicator = 131072,
    Lvpartknob = 196608, Lvpartselected = 262144, Lvpartitems = 327680,
    Lvpartcursor = 393216, Lvpartcustomfirst = 524288, Lvpartany = 983040
type
  enumlvobjflagt* {.size: sizeof(cuint).} = enum
    Lvobjflaghidden = 1, Lvobjflagclickable = 2, Lvobjflagclickfocusable = 4,
    Lvobjflagcheckable = 8, Lvobjflagscrollable = 16,
    Lvobjflagscrollelastic = 32, Lvobjflagscrollmomentum = 64,
    Lvobjflagscrollone = 128, Lvobjflagscrollchainhor = 256,
    Lvobjflagscrollchainver = 512, Lvobjflagscrollchain = 768,
    Lvobjflagscrollonfocus = 1024, Lvobjflagscrollwitharrow = 2048,
    Lvobjflagsnappable = 4096, Lvobjflagpresslock = 8192,
    Lvobjflageventbubble = 16384, Lvobjflaggesturebubble = 32768,
    Lvobjflagadvhittest = 65536, Lvobjflagignorelayout = 131072,
    Lvobjflagfloating = 262144, Lvobjflagsenddrawtaskevents = 524288,
    Lvobjflagoverflowvisible = 1048576, Lvobjflagflexinnewtrack = 2097152,
    Lvobjflaglayout1 = 8388608, Lvobjflaglayout2 = 16777216,
    Lvobjflagwidget1 = 33554432, Lvobjflagwidget2 = 67108864,
    Lvobjflaguser1 = 134217728, Lvobjflaguser2 = 268435456,
    Lvobjflaguser3 = 536870912, Lvobjflaguser4 = 1073741824
type
  enumlvfontfmttxtcmaptypet* {.size: sizeof(cuint).} = enum
    Lvfontfmttxtcmapformat0full = 0, Lvfontfmttxtcmapsparsefull = 1,
    Lvfontfmttxtcmapformat0tiny = 2, Lvfontfmttxtcmapsparsetiny = 3
type
  enumlvfontfmttxtbitmapformatt* {.size: sizeof(cuint).} = enum
    Lvfontfmttxtplain = 0, Lvfontfmttxtcompressed = 1
const
  Lvfontfmttxtcompressednoprefilter* = enumlvfontfmttxtbitmapformatt.Lvfontfmttxtcompressed
type
  enumlvfontfmtrlestatet* {.size: sizeof(cuint).} = enum
    Rlestatesingle = 0, Rlestaterepeated = 1, Rlestatecounter = 2
type
  enumlvimagealignt* {.size: sizeof(cuint).} = enum
    Lvimagealigndefault = 0, Lvimagealigntopleft = 1, Lvimagealigntopmid = 2,
    Lvimagealigntopright = 3, Lvimagealignbottomleft = 4,
    Lvimagealignbottommid = 5, Lvimagealignbottomright = 6,
    Lvimagealignleftmid = 7, Lvimagealignrightmid = 8, Lvimagealigncenter = 9,
    internallvimagealignautotransform = 10, Lvimagealignstretch = 11,
    Lvimagealigntile = 12
type
  enumlvanimimgpartt* {.size: sizeof(cuint).} = enum
    Lvanimimagepartmain = 0
type
  enumlvarcmodet* {.size: sizeof(cuint).} = enum
    Lvarcmodenormal = 0, Lvarcmodesymmetrical = 1, Lvarcmodereverse = 2
type
  enumlvlabellongmodet* {.size: sizeof(cuint).} = enum
    Lvlabellongwrap = 0, Lvlabellongdot = 1, Lvlabellongscroll = 2,
    Lvlabellongscrollcircular = 3, Lvlabellongclip = 4
type
  enumlvbarmodet* {.size: sizeof(cuint).} = enum
    Lvbarmodenormal = 0, Lvbarmodesymmetrical = 1, Lvbarmoderange = 2
type
  enumlvbarorientationt* {.size: sizeof(cuint).} = enum
    Lvbarorientationauto = 0, Lvbarorientationhorizontal = 1,
    Lvbarorientationvertical = 2
type
  enumlvbuttonmatrixctrlt* {.size: sizeof(cuint).} = enum
    internallvbuttonmatrixwidth = 15, Lvbuttonmatrixctrlhidden = 16,
    Lvbuttonmatrixctrlnorepeat = 32, Lvbuttonmatrixctrldisabled = 64,
    Lvbuttonmatrixctrlcheckable = 128, Lvbuttonmatrixctrlchecked = 256,
    Lvbuttonmatrixctrlclicktrig = 512, Lvbuttonmatrixctrlpopover = 1024,
    internallvbuttonmatrixctrlreserved1 = 2048,
    internallvbuttonmatrixctrlreserved2 = 4096,
    internallvbuttonmatrixctrlreserved3 = 8192,
    Lvbuttonmatrixctrlcustom1 = 16384, Lvbuttonmatrixctrlcustom2 = 32768
type
  enumlvcharttypet* {.size: sizeof(cuint).} = enum
    Lvcharttypenone = 0, Lvcharttypeline = 1, Lvcharttypebar = 2,
    Lvcharttypescatter = 3
type
  enumlvchartupdatemodet* {.size: sizeof(cuint).} = enum
    Lvchartupdatemodeshift = 0, Lvchartupdatemodecircular = 1
type
  enumlvchartaxist* {.size: sizeof(cuint).} = enum
    Lvchartaxisprimaryy = 0, Lvchartaxissecondaryy = 1, Lvchartaxisprimaryx = 2,
    Lvchartaxissecondaryx = 4, internallvchartaxislast = 5
type
  enumlvimagebuttonstatet* {.size: sizeof(cuint).} = enum
    Lvimagebuttonstatereleased = 0, Lvimagebuttonstatepressed = 1,
    Lvimagebuttonstatedisabled = 2, Lvimagebuttonstatecheckedreleased = 3,
    Lvimagebuttonstatecheckedpressed = 4, Lvimagebuttonstatecheckeddisabled = 5,
    internallvimagebuttonstatenum = 6
type
  enumlvkeyboardmodet* {.size: sizeof(cuint).} = enum
    Lvkeyboardmodetextlower = 0, Lvkeyboardmodetextupper = 1,
    Lvkeyboardmodespecial = 2, Lvkeyboardmodenumber = 3,
    Lvkeyboardmodeuser1 = 4, Lvkeyboardmodeuser2 = 5, Lvkeyboardmodeuser3 = 6,
    Lvkeyboardmodeuser4 = 7
type
  enumlvmenumodeheadert* {.size: sizeof(cuint).} = enum
    Lvmenuheadertopfixed = 0, Lvmenuheadertopunfixed = 1,
    Lvmenuheaderbottomfixed = 2
type
  enumlvmenumoderootbackbuttont* {.size: sizeof(cuint).} = enum
    Lvmenurootbackbuttondisabled = 0, Lvmenurootbackbuttonenabled = 1
type
  enumlvrollermodet* {.size: sizeof(cuint).} = enum
    Lvrollermodenormal = 0, Lvrollermodeinfinite = 1
type
  enumlvslidermodet* {.size: sizeof(cuint).} = enum
    Lvslidermodenormal = 0, Lvslidermodesymmetrical = 1, Lvslidermoderange = 2
type
  enumlvspanoverflowt* {.size: sizeof(cuint).} = enum
    Lvspanoverflowclip = 0, Lvspanoverflowellipsis = 1,
    internallvspanoverflowlast = 2
type
  enumlvspanmodet* {.size: sizeof(cuint).} = enum
    Lvspanmodefixed = 0, Lvspanmodeexpand = 1, Lvspanmodebreak = 2,
    internallvspanmodelast = 3
type
  enumlvtablecellctrlt* {.size: sizeof(cuint).} = enum
    Lvtablecellctrlmergeright = 1, Lvtablecellctrltextcrop = 2,
    Lvtablecellctrlcustom1 = 16, Lvtablecellctrlcustom2 = 32,
    Lvtablecellctrlcustom3 = 64, Lvtablecellctrlcustom4 = 128
type
  enumlvsubjecttypet* {.size: sizeof(cuint).} = enum
    Lvsubjecttypeinvalid = 0, Lvsubjecttypenone = 1, Lvsubjecttypeint = 2,
    Lvsubjecttypepointer = 3, Lvsubjecttypecolor = 4, Lvsubjecttypegroup = 5,
    Lvsubjecttypestring = 6
type
  enumlvgridnavctrlt* {.size: sizeof(cuint).} = enum
    Lvgridnavctrlnone = 0, Lvgridnavctrlrollover = 1,
    Lvgridnavctrlscrollfirst = 2, Lvgridnavctrlhorizontalmoveonly = 4,
    Lvgridnavctrlverticalmoveonly = 8
type
  enumlvimepinyinmodet* {.size: sizeof(cuint).} = enum
    Lvimepinyinmodek26 = 0, Lvimepinyinmodek9 = 1, Lvimepinyinmodek9number = 2
type
  enumlvfileexplorersortt* {.size: sizeof(cuint).} = enum
    Lvexplorersortnone = 0, Lvexplorersortkind = 1
type
  enumlvfileexplorerdirt* {.size: sizeof(cuint).} = enum
    Lvexplorerhomedir = 0, Lvexplorermusicdir = 1, Lvexplorerpicturesdir = 2,
    Lvexplorervideodir = 3, Lvexplorerdocsdir = 4, Lvexplorerfsdir = 5
type
  compilerfile* = distinct object
type
  structlvindevt* = distinct object
type
  structlvcacheentryt* = distinct object
type
  Lvcoordmax* = distinct object
type
  structlvdisplayt* = distinct object
type
  structsnippetstack* = distinct object
type
  compilerline* = distinct object
type
  Lvdrawbufdefinestatic* = distinct object
type
  structlvmonkey* = distinct object
type
  structlvanimtimelinet* = distinct object
type
  structlvfragmentmanagert* = distinct object
type
  lvresultt* = uint8         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:63:17
  lvuintptrt* = uintptrt     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:68:19
  uintptrt* = culong         ## Generated based on /usr/include/stdint.h:79:27
  lvintptrt* = intptrt       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:69:18
  intptrt* = clong           ## Generated based on /usr/include/stdint.h:76:19
  lvvaluepreciset* = int32   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:87:17
  lvobjt* = structlvobjt     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:96:26
  structlvobjt* {.pure, inheritable, bycopy.} = object
    classp*: ptr lvobjclasst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj.h:217:8
    parent*: ptr lvobjt
    specattr*: ptr internallvobjspecattrt
    styles*: ptr internallvobjstylet
    userdata*: pointer
    coords*: lvareat
    flags*: lvobjflagt
    state*: lvstatet
    layoutinv*: uint16
    readjustscrollafterlayout*: uint16
    scrlayoutinv*: uint16
    skiptrans*: uint16
    stylecnt*: uint16
    hlayout*: uint16
    wlayout*: uint16
    isdeleting*: uint16
  lvstatet* = uint16         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:103:18
  lvpartt* = uint32          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:104:18
  lvobjflagt* = uint32       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:105:18
  lvobjclasst* = structlvobjclasst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:109:32
  structlvobjclasst* {.pure, inheritable, bycopy.} = object
    baseclass*: ptr lvobjclasst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_class.h:50:8
    constructorcb*: proc (a0: ptr lvobjclasst; a1: ptr lvobjt): void {.cdecl.}
    destructorcb*: proc (a0: ptr lvobjclasst; a1: ptr lvobjt): void {.cdecl.}
    eventcb*: proc (a0: ptr lvobjclasst; a1: ptr lveventt): void {.cdecl.}
    userdata*: pointer
    name*: cstring
    widthdef*: int32
    heightdef*: int32
    editable*: uint32
    groupdef*: uint32
    instancesize*: uint32
    themeinheritable*: uint32
  lvgroupt* = structlvgroupt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:112:28
  structlvgroupt* {.pure, inheritable, bycopy.} = object
    objll*: lvllt            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/../core/lv_group.h:51:8
    objfocus*: ptr ptr lvobjt
    focuscb*: lvgroupfocuscbt
    edgecb*: lvgroupedgecbt
    userdata*: pointer
    frozen*: uint8
    editing*: uint8
    refocuspolicy*: uint8
    wrap*: uint8
  lvkeyt* = uint8            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:117:17
  lvdisplayt* = structlvdisplayt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:121:30
  lvlayert* = structlvlayert ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:124:28
  structlvlayert* {.pure, inheritable, bycopy.} = object
    drawbuf*: ptr lvdrawbuft ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:147:8
    bufarea*: lvareat
    colorformat*: lvcolorformatt
    internalcliparea*: lvareat
    drawtaskhead*: ptr lvdrawtaskt
    parent*: ptr lvlayert
    next*: ptr lvlayert
    alltasksadded*: bool
    userdata*: pointer
  lvdrawunitt* = structlvdrawunitt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:126:32
  structlvdrawunitt* {.pure, inheritable, bycopy.} = object
    next*: ptr lvdrawunitt   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:105:8
    targetlayer*: ptr lvlayert
    cliparea*: ptr lvareat
    dispatchcb*: proc (a0: ptr lvdrawunitt; a1: ptr lvlayert): int32 {.cdecl.}
    evaluatecb*: proc (a0: ptr lvdrawunitt; a1: ptr lvdrawtaskt): int32 {.cdecl.}
    deletecb*: proc (a0: ptr lvdrawunitt): int32 {.cdecl.}
  lvdrawtaskt* = structlvdrawtaskt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:128:32
  structlvdrawtaskt* {.pure, inheritable, bycopy.} = object
    next*: ptr lvdrawtaskt   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:57:8
    typefield*: lvdrawtasktypet
    area*: lvareat
    internalrealarea*: lvareat
    clipareaoriginal*: lvareat
    cliparea*: lvareat
    state*: cint
    drawdsc*: pointer
    preferreddrawunitid*: uint8
    preferencescore*: uint8
  lvindevt* = structlvindevt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:131:28
  lveventt* = structlveventt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:134:28
  structlveventt* {.pure, inheritable, bycopy.} = object
    currenttarget*: pointer  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../misc/lv_event.h:124:8
    originaltarget*: pointer
    code*: lveventcodet
    userdata*: pointer
    param*: pointer
    prev*: ptr lveventt
    deleted*: uint8
    stopprocessing*: uint8
    stopbubbling*: uint8
  lvtimert* = structlvtimert ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:137:28
  structlvtimert* {.pure, inheritable, bycopy.} = object
    period*: uint32          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_timer.h:46:8
    lastrun*: uint32
    timercb*: lvtimercbt
    userdata*: pointer
    repeatcount*: int32
    paused*: uint32
    autodelete*: uint32
  lvthemet* = structlvthemet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:140:28
  structlvthemet* {.pure, inheritable, bycopy.} = object
    applycb*: lvthemeapplycbt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/themes/lv_theme.h:28:8
    parent*: ptr lvthemet
    userdata*: pointer
    disp*: ptr lvdisplayt
    colorprimary*: lvcolort
    colorsecondary*: lvcolort
    fontsmall*: ptr lvfontt
    fontnormal*: ptr lvfontt
    fontlarge*: ptr lvfontt
    flags*: uint32
  lvanimt* = structlvanimt   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:143:27
  structlvanimt_parameter_t* {.union, bycopy.} = object
    bezier3*: lvanimbezier3parat
  structlvanimt* {.pure, inheritable, bycopy.} = object
    varfield*: pointer       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:130:8
    execcb*: lvanimexecxcbt
    customexeccb*: lvanimcustomexeccbt
    startcb*: lvanimstartcbt
    completedcb*: lvanimcompletedcbt
    deletedcb*: lvanimdeletedcbt
    getvaluecb*: lvanimgetvaluecbt
    userdata*: pointer
    pathcb*: lvanimpathcbt
    startvalue*: int32
    currentvalue*: int32
    endvalue*: int32
    duration*: int32
    acttime*: int32
    playbackdelay*: uint32
    playbackduration*: uint32
    repeatdelay*: uint32
    repeatcnt*: uint32
    parameter*: structlvanimt_parameter_t
    lasttimerrun*: uint32
    playbacknow*: uint8
    runround*: uint8
    startcbcalled*: uint8
    earlyapply*: uint8
  lvfontt* = structlvfontt   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:146:27
  structlvfontt* {.pure, inheritable, bycopy.} = object
    getglyphdsc*: proc (a0: ptr lvfontt; a1: ptr lvfontglyphdsct; a2: uint32;
                        a3: uint32): bool {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/lv_font.h:106:8
    getglyphbitmap*: proc (a0: ptr lvfontglyphdsct; a1: ptr lvdrawbuft): pointer {.
        cdecl.}
    releaseglyph*: proc (a0: ptr lvfontt; a1: ptr lvfontglyphdsct): void {.cdecl.}
    lineheight*: int32
    baseline*: int32
    subpx*: uint8
    kerning*: uint8
    underlineposition*: int8
    underlinethickness*: int8
    dsc*: pointer
    fallback*: ptr lvfontt
    userdata*: pointer
  lvimagedecodert* = structlvimagedecodert ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:149:36
  structlvimagedecodert* {.pure, inheritable, bycopy.} = object
    infocb*: lvimagedecoderinfoft ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:106:8
    opencb*: lvimagedecoderopenft
    getareacb*: lvimagedecodergetareacbt
    closecb*: lvimagedecodercloseft
    name*: cstring
    userdata*: pointer
  lvpropidt* = uint32        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:151:18
  lvsysmonbackenddatat* = structlvsysmonbackenddatat ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_types.h:161:42
  structlvsysmonbackenddatat* {.pure, inheritable, bycopy.} = object
    subject*: lvsubjectt     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/lv_sysmon.h:38:8
    timer*: ptr lvtimert
  lvmempoolt* = pointer      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/stdlib/lv_mem.h:30:16
  structlvmemmonitort* {.pure, inheritable, bycopy.} = object
    totalsize*: csize_t      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/stdlib/lv_mem.h:35:9
    freecnt*: csize_t
    freesize*: csize_t
    freebiggestsize*: csize_t
    usedcnt*: csize_t
    maxused*: csize_t
    usedpct*: uint8
    fragpct*: uint8
  lvmemmonitort* = structlvmemmonitort ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/stdlib/lv_mem.h:44:3
  lvloglevelt* = int8        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:41:16
  lvlogprintgcbt* = proc (a0: lvloglevelt; a1: cstring): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_log.h:60:16
  lvtickgetcbt* = proc (): uint32 {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../tick/lv_tick.h:30:20
  lvdelaycbt* = proc (a0: uint32): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../tick/lv_tick.h:32:16
  structlvtickstatet* {.pure, inheritable, bycopy.} = object
    systime*: uint32         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../tick/lv_tick.h:34:9
    sysirqflag*: uint8
    tickgetcb*: lvtickgetcbt
    delaycb*: lvdelaycbt
  lvtickstatet* = structlvtickstatet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../tick/lv_tick.h:39:3
  lvllnodet* = uint8         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_ll.h:28:17
  structlvllt* {.pure, inheritable, bycopy.} = object
    nsize*: uint32           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_ll.h:31:9
    head*: ptr lvllnodet
    tail*: ptr lvllnodet
  lvllt* = structlvllt       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_ll.h:35:3
  lvtimercbt* = proc (a0: ptr lvtimert): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_timer.h:36:16
  lvtimerhandlerresumecbt* = proc (a0: pointer): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_timer.h:41:16
  structlvtimerstatet* {.pure, inheritable, bycopy.} = object
    timerll*: lvllt          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_timer.h:56:9
    lvtimerrun*: bool
    idlelast*: uint8
    timerdeleted*: bool
    timercreated*: bool
    timertimeuntilnext*: uint32
    alreadyrunning*: bool
    periodiclasttick*: uint32
    busytime*: uint32
    idleperiodstart*: uint32
    runcnt*: uint32
    resumecb*: lvtimerhandlerresumecbt
    resumedata*: pointer
  lvtimerstatet* = structlvtimerstatet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_timer.h:73:3
  structlvsqrtrest* {.pure, inheritable, bycopy.} = object
    i*: uint16               ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_math.h:39:9
    f*: uint16
  lvsqrtrest* = structlvsqrtrest ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_math.h:42:3
  structlvarrayt* {.pure, inheritable, bycopy.} = object
    data*: ptr uint8         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_array.h:28:9
    size*: uint32
    capacity*: uint32
    elementsize*: uint32
  lvarrayt* = structlvarrayt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_array.h:33:3
  lvasynccbt* = proc (a0: pointer): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_async.h:30:16
  lvanimenablet* = enumlvanimenablet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:86:3
  structlvanimstatet* {.pure, inheritable, bycopy.} = object
    animlistchanged*: bool   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:88:9
    animrunround*: bool
    timer*: ptr lvtimert
    animll*: lvllt
  lvanimstatet* = structlvanimstatet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:93:3
  lvanimpathcbt* = proc (a0: ptr lvanimt): int32 {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:96:19
  lvanimexecxcbt* = proc (a0: pointer; a1: int32): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:104:16
  lvanimcustomexeccbt* = proc (a0: ptr lvanimt; a1: int32): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:108:16
  lvanimcompletedcbt* = proc (a0: ptr lvanimt): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:111:16
  lvanimstartcbt* = proc (a0: ptr lvanimt): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:114:16
  lvanimgetvaluecbt* = proc (a0: ptr lvanimt): int32 {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:117:19
  lvanimdeletedcbt* = proc (a0: ptr lvanimt): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:120:16
  structlvanimbezier3parat* {.pure, inheritable, bycopy.} = object
    x1*: int16               ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:122:16
    y1*: int16
    x2*: int16
    y2*: int16
  lvanimbezier3parat* = structlvanimbezier3parat ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim.h:127:3
  lvanimtimelinet* = structlvanimtimelinet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim_timeline.h:28:36
  lvrbcolort* = enumlvrbcolort ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_rb.h:31:3
  structlvrbnodet* {.pure, inheritable, bycopy.} = object
    parent*: ptr structlvrbnodet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_rb.h:33:16
    left*: ptr structlvrbnodet
    right*: ptr structlvrbnodet
    color*: lvrbcolort
    data*: pointer
  lvrbnodet* = structlvrbnodet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_rb.h:39:3
  lvrbcomparerest* = int8    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_rb.h:41:16
  lvrbcomparet* = proc (a0: pointer; a1: pointer): lvrbcomparerest {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_rb.h:43:31
  structlvrbt* {.pure, inheritable, bycopy.} = object
    root*: ptr lvrbnodet     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_rb.h:45:9
    compare*: lvrbcomparet
    size*: csize_t
  lvrbt* = structlvrbt       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_rb.h:49:3
  structlvpointt* {.pure, inheritable, bycopy.} = object
    x*: int32                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_area.h:31:9
    y*: int32
  lvpointt* = structlvpointt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_area.h:34:3
  structlvpointpreciset* {.pure, inheritable, bycopy.} = object
    x*: lvvaluepreciset      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_area.h:36:9
    y*: lvvaluepreciset
  lvpointpreciset* = structlvpointpreciset ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_area.h:39:3
  structlvareat* {.pure, inheritable, bycopy.} = object
    x1*: int32               ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_area.h:42:9
    y1*: int32
    x2*: int32
    y2*: int32
  lvareat* = structlvareat   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_area.h:47:3
  lvalignt* = uint8          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_area.h:80:17
  lvdirt* = uint8            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_area.h:97:17
  lvopat* = uint8            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:59:17
  structlvcolort* {.pure, inheritable, bycopy.} = object
    blue*: uint8             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:89:9
    green*: uint8
    red*: uint8
  lvcolort* = structlvcolort ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:93:3
  structlvcolor16t* {.pure, inheritable, bycopy.} = object
    blue*: uint16            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:95:9
    green*: uint16
    red*: uint16
  lvcolor16t* = structlvcolor16t ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:99:3
  structlvcolor32t* {.pure, inheritable, bycopy.} = object
    blue*: uint8             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:101:9
    green*: uint8
    red*: uint8
    alpha*: uint8
  lvcolor32t* = structlvcolor32t ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:106:3
  structlvcolorhsvt* {.pure, inheritable, bycopy.} = object
    h*: uint16               ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:108:9
    s*: uint8
    v*: uint8
  lvcolorhsvt* = structlvcolorhsvt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:112:3
  structlvcolor16at* {.pure, inheritable, bycopy.} = object
    lumi*: uint8             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:114:9
    alpha*: uint8
  lvcolor16at* = structlvcolor16at ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:117:3
  lvcolorformatt* = uint8    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_color.h:184:17
  lvpalettet* = enumlvpalettet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_palette.h:48:3
  lvcolorfiltercbt* = proc (a0: ptr structlvcolorfilterdsct; a1: lvcolort;
                            a2: lvopat): lvcolort {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_color_op.h:31:22
  structlvcolorfilterdsct* {.pure, inheritable, bycopy.} = object
    filtercb*: lvcolorfiltercbt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_color_op.h:33:16
    userdata*: pointer
  lvcolorfilterdsct* = structlvcolorfilterdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_color_op.h:36:3
  lvimageflagst* = enumlvimageflagst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:69:3
  lvimagecompresst* = enumlvimagecompresst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:75:3
  structlvimageheadert* {.pure, inheritable, bycopy.} = object
    magic*: uint32           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:88:9
    cf*: uint32
    flags*: uint32
    w*: uint32
    h*: uint32
    stride*: uint32
    reserved2*: uint32
  lvimageheadert* = structlvimageheadert ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:97:3
  structlvyuvplanet* {.pure, inheritable, bycopy.} = object
    buf*: pointer            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:100:9
    stride*: uint32
  lvyuvplanet* = structlvyuvplanet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:103:3
  unionlvyuvbuft_planar_t* {.pure, inheritable, bycopy.} = object
    y*: lvyuvplanet
    u*: lvyuvplanet
    v*: lvyuvplanet
  unionlvyuvbuft_semiplanar_t* {.pure, inheritable, bycopy.} = object
    y*: lvyuvplanet
    uv*: lvyuvplanet
  unionlvyuvbuft* {.union, bycopy.} = object
    yuv*: lvyuvplanet        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:105:9
    planar*: unionlvyuvbuft_planar_t
    semiplanar*: unionlvyuvbuft_semiplanar_t
  lvyuvbuft* = unionlvyuvbuft ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:116:3
  structlvimagedsct* {.pure, inheritable, bycopy.} = object
    header*: lvimageheadert  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:122:9
    datasize*: uint32
    data*: ptr uint8
    reserved*: pointer
  lvimagedsct* = structlvimagedsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:127:3
  structlvdrawbuft* {.pure, inheritable, bycopy.} = object
    header*: lvimageheadert  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_buf.h:33:9
    datasize*: uint32
    data*: ptr uint8
    unaligneddata*: pointer
  lvdrawbuft* = structlvdrawbuft ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_buf.h:38:3
  lvdrawbufmalloccb* = proc (a0: csize_t; a1: lvcolorformatt): pointer {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_buf.h:84:18
  lvdrawbuffreecb* = proc (a0: pointer): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_buf.h:86:16
  lvdrawbufaligncb* = proc (a0: pointer; a1: lvcolorformatt): pointer {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_buf.h:88:18
  lvdrawbufcacheoperationcb* = proc (a0: ptr lvdrawbuft; a1: ptr lvareat): void {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_buf.h:90:16
  lvdrawbufwidthtostridecb* = proc (a0: uint32; a1: lvcolorformatt): uint32 {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_buf.h:92:20
  structlvdrawbufhandlerst* {.pure, inheritable, bycopy.} = object
    bufmalloccb*: lvdrawbufmalloccb ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_buf.h:94:9
    buffreecb*: lvdrawbuffreecb
    alignpointercb*: lvdrawbufaligncb
    invalidatecachecb*: lvdrawbufcacheoperationcb
    flushcachecb*: lvdrawbufcacheoperationcb
    widthtostridecb*: lvdrawbufwidthtostridecb
  lvdrawbufhandlerst* = structlvdrawbufhandlerst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_buf.h:101:3
  lvmutext* = cint           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/../../osal/lv_os_none.h:25:13
  lvthreadt* = cint          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/../../osal/lv_os_none.h:26:13
  lvthreadsynct* = cint      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/../../osal/lv_os_none.h:27:13
  lvthreadpriot* = enumlvthreadpriot ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/../../osal/lv_os.h:55:3
  lvcachereservecondrest* = enumlvcachereservecondrest ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:35:3
  lvcacheopst* = structlvcacheopst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:42:32
  structlvcacheopst* {.pure, inheritable, bycopy.} = object
    comparecb*: lvcachecomparecbt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:113:8
    createcb*: lvcachecreatecbt
    freecb*: lvcachefreecbt
  lvcachet* = structlvcachet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:43:28
  structlvcachet* {.pure, inheritable, bycopy.} = object
    clz*: ptr lvcacheclasst  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:122:8
    nodesize*: uint32
    maxsize*: uint32
    size*: uint32
    ops*: lvcacheopst
    lock*: lvmutext
    name*: cstring
  lvcacheclasst* = structlvcacheclasst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:44:34
  structlvcacheclasst* {.pure, inheritable, bycopy.} = object
    alloccb*: lvcachealloccbt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:144:8
    initcb*: lvcacheinitcbt
    destroycb*: lvcachedestroycbt
    getcb*: lvcachegetcbt
    addcb*: lvcacheaddcbt
    removecb*: lvcacheremovecbt
    dropcb*: lvcachedropcbt
    dropallcb*: lvcachedropallcbt
    getvictimcb*: lvcachegetvictimcb
    reservecondcb*: lvcachereservecondcb
  lvcacheentryt* = structlvcacheentryt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:45:34
  lvcachecomparerest* = int8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:47:16
  lvcachecreatecbt* = proc (a0: pointer; a1: pointer): bool {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:48:16
  lvcachefreecbt* = proc (a0: pointer; a1: pointer): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:49:16
  lvcachecomparecbt* = proc (a0: pointer; a1: pointer): lvcachecomparerest {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:50:34
  lvcachealloccbt* = proc (): pointer {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:56:18
  lvcacheinitcbt* = proc (a0: ptr lvcachet): bool {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:62:16
  lvcachedestroycbt* = proc (a0: ptr lvcachet; a1: pointer): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:67:16
  lvcachegetcbt* = proc (a0: ptr lvcachet; a1: pointer; a2: pointer): ptr lvcacheentryt {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:73:30
  lvcacheaddcbt* = proc (a0: ptr lvcachet; a1: pointer; a2: pointer): ptr lvcacheentryt {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:80:30
  lvcacheremovecbt* = proc (a0: ptr lvcachet; a1: ptr lvcacheentryt; a2: pointer): void {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:86:16
  lvcachedropcbt* = proc (a0: ptr lvcachet; a1: pointer; a2: pointer): void {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:91:16
  lvcachedropallcbt* = proc (a0: ptr lvcachet; a1: pointer): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:96:16
  lvcachegetvictimcb* = proc (a0: ptr lvcachet; a1: pointer): ptr lvcacheentryt {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:101:30
  lvcachereservecondcb* = proc (a0: ptr lvcachet; a1: pointer; a2: csize_t;
                                a3: pointer): lvcachereservecondrest {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:107:39
  lvcacheslotsizet* = structlvcacheslotsizet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:164:38
  structlvcacheslotsizet* {.pure, inheritable, bycopy.} = object
    size*: csize_t           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../misc/cache/lv_cache_private.h:171:8
  lvfontglyphformatt* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/lv_font.h:57:17
  structlvfontglyphdsct_gid_t* {.union, bycopy.} = object
    index*: uint32
    src*: pointer
  structlvfontglyphdsct* {.pure, inheritable, bycopy.} = object
    resolvedfont*: ptr lvfontt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/lv_font.h:61:9
    advw*: uint16
    boxw*: uint16
    boxh*: uint16
    ofsx*: int16
    ofsy*: int16
    format*: lvfontglyphformatt
    isplaceholder*: uint8
    gid*: structlvfontglyphdsct_gid_t
    entry*: ptr lvcacheentryt
  lvfontglyphdsct* = structlvfontglyphdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/lv_font.h:77:3
  lvfontsubpxt* = uint8      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/lv_font.h:90:17
  lvfontkerningt* = uint8    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/lv_font.h:102:17
  lvtextflagt* = uint8       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_text.h:47:17
  lvtextalignt* = uint8      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_text.h:61:17
  lvbasedirt* = uint8        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_bidi.h:43:17
  lvlayoutupdatecbt* = proc (a0: ptr lvobjt; a1: pointer): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../layouts/lv_layout.h:27:16
  structlvlayoutdsct* {.pure, inheritable, bycopy.} = object
    cb*: lvlayoutupdatecbt   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../layouts/lv_layout.h:28:9
    userdata*: pointer
  lvlayoutdsct* = structlvlayoutdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../layouts/lv_layout.h:31:3
  lvlayoutt* = enumlvlayoutt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../layouts/lv_layout.h:45:3
  lvflexalignt* = enumlvflexalignt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../layouts/flex/lv_flex.h:42:3
  lvflexflowt* = enumlvflexflowt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../layouts/flex/lv_flex.h:53:3
  lvgridalignt* = enumlvgridalignt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../layouts/grid/lv_grid.h:51:3
  lvblendmodet* = uint8      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:90:17
  lvtextdecort* = uint8      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:106:17
  lvbordersidet* = uint8     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:126:17
  lvgraddirt* = uint8        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:155:17
  lvgradtypet* = uint8       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:156:17
  lvgradextendt* = uint8     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:157:17
  structlvgradientstopt* {.pure, inheritable, bycopy.} = object
    color*: lvcolort         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:163:9
    opa*: lvopat
    frac*: uint8
  lvgradientstopt* = structlvgradientstopt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:167:3
  structlvgraddsct* {.pure, inheritable, bycopy.} = object
    stops*: array[2'i64, lvgradientstopt] ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:170:9
    stopscount*: uint8
    dir*: lvgraddirt
    extend*: lvgradextendt
  lvgraddsct* = structlvgraddsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:202:3
  unionlvstylevaluet* {.union, bycopy.} = object
    num*: int32              ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:207:9
    ptrfield*: pointer
    color*: lvcolort
  lvstylevaluet* = unionlvstylevaluet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:211:3
  lvstylepropt* = uint8      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:373:17
  lvstylerest* = uint8       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:384:17
  structlvstyletransitiondsct* {.pure, inheritable, bycopy.} = object
    props*: ptr lvstylepropt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:390:9
    userdata*: pointer
    pathxcb*: lvanimpathcbt
    time*: uint32
    delay*: uint32
  lvstyletransitiondsct* = structlvstyletransitiondsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:396:3
  structlvstyleconstpropt* {.pure, inheritable, bycopy.} = object
    propptr*: ptr lvstylepropt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:401:9
    value*: lvstylevaluet
  lvstyleconstpropt* = structlvstyleconstpropt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:404:3
  structlvstylet* {.pure, inheritable, bycopy.} = object
    sentinel*: uint32        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:409:9
    valuesandprops*: pointer
    hasgroup*: uint32
    propcnt*: uint8
  lvstylet* = structlvstylet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_style.h:419:3
  lveventcbt* = proc (a0: ptr lveventt): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../misc/lv_event.h:29:16
  structlveventdsct* {.pure, inheritable, bycopy.} = object
    cb*: lveventcbt          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../misc/lv_event.h:31:9
    userdata*: pointer
    filter*: uint32
  lveventdsct* = structlveventdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../misc/lv_event.h:35:3
  lveventcodet* = enumlveventcodet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../misc/lv_event.h:120:3
  lveventlistt* = lvarrayt   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../misc/lv_event.h:122:20
  lvfsrest* = uint8          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:53:17
  lvfsmodet* = uint8         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:67:17
  lvfswhencet* = enumlvfswhencet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:77:3
  lvfsdrvt* = structlvfsdrvt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:80:29
  structlvfsdrvt* {.pure, inheritable, bycopy.} = object
    letter*: cschar          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:81:8
    cachesize*: uint32
    readycb*: proc (a0: ptr lvfsdrvt): bool {.cdecl.}
    opencb*: proc (a0: ptr lvfsdrvt; a1: cstring; a2: lvfsmodet): pointer {.
        cdecl.}
    closecb*: proc (a0: ptr lvfsdrvt; a1: pointer): lvfsrest {.cdecl.}
    readcb*: proc (a0: ptr lvfsdrvt; a1: pointer; a2: pointer; a3: uint32;
                   a4: ptr uint32): lvfsrest {.cdecl.}
    writecb*: proc (a0: ptr lvfsdrvt; a1: pointer; a2: pointer; a3: uint32;
                    a4: ptr uint32): lvfsrest {.cdecl.}
    seekcb*: proc (a0: ptr lvfsdrvt; a1: pointer; a2: uint32; a3: lvfswhencet): lvfsrest {.
        cdecl.}
    tellcb*: proc (a0: ptr lvfsdrvt; a1: pointer; a2: ptr uint32): lvfsrest {.
        cdecl.}
    diropencb*: proc (a0: ptr lvfsdrvt; a1: cstring): pointer {.cdecl.}
    dirreadcb*: proc (a0: ptr lvfsdrvt; a1: pointer; a2: cstring; a3: uint32): lvfsrest {.
        cdecl.}
    dirclosecb*: proc (a0: ptr lvfsdrvt; a1: pointer): lvfsrest {.cdecl.}
    userdata*: pointer
  structlvfsfilecachet* {.pure, inheritable, bycopy.} = object
    start*: uint32           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:100:9
    endfield*: uint32
    fileposition*: uint32
    buffer*: pointer
  lvfsfilecachet* = structlvfsfilecachet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:105:3
  structlvfsfilet* {.pure, inheritable, bycopy.} = object
    filed*: pointer          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:107:9
    drv*: ptr lvfsdrvt
    cache*: ptr lvfsfilecachet
  lvfsfilet* = structlvfsfilet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:111:3
  structlvfspathext* {.pure, inheritable, bycopy.} = object
    path*: array[4'i64, cschar] ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:114:9
    buffer*: pointer
    size*: uint32
  lvfspathext* = structlvfspathext ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:118:3
  structlvfsdirt* {.pure, inheritable, bycopy.} = object
    dird*: pointer           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:120:9
    drv*: ptr lvfsdrvt
  lvfsdirt* = structlvfsdirt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_fs.h:123:3
  lvimagesrct* = uint8       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:44:17
  lvimagedecoderdsct* = structlvimagedecoderdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:49:40
  structlvimagedecoderdsct* {.pure, inheritable, bycopy.} = object
    decoder*: ptr lvimagedecodert ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:137:8
    args*: lvimagedecoderargst
    src*: pointer
    srctype*: lvimagesrct
    header*: lvimageheadert
    decoded*: ptr lvdrawbuft
    palette*: ptr lvcolor32t
    palettesize*: uint32
    timetoopen*: uint32
    errormsg*: cstring
    cache*: ptr lvcachet
    cacheentry*: ptr lvcacheentryt
    userdata*: pointer
  structlvimagedecoderargst* {.pure, inheritable, bycopy.} = object
    stridealign*: bool       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:60:16
    premultiply*: bool
    nocache*: bool
    useindexed*: bool
    flushcache*: bool
  lvimagedecoderargst* = structlvimagedecoderargst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:66:3
  lvimagedecoderinfoft* = proc (a0: ptr lvimagedecodert; a1: pointer;
                                a2: ptr lvimageheadert): lvresultt {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:75:23
  lvimagedecoderopenft* = proc (a0: ptr lvimagedecodert;
                                a1: ptr lvimagedecoderdsct): lvresultt {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:83:23
  lvimagedecodergetareacbt* = proc (a0: ptr lvimagedecodert;
                                    a1: ptr lvimagedecoderdsct; a2: ptr lvareat;
                                    a3: ptr lvareat): lvresultt {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:95:23
  lvimagedecodercloseft* = proc (a0: ptr lvimagedecodert;
                                 a1: ptr lvimagedecoderdsct): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:104:16
  structlvimagedecodercachedatat* {.pure, inheritable, bycopy.} = object
    slot*: lvcacheslotsizet  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:117:16
    src*: pointer
    srctype*: lvimagesrct
    decoded*: ptr lvdrawbuft
    decoder*: ptr lvimagedecodert
    userdata*: pointer
  lvimagecachedatat* = structlvimagedecodercachedatat ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:126:3
  structlvimagedecoderheadercachedatat* {.pure, inheritable, bycopy.} = object
    src*: pointer            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:128:16
    srctype*: lvimagesrct
    header*: lvimageheadert
    decoder*: ptr lvimagedecodert
  lvimageheadercachedatat* = structlvimagedecoderheadercachedatat ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_decoder.h:134:3
  lvdrawtasktypet* = enumlvdrawtasktypet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:48:3
  lvdrawtaskstatet* = enumlvdrawtaskstatet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:55:3
  structlvdrawmaskt* {.pure, inheritable, bycopy.} = object
    userdata*: pointer       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:101:9
  lvdrawmaskt* = structlvdrawmaskt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:103:3
  structlvdrawdscbaset* {.pure, inheritable, bycopy.} = object
    obj*: ptr lvobjt         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:177:9
    part*: lvpartt
    id1*: uint32
    id2*: uint32
    layer*: ptr lvlayert
    dscsize*: csize_t
    userdata*: pointer
  lvdrawdscbaset* = structlvdrawdscbaset ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:185:3
  structlvdrawglobalinfot* {.pure, inheritable, bycopy.} = object
    unithead*: ptr lvdrawunitt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:187:9
    usedmemoryforlayerskb*: uint32
    dispatchreq*: cint
    circlecachemutex*: lvmutext
    taskrunning*: bool
  lvdrawglobalinfot* = structlvdrawglobalinfot ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/../draw/lv_draw.h:197:3
  lvgradcolort* = lvcolort   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/lv_draw_sw_gradient.h:37:20
  structlvgradientcachet* {.pure, inheritable, bycopy.} = object
    colormap*: ptr lvcolort  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/lv_draw_sw_gradient.h:39:16
    opamap*: ptr lvopat
    size*: uint32
  lvgradt* = structlvgradientcachet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/lv_draw_sw_gradient.h:43:3
  structlvdrawrectdsct* {.pure, inheritable, bycopy.} = object
    base*: lvdrawdscbaset    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_rect.h:32:9
    radius*: int32
    bgopa*: lvopat
    bgcolor*: lvcolort
    bggrad*: lvgraddsct
    bgimagesrc*: pointer
    bgimagesymbolfont*: pointer
    bgimagerecolor*: lvcolort
    bgimageopa*: lvopat
    bgimagerecoloropa*: lvopat
    bgimagetiled*: uint8
    bordercolor*: lvcolort
    borderwidth*: int32
    borderopa*: lvopat
    borderside*: lvbordersidet
    borderpost*: uint8
    outlinecolor*: lvcolort
    outlinewidth*: int32
    outlinepad*: int32
    outlineopa*: lvopat
    shadowcolor*: lvcolort
    shadowwidth*: int32
    shadowoffsetx*: int32
    shadowoffsety*: int32
    shadowspread*: int32
    shadowopa*: lvopat
  lvdrawrectdsct* = structlvdrawrectdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_rect.h:70:3
  structlvdrawfilldsct* {.pure, inheritable, bycopy.} = object
    base*: lvdrawdscbaset    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_rect.h:72:9
    radius*: int32
    opa*: lvopat
    color*: lvcolort
    grad*: lvgraddsct
  lvdrawfilldsct* = structlvdrawfilldsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_rect.h:80:3
  structlvdrawborderdsct* {.pure, inheritable, bycopy.} = object
    base*: lvdrawdscbaset    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_rect.h:82:9
    radius*: int32
    color*: lvcolort
    width*: int32
    opa*: lvopat
    side*: lvbordersidet
  lvdrawborderdsct* = structlvdrawborderdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_rect.h:92:3
  structlvdrawboxshadowdsct* {.pure, inheritable, bycopy.} = object
    base*: lvdrawdscbaset    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_rect.h:94:9
    radius*: int32
    color*: lvcolort
    width*: int32
    spread*: int32
    ofsx*: int32
    ofsy*: int32
    opa*: lvopat
    bgcover*: uint8
  lvdrawboxshadowdsct* = structlvdrawboxshadowdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_rect.h:106:3
  structlvdrawlabelhintt* {.pure, inheritable, bycopy.} = object
    linestart*: int32        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_label.h:36:16
    y*: int32
    coordy*: int32
  lvdrawlabelhintt* = structlvdrawlabelhintt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_label.h:46:3
  structlvdrawlabeldsct* {.pure, inheritable, bycopy.} = object
    base*: lvdrawdscbaset    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_label.h:48:9
    text*: cstring
    font*: ptr lvfontt
    selstart*: uint32
    selend*: uint32
    color*: lvcolort
    selcolor*: lvcolort
    selbgcolor*: lvcolort
    linespace*: int32
    letterspace*: int32
    ofsx*: int32
    ofsy*: int32
    opa*: lvopat
    bididir*: lvbasedirt
    align*: lvtextalignt
    flag*: lvtextflagt
    decor*: lvtextdecort
    blendmode*: lvblendmodet
    textlocal*: uint8
    hint*: ptr lvdrawlabelhintt
  lvdrawlabeldsct* = structlvdrawlabeldsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_label.h:73:3
  structlvdrawglyphdsct* {.pure, inheritable, bycopy.} = object
    glyphdata*: pointer      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_label.h:75:9
    format*: lvfontglyphformatt
    lettercoords*: ptr lvareat
    bgcoords*: ptr lvareat
    g*: ptr lvfontglyphdsct
    color*: lvcolort
    opa*: lvopat
    internaldrawbuf*: ptr lvdrawbuft
  lvdrawglyphdsct* = structlvdrawglyphdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_label.h:84:3
  lvdrawglyphcbt* = proc (a0: ptr lvdrawunitt; a1: ptr lvdrawglyphdsct;
                          a2: ptr lvdrawfilldsct; a3: ptr lvareat): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_label.h:98:15
  structlvdrawimagesupt* {.pure, inheritable, bycopy.} = object
    alphacolor*: lvcolort    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_image.h:33:9
    palette*: ptr lvcolor32t
    palettesize*: uint32
  lvdrawimagesupt* = structlvdrawimagesupt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_image.h:37:3
  structlvdrawimagedsct* {.pure, inheritable, bycopy.} = object
    base*: lvdrawdscbaset    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_image.h:39:16
    src*: pointer
    header*: lvimageheadert
    rotation*: int32
    scalex*: int32
    scaley*: int32
    skewx*: int32
    skewy*: int32
    pivot*: lvpointt
    recolor*: lvcolort
    recoloropa*: lvopat
    opa*: lvopat
    blendmode*: lvblendmodet
    antialias*: uint16
    tile*: uint16
    sup*: ptr lvdrawimagesupt
    imagearea*: lvareat
    clipradius*: int32
    bitmapmasksrc*: ptr lvimagedsct
  lvdrawimagedsct* = structlvdrawimagedsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_image.h:72:3
  lvdrawimagecorecb* = proc (a0: ptr lvdrawunitt; a1: ptr lvdrawimagedsct;
                             a2: ptr lvimagedecoderdsct;
                             a3: ptr lvdrawimagesupt; a4: ptr lvareat;
                             a5: ptr lvareat): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_image.h:83:16
  structlvdrawarcdsct* {.pure, inheritable, bycopy.} = object
    base*: lvdrawdscbaset    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_arc.h:29:9
    color*: lvcolort
    width*: int32
    startangle*: lvvaluepreciset
    endangle*: lvvaluepreciset
    center*: lvpointt
    radius*: uint16
    imgsrc*: pointer
    opa*: lvopat
    rounded*: uint8
  lvdrawarcdsct* = structlvdrawarcdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_arc.h:41:3
  structlvdrawlinedsct* {.pure, inheritable, bycopy.} = object
    base*: lvdrawdscbaset    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_line.h:28:9
    p1*: lvpointpreciset
    p2*: lvpointpreciset
    color*: lvcolort
    width*: int32
    dashwidth*: int32
    dashgap*: int32
    opa*: lvopat
    blendmode*: lvblendmodet
    roundstart*: uint8
    roundend*: uint8
    rawend*: uint8
  lvdrawlinedsct* = structlvdrawlinedsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_line.h:42:3
  structlvdrawtriangledsct* {.pure, inheritable, bycopy.} = object
    base*: lvdrawdscbaset    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_triangle.h:25:9
    bgopa*: lvopat
    bgcolor*: lvcolort
    bggrad*: lvgraddsct
    p*: array[3'i64, lvpointpreciset]
  lvdrawtriangledsct* = structlvdrawtriangledsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_triangle.h:33:3
  structlvdrawmaskrectdsct* {.pure, inheritable, bycopy.} = object
    base*: lvdrawdscbaset    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_mask.h:28:9
    area*: lvareat
    radius*: int32
  lvdrawmaskrectdsct* = structlvdrawmaskrectdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_mask.h:33:3
  lvdisplayrotationt* = enumlvdisplayrotationt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/lv_display.h:39:3
  lvdisplayrendermodet* = enumlvdisplayrendermodet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/lv_display.h:60:3
  lvscreenloadanimt* = enumlvscreenloadanimt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/lv_display.h:79:3
  lvdisplayflushcbt* = proc (a0: ptr lvdisplayt; a1: ptr lvareat; a2: ptr uint8): void {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/lv_display.h:81:16
  lvdisplayflushwaitcbt* = proc (a0: ptr lvdisplayt): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../display/lv_display.h:82:16
  lvobjtreewalkrest* = enumlvobjtreewalkrest ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_tree.h:32:3
  lvobjtreewalkcbt* = proc (a0: ptr lvobjt; a1: pointer): lvobjtreewalkrest {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_tree.h:34:34
  lvobjpointtransformflagt* = enumlvobjpointtransformflagt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_pos.h:38:3
  lvscrollbarmodet* = uint8  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_scroll.h:41:17
  lvscrollsnapt* = uint8     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_scroll.h:55:17
  internallvstylestatecmpt* = enumlvstylestatecmpt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_style.h:45:3
  lvstyleselectort* = uint32 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_style.h:47:18
  structlvobjstylet* {.pure, inheritable, bycopy.} = object
    style*: ptr lvstylet     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_style.h:49:9
    selector*: uint32
    islocal*: uint32
    istrans*: uint32
  internallvobjstylet* = structlvobjstylet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_style.h:54:3
  structlvobjstyletransitiondsct* {.pure, inheritable, bycopy.} = object
    time*: uint16            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_style.h:56:9
    delay*: uint16
    selector*: lvstyleselectort
    prop*: lvstylepropt
    pathcb*: lvanimpathcbt
    userdata*: pointer
  internallvobjstyletransitiondsct* = structlvobjstyletransitiondsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_style.h:63:3
  lvlayertypet* = enumlvlayertypet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_draw.h:31:3
  lvobjclasseditablet* = enumlvobjclasseditablet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_class.h:32:3
  lvobjclassgroupdeft* = enumlvobjclassgroupdeft ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_class.h:38:3
  lvobjclassthemeinheritablet* = enumlvobjclassthemeinheritablet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_class.h:43:3
  lvobjclasseventcbt* = proc (a0: ptr lvobjclasst; a1: ptr lveventt): void {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_class.h:45:16
  lvgroupfocuscbt* = proc (a0: ptr lvgroupt): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/../core/lv_group.h:44:16
  lvgroupedgecbt* = proc (a0: ptr lvgroupt; a1: bool): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/../core/lv_group.h:45:16
  lvgrouprefocuspolicyt* = enumlvgrouprefocuspolicyt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/../core/lv_group.h:73:3
  lvindevtypet* = enumlvindevtypet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:36:3
  lvindevstatet* = enumlvindevstatet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:42:3
  lvindevmodet* = enumlvindevmodet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:48:3
  structlvindevdatat* {.pure, inheritable, bycopy.} = object
    point*: lvpointt         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:51:9
    key*: uint32
    btnid*: uint32
    encdiff*: int16
    state*: lvindevstatet
    continuereading*: bool
  lvindevdatat* = structlvindevdatat ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:59:3
  lvindevreadcbt* = proc (a0: ptr lvindevt; a1: ptr lvindevdatat): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../indev/lv_indev.h:61:16
  structlvhittestinfot* {.pure, inheritable, bycopy.} = object
    point*: ptr lvpointt     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_event.h:35:9
    res*: bool
  lvhittestinfot* = structlvhittestinfot ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_event.h:38:3
  lvcoverrest* = enumlvcoverrest ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_event.h:45:3
  structlvcovercheckinfot* {.pure, inheritable, bycopy.} = object
    res*: lvcoverrest        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_event.h:52:9
    area*: ptr lvareat
  lvcovercheckinfot* = structlvcovercheckinfot ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj_event.h:55:3
  internallvobjflagt* = enumlvobjflagt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj.h:128:3
  structlvobjspecattrt* {.pure, inheritable, bycopy.} = object
    children*: ptr ptr lvobjt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj.h:199:9
    groupp*: ptr lvgroupt
    eventlist*: lveventlistt
    scroll*: lvpointt
    extclickpad*: int32
    extdrawsize*: int32
    childcnt*: uint16
    scrollbarmode*: uint16
    scrollsnapx*: uint16
    scrollsnapy*: uint16
    scrolldir*: uint16
    layertype*: uint16
  internallvobjspecattrt* = structlvobjspecattrt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_obj.h:215:3
  structlvfontfmttxtglyphdsct* {.pure, inheritable, bycopy.} = object
    bitmapindex*: uint32     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:28:9
    advw*: uint32
    boxw*: uint16
    boxh*: uint16
    ofsx*: int16
    ofsy*: int16
  lvfontfmttxtglyphdsct* = structlvfontfmttxtglyphdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:44:3
  lvfontfmttxtcmaptypet* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:57:17
  structlvfontfmttxtcmapt* {.pure, inheritable, bycopy.} = object
    rangestart*: uint32      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:65:9
    rangelength*: uint16
    glyphidstart*: uint16
    unicodelist*: ptr uint16
    glyphidofslist*: pointer
    listlength*: uint16
    typefield*: lvfontfmttxtcmaptypet
  lvfontfmttxtcmapt* = structlvfontfmttxtcmapt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:115:3
  structlvfontfmttxtkernpairt* {.pure, inheritable, bycopy.} = object
    glyphids*: pointer       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:118:9
    values*: ptr int8
    paircnt*: uint32
    glyphidssize*: uint32
  lvfontfmttxtkernpairt* = structlvfontfmttxtkernpairt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:130:3
  structlvfontfmttxtkernclassest* {.pure, inheritable, bycopy.} = object
    classpairvalues*: ptr int8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:133:9
    leftclassmapping*: ptr uint8
    rightclassmapping*: ptr uint8
    leftclasscnt*: uint8
    rightclasscnt*: uint8
  lvfontfmttxtkernclassest* = structlvfontfmttxtkernclassest ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:147:3
  lvfontfmttxtbitmapformatt* = enumlvfontfmttxtbitmapformatt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:154:3
  structlvfontfmttxtdsct* {.pure, inheritable, bycopy.} = object
    glyphbitmap*: ptr uint8  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:157:9
    glyphdsc*: ptr lvfontfmttxtglyphdsct
    cmaps*: ptr lvfontfmttxtcmapt
    kerndsc*: pointer
    kernscale*: uint16
    cmapnum*: uint16
    bpp*: uint16
    kernclasses*: uint16
    bitmapformat*: uint16
  lvfontfmttxtdsct* = structlvfontfmttxtdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:192:3
  lvfontfmtrlestatet* = enumlvfontfmtrlestatet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:199:3
  structlvfontfmtrlet* {.pure, inheritable, bycopy.} = object
    rdp*: uint32             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:201:9
    infield*: ptr uint8
    bpp*: uint8
    prevv*: uint8
    count*: uint8
    state*: lvfontfmtrlestatet
  lvfontfmtrlet* = structlvfontfmtrlet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/font/lv_font_fmt_txt.h:208:3
  structlvimaget* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/animimage/../image/lv_image.h:40:9
    src*: pointer
    bitmapmasksrc*: ptr lvimagedsct
    offset*: lvpointt
    w*: int32
    h*: int32
    rotation*: uint32
    scalex*: uint32
    scaley*: uint32
    pivot*: lvpointt
    srctype*: uint32
    cf*: uint32
    antialias*: uint32
    align*: uint32
    blendmode*: uint32
  lvimaget* = structlvimaget ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/animimage/../image/lv_image.h:56:3
  lvimagealignt* = uint8     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/animimage/../image/lv_image.h:82:17
  structlvanimimgt* {.pure, inheritable, bycopy.} = object
    img*: lvimaget           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/animimage/lv_animimage.h:36:9
    anim*: lvanimt
    dsc*: ptr pointer
    piccount*: int8
  lvanimimgt* = structlvanimimgt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/animimage/lv_animimage.h:42:3
  lvanimimgpartt* = uint8    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/animimage/lv_animimage.h:52:17
  lvarcmodet* = uint8        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/arc/lv_arc.h:38:17
  structlvarct* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/arc/lv_arc.h:41:9
    rotation*: int32
    indicanglestart*: lvvaluepreciset
    indicangleend*: lvvaluepreciset
    bganglestart*: lvvaluepreciset
    bgangleend*: lvvaluepreciset
    value*: int32
    minvalue*: int32
    maxvalue*: int32
    dragging*: uint32
    typefield*: uint32
    minclose*: uint32
    inout*: uint32
    chgrate*: uint32
    lasttick*: uint32
    lastangle*: lvvaluepreciset
    knoboffset*: int16
  lvarct* = structlvarct     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/arc/lv_arc.h:59:3
  lvlabellongmodet* = uint8  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:59:17
  structlvlabelt_dot_t* {.union, bycopy.} = object
    tmpptr*: cstring
    tmp*: array[4'i64, cschar]
  structlvlabelt* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:62:9
    text*: cstring
    dot*: structlvlabelt_dot_t
    dotend*: uint32
    hint*: lvdrawlabelhintt
    selstart*: uint32
    selend*: uint32
    sizecache*: lvpointt
    offset*: lvpointt
    longmode*: lvlabellongmodet
    statictxt*: uint8
    expand*: uint8
    dottmpalloc*: uint8
    invalidsizecache*: uint8
  lvlabelt* = structlvlabelt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/lv_label.h:87:3
  lvbarmodet* = uint8        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/lv_bar.h:39:17
  lvbarorientationt* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/lv_bar.h:50:17
  structlvbaranimt* {.pure, inheritable, bycopy.} = object
    bar*: ptr lvobjt         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/lv_bar.h:53:9
    animstart*: int32
    animend*: int32
    animstate*: int32
  internallvbaranimt* = structlvbaranimt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/lv_bar.h:58:3
  structlvbart* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/lv_bar.h:60:9
    curvalue*: int32
    minvalue*: int32
    maxvalue*: int32
    startvalue*: int32
    indicarea*: lvareat
    valreversed*: bool
    curvalueanim*: internallvbaranimt
    startvalueanim*: internallvbaranimt
    mode*: lvbarmodet
    orientation*: lvbarorientationt
  lvbart* = structlvbart     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/lv_bar.h:72:3
  structlvbuttont* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/button/lv_button.h:29:9
  lvbuttont* = structlvbuttont ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/button/lv_button.h:31:3
  lvbuttonmatrixctrlt* = uint32 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/buttonmatrix/lv_buttonmatrix.h:53:18
  lvbuttonmatrixbuttondrawcbt* = proc (a0: ptr lvobjt; a1: uint32;
                                       a2: ptr lvareat; a3: ptr lvareat): bool {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/buttonmatrix/lv_buttonmatrix.h:56:16
  structlvbuttonmatrixt* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/buttonmatrix/lv_buttonmatrix.h:60:9
    mapp*: ptr cstring
    buttonareas*: ptr lvareat
    ctrlbits*: ptr lvbuttonmatrixctrlt
    btncnt*: uint32
    rowcnt*: uint32
    btnidsel*: uint32
    onecheck*: uint32
  lvbuttonmatrixt* = structlvbuttonmatrixt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/buttonmatrix/lv_buttonmatrix.h:69:3
  structlvcalendardatet* {.pure, inheritable, bycopy.} = object
    year*: uint16            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/calendar/lv_calendar.h:31:9
    month*: int8
    day*: int8
  lvcalendardatet* = structlvcalendardatet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/calendar/lv_calendar.h:35:3
  structlvcalendart* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/calendar/lv_calendar.h:38:9
    btnm*: ptr lvobjt
    today*: lvcalendardatet
    showeddate*: lvcalendardatet
    highlighteddates*: ptr lvcalendardatet
    highlighteddatesnum*: csize_t
    map*: array[56'i64, cstring]
    usechinesecalendar*: bool
    nums*: array[42'i64, array[20'i64, cschar]]
  lvcalendart* = structlvcalendart ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/calendar/lv_calendar.h:60:3
  structlvcanvast* {.pure, inheritable, bycopy.} = object
    img*: lvimaget           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/canvas/lv_canvas.h:33:9
    drawbuf*: ptr lvdrawbuft
    staticbuf*: lvdrawbuft
  lvcanvast* = structlvcanvast ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/canvas/lv_canvas.h:37:3
  lvcharttypet* = uint8      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:46:17
  lvchartupdatemodet* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:60:17
  lvchartaxist* = uint8      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:77:17
  structlvchartseriest* {.pure, inheritable, bycopy.} = object
    xpoints*: ptr int32      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:83:9
    ypoints*: ptr int32
    color*: lvcolort
    startpoint*: uint32
    hidden*: uint32
    xextbufassigned*: uint32
    yextbufassigned*: uint32
    xaxissec*: uint32
    yaxissec*: uint32
  lvchartseriest* = structlvchartseriest ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:93:3
  structlvchartcursort* {.pure, inheritable, bycopy.} = object
    pos*: lvpointt           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:95:9
    pointid*: int32
    color*: lvcolort
    ser*: ptr lvchartseriest
    dir*: lvdirt
    posset*: uint32
  lvchartcursort* = structlvchartcursort ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:102:3
  structlvchartt* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:104:9
    seriesll*: lvllt
    cursorll*: lvllt
    ymin*: array[2'i64, int32]
    ymax*: array[2'i64, int32]
    xmin*: array[2'i64, int32]
    xmax*: array[2'i64, int32]
    pressedpointid*: int32
    hdivcnt*: uint32
    vdivcnt*: uint32
    pointcnt*: uint32
    typefield*: lvcharttypet
    updatemode*: lvchartupdatemodet
  lvchartt* = structlvchartt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/chart/lv_chart.h:118:3
  structlvcheckboxt* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/checkbox/lv_checkbox.h:29:9
    txt*: cstring
    statictxt*: uint32
  lvcheckboxt* = structlvcheckboxt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/checkbox/lv_checkbox.h:33:3
  structlvdropdownt* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/dropdown/lv_dropdown.h:38:9
    list*: ptr lvobjt
    text*: cstring
    symbol*: pointer
    options*: cstring
    optioncnt*: uint32
    seloptid*: uint32
    seloptidorig*: uint32
    proptid*: uint32
    dir*: lvdirt
    statictxt*: uint8
    selectedhighlight*: uint8
  lvdropdownt* = structlvdropdownt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/dropdown/lv_dropdown.h:51:3
  structlvdropdownlistt* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/dropdown/lv_dropdown.h:53:9
    dropdown*: ptr lvobjt
  lvdropdownlistt* = structlvdropdownlistt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/dropdown/lv_dropdown.h:56:3
  lvimagebuttonstatet* = enumlvimagebuttonstatet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/imagebutton/lv_imagebutton.h:31:3
  structlvimagebuttonsrcinfot* {.pure, inheritable, bycopy.} = object
    imgsrc*: pointer         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/imagebutton/lv_imagebutton.h:33:9
    header*: lvimageheadert
  lvimagebuttonsrcinfot* = structlvimagebuttonsrcinfot ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/imagebutton/lv_imagebutton.h:36:3
  structlvimagebuttont* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/imagebutton/lv_imagebutton.h:42:9
    srcmid*: array[6'i64, lvimagebuttonsrcinfot]
    srcleft*: array[6'i64, lvimagebuttonsrcinfot]
    srcright*: array[6'i64, lvimagebuttonsrcinfot]
  lvimagebuttont* = structlvimagebuttont ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/imagebutton/lv_imagebutton.h:47:3
  lvkeyboardmodet* = uint8   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/keyboard/lv_keyboard.h:56:17
  structlvkeyboardt* {.pure, inheritable, bycopy.} = object
    btnm*: lvbuttonmatrixt   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/keyboard/lv_keyboard.h:60:9
    ta*: ptr lvobjt
    mode*: lvkeyboardmodet
    popovers*: uint8
  lvkeyboardt* = structlvkeyboardt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/keyboard/lv_keyboard.h:65:3
  structlvledt* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/led/lv_led.h:38:9
    color*: lvcolort
    bright*: uint8
  lvledt* = structlvledt     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/led/lv_led.h:42:3
  structlvlinet_pointarray_t* {.union, bycopy.} = object
    constant*: ptr lvpointpreciset
    mut*: ptr lvpointpreciset
  structlvlinet* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/line/lv_line.h:28:9
    pointarray*: structlvlinet_pointarray_t
    pointnum*: uint32
    yinv*: uint32
    pointarrayismutable*: uint32
  lvlinet* = structlvlinet   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/line/lv_line.h:37:3
  lvmenumodeheadert* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:40:17
  lvmenumoderootbackbuttont* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:51:17
  structlvmenuloadpageeventdatat* {.pure, inheritable, bycopy.} = object
    menu*: ptr lvobjt        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:58:5
    page*: ptr lvobjt
  lvmenuloadpageeventdatat* = structlvmenuloadpageeventdatat ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:63:3
  structlvmenuhistoryt* {.pure, inheritable, bycopy.} = object
    page*: ptr lvobjt        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:65:9
  lvmenuhistoryt* = structlvmenuhistoryt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:67:3
  structlvmenut* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:69:9
    storage*: ptr lvobjt
    main*: ptr lvobjt
    mainpage*: ptr lvobjt
    mainheader*: ptr lvobjt
    mainheaderbackbtn*: ptr lvobjt
    mainheadertitle*: ptr lvobjt
    sidebar*: ptr lvobjt
    sidebarpage*: ptr lvobjt
    sidebarheader*: ptr lvobjt
    sidebarheaderbackbtn*: ptr lvobjt
    sidebarheadertitle*: ptr lvobjt
    selectedtab*: ptr lvobjt
    historyll*: lvllt
    curdepth*: uint8
    prevdepth*: uint8
    sidebargenerated*: uint8
    modeheader*: lvmenumodeheadert
    moderootbackbtn*: lvmenumoderootbackbuttont
  lvmenut* = structlvmenut   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:91:3
  structlvmenupaget* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:93:9
    title*: cstring
    statictitle*: bool
  lvmenupaget* = structlvmenupaget ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/menu/lv_menu.h:97:3
  structlvmsgboxt* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/msgbox/lv_msgbox.h:37:9
    header*: ptr lvobjt
    content*: ptr lvobjt
    footer*: ptr lvobjt
    title*: ptr lvobjt
  lvmsgboxt* = structlvmsgboxt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/msgbox/lv_msgbox.h:43:3
  lvrollermodet* = uint8     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/roller/lv_roller.h:44:17
  structlvrollert* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/roller/lv_roller.h:47:9
    optioncnt*: uint32
    seloptid*: uint32
    seloptidori*: uint32
    infpagecnt*: uint32
    mode*: lvrollermodet
    moved*: uint32
  lvrollert* = structlvrollert ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/roller/lv_roller.h:55:3
  lvscalemodet* = uint32     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:56:18
  structlvscalesectiont* {.pure, inheritable, bycopy.} = object
    mainstyle*: ptr lvstylet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:58:9
    indicatorstyle*: ptr lvstylet
    itemsstyle*: ptr lvstylet
    minorrange*: int32
    majorrange*: int32
    firsttickidxinsection*: uint32
    lasttickidxinsection*: uint32
    firsttickidxismajor*: uint32
    lasttickidxismajor*: uint32
    firsttickinsectionwidth*: int32
    lasttickinsectionwidth*: int32
    firsttickinsection*: lvpointt
    lasttickinsection*: lvpointt
  lvscalesectiont* = structlvscalesectiont ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:72:3
  structlvscalet* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:74:9
    sectionll*: lvllt
    txtsrc*: ptr cstring
    mode*: lvscalemodet
    rangemin*: int32
    rangemax*: int32
    totaltickcount*: uint32
    majortickevery*: uint32
    labelenabled*: uint32
    postdraw*: uint32
    drawticksontop*: uint32
    anglerange*: uint32
    rotation*: int32
    customlabelcnt*: int32
    lasttickwidth*: int32
    firsttickwidth*: int32
  lvscalet* = structlvscalet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:93:3
  lvslidermodet* = uint8     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/slider/lv_slider.h:41:17
  structlvslidert* {.pure, inheritable, bycopy.} = object
    bar*: lvbart             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/slider/lv_slider.h:44:9
    leftknobarea*: lvareat
    rightknobarea*: lvareat
    pressedpoint*: lvpointt
    valuetoset*: ptr int32
    dragging*: uint8
    leftknobfocus*: uint8
  lvslidert* = structlvslidert ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/slider/lv_slider.h:52:3
  lvspanoverflowt* = uint32  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/span/lv_span.h:40:18
  lvspanmodet* = uint32      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/span/lv_span.h:53:18
  structlvspant* {.pure, inheritable, bycopy.} = object
    txt*: cstring            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/span/lv_span.h:56:9
    spangroup*: ptr lvobjt
    style*: lvstylet
    staticflag*: uint32
  lvspant* = structlvspant   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/span/lv_span.h:61:3
  structlvspangroupt* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/span/lv_span.h:64:9
    lines*: int32
    indent*: int32
    cachew*: int32
    cacheh*: int32
    childll*: lvllt
    mode*: uint32
    overflow*: uint32
    refresh*: uint32
  lvspangroupt* = structlvspangroupt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/span/lv_span.h:74:3
  structlvtextareat_cursor_t* {.pure, inheritable, bycopy.} = object
    validx*: int32
    pos*: uint32
    area*: lvareat
    txtbytepos*: uint32
    show*: uint8
    clickpos*: uint8
  structlvtextareat* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/spinbox/../textarea/lv_textarea.h:37:9
    label*: ptr lvobjt
    placeholdertxt*: cstring
    pwdtmp*: cstring
    pwdbullet*: cstring
    acceptedchars*: cstring
    maxlength*: uint32
    pwdshowtime*: uint32
    cursor*: structlvtextareat_cursor_t
    selstart*: uint32
    selend*: uint32
    textselinprog*: uint8
    textselen*: uint8
    pwdmode*: uint8
    oneline*: uint8
  lvtextareat* = structlvtextareat ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/spinbox/../textarea/lv_textarea.h:64:3
  structlvspinboxt* {.pure, inheritable, bycopy.} = object
    ta*: lvtextareat         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/spinbox/lv_spinbox.h:35:9
    value*: int32
    rangemax*: int32
    rangemin*: int32
    step*: int32
    digitcount*: uint32
    decpointpos*: uint32
    rollover*: uint32
    digitstepdir*: uint32
  lvspinboxt* = structlvspinboxt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/spinbox/lv_spinbox.h:46:3
  structlvswitcht* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/switch/lv_switch.h:33:9
    animstate*: int32
  lvswitcht* = structlvswitcht ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/switch/lv_switch.h:36:3
  lvtablecellctrlt* = uint32 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/lv_table.h:48:18
  structlvtablecellt* {.pure, inheritable, bycopy.} = object
    ctrl*: lvtablecellctrlt  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/lv_table.h:52:9
    userdata*: pointer
    txt*: array[1'i64, cschar]
  lvtablecellt* = structlvtablecellt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/lv_table.h:56:3
  structlvtablet* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/lv_table.h:59:9
    colcnt*: uint32
    rowcnt*: uint32
    celldata*: ptr ptr lvtablecellt
    rowh*: ptr int32
    colw*: ptr int32
    colact*: uint32
    rowact*: uint32
  lvtablet* = structlvtablet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/lv_table.h:68:3
  structlvtabviewt* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/tabview/lv_tabview.h:29:9
    tabcur*: uint32
    tabpos*: lvdirt
  lvtabviewt* = structlvtabviewt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/tabview/lv_tabview.h:33:3
  structlvtileviewt* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/tileview/lv_tileview.h:27:9
    tileact*: ptr lvobjt
  lvtileviewt* = structlvtileviewt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/tileview/lv_tileview.h:30:3
  structlvtileviewtilet* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/tileview/lv_tileview.h:32:9
    dir*: lvdirt
  lvtileviewtilet* = structlvtileviewtilet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/tileview/lv_tileview.h:35:3
  structlvwint* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/win/lv_win.h:25:9
  lvwint* = structlvwint     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/win/lv_win.h:27:3
  lvobservert* = structlvobservert ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:29:31
  structlvobservert* {.pure, inheritable, bycopy.} = object
    subject*: ptr lvsubjectt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:73:8
    cb*: lvobservercbt
    target*: pointer
    userdata*: pointer
    autofreeuserdata*: uint32
    notified*: uint32
    forobj*: uint32
  lvsubjecttypet* = enumlvsubjecttypet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:39:3
  unionlvsubjectvaluet* {.union, bycopy.} = object
    num*: int32              ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:44:9
    pointer*: pointer
    color*: lvcolort
  lvsubjectvaluet* = unionlvsubjectvaluet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:48:3
  structlvsubjectt* {.pure, inheritable, bycopy.} = object
    subsll*: lvllt           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:53:9
    typefield*: uint32
    size*: uint32
    value*: lvsubjectvaluet
    prevvalue*: lvsubjectvaluet
    notifyrestartquery*: uint32
    userdata*: pointer
  lvsubjectt* = structlvsubjectt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:61:3
  lvobservercbt* = proc (a0: ptr lvobservert; a1: ptr lvsubjectt): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/sysmon/../../others/observer/lv_observer.h:68:16
  lvmonkeyt* = structlvmonkey ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/monkey/lv_monkey.h:28:27
  structlvmonkeyconfigt_periodrange_t* {.pure, inheritable, bycopy.} = object
    min*: uint32
    max*: uint32
  structlvmonkeyconfigt_inputrange_t* {.pure, inheritable, bycopy.} = object
    min*: int32
    max*: int32
  structlvmonkeyconfigt* {.pure, inheritable, bycopy.} = object
    typefield*: lvindevtypet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/monkey/lv_monkey.h:30:9
    periodrange*: structlvmonkeyconfigt_periodrange_t
    inputrange*: structlvmonkeyconfigt_inputrange_t
  lvmonkeyconfigt* = structlvmonkeyconfigt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/monkey/lv_monkey.h:47:3
  internalkeeppedantichappy* = cint ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/gridnav/lv_gridnav.h:20:13
  lvgridnavctrlt* = enumlvgridnavctrlt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/gridnav/lv_gridnav.h:95:3
  lvfragmentmanagert* = structlvfragmentmanagert ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/fragment/lv_fragment.h:28:39
  lvfragmentt* = structlvfragmentt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/fragment/lv_fragment.h:30:31
  structlvfragmentt* {.pure, inheritable, bycopy.} = object
    cls*: ptr lvfragmentclasst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/fragment/lv_fragment.h:34:8
    managed*: ptr lvfragmentmanagedstatest
    childmanager*: ptr lvfragmentmanagert
    obj*: ptr lvobjt
  lvfragmentclasst* = structlvfragmentclasst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/fragment/lv_fragment.h:31:37
  structlvfragmentclasst* {.pure, inheritable, bycopy.} = object
    constructorcb*: proc (a0: ptr lvfragmentt; a1: pointer): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/fragment/lv_fragment.h:56:8
    destructorcb*: proc (a0: ptr lvfragmentt): void {.cdecl.}
    attachedcb*: proc (a0: ptr lvfragmentt): void {.cdecl.}
    detachedcb*: proc (a0: ptr lvfragmentt): void {.cdecl.}
    createobjcb*: proc (a0: ptr lvfragmentt; a1: ptr lvobjt): ptr lvobjt {.cdecl.}
    objcreatedcb*: proc (a0: ptr lvfragmentt; a1: ptr lvobjt): void {.cdecl.}
    objwilldeletecb*: proc (a0: ptr lvfragmentt; a1: ptr lvobjt): void {.cdecl.}
    objdeletedcb*: proc (a0: ptr lvfragmentt; a1: ptr lvobjt): void {.cdecl.}
    eventcb*: proc (a0: ptr lvfragmentt; a1: cint; a2: pointer): bool {.cdecl.}
    instancesize*: csize_t
  lvfragmentmanagedstatest* = structlvfragmentmanagedstatest ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/fragment/lv_fragment.h:32:46
  structlvfragmentmanagedstatest* {.pure, inheritable, bycopy.} = object
    cls*: ptr lvfragmentclasst ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/fragment/lv_fragment.h:130:8
    manager*: ptr lvfragmentmanagert
    container*: ptr ptr lvobjt
    instance*: ptr lvfragmentt
    objcreated*: bool
    destroyingobj*: bool
    instack*: bool
  lvimgfontgetpathcbt* = proc (a0: ptr lvfontt; a1: uint32; a2: uint32;
                               a3: ptr int32; a4: pointer): pointer {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/imgfont/lv_imgfont.h:30:24
  lvimepinyinmodet* = enumlvimepinyinmodet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:33:3
  structlvpinyindictt* {.pure, inheritable, bycopy.} = object
    py*: cstring             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:36:9
    pymb*: cstring
  lvpinyindictt* = structlvpinyindictt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:39:3
  structimepinyink9pystrt* {.pure, inheritable, bycopy.} = object
    pystr*: array[7'i64, cschar] ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:42:9
  imepinyink9pystrt* = structimepinyink9pystrt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:44:3
  structlvimepinyint* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:47:9
    kb*: ptr lvobjt
    candpanel*: ptr lvobjt
    dict*: ptr lvpinyindictt
    k9legalpyll*: lvllt
    candstr*: cstring
    inputchar*: array[16'i64, cschar]
    k9inputstr*: array[8'i64, cschar]
    k9pyllpos*: uint16
    k9legalpycount*: uint16
    k9inputstrlen*: uint16
    tacount*: uint16
    candnum*: uint16
    pypage*: uint16
    pynum*: array[26'i64, uint16]
    pypos*: array[26'i64, uint16]
    mode*: lvimepinyinmodet
  lvimepinyint* = structlvimepinyint ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:67:3
  lvfileexplorersortt* = enumlvfileexplorersortt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/file_explorer/lv_file_explorer.h:32:3
  lvfileexplorerdirt* = enumlvfileexplorerdirt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/file_explorer/lv_file_explorer.h:42:3
  structlvfileexplorert* {.pure, inheritable, bycopy.} = object
    obj*: lvobjt             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/file_explorer/lv_file_explorer.h:46:9
    cont*: ptr lvobjt
    headarea*: ptr lvobjt
    browserarea*: ptr lvobjt
    filetable*: ptr lvobjt
    pathlabel*: ptr lvobjt
    quickaccessarea*: ptr lvobjt
    listdevice*: ptr lvobjt
    listplaces*: ptr lvobjt
    homedir*: cstring
    musicdir*: cstring
    picturesdir*: cstring
    videodir*: cstring
    docsdir*: cstring
    fsdir*: cstring
    selfn*: cstring
    currentpath*: array[128'i64, cschar]
    sort*: lvfileexplorersortt
  lvfileexplorert* = structlvfileexplorert ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/file_explorer/lv_file_explorer.h:67:3
  structlvbarcodet* {.pure, inheritable, bycopy.} = object
    canvas*: lvcanvast       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/barcode/lv_barcode.h:32:9
    darkcolor*: lvcolort
    lightcolor*: lvcolort
    scale*: uint16
    direction*: lvdirt
  lvbarcodet* = structlvbarcodet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/barcode/lv_barcode.h:38:3
  structgdpalette* {.pure, inheritable, bycopy.} = object
    size*: cint              ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:13:16
    colors*: array[768'i64, uint8]
  gdpalette* = structgdpalette ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:16:3
  structgdgce* {.pure, inheritable, bycopy.} = object
    delay*: uint16           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:18:16
    tindex*: uint8
    disposal*: uint8
    input*: cint
    transparency*: cint
  gdgce* = structgdgce       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:24:3
  structgdgif* {.pure, inheritable, bycopy.} = object
    fd*: lvfsfilet           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:28:16
    data*: cstring
    isfile*: uint8
    frwp*: uint32
    animstart*: int32
    width*: uint16
    height*: uint16
    depth*: uint16
    loopcount*: int32
    gce*: gdgce
    palette*: ptr gdpalette
    lct*: gdpalette
    gct*: gdpalette
    plaintext*: proc (a0: ptr structgdgif; a1: uint16; a2: uint16; a3: uint16;
                      a4: uint16; a5: uint8; a6: uint8; a7: uint8; a8: uint8): void {.
        cdecl.}
    comment*: proc (a0: ptr structgdgif): void {.cdecl.}
    application*: proc (a0: ptr structgdgif; a1: array[8'i64, cschar];
                        a2: array[3'i64, cschar]): void {.cdecl.}
    fx*: uint16
    fy*: uint16
    fw*: uint16
    fh*: uint16
    bgindex*: uint8
    canvas*: ptr uint8
    frame*: ptr uint8
  gdgif* = structgdgif       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/gifdec.h:53:3
  structlvgift* {.pure, inheritable, bycopy.} = object
    img*: lvimaget           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/lv_gif.h:30:9
    gif*: ptr gdgif
    timer*: ptr lvtimert
    imgdsc*: lvdrawbuft
    lastcall*: uint32
  lvgift* = structlvgift     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/lv_gif.h:36:3
  structlvqrcodet* {.pure, inheritable, bycopy.} = object
    canvas*: lvcanvast       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/qrcode/lv_qrcode.h:28:9
    darkcolor*: lvcolort
    lightcolor*: lvcolort
  lvqrcodet* = structlvqrcodet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/qrcode/lv_qrcode.h:32:3
  lvvectorfillt* = uint8     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:28:17
  lvvectorstrokecapt* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:35:17
  lvvectorstrokejoint* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:42:17
  lvvectorpathqualityt* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:49:17
  lvvectorblendt* = uint8    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:62:17
  lvvectorpathopt* = uint8   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:71:17
  lvvectordrawstylet* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:78:17
  lvvectorgradientspreadt* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:85:17
  lvvectorgradientstylet* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:91:17
  structlvfpointt* {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:93:9
    y*: cfloat
  lvfpointt* = structlvfpointt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:96:3
  structlvmatrixt* {.pure, inheritable, bycopy.} = object
    m*: array[3'i64, array[3'i64, cfloat]] ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:98:9
  lvmatrixt* = structlvmatrixt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:100:3
  structlvvectorpatht* {.pure, inheritable, bycopy.} = object
    quality*: lvvectorpathqualityt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:102:9
    ops*: lvarrayt
    points*: lvarrayt
  lvvectorpatht* = structlvvectorpatht ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:106:3
  structlvvectorgradientt* {.pure, inheritable, bycopy.} = object
    style*: lvvectorgradientstylet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:108:9
    stops*: array[2'i64, lvgradientstopt]
    stopscount*: uint16
    x1*: cfloat
    y1*: cfloat
    x2*: cfloat
    y2*: cfloat
    cx*: cfloat
    cy*: cfloat
    cr*: cfloat
    spread*: lvvectorgradientspreadt
  lvvectorgradientt* = structlvvectorgradientt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:120:3
  structlvvectorfilldsct* {.pure, inheritable, bycopy.} = object
    style*: lvvectordrawstylet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:122:9
    color*: lvcolor32t
    opa*: lvopat
    fillrule*: lvvectorfillt
    imgdsc*: lvdrawimagedsct
    gradient*: lvvectorgradientt
    matrix*: lvmatrixt
  lvvectorfilldsct* = structlvvectorfilldsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:130:3
  structlvvectorstrokedsct* {.pure, inheritable, bycopy.} = object
    style*: lvvectordrawstylet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:132:9
    color*: lvcolor32t
    opa*: lvopat
    width*: cfloat
    dashpattern*: lvarrayt
    cap*: lvvectorstrokecapt
    join*: lvvectorstrokejoint
    miterlimit*: uint16
    gradient*: lvvectorgradientt
    matrix*: lvmatrixt
  lvvectorstrokedsct* = structlvvectorstrokedsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:143:3
  structlvvectordrawdsct* {.pure, inheritable, bycopy.} = object
    filldsc*: lvvectorfilldsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:145:9
    strokedsc*: lvvectorstrokedsct
    matrix*: lvmatrixt
    blendmode*: lvvectorblendt
    scissorarea*: lvareat
  lvvectordrawdsct* = structlvvectordrawdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:151:3
  structlvdrawvectortaskdsct* {.pure, inheritable, bycopy.} = object
    base*: lvdrawdscbaset    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:153:9
    tasklist*: ptr lvllt
  lvdrawvectortaskdsct* = structlvdrawvectortaskdsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:156:3
  structlvvectordsct* {.pure, inheritable, bycopy.} = object
    layer*: ptr lvlayert     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:158:9
    currentdsc*: lvvectordrawdsct
    tasks*: lvdrawvectortaskdsct
  lvvectordsct* = structlvvectordsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:163:3
  vectordrawtaskcb* = proc (a0: pointer; a1: ptr lvvectorpatht;
                            a2: ptr lvvectordrawdsct): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_vector.h:596:16
  lvthemeapplycbt* = proc (a0: ptr lvthemet; a1: ptr lvobjt): void {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/themes/lv_theme.h:26:16
  lvcoordt* = int32          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:49:37
  lvrest* = lvresultt        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:50:37
  lvimgdsct* = lvimagedsct   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:51:37
  lvdispt* = lvdisplayt      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:52:37
  lvdisprotationt* = lvdisplayrotationt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:53:37
  lvdisprendert* = lvdisplayrendermodet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:54:37
  lvanimreadycbt* = lvanimcompletedcbt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:55:37
  lvscrloadanimt* = lvscreenloadanimt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:56:37
  lvbtnmatrixctrlt* = lvbuttonmatrixctrlt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:59:37
  structlvdrawswunitt* {.pure, inheritable, bycopy.} = object
    baseunit*: lvdrawunitt   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/sw/lv_draw_sw.h:34:9
    taskact*: ptr lvdrawtaskt
    idx*: uint32
  lvdrawswunitt* = structlvdrawswunitt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../draw/sw/lv_draw_sw.h:44:3
  lvdrawswmaskrest* = uint8  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:42:17
  lvdrawswmasktypet* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:54:17
  lvdrawswmaskxcbt* = proc (a0: ptr lvopat; a1: int32; a2: int32; a3: int32;
                            a4: pointer): lvdrawswmaskrest {.cdecl.} ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:67:33
  lvdrawswmasklinesidet* = uint8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:71:17
  structlvdrawswmaskcommondsct* {.pure, inheritable, bycopy.} = object
    cb*: lvdrawswmaskxcbt    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:73:9
    typefield*: lvdrawswmasktypet
  internallvdrawswmaskcommondsct* = structlvdrawswmaskcommondsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:76:3
  structlvdrawswmasklineparamt_cfg_t* {.pure, inheritable, bycopy.} = object
    p1*: lvpointt
    p2*: lvpointt
    side*: lvdrawswmasklinesidet
  structlvdrawswmasklineparamt* {.pure, inheritable, bycopy.} = object
    dsc*: internallvdrawswmaskcommondsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:78:9
    cfg*: structlvdrawswmasklineparamt_cfg_t
    origo*: lvpointt
    xysteep*: int32
    yxsteep*: int32
    steep*: int32
    spx*: int32
    flat*: uint8
    inv*: uint8
  lvdrawswmasklineparamt* = structlvdrawswmasklineparamt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:114:3
  structlvdrawswmaskangleparamt_cfg_t* {.pure, inheritable, bycopy.} = object
    vertexp*: lvpointt
    startangle*: int32
    endangle*: int32
  structlvdrawswmaskangleparamt* {.pure, inheritable, bycopy.} = object
    dsc*: internallvdrawswmaskcommondsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:116:9
    cfg*: structlvdrawswmaskangleparamt_cfg_t
    startline*: lvdrawswmasklineparamt
    endline*: lvdrawswmasklineparamt
    deltadeg*: uint16
  lvdrawswmaskangleparamt* = structlvdrawswmaskangleparamt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:129:3
  structlvdrawswmaskradiuscircledsct* {.pure, inheritable, bycopy.} = object
    buf*: ptr uint8          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:131:9
    ciropa*: ptr lvopat
    xstartony*: ptr uint16
    opastartony*: ptr uint16
    life*: int32
    usedcnt*: uint32
    radius*: int32
  internallvdrawswmaskradiuscircledsct* = structlvdrawswmaskradiuscircledsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:139:3
  internallvdrawswmaskradiuscircledscarrt* = array[4'i64,
      internallvdrawswmaskradiuscircledsct] ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:141:46
  structlvdrawswmaskradiusparamt_cfg_t* {.pure, inheritable, bycopy.} = object
    rect*: lvareat
    radius*: int32
    outer*: uint8
  structlvdrawswmaskradiusparamt* {.pure, inheritable, bycopy.} = object
    dsc*: internallvdrawswmaskcommondsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:143:9
    cfg*: structlvdrawswmaskradiusparamt_cfg_t
    circle*: ptr internallvdrawswmaskradiuscircledsct
  lvdrawswmaskradiusparamt* = structlvdrawswmaskradiusparamt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:155:3
  structlvdrawswmaskfadeparamt_cfg_t* {.pure, inheritable, bycopy.} = object
    coords*: lvareat
    ytop*: int32
    ybottom*: int32
    opatop*: lvopat
    opabottom*: lvopat
  structlvdrawswmaskfadeparamt* {.pure, inheritable, bycopy.} = object
    dsc*: internallvdrawswmaskcommondsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:157:9
    cfg*: structlvdrawswmaskfadeparamt_cfg_t
  lvdrawswmaskfadeparamt* = structlvdrawswmaskfadeparamt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:169:3
  structlvdrawswmaskmapparamt_cfg_t* {.pure, inheritable, bycopy.} = object
    coords*: lvareat
    map*: ptr lvopat
  structlvdrawswmaskmapparamt* {.pure, inheritable, bycopy.} = object
    dsc*: internallvdrawswmaskcommondsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:171:16
    cfg*: structlvdrawswmaskmapparamt_cfg_t
  lvdrawswmaskmapparamt* = structlvdrawswmaskmapparamt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:179:3
  structlvdrawswblenddsct* {.pure, inheritable, bycopy.} = object
    blendarea*: ptr lvareat  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/lv_draw_sw_blend.h:31:9
    srcbuf*: pointer
    srcstride*: uint32
    srccolorformat*: lvcolorformatt
    srcarea*: ptr lvareat
    opa*: lvopat
    color*: lvcolort
    maskbuf*: ptr lvopat
    maskres*: lvdrawswmaskrest
    maskarea*: ptr lvareat
    maskstride*: int32
    blendmode*: lvblendmodet
  lvdrawswblenddsct* = structlvdrawswblenddsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/lv_draw_sw_blend.h:45:3
  structlvdrawswblendfilldsct* {.pure, inheritable, bycopy.} = object
    destbuf*: pointer        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/lv_draw_sw_blend.h:47:9
    destw*: int32
    desth*: int32
    deststride*: int32
    maskbuf*: ptr lvopat
    maskstride*: int32
    color*: lvcolort
    opa*: lvopat
  internallvdrawswblendfilldsct* = structlvdrawswblendfilldsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/lv_draw_sw_blend.h:56:3
  structlvdrawswblendimagedsct* {.pure, inheritable, bycopy.} = object
    destbuf*: pointer        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/lv_draw_sw_blend.h:58:9
    destw*: int32
    desth*: int32
    deststride*: int32
    maskbuf*: ptr lvopat
    maskstride*: int32
    srcbuf*: pointer
    srcstride*: int32
    srccolorformat*: lvcolorformatt
    opa*: lvopat
    blendmode*: lvblendmodet
  internallvdrawswblendimagedsct* = structlvdrawswblendimagedsct ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/lv_draw_sw_blend.h:70:3
  lvtlsft* = pointer         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/lv_tlsf.h:54:16
  lvpoolt* = pointer         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/lv_tlsf.h:55:16
  structlvtlsfstatet* {.pure, inheritable, bycopy.} = object
    tlsf*: lvtlsft           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/lv_tlsf.h:57:9
    curused*: csize_t
    maxused*: csize_t
    poolll*: lvllt
  lvtlsfstatet* = structlvtlsfstatet ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/lv_tlsf.h:65:3
  lvtlsfwalker* = proc (a0: pointer; a1: csize_t; a2: cint; a3: pointer): void {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/lv_tlsf.h:95:16
  structlvglobalt* {.pure, inheritable, bycopy.} = object
    inited*: bool            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_global.h:68:16
    deinitinprogress*: bool
    displl*: lvllt
    disprefresh*: ptr lvdisplayt
    dispdefault*: ptr lvdisplayt
    styletransll*: lvllt
    stylerefresh*: bool
    stylecustomtablesize*: uint32
    stylelastcustompropid*: uint32
    stylecustompropflaglookuptable*: ptr uint8
    groupll*: lvllt
    groupdefault*: ptr lvgroupt
    indevll*: lvllt
    indevactive*: ptr lvindevt
    indevobjactive*: ptr lvobjt
    layoutcount*: uint32
    layoutlist*: ptr lvlayoutdsct
    layoutupdatemutex*: bool
    memoryzero*: uint32
    mathrandseed*: uint32
    eventheader*: ptr lveventt
    eventlastregisterid*: uint32
    timerstate*: lvtimerstatet
    animstate*: lvanimstatet
    tickstate*: lvtickstatet
    drawbufhandlers*: lvdrawbufhandlerst
    fontdrawbufhandlers*: lvdrawbufhandlerst
    imagecachedrawbufhandlers*: lvdrawbufhandlerst
    imgdecoderll*: lvllt
    imgcache*: ptr lvcachet
    imgheadercache*: ptr lvcachet
    drawinfo*: lvdrawglobalinfot
    swcirclecache*: internallvdrawswmaskradiuscircledscarrt
    customlogprintcb*: lvlogprintgcbt
    loglastlogtime*: uint32
    themesimple*: pointer
    themedefault*: pointer
    thememono*: pointer
    tlsfstate*: lvtlsfstatet
    fsdrvll*: lvllt
    stdiofsdrv*: lvfsdrvt
    tinyttfcache*: ptr lvcachet
    fontfmtrle*: lvfontfmtrlet
    spansnippetstack*: ptr structsnippetstack
    felistbuttonstyle*: lvstylet
    imecandlen*: csize_t
    userdata*: pointer
  lvglobalt* = structlvglobalt ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_global.h:219:3
when 9 is static:
  const
    Lvglversionmajor* = 9    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:9:9
else:
  let Lvglversionmajor* = 9  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:9:9
when 1 is static:
  const
    Lvglversionminor* = 1    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:10:9
else:
  let Lvglversionminor* = 1  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:10:9
when 1 is static:
  const
    Lvglversionpatch* = 1    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:11:9
else:
  let Lvglversionpatch* = 1  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:11:9
when "dev" is static:
  const
    Lvglversioninfo* = "dev" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:12:9
else:
  let Lvglversioninfo* = "dev" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lv_version.h:12:9
when 0 is static:
  const
    Lvosnone* = 0            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:12:9
else:
  let Lvosnone* = 0          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:12:9
when 1 is static:
  const
    Lvospthread* = 1         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:13:9
else:
  let Lvospthread* = 1       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:13:9
when 2 is static:
  const
    Lvosfreertos* = 2        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:14:9
else:
  let Lvosfreertos* = 2      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:14:9
when 3 is static:
  const
    Lvoscmsisrtos2* = 3      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:15:9
else:
  let Lvoscmsisrtos2* = 3    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:15:9
when 4 is static:
  const
    Lvosrtthread* = 4        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:16:9
else:
  let Lvosrtthread* = 4      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:16:9
when 5 is static:
  const
    Lvoswindows* = 5         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:17:9
else:
  let Lvoswindows* = 5       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:17:9
when 6 is static:
  const
    Lvosmqx* = 6             ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:18:9
else:
  let Lvosmqx* = 6           ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:18:9
when 255 is static:
  const
    Lvoscustom* = 255        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:19:9
else:
  let Lvoscustom* = 255      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:19:9
when 0 is static:
  const
    Lvstdlibbuiltin* = 0     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:21:9
else:
  let Lvstdlibbuiltin* = 0   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:21:9
when 1 is static:
  const
    Lvstdlibclib* = 1        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:22:9
else:
  let Lvstdlibclib* = 1      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:22:9
when 2 is static:
  const
    Lvstdlibmicropython* = 2 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:23:9
else:
  let Lvstdlibmicropython* = 2 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:23:9
when 3 is static:
  const
    Lvstdlibrtthread* = 3    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:24:9
else:
  let Lvstdlibrtthread* = 3  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:24:9
when 255 is static:
  const
    Lvstdlibcustom* = 255    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:25:9
else:
  let Lvstdlibcustom* = 255  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:25:9
when 0 is static:
  const
    Lvdrawswasmnone* = 0     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:27:9
else:
  let Lvdrawswasmnone* = 0   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:27:9
when 1 is static:
  const
    Lvdrawswasmneon* = 1     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:28:9
else:
  let Lvdrawswasmneon* = 1   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:28:9
when 2 is static:
  const
    Lvdrawswasmhelium* = 2   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:29:9
else:
  let Lvdrawswasmhelium* = 2 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:29:9
when 255 is static:
  const
    Lvdrawswasmcustom* = 255 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:30:9
else:
  let Lvdrawswasmcustom* = 255 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:30:9
when 1 is static:
  const
    Lvdrawswsupportrgb565* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:349:18
else:
  let Lvdrawswsupportrgb565* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:349:18
when 1 is static:
  const
    Lvdrawswsupportrgb565a8* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:360:18
else:
  let Lvdrawswsupportrgb565a8* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:360:18
when 1 is static:
  const
    Lvdrawswsupportrgb888* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:371:18
else:
  let Lvdrawswsupportrgb888* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:371:18
when 1 is static:
  const
    Lvdrawswsupportxrgb8888* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:382:18
else:
  let Lvdrawswsupportxrgb8888* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:382:18
when 1 is static:
  const
    Lvdrawswsupportargb8888* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:393:18
else:
  let Lvdrawswsupportargb8888* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:393:18
when 1 is static:
  const
    Lvdrawswsupportl8* = 1   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:404:18
else:
  let Lvdrawswsupportl8* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:404:18
when 1 is static:
  const
    Lvdrawswsupportal88* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:415:18
else:
  let Lvdrawswsupportal88* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:415:18
when 1 is static:
  const
    Lvdrawswsupporta8* = 1   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:426:18
else:
  let Lvdrawswsupporta8* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:426:18
when 0 is static:
  const
    Lvusedrawarm2dsync* = 0  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:450:21
else:
  let Lvusedrawarm2dsync* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:450:21
when 0 is static:
  const
    Lvusenativeheliumasm* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:459:21
else:
  let Lvusenativeheliumasm* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:459:21
when 0 is static:
  const
    Lvusedrawswcomplexgradients* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:525:21
else:
  let Lvusedrawswcomplexgradients* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:525:21
when 0 is static:
  const
    Lvimageheadercachedefcnt* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:992:17
else:
  let Lvimageheadercachedefcnt* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:992:17
when 0 is static:
  const
    Lvuseobjid* = 0          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/../../lv_conf.h:286:9
else:
  let Lvuseobjid* = 0        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/../../lv_conf.h:286:9
when 1 is static:
  const
    Lvuseobjpropertyname* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:1079:17
else:
  let Lvuseobjpropertyname* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:1079:17
when 0 is static:
  const
    Lvfontsimsun14cjk* = 0   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:1450:17
else:
  let Lvfontsimsun14cjk* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:1450:17
when 0 is static:
  const
    Lvusecalendarchinese* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:1769:21
else:
  let Lvusecalendarchinese* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:1769:21
when 0 is static:
  const
    Lvuselottie* = 0         ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:1941:17
else:
  let Lvuselottie* = 0       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:1941:17
when 0 is static:
  const
    Lvusefslittlefs* = 0     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:2388:17
else:
  let Lvusefslittlefs* = 0   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:2388:17
when 0 is static:
  const
    Lvusefsarduinoesplittlefs* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:2406:17
else:
  let Lvusefsarduinoesplittlefs* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:2406:17
when 0 is static:
  const
    Lvusefsarduinosd* = 0    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:2424:17
else:
  let Lvusefsarduinosd* = 0  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:2424:17
proc lvtimergetidle*(): uint32 {.cdecl, importc: "lv_timer_get_idle".}
when 0 is static:
  const
    Lvsdlmousewheelmodeencoder* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_window.h:27:9
else:
  let Lvsdlmousewheelmodeencoder* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_window.h:27:9
when 0 is static:
  const
    Lvuselibinput* = 0       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:3231:17
else:
  let Lvuselibinput* = 0     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:3231:17
when 0 is static:
  const
    Lvuserenesasglcdc* = 0   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:3307:17
else:
  let Lvuserenesasglcdc* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:3307:17
when 0 is static:
  const
    Lvuseopengles* = 0       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:3325:17
else:
  let Lvuseopengles* = 0     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../stdlib/builtin/../../lv_conf_internal.h:3325:17
when "d" is static:
  const
    Prid32* = "d"            ## Generated based on /usr/include/inttypes.h:56:10
else:
  let Prid32* = "d"          ## Generated based on /usr/include/inttypes.h:56:10
when "u" is static:
  const
    Priu32* = "u"            ## Generated based on /usr/include/inttypes.h:104:10
else:
  let Priu32* = "u"          ## Generated based on /usr/include/inttypes.h:104:10
when "x" is static:
  const
    Prix32* = "x"            ## Generated based on /usr/include/inttypes.h:120:10
else:
  let Prix32* = "x"          ## Generated based on /usr/include/inttypes.h:120:10
when "X" is static:
  const
    Prix32const* = "X"       ## Generated based on /usr/include/inttypes.h:136:10
else:
  let Prix32const* = "X"     ## Generated based on /usr/include/inttypes.h:136:10
when 0 is static:
  const
    Lvlogleveltrace* = 0     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:26:9
else:
  let Lvlogleveltrace* = 0   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:26:9
when 1 is static:
  const
    Lvloglevelinfo* = 1      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:27:9
else:
  let Lvloglevelinfo* = 1    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:27:9
when 2 is static:
  const
    Lvloglevelwarn* = 2      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:28:9
else:
  let Lvloglevelwarn* = 2    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:28:9
when 3 is static:
  const
    Lvloglevelerror* = 3     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:29:9
else:
  let Lvloglevelerror* = 3   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:29:9
when 4 is static:
  const
    Lvlogleveluser* = 4      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:30:9
else:
  let Lvlogleveluser* = 4    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:30:9
when 5 is static:
  const
    Lvloglevelnone* = 5      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:31:9
else:
  let Lvloglevelnone* = 5    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:31:9
when 6 is static:
  const
    internallvloglevelnum* = 6 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:32:9
else:
  let internallvloglevelnum* = 6 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_log.h:32:9
when 4294967295 is static:
  const
    Lvnotimerready* = 4294967295'i64 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_timer.h:27:9
else:
  let Lvnotimerready* = 4294967295'i64 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_timer.h:27:9
when 32768 is static:
  const
    Lvtrigosinmax* = 32768   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/../../misc/lv_math.h:22:9
else:
  let Lvtrigosinmax* = 32768 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/../../misc/lv_math.h:22:9
when 15 is static:
  const
    Lvtrigoshift* = 15       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/../../misc/lv_math.h:23:9
else:
  let Lvtrigoshift* = 15     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/../../misc/lv_math.h:23:9
when 10 is static:
  const
    Lvbeziervalshift* = 10   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/../../misc/lv_math.h:25:9
else:
  let Lvbeziervalshift* = 10 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/../../misc/lv_math.h:25:9
when 8 is static:
  const
    Lvarraydefaultcapacity* = 8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_array.h:21:9
else:
  let Lvarraydefaultcapacity* = 8 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/../misc/lv_array.h:21:9
when 4294967295 is static:
  const
    Lvanimrepeatinfinite* = 4294967295'i64 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../../misc/lv_anim.h:26:9
else:
  let Lvanimrepeatinfinite* = 4294967295'i64 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../../misc/lv_anim.h:26:9
when 4294967295 is static:
  const
    Lvanimplaytimeinfinite* = 4294967295'i64 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../../misc/lv_anim.h:27:9
else:
  let Lvanimplaytimeinfinite* = 4294967295'i64 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../../misc/lv_anim.h:27:9
when 65535 is static:
  const
    Lvanimtimelineprogressmax* = 65535 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim_timeline.h:22:9
else:
  let Lvanimtimelineprogressmax* = 65535 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/lv_anim_timeline.h:22:9
when "\\xE2\\x80\\xA2" is static:
  const
    Lvsymbolbullet* = "\\xE2\\x80\\xA2" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:14:9
else:
  let Lvsymbolbullet* = "\\xE2\\x80\\xA2" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:14:9
when "\\xEF\\x80\\x81" is static:
  const
    Lvsymbolaudio* = "\\xEF\\x80\\x81" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:35:9
else:
  let Lvsymbolaudio* = "\\xEF\\x80\\x81" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:35:9
when "\\xEF\\x80\\x88" is static:
  const
    Lvsymbolvideo* = "\\xEF\\x80\\x88" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:39:9
else:
  let Lvsymbolvideo* = "\\xEF\\x80\\x88" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:39:9
when "\\xEF\\x80\\x8B" is static:
  const
    Lvsymbollist* = "\\xEF\\x80\\x8B" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:43:9
else:
  let Lvsymbollist* = "\\xEF\\x80\\x8B" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:43:9
when "\\xEF\\x80\\x8C" is static:
  const
    Lvsymbolok* = "\\xEF\\x80\\x8C" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:47:9
else:
  let Lvsymbolok* = "\\xEF\\x80\\x8C" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:47:9
when "\\xEF\\x80\\x8D" is static:
  const
    Lvsymbolclose* = "\\xEF\\x80\\x8D" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:51:9
else:
  let Lvsymbolclose* = "\\xEF\\x80\\x8D" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:51:9
when "\\xEF\\x80\\x91" is static:
  const
    Lvsymbolpower* = "\\xEF\\x80\\x91" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:55:9
else:
  let Lvsymbolpower* = "\\xEF\\x80\\x91" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:55:9
when "\\xEF\\x80\\x93" is static:
  const
    Lvsymbolsettings* = "\\xEF\\x80\\x93" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:59:9
else:
  let Lvsymbolsettings* = "\\xEF\\x80\\x93" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:59:9
when "\\xEF\\x80\\x95" is static:
  const
    Lvsymbolhome* = "\\xEF\\x80\\x95" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:63:9
else:
  let Lvsymbolhome* = "\\xEF\\x80\\x95" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:63:9
when "\\xEF\\x80\\x99" is static:
  const
    Lvsymboldownload* = "\\xEF\\x80\\x99" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:67:9
else:
  let Lvsymboldownload* = "\\xEF\\x80\\x99" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:67:9
when "\\xEF\\x80\\x9C" is static:
  const
    Lvsymboldrive* = "\\xEF\\x80\\x9C" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:71:9
else:
  let Lvsymboldrive* = "\\xEF\\x80\\x9C" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:71:9
when "\\xEF\\x80\\xA1" is static:
  const
    Lvsymbolrefresh* = "\\xEF\\x80\\xA1" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:75:9
else:
  let Lvsymbolrefresh* = "\\xEF\\x80\\xA1" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:75:9
when "\\xEF\\x80\\xA6" is static:
  const
    Lvsymbolmute* = "\\xEF\\x80\\xA6" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:79:9
else:
  let Lvsymbolmute* = "\\xEF\\x80\\xA6" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:79:9
when "\\xEF\\x80\\xA7" is static:
  const
    Lvsymbolvolumemid* = "\\xEF\\x80\\xA7" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:83:9
else:
  let Lvsymbolvolumemid* = "\\xEF\\x80\\xA7" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:83:9
when "\\xEF\\x80\\xA8" is static:
  const
    Lvsymbolvolumemax* = "\\xEF\\x80\\xA8" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:87:9
else:
  let Lvsymbolvolumemax* = "\\xEF\\x80\\xA8" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:87:9
when "\\xEF\\x80\\xBE" is static:
  const
    Lvsymbolimage* = "\\xEF\\x80\\xBE" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:91:9
else:
  let Lvsymbolimage* = "\\xEF\\x80\\xBE" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:91:9
when "\\xEF\\x81\\x83" is static:
  const
    Lvsymboltint* = "\\xEF\\x81\\x83" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:95:9
else:
  let Lvsymboltint* = "\\xEF\\x81\\x83" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:95:9
when "\\xEF\\x81\\x88" is static:
  const
    Lvsymbolprev* = "\\xEF\\x81\\x88" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:99:9
else:
  let Lvsymbolprev* = "\\xEF\\x81\\x88" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:99:9
when "\\xEF\\x81\\x8B" is static:
  const
    Lvsymbolplay* = "\\xEF\\x81\\x8B" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:103:9
else:
  let Lvsymbolplay* = "\\xEF\\x81\\x8B" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:103:9
when "\\xEF\\x81\\x8C" is static:
  const
    Lvsymbolpause* = "\\xEF\\x81\\x8C" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:107:9
else:
  let Lvsymbolpause* = "\\xEF\\x81\\x8C" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:107:9
when "\\xEF\\x81\\x8D" is static:
  const
    Lvsymbolstop* = "\\xEF\\x81\\x8D" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:111:9
else:
  let Lvsymbolstop* = "\\xEF\\x81\\x8D" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:111:9
when "\\xEF\\x81\\x91" is static:
  const
    Lvsymbolnext* = "\\xEF\\x81\\x91" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:115:9
else:
  let Lvsymbolnext* = "\\xEF\\x81\\x91" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:115:9
when "\\xEF\\x81\\x92" is static:
  const
    Lvsymboleject* = "\\xEF\\x81\\x92" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:119:9
else:
  let Lvsymboleject* = "\\xEF\\x81\\x92" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:119:9
when "\\xEF\\x81\\x93" is static:
  const
    Lvsymbolleft* = "\\xEF\\x81\\x93" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:123:9
else:
  let Lvsymbolleft* = "\\xEF\\x81\\x93" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:123:9
when "\\xEF\\x81\\x94" is static:
  const
    Lvsymbolright* = "\\xEF\\x81\\x94" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:127:9
else:
  let Lvsymbolright* = "\\xEF\\x81\\x94" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:127:9
when "\\xEF\\x81\\xA7" is static:
  const
    Lvsymbolplus* = "\\xEF\\x81\\xA7" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:131:9
else:
  let Lvsymbolplus* = "\\xEF\\x81\\xA7" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:131:9
when "\\xEF\\x81\\xA8" is static:
  const
    Lvsymbolminus* = "\\xEF\\x81\\xA8" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:135:9
else:
  let Lvsymbolminus* = "\\xEF\\x81\\xA8" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:135:9
when "\\xEF\\x81\\xAE" is static:
  const
    Lvsymboleyeopen* = "\\xEF\\x81\\xAE" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:139:9
else:
  let Lvsymboleyeopen* = "\\xEF\\x81\\xAE" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:139:9
when "\\xEF\\x81\\xB0" is static:
  const
    Lvsymboleyeclose* = "\\xEF\\x81\\xB0" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:143:9
else:
  let Lvsymboleyeclose* = "\\xEF\\x81\\xB0" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:143:9
when "\\xEF\\x81\\xB1" is static:
  const
    Lvsymbolwarning* = "\\xEF\\x81\\xB1" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:147:9
else:
  let Lvsymbolwarning* = "\\xEF\\x81\\xB1" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:147:9
when "\\xEF\\x81\\xB4" is static:
  const
    Lvsymbolshuffle* = "\\xEF\\x81\\xB4" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:151:9
else:
  let Lvsymbolshuffle* = "\\xEF\\x81\\xB4" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:151:9
when "\\xEF\\x81\\xB7" is static:
  const
    Lvsymbolup* = "\\xEF\\x81\\xB7" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:155:9
else:
  let Lvsymbolup* = "\\xEF\\x81\\xB7" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:155:9
when "\\xEF\\x81\\xB8" is static:
  const
    Lvsymboldown* = "\\xEF\\x81\\xB8" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:159:9
else:
  let Lvsymboldown* = "\\xEF\\x81\\xB8" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:159:9
when "\\xEF\\x81\\xB9" is static:
  const
    Lvsymbolloop* = "\\xEF\\x81\\xB9" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:163:9
else:
  let Lvsymbolloop* = "\\xEF\\x81\\xB9" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:163:9
when "\\xEF\\x81\\xBB" is static:
  const
    Lvsymboldirectory* = "\\xEF\\x81\\xBB" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:167:9
else:
  let Lvsymboldirectory* = "\\xEF\\x81\\xBB" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:167:9
when "\\xEF\\x82\\x93" is static:
  const
    Lvsymbolupload* = "\\xEF\\x82\\x93" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:171:9
else:
  let Lvsymbolupload* = "\\xEF\\x82\\x93" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:171:9
when "\\xEF\\x82\\x95" is static:
  const
    Lvsymbolcall* = "\\xEF\\x82\\x95" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:175:9
else:
  let Lvsymbolcall* = "\\xEF\\x82\\x95" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:175:9
when "\\xEF\\x83\\x84" is static:
  const
    Lvsymbolcut* = "\\xEF\\x83\\x84" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:179:9
else:
  let Lvsymbolcut* = "\\xEF\\x83\\x84" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:179:9
when "\\xEF\\x83\\x85" is static:
  const
    Lvsymbolcopy* = "\\xEF\\x83\\x85" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:183:9
else:
  let Lvsymbolcopy* = "\\xEF\\x83\\x85" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:183:9
when "\\xEF\\x83\\x87" is static:
  const
    Lvsymbolsave* = "\\xEF\\x83\\x87" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:187:9
else:
  let Lvsymbolsave* = "\\xEF\\x83\\x87" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:187:9
when "\\xEF\\x83\\x89" is static:
  const
    Lvsymbolbars* = "\\xEF\\x83\\x89" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:191:9
else:
  let Lvsymbolbars* = "\\xEF\\x83\\x89" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:191:9
when "\\xEF\\x83\\xA0" is static:
  const
    Lvsymbolenvelope* = "\\xEF\\x83\\xA0" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:195:9
else:
  let Lvsymbolenvelope* = "\\xEF\\x83\\xA0" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:195:9
when "\\xEF\\x83\\xA7" is static:
  const
    Lvsymbolcharge* = "\\xEF\\x83\\xA7" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:199:9
else:
  let Lvsymbolcharge* = "\\xEF\\x83\\xA7" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:199:9
when "\\xEF\\x83\\xAA" is static:
  const
    Lvsymbolpaste* = "\\xEF\\x83\\xAA" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:203:9
else:
  let Lvsymbolpaste* = "\\xEF\\x83\\xAA" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:203:9
when "\\xEF\\x83\\xB3" is static:
  const
    Lvsymbolbell* = "\\xEF\\x83\\xB3" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:207:9
else:
  let Lvsymbolbell* = "\\xEF\\x83\\xB3" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:207:9
when "\\xEF\\x84\\x9C" is static:
  const
    Lvsymbolkeyboard* = "\\xEF\\x84\\x9C" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:211:9
else:
  let Lvsymbolkeyboard* = "\\xEF\\x84\\x9C" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:211:9
when "\\xEF\\x84\\xA4" is static:
  const
    Lvsymbolgps* = "\\xEF\\x84\\xA4" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:215:9
else:
  let Lvsymbolgps* = "\\xEF\\x84\\xA4" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:215:9
when "\\xEF\\x85\\x9B" is static:
  const
    Lvsymbolfile* = "\\xEF\\x85\\x9B" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:219:9
else:
  let Lvsymbolfile* = "\\xEF\\x85\\x9B" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:219:9
when "\\xEF\\x87\\xAB" is static:
  const
    Lvsymbolwifi* = "\\xEF\\x87\\xAB" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:223:9
else:
  let Lvsymbolwifi* = "\\xEF\\x87\\xAB" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:223:9
when "\\xEF\\x89\\x80" is static:
  const
    Lvsymbolbatteryfull* = "\\xEF\\x89\\x80" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:227:9
else:
  let Lvsymbolbatteryfull* = "\\xEF\\x89\\x80" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:227:9
when "\\xEF\\x89\\x81" is static:
  const
    Lvsymbolbattery3* = "\\xEF\\x89\\x81" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:231:9
else:
  let Lvsymbolbattery3* = "\\xEF\\x89\\x81" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:231:9
when "\\xEF\\x89\\x82" is static:
  const
    Lvsymbolbattery2* = "\\xEF\\x89\\x82" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:235:9
else:
  let Lvsymbolbattery2* = "\\xEF\\x89\\x82" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:235:9
when "\\xEF\\x89\\x83" is static:
  const
    Lvsymbolbattery1* = "\\xEF\\x89\\x83" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:239:9
else:
  let Lvsymbolbattery1* = "\\xEF\\x89\\x83" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:239:9
when "\\xEF\\x89\\x84" is static:
  const
    Lvsymbolbatteryempty* = "\\xEF\\x89\\x84" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:243:9
else:
  let Lvsymbolbatteryempty* = "\\xEF\\x89\\x84" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:243:9
when "\\xEF\\x8a\\x87" is static:
  const
    Lvsymbolusb* = "\\xEF\\x8a\\x87" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:247:9
else:
  let Lvsymbolusb* = "\\xEF\\x8a\\x87" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:247:9
when "\\xEF\\x8a\\x93" is static:
  const
    Lvsymbolbluetooth* = "\\xEF\\x8a\\x93" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:251:9
else:
  let Lvsymbolbluetooth* = "\\xEF\\x8a\\x93" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:251:9
when "\\xEF\\x8B\\xAD" is static:
  const
    Lvsymboltrash* = "\\xEF\\x8B\\xAD" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:255:9
else:
  let Lvsymboltrash* = "\\xEF\\x8B\\xAD" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:255:9
when "\\xEF\\x8C\\x84" is static:
  const
    Lvsymboledit* = "\\xEF\\x8C\\x84" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:259:9
else:
  let Lvsymboledit* = "\\xEF\\x8C\\x84" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:259:9
when "\\xEF\\x95\\x9A" is static:
  const
    Lvsymbolbackspace* = "\\xEF\\x95\\x9A" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:263:9
else:
  let Lvsymbolbackspace* = "\\xEF\\x95\\x9A" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:263:9
when "\\xEF\\x9F\\x82" is static:
  const
    Lvsymbolsdcard* = "\\xEF\\x9F\\x82" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:267:9
else:
  let Lvsymbolsdcard* = "\\xEF\\x9F\\x82" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:267:9
when "\\xEF\\xA2\\xA2" is static:
  const
    Lvsymbolnewline* = "\\xEF\\xA2\\xA2" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:271:9
else:
  let Lvsymbolnewline* = "\\xEF\\xA2\\xA2" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:271:9
when "\\xEF\\xA3\\xBF" is static:
  const
    Lvsymboldummy* = "\\xEF\\xA3\\xBF" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:276:9
else:
  let Lvsymboldummy* = "\\xEF\\xA3\\xBF" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../font/lv_symbol_def.h:276:9
when cast[cuint](29'i64) is static:
  const
    internallvcoordtypeshift* = cast[cuint](29'i64) ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_area.h:332:9
else:
  let internallvcoordtypeshift* = cast[cuint](29'i64) ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_area.h:332:9
when 3 is static:
  const
    internallvcolornativewithalphasize* = 3 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_color.h:29:9
else:
  let internallvcolornativewithalphasize* = 3 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_color.h:29:9
when 2 is static:
  const
    Lvopamin* = 2            ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_color.h:62:9
else:
  let Lvopamin* = 2          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_color.h:62:9
when 253 is static:
  const
    Lvopamax* = 253          ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_color.h:63:9
else:
  let Lvopamax* = 253        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_color.h:63:9
when 25 is static:
  const
    Lvimageheadermagic* = 25 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:25:9
else:
  let Lvimageheadermagic* = 25 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_image_dsc.h:25:9
when 0 is static:
  const
    Lvstrideauto* = 0        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_buf.h:26:9
else:
  let Lvstrideauto* = 0      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/draw/lv_draw_buf.h:26:9
when 1 is static:
  const
    Lvtxtencutf8* = 1        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../misc/lv_text.h:27:9
else:
  let Lvtxtencutf8* = 1      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../misc/lv_text.h:27:9
when 2 is static:
  const
    Lvtxtencascii* = 2       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../misc/lv_text.h:28:9
else:
  let Lvtxtencascii* = 2     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/bar/../label/../../misc/lv_text.h:28:9
when "\\xE2\\x80\\xAD" is static:
  const
    Lvbidilro* = "\\xE2\\x80\\xAD" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_bidi.h:25:9
else:
  let Lvbidilro* = "\\xE2\\x80\\xAD" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_bidi.h:25:9
when "\\xE2\\x80\\xAE" is static:
  const
    Lvbidirlo* = "\\xE2\\x80\\xAE" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_bidi.h:26:9
else:
  let Lvbidirlo* = "\\xE2\\x80\\xAE" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/../misc/lv_bidi.h:26:9
when 2864434397 is static:
  const
    Lvstylesentinelvalue* = 2864434397'i64 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_style.h:30:9
else:
  let Lvstylesentinelvalue* = 2864434397'i64 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_style.h:30:9
when 0 is static:
  const
    Lvstylepropflagnone* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_style.h:37:9
else:
  let Lvstylepropflagnone* = 0 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_style.h:37:9
when 63 is static:
  const
    Lvstylepropflagall* = 63 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_style.h:44:9
else:
  let Lvstylepropflagall* = 63 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_style.h:44:9
when 256 is static:
  const
    Lvscalenone* = 256       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_style.h:49:9
else:
  let Lvscalenone* = 256     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../../../misc/lv_style.h:49:9
when 64 is static:
  const
    Lvfsmaxfnlength* = 64    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/../../misc/lv_fs.h:22:9
else:
  let Lvfsmaxfnlength* = 64  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/../../misc/lv_fs.h:22:9
when 256 is static:
  const
    Lvfsmaxpathlength* = 256 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/../../misc/lv_fs.h:23:9
else:
  let Lvfsmaxpathlength* = 256 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/libs/gif/../../misc/lv_fs.h:23:9
when cast[cuint](4294967295'i64) is static:
  const
    Uint32max* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
else:
  let Uint32max* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
when 0 is static:
  const
    Lvdrawunitnone* = 0      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/../lv_draw.h:29:9
else:
  let Lvdrawunitnone* = 0    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/../lv_draw.h:29:9
when 32767 is static:
  const
    Lvradiuscircle* = 32767  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_rect.h:25:9
else:
  let Lvradiuscircle* = 32767 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_rect.h:25:9
when 65535 is static:
  const
    Lvdrawlabelnotxtsel* = 65535 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_label.h:25:9
else:
  let Lvdrawlabelnotxtsel* = 65535 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/lv_draw_label.h:25:9
when 3 is static:
  const
    Lvlabeldotnum* = 3       ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/../label/lv_label.h:30:9
else:
  let Lvlabeldotnum* = 3     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/../label/lv_label.h:30:9
when 65535 is static:
  const
    Lvlabelposlast* = 65535  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/../label/lv_label.h:31:9
else:
  let Lvlabelposlast* = 65535 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/../label/lv_label.h:31:9
when Lvdrawlabelnotxtsel is typedesc:
  type
    Lvlabeltextselectionoff* = Lvdrawlabelnotxtsel ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/../label/lv_label.h:32:9
else:
  when Lvdrawlabelnotxtsel is static:
    const
      Lvlabeltextselectionoff* = Lvdrawlabelnotxtsel ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/../label/lv_label.h:32:9
  else:
    let Lvlabeltextselectionoff* = Lvdrawlabelnotxtsel ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/../label/lv_label.h:32:9
when "Text" is static:
  const
    Lvlabeldefaulttext* = "Text" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/../label/lv_label.h:34:9
else:
  let Lvlabeldefaulttext* = "Text" ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/../label/lv_label.h:34:9
when 65535 is static:
  const
    Lvbuttonmatrixbuttonnone* = 65535 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/keyboard/../buttonmatrix/lv_buttonmatrix.h:25:9
else:
  let Lvbuttonmatrixbuttonnone* = 65535 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/keyboard/../buttonmatrix/lv_buttonmatrix.h:25:9
when 2147483647 is static:
  const
    Int32max* = 2147483647   ## Generated based on /usr/include/stdint.h:112:10
else:
  let Int32max* = 2147483647 ## Generated based on /usr/include/stdint.h:112:10
when 65535 is static:
  const
    Lvdropdownposlast* = 65535 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/dropdown/lv_dropdown.h:31:9
else:
  let Lvdropdownposlast* = 65535 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/dropdown/lv_dropdown.h:31:9
when 80 is static:
  const
    Lvledbrightmin* = 80     ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/led/lv_led.h:25:10
else:
  let Lvledbrightmin* = 80   ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/led/lv_led.h:25:10
when 255 is static:
  const
    Lvledbrightmax* = 255    ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/led/lv_led.h:30:10
else:
  let Lvledbrightmax* = 255  ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/led/lv_led.h:30:10
when cast[cuint](11'i64) is static:
  const
    Lvscaletotaltickcountdefault* = cast[cuint](11'i64) ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:29:9
else:
  let Lvscaletotaltickcountdefault* = cast[cuint](11'i64) ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:29:9
when cast[cuint](5'i64) is static:
  const
    Lvscalemajortickeverydefault* = cast[cuint](5'i64) ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:33:9
else:
  let Lvscalemajortickeverydefault* = cast[cuint](5'i64) ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:33:9
when cast[cuint](1'i64) is static:
  const
    Lvscalelabelenableddefault* = cast[cuint](1'i64) ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:37:9
else:
  let Lvscalelabelenableddefault* = cast[cuint](1'i64) ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/scale/lv_scale.h:37:9
when 32767 is static:
  const
    Lvtextareacursorlast* = 32767 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/textarea/lv_textarea.h:28:9
else:
  let Lvtextareacursorlast* = 32767 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/textarea/lv_textarea.h:28:9
when 10 is static:
  const
    Lvspinboxmaxdigitcount* = 10 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/spinbox/lv_spinbox.h:28:9
else:
  let Lvspinboxmaxdigitcount* = 10 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/spinbox/lv_spinbox.h:28:9
when 2 is static:
  const
    internallvswitchknobextareacorrection* = 2 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/switch/lv_switch.h:27:9
else:
  let internallvswitchknobextareacorrection* = 2 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/switch/lv_switch.h:27:9
when 65535 is static:
  const
    Lvtablecellnone* = 65535 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/lv_table.h:29:9
else:
  let Lvtablecellnone* = 65535 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/widgets/table/lv_table.h:29:9
when 7 is static:
  const
    Lvimepinyink9maxinput* = 7 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:23:9
else:
  let Lvimepinyink9maxinput* = 7 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/others/ime/lv_ime_pinyin.h:23:9
when 1 is static:
  const
    Lvsdlmousewheelmodecrown* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_window.h:28:9
else:
  let Lvsdlmousewheelmodecrown* = 1 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_window.h:28:9
when 32 is static:
  const
    Keyboardbuffersize* = 32 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_keyboard.h:23:9
else:
  let Keyboardbuffersize* = 32 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/drivers/sdl/lv_sdl_keyboard.h:23:9
when Lvbuttonmatrixbuttonnone is typedesc:
  type
    Lvbtnmatrixbtnnone* = Lvbuttonmatrixbuttonnone ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:33:9
else:
  when Lvbuttonmatrixbuttonnone is static:
    const
      Lvbtnmatrixbtnnone* = Lvbuttonmatrixbuttonnone ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:33:9
  else:
    let Lvbtnmatrixbtnnone* = Lvbuttonmatrixbuttonnone ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:33:9

{.push header:"/home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/lvgl.h"}
proc lvobjdelete*(obj: ptr lvobjt): void {.cdecl, importc: "lv_obj_delete".}
proc lvobjdeleteasync*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_delete_async".}
proc lvobjremoveflag*(obj: ptr lvobjt; f: lvobjflagt): void {.cdecl,
    importc: "lv_obj_remove_flag".}
proc lvobjremovestate*(obj: ptr lvobjt; state: lvstatet): void {.cdecl,
    importc: "lv_obj_remove_state".}
proc lvindevsetdisplay*(indev: ptr lvindevt; disp: ptr structlvdisplayt): void {.
    cdecl, importc: "lv_indev_set_display".}
proc lvindevactive*(): ptr lvindevt {.cdecl, importc: "lv_indev_active".}
proc lvscreenactive*(): ptr lvobjt {.cdecl, importc: "lv_screen_active".}
proc lvdisplaydelete*(disp: ptr lvdisplayt): void {.cdecl,
    importc: "lv_display_delete".}
proc lvdisplaysetdefault*(disp: ptr lvdisplayt): void {.cdecl,
    importc: "lv_display_set_default".}
proc lvdisplaygetdefault*(): ptr lvdisplayt {.cdecl,
    importc: "lv_display_get_default".}
proc lvdisplaygetnext*(disp: ptr lvdisplayt): ptr lvdisplayt {.cdecl,
    importc: "lv_display_get_next".}
proc lvdisplaysetrotation*(disp: ptr lvdisplayt; rotation: lvdisplayrotationt): void {.
    cdecl, importc: "lv_display_set_rotation".}
proc lvdisplaygethorizontalresolution*(disp: ptr lvdisplayt): int32 {.cdecl,
    importc: "lv_display_get_horizontal_resolution".}
proc lvdisplaygetverticalresolution*(disp: ptr lvdisplayt): int32 {.cdecl,
    importc: "lv_display_get_vertical_resolution".}
proc lvdisplaygetphysicalhorizontalresolution*(disp: ptr lvdisplayt): int32 {.
    cdecl, importc: "lv_display_get_physical_horizontal_resolution".}
proc lvdisplaygetphysicalverticalresolution*(disp: ptr lvdisplayt): int32 {.
    cdecl, importc: "lv_display_get_physical_vertical_resolution".}
proc lvdisplaygetoffsetx*(disp: ptr lvdisplayt): int32 {.cdecl,
    importc: "lv_display_get_offset_x".}
proc lvdisplaygetoffsety*(disp: ptr lvdisplayt): int32 {.cdecl,
    importc: "lv_display_get_offset_y".}
proc lvdisplaygetrotation*(disp: ptr lvdisplayt): lvdisplayrotationt {.cdecl,
    importc: "lv_display_get_rotation".}
proc lvdisplaygetdpi*(disp: ptr lvdisplayt): int32 {.cdecl,
    importc: "lv_display_get_dpi".}
proc lvdisplaygetantialiasing*(disp: ptr lvdisplayt): bool {.cdecl,
    importc: "lv_display_get_antialiasing".}
proc lvdisplayflushready*(disp: ptr lvdisplayt): void {.cdecl,
    importc: "lv_display_flush_ready".}
proc lvdisplayflushislast*(disp: ptr lvdisplayt): bool {.cdecl,
    importc: "lv_display_flush_is_last".}
proc lvdisplaygetscreenactive*(disp: ptr lvdisplayt): ptr lvobjt {.cdecl,
    importc: "lv_display_get_screen_active".}
proc lvdisplaygetscreenprev*(disp: ptr lvdisplayt): ptr lvobjt {.cdecl,
    importc: "lv_display_get_screen_prev".}
proc lvscreenload*(scr: ptr structlvobjt): void {.cdecl,
    importc: "lv_screen_load".}
proc lvscreenloadanim*(scr: ptr lvobjt; animtype: lvscreenloadanimt;
                       time: uint32; delay: uint32; autodel: bool): void {.
    cdecl, importc: "lv_screen_load_anim".}
proc lvdisplaygetlayertop*(disp: ptr lvdisplayt): ptr lvobjt {.cdecl,
    importc: "lv_display_get_layer_top".}
proc lvdisplaygetlayersys*(disp: ptr lvdisplayt): ptr lvobjt {.cdecl,
    importc: "lv_display_get_layer_sys".}
proc lvdisplaysendevent*(disp: ptr lvdisplayt; code: lveventcodet;
                         param: pointer): lvresultt {.cdecl,
    importc: "lv_display_send_event".}
proc lvdisplaysettheme*(disp: ptr lvdisplayt; th: ptr lvthemet): void {.cdecl,
    importc: "lv_display_set_theme".}
proc lvdisplaygettheme*(disp: ptr lvdisplayt): ptr lvthemet {.cdecl,
    importc: "lv_display_get_theme".}
proc lvdisplaygetinactivetime*(disp: ptr lvdisplayt): uint32 {.cdecl,
    importc: "lv_display_get_inactive_time".}
proc lvdisplaytriggeractivity*(disp: ptr lvdisplayt): void {.cdecl,
    importc: "lv_display_trigger_activity".}
proc lvdisplayenableinvalidation*(disp: ptr lvdisplayt; en: bool): void {.cdecl,
    importc: "lv_display_enable_invalidation".}
proc lvdisplayisinvalidationenabled*(disp: ptr lvdisplayt): bool {.cdecl,
    importc: "lv_display_is_invalidation_enabled".}
proc internallvdisplayrefrtimer*(timer: ptr lvtimert): void {.cdecl,
    importc: "_lv_display_refr_timer".}
proc lvdisplaygetrefrtimer*(disp: ptr lvdisplayt): ptr lvtimert {.cdecl,
    importc: "lv_display_get_refr_timer".}
proc lvtimerdelete*(timer: ptr lvtimert): void {.cdecl,
    importc: "lv_timer_delete".}
proc lvanimdelete*(vararg: pointer; execcb: lvanimexecxcbt): bool {.cdecl,
    importc: "lv_anim_delete".}
proc lvanimdeleteall*(): void {.cdecl, importc: "lv_anim_delete_all".}
proc lvanimsetcompletedcb*(a: ptr lvanimt; completedcb: lvanimcompletedcbt): void {.
    cdecl, importc: "lv_anim_set_completed_cb".}
proc lvgroupdelete*(group: ptr lvgroupt): void {.cdecl,
    importc: "lv_group_delete".}
proc lvtextgetsize*(sizeres: ptr lvpointt; text: cstring; font: ptr lvfontt;
                    letterspace: int32; linespace: int32; maxwidth: int32;
                    flag: lvtextflagt): void {.cdecl,
    importc: "lv_text_get_size".}
proc lvtextgetwidth*(txt: cstring; length: uint32; font: ptr lvfontt;
                     letterspace: int32): int32 {.cdecl,
    importc: "lv_text_get_width".}
proc lvimagecreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_image_create".}
proc lvimagesetsrc*(obj: ptr lvobjt; src: pointer): void {.cdecl,
    importc: "lv_image_set_src".}
proc lvimagesetoffsetx*(obj: ptr lvobjt; x: int32): void {.cdecl,
    importc: "lv_image_set_offset_x".}
proc lvimagesetoffsety*(obj: ptr lvobjt; y: int32): void {.cdecl,
    importc: "lv_image_set_offset_y".}
proc lvimagesetrotation*(obj: ptr lvobjt; angle: int32): void {.cdecl,
    importc: "lv_image_set_rotation".}
proc lvimagesetpivot*(obj: ptr lvobjt; x: int32; y: int32): void {.cdecl,
    importc: "lv_image_set_pivot".}
proc lvimagesetscale*(obj: ptr lvobjt; zoom: uint32): void {.cdecl,
    importc: "lv_image_set_scale".}
proc lvimagesetantialias*(obj: ptr lvobjt; antialias: bool): void {.cdecl,
    importc: "lv_image_set_antialias".}
proc lvimagegetsrc*(obj: ptr lvobjt): pointer {.cdecl,
    importc: "lv_image_get_src".}
proc lvimagegetoffsetx*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_image_get_offset_x".}
proc lvimagegetoffsety*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_image_get_offset_y".}
proc lvimagegetrotation*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_image_get_rotation".}
proc lvimagegetpivot*(obj: ptr lvobjt; pivot: ptr lvpointt): void {.cdecl,
    importc: "lv_image_get_pivot".}
proc lvimagegetscale*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_image_get_scale".}
proc lvimagegetantialias*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_image_get_antialias".}
proc lvlistsetbuttontext*(list: ptr lvobjt; btn: ptr lvobjt; txt: cstring): void {.
    cdecl, importc: "lv_list_set_button_text".}
proc lvlistgetbuttontext*(list: ptr lvobjt; btn: ptr lvobjt): cstring {.cdecl,
    importc: "lv_list_get_button_text".}
proc lvlistaddbutton*(list: ptr lvobjt; icon: pointer; txt: cstring): ptr lvobjt {.
    cdecl, importc: "lv_list_add_button".}
proc lvbuttoncreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_button_create".}
proc lvbuttonmatrixcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_buttonmatrix_create".}
proc lvbuttonmatrixsetmap*(obj: ptr lvobjt; map: ptr UncheckedArray[cstring]): void {.
    cdecl, importc: "lv_buttonmatrix_set_map".}
proc lvbuttonmatrixsetctrlmap*(obj: ptr lvobjt;
                               ctrlmap: ptr UncheckedArray[lvbuttonmatrixctrlt]): void {.
    cdecl, importc: "lv_buttonmatrix_set_ctrl_map".}
proc lvbuttonmatrixsetselectedbutton*(obj: ptr lvobjt; btnid: uint32): void {.
    cdecl, importc: "lv_buttonmatrix_set_selected_button".}
proc lvbuttonmatrixsetbuttonctrl*(obj: ptr lvobjt; btnid: uint32;
                                  ctrl: lvbuttonmatrixctrlt): void {.cdecl,
    importc: "lv_buttonmatrix_set_button_ctrl".}
proc lvbuttonmatrixclearbuttonctrl*(obj: ptr lvobjt; btnid: uint32;
                                    ctrl: lvbuttonmatrixctrlt): void {.cdecl,
    importc: "lv_buttonmatrix_clear_button_ctrl".}
proc lvbuttonmatrixsetbuttonctrlall*(obj: ptr lvobjt; ctrl: lvbuttonmatrixctrlt): void {.
    cdecl, importc: "lv_buttonmatrix_set_button_ctrl_all".}
proc lvbuttonmatrixclearbuttonctrlall*(obj: ptr lvobjt;
                                       ctrl: lvbuttonmatrixctrlt): void {.cdecl,
    importc: "lv_buttonmatrix_clear_button_ctrl_all".}
proc lvbuttonmatrixsetbuttonwidth*(obj: ptr lvobjt; btnid: uint32; width: uint32): void {.
    cdecl, importc: "lv_buttonmatrix_set_button_width".}
proc lvbuttonmatrixsetonechecked*(obj: ptr lvobjt; en: bool): void {.cdecl,
    importc: "lv_buttonmatrix_set_one_checked".}
proc lvbuttonmatrixgetmap*(obj: ptr lvobjt): ptr cstring {.cdecl,
    importc: "lv_buttonmatrix_get_map".}
proc lvbuttonmatrixgetselectedbutton*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_buttonmatrix_get_selected_button".}
proc lvbuttonmatrixgetbuttontext*(obj: ptr lvobjt; btnid: uint32): cstring {.
    cdecl, importc: "lv_buttonmatrix_get_button_text".}
proc lvbuttonmatrixhasbuttonctrl*(obj: ptr lvobjt; btnid: uint32;
                                  ctrl: lvbuttonmatrixctrlt): bool {.cdecl,
    importc: "lv_buttonmatrix_has_button_ctrl".}
proc lvbuttonmatrixgetonechecked*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_buttonmatrix_get_one_checked".}
proc lvtabviewgettabbar*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_tabview_get_tab_bar".}
proc lvtabviewgettabactive*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_tabview_get_tab_active".}
proc lvtabviewsetactive*(obj: ptr lvobjt; idx: uint32; animen: lvanimenablet): void {.
    cdecl, importc: "lv_tabview_set_active".}
proc lvtileviewgettileactive*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_tileview_get_tile_active".}
proc lvtileviewsettilebyindex*(tv: ptr lvobjt; colid: uint32; rowid: uint32;
                               animen: lvanimenablet): void {.cdecl,
    importc: "lv_tileview_set_tile_by_index".}
proc lvtileviewsettile*(tv: ptr lvobjt; tileobj: ptr lvobjt;
                        animen: lvanimenablet): void {.cdecl,
    importc: "lv_tileview_set_tile".}
proc lvrollersetvisiblerowcount*(obj: ptr lvobjt; rowcnt: uint32): void {.cdecl,
    importc: "lv_roller_set_visible_row_count".}
proc lvrollergetoptioncount*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_roller_get_option_count".}
proc lvtablesetcolumncount*(obj: ptr lvobjt; colcnt: uint32): void {.cdecl,
    importc: "lv_table_set_column_count".}
proc lvtablesetrowcount*(obj: ptr lvobjt; rowcnt: uint32): void {.cdecl,
    importc: "lv_table_set_row_count".}
proc lvtablegetcolumncount*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_table_get_column_count".}
proc lvtablegetrowcount*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_table_get_row_count".}
proc lvtablesetcolumnwidth*(obj: ptr lvobjt; colid: uint32; w: int32): void {.
    cdecl, importc: "lv_table_set_column_width".}
proc lvtablegetcolumnwidth*(obj: ptr lvobjt; col: uint32): int32 {.cdecl,
    importc: "lv_table_get_column_width".}
proc lvdropdowngetoptioncount*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_dropdown_get_option_count".}
proc lvobjgetchildcount*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_obj_get_child_count".}
proc lvobjgetdisplay*(obj: ptr lvobjt): ptr lvdisplayt {.cdecl,
    importc: "lv_obj_get_display".}
proc lvobjdeleteanimcompletedcb*(a: ptr lvanimt): void {.cdecl,
    importc: "lv_obj_delete_anim_completed_cb".}
proc lvobjgetstyleanimduration*(obj: ptr lvobjt; part: lvpartt): uint32 {.cdecl,
    importc: "lv_obj_get_style_anim_duration".}
proc lvobjgetstyleimageopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_image_opa".}
proc lvobjgetstyleimagerecolor*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_image_recolor".}
proc lvobjgetstyleimagerecolorfiltered*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_image_recolor_filtered".}
proc lvobjgetstyleimagerecoloropa*(obj: ptr lvobjt; part: lvpartt): lvopat {.
    cdecl, importc: "lv_obj_get_style_image_recolor_opa".}
proc lvobjgetstyleshadowoffsetx*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_shadow_offset_x".}
proc lvobjgetstyleshadowoffsety*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_shadow_offset_y".}
proc lvobjgetstyletransformrotation*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_rotation".}
proc lvobjgetstylebgimagesrc*(obj: ptr lvobjt; part: lvpartt): pointer {.cdecl,
    importc: "lv_obj_get_style_bg_image_src".}
proc lvobjgetstylebgimagerecolor*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_bg_image_recolor".}
proc lvobjgetstylebgimagerecoloropa*(obj: ptr lvobjt; part: lvpartt): lvopat {.
    cdecl, importc: "lv_obj_get_style_bg_image_recolor_opa".}
proc lvobjsetstyleanimduration*(obj: ptr lvobjt; value: uint32;
                                selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_anim_duration".}
proc lvobjsetstyleimageopa*(obj: ptr lvobjt; value: lvopat;
                            selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_image_opa".}
proc lvobjsetstyleimagerecolor*(obj: ptr lvobjt; value: lvcolort;
                                selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_image_recolor".}
proc lvobjsetstyleimagerecoloropa*(obj: ptr lvobjt; value: lvopat;
                                   selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_image_recolor_opa".}
proc lvobjsetstyleshadowoffsetx*(obj: ptr lvobjt; value: int32;
                                 selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_shadow_offset_x".}
proc lvobjsetstyleshadowoffsety*(obj: ptr lvobjt; value: int32;
                                 selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_shadow_offset_y".}
proc lvobjsetstyletransformscale*(obj: ptr lvobjt; value: int32;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_transform_scale".}
proc lvobjsetstyletransformrotation*(obj: ptr lvobjt; value: int32;
                                     selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_transform_rotation".}
proc lvobjsetstylebgimagesrc*(obj: ptr lvobjt; value: pointer;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_image_src".}
proc lvobjsetstylebgimagerecolor*(obj: ptr lvobjt; value: lvcolort;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_image_recolor".}
proc lvobjsetstylebgimagerecoloropa*(obj: ptr lvobjt; value: lvopat;
                                     selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_image_recolor_opa".}
proc lvstylesetanimduration*(style: ptr lvstylet; value: uint32): void {.cdecl,
    importc: "lv_style_set_anim_duration".}
proc lvstylesetimageopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_image_opa".}
proc lvstylesetimagerecolor*(style: ptr lvstylet; value: lvcolort): void {.
    cdecl, importc: "lv_style_set_image_recolor".}
proc lvstylesetimagerecoloropa*(style: ptr lvstylet; value: lvopat): void {.
    cdecl, importc: "lv_style_set_image_recolor_opa".}
proc lvstylesetshadowoffsetx*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_shadow_offset_x".}
proc lvstylesetshadowoffsety*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_shadow_offset_y".}
proc lvstylesettransformrotation*(style: ptr lvstylet; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_rotation".}
proc lvstylesettransformscale*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_transform_scale".}
proc lvstylesetbgimagesrc*(style: ptr lvstylet; value: pointer): void {.cdecl,
    importc: "lv_style_set_bg_image_src".}
proc lvstylesetbgimagerecolor*(style: ptr lvstylet; value: lvcolort): void {.
    cdecl, importc: "lv_style_set_bg_image_recolor".}
proc lvstylesetbgimagerecoloropa*(style: ptr lvstylet; value: lvopat): void {.
    cdecl, importc: "lv_style_set_bg_image_recolor_opa".}
proc lvkeyboardgetselectedbutton*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_keyboard_get_selected_button".}
proc lvkeyboardgetbuttontext*(obj: ptr lvobjt; btnid: uint32): cstring {.cdecl,
    importc: "lv_keyboard_get_button_text".}
when Lvscalenone is typedesc:
  type
    Lvzoomnone* = Lvscalenone ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:291:9
else:
  when Lvscalenone is static:
    const
      Lvzoomnone* = Lvscalenone ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:291:9
  else:
    let Lvzoomnone* = Lvscalenone ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/lv_api_map_v8.h:291:9
proc lvbindecoderopen*(decoder: ptr lvimagedecodert; dsc: ptr lvimagedecoderdsct): lvresultt {.
    cdecl, importc: "lv_bin_decoder_open".}
proc lvbindecoderclose*(decoder: ptr lvimagedecodert;
                        dsc: ptr lvimagedecoderdsct): void {.cdecl,
    importc: "lv_bin_decoder_close".}
proc lvimagesetinneralign*(obj: ptr lvobjt; align: lvimagealignt): void {.cdecl,
    importc: "lv_image_set_inner_align".}
proc lvimagegetinneralign*(obj: ptr lvobjt): lvimagealignt {.cdecl,
    importc: "lv_image_get_inner_align".}
proc lvobjbindchecked*(obj: ptr lvobjt; subject: ptr lvsubjectt): ptr lvobservert {.
    cdecl, importc: "lv_obj_bind_checked".}
when -1 is static:
  const
    Lvmaskidinv* = -1        ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:24:9
else:
  let Lvmaskidinv* = -1      ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:24:9
when 16 is static:
  const
    internallvmaskmaxnum* = 16 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:26:10
else:
  let internallvmaskmaxnum* = 16 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/misc/../font/../draw/sw/blend/../lv_draw_sw_mask.h:26:10
when 2712847316 is static:
  const
    Zeromemsentinel* = 2712847316'i64 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_global.h:46:9
else:
  let Zeromemsentinel* = 2712847316'i64 ## Generated based on /home/jose/src/nimlang/lvgl.nim/src/lvgl/submodules/lvgl/src/core/lv_global.h:46:9
proc lvinit*(): void {.cdecl, importc: "lv_init".}
proc lvdeinit*(): void {.cdecl, importc: "lv_deinit".}
proc lvisinitialized*(): bool {.cdecl, importc: "lv_is_initialized".}
proc lvmemcpy*(dst: pointer; src: pointer; len: csize_t): pointer {.cdecl,
    importc: "lv_memcpy".}
proc lvmemset*(dst: pointer; v: uint8; len: csize_t): void {.cdecl,
    importc: "lv_memset".}
proc lvmemmove*(dst: pointer; src: pointer; len: csize_t): pointer {.cdecl,
    importc: "lv_memmove".}
proc lvmemcmp*(p1: pointer; p2: pointer; len: csize_t): int32 {.cdecl,
    importc: "lv_memcmp".}
proc lvmemzero*(dst: pointer; len: csize_t): void {.cdecl, importc: "lv_memzero".}
proc lvstrlen*(str: cstring): csize_t {.cdecl, importc: "lv_strlen".}
proc lvstrlcpy*(dst: cstring; src: cstring; dstsize: csize_t): csize_t {.cdecl,
    importc: "lv_strlcpy".}
proc lvstrncpy*(dst: cstring; src: cstring; destsize: csize_t): cstring {.cdecl,
    importc: "lv_strncpy".}
proc lvstrcpy*(dst: cstring; src: cstring): cstring {.cdecl,
    importc: "lv_strcpy".}
proc lvstrcmp*(s1: cstring; s2: cstring): int32 {.cdecl, importc: "lv_strcmp".}
proc lvstrdup*(src: cstring): cstring {.cdecl, importc: "lv_strdup".}
proc lvstrcat*(dst: cstring; src: cstring): cstring {.cdecl,
    importc: "lv_strcat".}
proc lvstrncat*(dst: cstring; src: cstring; srclen: csize_t): cstring {.cdecl,
    importc: "lv_strncat".}
proc lvmeminit*(): void {.cdecl, importc: "lv_mem_init".}
proc lvmemdeinit*(): void {.cdecl, importc: "lv_mem_deinit".}
proc lvmemaddpool*(mem: pointer; bytes: csize_t): lvmempoolt {.cdecl,
    importc: "lv_mem_add_pool".}
proc lvmemremovepool*(pool: lvmempoolt): void {.cdecl,
    importc: "lv_mem_remove_pool".}
proc lvmalloc*(size: csize_t): pointer {.cdecl, importc: "lv_malloc".}
proc lvmalloczeroed*(size: csize_t): pointer {.cdecl,
    importc: "lv_malloc_zeroed".}
proc lvfree*(data: pointer): void {.cdecl, importc: "lv_free".}
proc lvrealloc*(datap: pointer; newsize: csize_t): pointer {.cdecl,
    importc: "lv_realloc".}
proc lvmalloccore*(size: csize_t): pointer {.cdecl, importc: "lv_malloc_core".}
proc lvfreecore*(p: pointer): void {.cdecl, importc: "lv_free_core".}
proc lvrealloccore*(p: pointer; newsize: csize_t): pointer {.cdecl,
    importc: "lv_realloc_core".}
proc lvmemmonitorcore*(monp: ptr lvmemmonitort): void {.cdecl,
    importc: "lv_mem_monitor_core".}
proc lvmemtestcore*(): lvresultt {.cdecl, importc: "lv_mem_test_core".}
proc lvmemtest*(): lvresultt {.cdecl, importc: "lv_mem_test".}
proc lvmemmonitor*(monp: ptr lvmemmonitort): void {.cdecl,
    importc: "lv_mem_monitor".}
proc lvsnprintf*(buffer: cstring; count: csize_t; format: cstring): cint {.
    cdecl, varargs, importc: "lv_snprintf".}
proc lvvsnprintf*(buffer: cstring; count: csize_t; format: cstring): cint {.
    cdecl, varargs, importc: "lv_vsnprintf".}
proc lvlogregisterprintcb*(printcb: lvlogprintgcbt): void {.cdecl,
    importc: "lv_log_register_print_cb".}
proc lvlog*(format: cstring): void {.cdecl, varargs, importc: "lv_log".}
proc internallvlogadd*(level: lvloglevelt; file: cstring; line: cint;
                       funcarg: cstring; format: cstring): void {.cdecl,
    varargs, importc: "_lv_log_add".}
proc lvtickinc*(tickperiod: uint32): void {.cdecl, importc: "lv_tick_inc".}
proc lvtickget*(): uint32 {.cdecl, importc: "lv_tick_get".}
proc lvtickelaps*(prevtick: uint32): uint32 {.cdecl, importc: "lv_tick_elaps".}
proc lvdelayms*(ms: uint32): void {.cdecl, importc: "lv_delay_ms".}
proc lvticksetcb*(cb: lvtickgetcbt): void {.cdecl, importc: "lv_tick_set_cb".}
proc lvdelaysetcb*(cb: lvdelaycbt): void {.cdecl, importc: "lv_delay_set_cb".}
proc internallvllinit*(llp: ptr lvllt; nodesize: uint32): void {.cdecl,
    importc: "_lv_ll_init".}
proc internallvllinshead*(llp: ptr lvllt): pointer {.cdecl,
    importc: "_lv_ll_ins_head".}
proc internallvllinsprev*(llp: ptr lvllt; nact: pointer): pointer {.cdecl,
    importc: "_lv_ll_ins_prev".}
proc internallvllinstail*(llp: ptr lvllt): pointer {.cdecl,
    importc: "_lv_ll_ins_tail".}
proc internallvllremove*(llp: ptr lvllt; nodep: pointer): void {.cdecl,
    importc: "_lv_ll_remove".}
proc internallvllclearcustom*(llp: ptr lvllt;
                              cleanup: proc (a0: pointer): void {.cdecl.}): void {.
    cdecl, importc: "_lv_ll_clear_custom".}
proc internallvllclear*(llp: ptr lvllt): void {.cdecl, importc: "_lv_ll_clear".}
proc internallvllchglist*(llorip: ptr lvllt; llnewp: ptr lvllt; node: pointer;
                          head: bool): void {.cdecl, importc: "_lv_ll_chg_list".}
proc internallvllgethead*(llp: ptr lvllt): pointer {.cdecl,
    importc: "_lv_ll_get_head".}
proc internallvllgettail*(llp: ptr lvllt): pointer {.cdecl,
    importc: "_lv_ll_get_tail".}
proc internallvllgetnext*(llp: ptr lvllt; nact: pointer): pointer {.cdecl,
    importc: "_lv_ll_get_next".}
proc internallvllgetprev*(llp: ptr lvllt; nact: pointer): pointer {.cdecl,
    importc: "_lv_ll_get_prev".}
proc internallvllgetlen*(llp: ptr lvllt): uint32 {.cdecl,
    importc: "_lv_ll_get_len".}
proc internallvllmovebefore*(llp: ptr lvllt; nact: pointer; nafter: pointer): void {.
    cdecl, importc: "_lv_ll_move_before".}
proc internallvllisempty*(llp: ptr lvllt): bool {.cdecl,
    importc: "_lv_ll_is_empty".}
proc internallvtimercoreinit*(): void {.cdecl, importc: "_lv_timer_core_init".}
proc internallvtimercoredeinit*(): void {.cdecl,
    importc: "_lv_timer_core_deinit".}
proc lvtimerhandler*(): uint32 {.cdecl, importc: "lv_timer_handler".}
proc lvtimerhandlerruninperiod*(period: uint32): uint32 {.cdecl,
    importc: "lv_timer_handler_run_in_period".}
proc lvtimerperiodichandler*(): void {.cdecl,
                                       importc: "lv_timer_periodic_handler".}
proc lvtimerhandlersetresumecb*(cb: lvtimerhandlerresumecbt; data: pointer): void {.
    cdecl, importc: "lv_timer_handler_set_resume_cb".}
proc lvtimercreatebasic*(): ptr lvtimert {.cdecl,
    importc: "lv_timer_create_basic".}
proc lvtimercreate*(timerxcb: lvtimercbt; period: uint32; userdata: pointer): ptr lvtimert {.
    cdecl, importc: "lv_timer_create".}
proc lvtimerpause*(timer: ptr lvtimert): void {.cdecl, importc: "lv_timer_pause".}
proc lvtimerresume*(timer: ptr lvtimert): void {.cdecl,
    importc: "lv_timer_resume".}
proc lvtimersetcb*(timer: ptr lvtimert; timercb: lvtimercbt): void {.cdecl,
    importc: "lv_timer_set_cb".}
proc lvtimersetperiod*(timer: ptr lvtimert; period: uint32): void {.cdecl,
    importc: "lv_timer_set_period".}
proc lvtimerready*(timer: ptr lvtimert): void {.cdecl, importc: "lv_timer_ready".}
proc lvtimersetrepeatcount*(timer: ptr lvtimert; repeatcount: int32): void {.
    cdecl, importc: "lv_timer_set_repeat_count".}
proc lvtimersetautodelete*(timer: ptr lvtimert; autodelete: bool): void {.cdecl,
    importc: "lv_timer_set_auto_delete".}
proc lvtimersetuserdata*(timer: ptr lvtimert; userdata: pointer): void {.cdecl,
    importc: "lv_timer_set_user_data".}
proc lvtimerreset*(timer: ptr lvtimert): void {.cdecl, importc: "lv_timer_reset".}
proc lvtimerenable*(en: bool): void {.cdecl, importc: "lv_timer_enable".}
proc lvtimergettimeuntilnext*(): uint32 {.cdecl,
    importc: "lv_timer_get_time_until_next".}
proc lvtimergetnext*(timer: ptr lvtimert): ptr lvtimert {.cdecl,
    importc: "lv_timer_get_next".}
proc lvtimergetuserdata*(timer: ptr lvtimert): pointer {.cdecl,
    importc: "lv_timer_get_user_data".}
proc lvtimergetpaused*(timer: ptr lvtimert): bool {.cdecl,
    importc: "lv_timer_get_paused".}
proc lvtrigosin*(angle: int16): int32 {.cdecl, importc: "lv_trigo_sin".}
proc lvtrigocos*(angle: int16): int32 {.cdecl, importc: "lv_trigo_cos".}
proc lvcubicbezier*(x: int32; x1: int32; y1: int32; x2: int32; y2: int32): int32 {.
    cdecl, importc: "lv_cubic_bezier".}
proc lvbezier3*(t: int32; u0: int32; u1: uint32; u2: int32; u3: int32): int32 {.
    cdecl, importc: "lv_bezier3".}
proc lvatan2*(x: cint; y: cint): uint16 {.cdecl, importc: "lv_atan2".}
proc lvsqrt*(x: uint32; q: ptr lvsqrtrest; mask: uint32): void {.cdecl,
    importc: "lv_sqrt".}
proc lvsqrt32*(x: uint32): int32 {.cdecl, importc: "lv_sqrt32".}
proc lvsqr*(x: int32): int32 {.cdecl, importc: "lv_sqr".}
proc lvpow*(base: int64; exp: int8): int64 {.cdecl, importc: "lv_pow".}
proc lvmap*(x: int32; minin: int32; maxin: int32; minout: int32; maxout: int32): int32 {.
    cdecl, importc: "lv_map".}
proc lvrandsetseed*(seed: uint32): void {.cdecl, importc: "lv_rand_set_seed".}
proc lvrand*(min: uint32; max: uint32): uint32 {.cdecl, importc: "lv_rand".}
proc lvarrayinit*(array: ptr lvarrayt; capacity: uint32; elementsize: uint32): void {.
    cdecl, importc: "lv_array_init".}
proc lvarrayresize*(array: ptr lvarrayt; newcapacity: uint32): void {.cdecl,
    importc: "lv_array_resize".}
proc lvarraydeinit*(array: ptr lvarrayt): void {.cdecl,
    importc: "lv_array_deinit".}
proc lvarraysize*(array: ptr lvarrayt): uint32 {.cdecl, importc: "lv_array_size".}
proc lvarraycapacity*(array: ptr lvarrayt): uint32 {.cdecl,
    importc: "lv_array_capacity".}
proc lvarrayisempty*(array: ptr lvarrayt): bool {.cdecl,
    importc: "lv_array_is_empty".}
proc lvarrayisfull*(array: ptr lvarrayt): bool {.cdecl,
    importc: "lv_array_is_full".}
proc lvarraycopy*(target: ptr lvarrayt; source: ptr lvarrayt): void {.cdecl,
    importc: "lv_array_copy".}
proc lvarrayclear*(array: ptr lvarrayt): void {.cdecl, importc: "lv_array_clear".}
proc lvarrayremove*(array: ptr lvarrayt; index: uint32): lvresultt {.cdecl,
    importc: "lv_array_remove".}
proc lvarrayerase*(array: ptr lvarrayt; start: uint32; endarg: uint32): lvresultt {.
    cdecl, importc: "lv_array_erase".}
proc lvarrayconcat*(array: ptr lvarrayt; other: ptr lvarrayt): lvresultt {.
    cdecl, importc: "lv_array_concat".}
proc lvarraypushback*(array: ptr lvarrayt; element: pointer): lvresultt {.cdecl,
    importc: "lv_array_push_back".}
proc lvarrayassign*(array: ptr lvarrayt; index: uint32; value: pointer): lvresultt {.
    cdecl, importc: "lv_array_assign".}
proc lvarrayat*(array: ptr lvarrayt; index: uint32): pointer {.cdecl,
    importc: "lv_array_at".}
proc lvarrayfront*(array: ptr lvarrayt): pointer {.cdecl,
    importc: "lv_array_front".}
proc lvarrayback*(array: ptr lvarrayt): pointer {.cdecl,
    importc: "lv_array_back".}
proc lvasynccall*(asyncxcb: lvasynccbt; userdata: pointer): lvresultt {.cdecl,
    importc: "lv_async_call".}
proc lvasynccallcancel*(asyncxcb: lvasynccbt; userdata: pointer): lvresultt {.
    cdecl, importc: "lv_async_call_cancel".}
proc internallvanimcoreinit*(): void {.cdecl, importc: "_lv_anim_core_init".}
proc internallvanimcoredeinit*(): void {.cdecl, importc: "_lv_anim_core_deinit".}
proc lvaniminit*(a: ptr lvanimt): void {.cdecl, importc: "lv_anim_init".}
proc lvanimsetvar*(a: ptr lvanimt; vararg: pointer): void {.cdecl,
    importc: "lv_anim_set_var".}
proc lvanimsetexeccb*(a: ptr lvanimt; execcb: lvanimexecxcbt): void {.cdecl,
    importc: "lv_anim_set_exec_cb".}
proc lvanimsetduration*(a: ptr lvanimt; duration: uint32): void {.cdecl,
    importc: "lv_anim_set_duration".}
proc lvanimsettime*(a: ptr lvanimt; duration: uint32): void {.cdecl,
    importc: "lv_anim_set_time".}
proc lvanimsetdelay*(a: ptr lvanimt; delay: uint32): void {.cdecl,
    importc: "lv_anim_set_delay".}
proc lvanimsetvalues*(a: ptr lvanimt; start: int32; endarg: int32): void {.
    cdecl, importc: "lv_anim_set_values".}
proc lvanimsetcustomexeccb*(a: ptr lvanimt; execcb: lvanimcustomexeccbt): void {.
    cdecl, importc: "lv_anim_set_custom_exec_cb".}
proc lvanimsetpathcb*(a: ptr lvanimt; pathcb: lvanimpathcbt): void {.cdecl,
    importc: "lv_anim_set_path_cb".}
proc lvanimsetstartcb*(a: ptr lvanimt; startcb: lvanimstartcbt): void {.cdecl,
    importc: "lv_anim_set_start_cb".}
proc lvanimsetgetvaluecb*(a: ptr lvanimt; getvaluecb: lvanimgetvaluecbt): void {.
    cdecl, importc: "lv_anim_set_get_value_cb".}
proc lvanimsetdeletedcb*(a: ptr lvanimt; deletedcb: lvanimdeletedcbt): void {.
    cdecl, importc: "lv_anim_set_deleted_cb".}
proc lvanimsetplaybackduration*(a: ptr lvanimt; duration: uint32): void {.cdecl,
    importc: "lv_anim_set_playback_duration".}
proc lvanimsetplaybacktime*(a: ptr lvanimt; duration: uint32): void {.cdecl,
    importc: "lv_anim_set_playback_time".}
proc lvanimsetplaybackdelay*(a: ptr lvanimt; delay: uint32): void {.cdecl,
    importc: "lv_anim_set_playback_delay".}
proc lvanimsetrepeatcount*(a: ptr lvanimt; cnt: uint32): void {.cdecl,
    importc: "lv_anim_set_repeat_count".}
proc lvanimsetrepeatdelay*(a: ptr lvanimt; delay: uint32): void {.cdecl,
    importc: "lv_anim_set_repeat_delay".}
proc lvanimsetearlyapply*(a: ptr lvanimt; en: bool): void {.cdecl,
    importc: "lv_anim_set_early_apply".}
proc lvanimsetuserdata*(a: ptr lvanimt; userdata: pointer): void {.cdecl,
    importc: "lv_anim_set_user_data".}
proc lvanimsetbezier3param*(a: ptr lvanimt; x1: int16; y1: int16; x2: int16;
                            y2: int16): void {.cdecl,
    importc: "lv_anim_set_bezier3_param".}
proc lvanimstart*(a: ptr lvanimt): ptr lvanimt {.cdecl, importc: "lv_anim_start".}
proc lvanimgetdelay*(a: ptr lvanimt): uint32 {.cdecl,
    importc: "lv_anim_get_delay".}
proc lvanimgetplaytime*(a: ptr lvanimt): uint32 {.cdecl,
    importc: "lv_anim_get_playtime".}
proc lvanimgettime*(a: ptr lvanimt): uint32 {.cdecl, importc: "lv_anim_get_time".}
proc lvanimgetrepeatcount*(a: ptr lvanimt): uint32 {.cdecl,
    importc: "lv_anim_get_repeat_count".}
proc lvanimgetuserdata*(a: ptr lvanimt): pointer {.cdecl,
    importc: "lv_anim_get_user_data".}
proc lvanimget*(vararg: pointer; execcb: lvanimexecxcbt): ptr lvanimt {.cdecl,
    importc: "lv_anim_get".}
proc lvanimgettimer*(): ptr lvtimert {.cdecl, importc: "lv_anim_get_timer".}
proc lvanimcustomdelete*(a: ptr lvanimt; execcb: lvanimcustomexeccbt): bool {.
    cdecl, importc: "lv_anim_custom_delete".}
proc lvanimcustomget*(a: ptr lvanimt; execcb: lvanimcustomexeccbt): ptr lvanimt {.
    cdecl, importc: "lv_anim_custom_get".}
proc lvanimcountrunning*(): uint16 {.cdecl, importc: "lv_anim_count_running".}
proc lvanimspeed*(speed: uint32): uint32 {.cdecl, importc: "lv_anim_speed".}
proc lvanimspeedclamped*(speed: uint32; mintime: uint32; maxtime: uint32): uint32 {.
    cdecl, importc: "lv_anim_speed_clamped".}
proc lvanimrefrnow*(): void {.cdecl, importc: "lv_anim_refr_now".}
proc lvanimpathlinear*(a: ptr lvanimt): int32 {.cdecl,
    importc: "lv_anim_path_linear".}
proc lvanimpatheasein*(a: ptr lvanimt): int32 {.cdecl,
    importc: "lv_anim_path_ease_in".}
proc lvanimpatheaseout*(a: ptr lvanimt): int32 {.cdecl,
    importc: "lv_anim_path_ease_out".}
proc lvanimpatheaseinout*(a: ptr lvanimt): int32 {.cdecl,
    importc: "lv_anim_path_ease_in_out".}
proc lvanimpathovershoot*(a: ptr lvanimt): int32 {.cdecl,
    importc: "lv_anim_path_overshoot".}
proc lvanimpathbounce*(a: ptr lvanimt): int32 {.cdecl,
    importc: "lv_anim_path_bounce".}
proc lvanimpathstep*(a: ptr lvanimt): int32 {.cdecl,
    importc: "lv_anim_path_step".}
proc lvanimpathcustombezier3*(a: ptr lvanimt): int32 {.cdecl,
    importc: "lv_anim_path_custom_bezier3".}
proc lvanimtimelinecreate*(): ptr lvanimtimelinet {.cdecl,
    importc: "lv_anim_timeline_create".}
proc lvanimtimelinedelete*(at: ptr lvanimtimelinet): void {.cdecl,
    importc: "lv_anim_timeline_delete".}
proc lvanimtimelineadd*(at: ptr lvanimtimelinet; starttime: uint32;
                        a: ptr lvanimt): void {.cdecl,
    importc: "lv_anim_timeline_add".}
proc lvanimtimelinestart*(at: ptr lvanimtimelinet): uint32 {.cdecl,
    importc: "lv_anim_timeline_start".}
proc lvanimtimelinepause*(at: ptr lvanimtimelinet): void {.cdecl,
    importc: "lv_anim_timeline_pause".}
proc lvanimtimelinesetreverse*(at: ptr lvanimtimelinet; reverse: bool): void {.
    cdecl, importc: "lv_anim_timeline_set_reverse".}
proc lvanimtimelinesetprogress*(at: ptr lvanimtimelinet; progress: uint16): void {.
    cdecl, importc: "lv_anim_timeline_set_progress".}
proc lvanimtimelinegetplaytime*(at: ptr lvanimtimelinet): uint32 {.cdecl,
    importc: "lv_anim_timeline_get_playtime".}
proc lvanimtimelinegetreverse*(at: ptr lvanimtimelinet): bool {.cdecl,
    importc: "lv_anim_timeline_get_reverse".}
proc lvanimtimelinegetprogress*(at: ptr lvanimtimelinet): uint16 {.cdecl,
    importc: "lv_anim_timeline_get_progress".}
proc lvrbinit*(tree: ptr lvrbt; compare: lvrbcomparet; nodesize: csize_t): bool {.
    cdecl, importc: "lv_rb_init".}
proc lvrbinsert*(tree: ptr lvrbt; key: pointer): ptr lvrbnodet {.cdecl,
    importc: "lv_rb_insert".}
proc lvrbfind*(tree: ptr lvrbt; key: pointer): ptr lvrbnodet {.cdecl,
    importc: "lv_rb_find".}
proc lvrbremovenode*(tree: ptr lvrbt; node: ptr lvrbnodet): pointer {.cdecl,
    importc: "lv_rb_remove_node".}
proc lvrbremove*(tree: ptr lvrbt; key: pointer): pointer {.cdecl,
    importc: "lv_rb_remove".}
proc lvrbdropnode*(tree: ptr lvrbt; node: ptr lvrbnodet): bool {.cdecl,
    importc: "lv_rb_drop_node".}
proc lvrbdrop*(tree: ptr lvrbt; key: pointer): bool {.cdecl,
    importc: "lv_rb_drop".}
proc lvrbminimum*(node: ptr lvrbt): ptr lvrbnodet {.cdecl,
    importc: "lv_rb_minimum".}
proc lvrbmaximum*(node: ptr lvrbt): ptr lvrbnodet {.cdecl,
    importc: "lv_rb_maximum".}
proc lvrbminimumfrom*(node: ptr lvrbnodet): ptr lvrbnodet {.cdecl,
    importc: "lv_rb_minimum_from".}
proc lvrbmaximumfrom*(node: ptr lvrbnodet): ptr lvrbnodet {.cdecl,
    importc: "lv_rb_maximum_from".}
proc lvrbdestroy*(tree: ptr lvrbt): void {.cdecl, importc: "lv_rb_destroy".}
proc lvareaset*(areap: ptr lvareat; x1: int32; y1: int32; x2: int32; y2: int32): void {.
    cdecl, importc: "lv_area_set".}
proc lvareacopy*(dest: ptr lvareat; src: ptr lvareat): void {.cdecl,
    importc: "lv_area_copy".}
proc lvareagetwidth*(areap: ptr lvareat): int32 {.cdecl,
    importc: "lv_area_get_width".}
proc lvareagetheight*(areap: ptr lvareat): int32 {.cdecl,
    importc: "lv_area_get_height".}
proc lvareasetwidth*(areap: ptr lvareat; w: int32): void {.cdecl,
    importc: "lv_area_set_width".}
proc lvareasetheight*(areap: ptr lvareat; h: int32): void {.cdecl,
    importc: "lv_area_set_height".}
proc internallvareasetpos*(areap: ptr lvareat; x: int32; y: int32): void {.
    cdecl, importc: "_lv_area_set_pos".}
proc lvareagetsize*(areap: ptr lvareat): uint32 {.cdecl,
    importc: "lv_area_get_size".}
proc lvareaincrease*(area: ptr lvareat; wextra: int32; hextra: int32): void {.
    cdecl, importc: "lv_area_increase".}
proc lvareamove*(area: ptr lvareat; xofs: int32; yofs: int32): void {.cdecl,
    importc: "lv_area_move".}
proc internallvareaintersect*(resp: ptr lvareat; a1p: ptr lvareat;
                              a2p: ptr lvareat): bool {.cdecl,
    importc: "_lv_area_intersect".}
proc internallvareadiff*(resp: ptr UncheckedArray[lvareat]; a1p: ptr lvareat;
                         a2p: ptr lvareat): int8 {.cdecl,
    importc: "_lv_area_diff".}
proc internallvareajoin*(aresp: ptr lvareat; a1p: ptr lvareat; a2p: ptr lvareat): void {.
    cdecl, importc: "_lv_area_join".}
proc internallvareaispointon*(ap: ptr lvareat; pp: ptr lvpointt; radius: int32): bool {.
    cdecl, importc: "_lv_area_is_point_on".}
proc internallvareaison*(a1p: ptr lvareat; a2p: ptr lvareat): bool {.cdecl,
    importc: "_lv_area_is_on".}
proc internallvareaisin*(ainp: ptr lvareat; aholderp: ptr lvareat; radius: int32): bool {.
    cdecl, importc: "_lv_area_is_in".}
proc internallvareaisout*(aoutp: ptr lvareat; aholderp: ptr lvareat;
                          radius: int32): bool {.cdecl,
    importc: "_lv_area_is_out".}
proc internallvareaisequal*(a: ptr lvareat; b: ptr lvareat): bool {.cdecl,
    importc: "_lv_area_is_equal".}
proc lvareaalign*(base: ptr lvareat; toalign: ptr lvareat; align: lvalignt;
                  ofsx: int32; ofsy: int32): void {.cdecl,
    importc: "lv_area_align".}
proc lvpointtransform*(point: ptr lvpointt; angle: int32; scalex: int32;
                       scaley: int32; pivot: ptr lvpointt; zoomfirst: bool): void {.
    cdecl, importc: "lv_point_transform".}
proc lvpointarraytransform*(points: ptr lvpointt; count: csize_t; angle: int32;
                            scalex: int32; scaley: int32; pivot: ptr lvpointt;
                            zoomfirst: bool): void {.cdecl,
    importc: "lv_point_array_transform".}
proc lvpointfromprecise*(p: ptr lvpointpreciset): lvpointt {.cdecl,
    importc: "lv_point_from_precise".}
proc lvpointtoprecise*(p: ptr lvpointt): lvpointpreciset {.cdecl,
    importc: "lv_point_to_precise".}
proc lvpointset*(p: ptr lvpointt; x: int32; y: int32): void {.cdecl,
    importc: "lv_point_set".}
proc lvpointpreciseset*(p: ptr lvpointpreciset; x: lvvaluepreciset;
                        y: lvvaluepreciset): void {.cdecl,
    importc: "lv_point_precise_set".}
proc lvpointswap*(p1: ptr lvpointt; p2: ptr lvpointt): void {.cdecl,
    importc: "lv_point_swap".}
proc lvpointpreciseswap*(p1: ptr lvpointpreciset; p2: ptr lvpointpreciset): void {.
    cdecl, importc: "lv_point_precise_swap".}
proc lvpct*(x: int32): int32 {.cdecl, importc: "lv_pct".}
proc lvpcttopx*(v: int32; base: int32): int32 {.cdecl, importc: "lv_pct_to_px".}
proc lvcolorformatgetbpp*(cf: lvcolorformatt): uint8 {.cdecl,
    importc: "lv_color_format_get_bpp".}
proc lvcolorformatgetsize*(cf: lvcolorformatt): uint8 {.cdecl,
    importc: "lv_color_format_get_size".}
proc lvcolorformathasalpha*(srccf: lvcolorformatt): bool {.cdecl,
    importc: "lv_color_format_has_alpha".}
proc lvcolorto32*(color: lvcolort; opa: lvopat): lvcolor32t {.cdecl,
    importc: "lv_color_to_32".}
proc lvcolortoint*(c: lvcolort): uint32 {.cdecl, importc: "lv_color_to_int".}
proc lvcoloreq*(c1: lvcolort; c2: lvcolort): bool {.cdecl,
    importc: "lv_color_eq".}
proc lvcolor32eq*(c1: lvcolor32t; c2: lvcolor32t): bool {.cdecl,
    importc: "lv_color32_eq".}
proc lvcolorhex*(c: uint32): lvcolort {.cdecl, importc: "lv_color_hex".}
proc lvcolormake*(r: uint8; g: uint8; b: uint8): lvcolort {.cdecl,
    importc: "lv_color_make".}
proc lvcolor32make*(r: uint8; g: uint8; b: uint8; a: uint8): lvcolor32t {.cdecl,
    importc: "lv_color32_make".}
proc lvcolorhex3*(c: uint32): lvcolort {.cdecl, importc: "lv_color_hex3".}
proc lvcolortou16*(color: lvcolort): uint16 {.cdecl, importc: "lv_color_to_u16".}
proc lvcolortou32*(color: lvcolort): uint32 {.cdecl, importc: "lv_color_to_u32".}
proc lvcolor1616mix*(c1: uint16; c2: uint16; mix: uint8): uint16 {.cdecl,
    importc: "lv_color_16_16_mix".}
proc lvcolorlighten*(c: lvcolort; lvl: lvopat): lvcolort {.cdecl,
    importc: "lv_color_lighten".}
proc lvcolordarken*(c: lvcolort; lvl: lvopat): lvcolort {.cdecl,
    importc: "lv_color_darken".}
proc lvcolorhsvtorgb*(h: uint16; s: uint8; v: uint8): lvcolort {.cdecl,
    importc: "lv_color_hsv_to_rgb".}
proc lvcolorrgbtohsv*(r8: uint8; g8: uint8; b8: uint8): lvcolorhsvt {.cdecl,
    importc: "lv_color_rgb_to_hsv".}
proc lvcolortohsv*(color: lvcolort): lvcolorhsvt {.cdecl,
    importc: "lv_color_to_hsv".}
proc lvcolorwhite*(): lvcolort {.cdecl, importc: "lv_color_white".}
proc lvcolorblack*(): lvcolort {.cdecl, importc: "lv_color_black".}
proc lvcolorpremultiply*(c: ptr lvcolor32t): void {.cdecl,
    importc: "lv_color_premultiply".}
proc lvcolor16premultiply*(c: ptr lvcolor16t; a: lvopat): void {.cdecl,
    importc: "lv_color16_premultiply".}
proc lvcolorluminance*(c: lvcolort): uint8 {.cdecl,
    importc: "lv_color_luminance".}
proc lvcolor16luminance*(c: lvcolor16t): uint8 {.cdecl,
    importc: "lv_color16_luminance".}
proc lvcolor24luminance*(c: ptr uint8): uint8 {.cdecl,
    importc: "lv_color24_luminance".}
proc lvcolor32luminance*(c: lvcolor32t): uint8 {.cdecl,
    importc: "lv_color32_luminance".}
proc lvpalettemain*(p: lvpalettet): lvcolort {.cdecl, importc: "lv_palette_main".}
proc lvpalettelighten*(p: lvpalettet; lvl: uint8): lvcolort {.cdecl,
    importc: "lv_palette_lighten".}
proc lvpalettedarken*(p: lvpalettet; lvl: uint8): lvcolort {.cdecl,
    importc: "lv_palette_darken".}
proc lvcolormix*(c1: lvcolort; c2: lvcolort; mix: uint8): lvcolort {.cdecl,
    importc: "lv_color_mix".}
proc lvcolormix32*(fg: lvcolor32t; bg: lvcolor32t): lvcolor32t {.cdecl,
    importc: "lv_color_mix32".}
proc lvcolorbrightness*(c: lvcolort): uint8 {.cdecl,
    importc: "lv_color_brightness".}
proc lvcolorfilterdscinit*(dsc: ptr lvcolorfilterdsct; cb: lvcolorfiltercbt): void {.
    cdecl, importc: "lv_color_filter_dsc_init".}
var lvcolorfiltershade* {.importc: "lv_color_filter_shade".}: lvcolorfilterdsct
proc internallvdrawbufinithandlers*(): void {.cdecl,
    importc: "_lv_draw_buf_init_handlers".}
proc lvdrawbufinitwithdefaulthandlers*(handlers: ptr lvdrawbufhandlerst): void {.
    cdecl, importc: "lv_draw_buf_init_with_default_handlers".}
proc lvdrawbufinithandlers*(handlers: ptr lvdrawbufhandlerst;
                            bufmalloccb: lvdrawbufmalloccb;
                            buffreecb: lvdrawbuffreecb;
                            alignpointercb: lvdrawbufaligncb;
                            invalidatecachecb: lvdrawbufcacheoperationcb;
                            flushcachecb: lvdrawbufcacheoperationcb;
                            widthtostridecb: lvdrawbufwidthtostridecb): void {.
    cdecl, importc: "lv_draw_buf_init_handlers".}
proc lvdrawbufgethandlers*(): ptr lvdrawbufhandlerst {.cdecl,
    importc: "lv_draw_buf_get_handlers".}
proc lvdrawbufalign*(buf: pointer; colorformat: lvcolorformatt): pointer {.
    cdecl, importc: "lv_draw_buf_align".}
proc lvdrawbufalignuser*(handlers: ptr lvdrawbufhandlerst; buf: pointer;
                         colorformat: lvcolorformatt): pointer {.cdecl,
    importc: "lv_draw_buf_align_user".}
proc lvdrawbufinvalidatecache*(drawbuf: ptr lvdrawbuft; area: ptr lvareat): void {.
    cdecl, importc: "lv_draw_buf_invalidate_cache".}
proc lvdrawbufinvalidatecacheuser*(handlers: ptr lvdrawbufhandlerst;
                                   drawbuf: ptr lvdrawbuft; area: ptr lvareat): void {.
    cdecl, importc: "lv_draw_buf_invalidate_cache_user".}
proc lvdrawbufflushcache*(drawbuf: ptr lvdrawbuft; area: ptr lvareat): void {.
    cdecl, importc: "lv_draw_buf_flush_cache".}
proc lvdrawbufflushcacheuser*(handlers: ptr lvdrawbufhandlerst;
                              drawbuf: ptr lvdrawbuft; area: ptr lvareat): void {.
    cdecl, importc: "lv_draw_buf_flush_cache_user".}
proc lvdrawbufwidthtostride*(w: uint32; colorformat: lvcolorformatt): uint32 {.
    cdecl, importc: "lv_draw_buf_width_to_stride".}
proc lvdrawbufwidthtostrideuser*(handlers: ptr lvdrawbufhandlerst; w: uint32;
                                 colorformat: lvcolorformatt): uint32 {.cdecl,
    importc: "lv_draw_buf_width_to_stride_user".}
proc lvdrawbufclear*(drawbuf: ptr lvdrawbuft; a: ptr lvareat): void {.cdecl,
    importc: "lv_draw_buf_clear".}
proc lvdrawbufcopy*(dest: ptr lvdrawbuft; destarea: ptr lvareat;
                    src: ptr lvdrawbuft; srcarea: ptr lvareat): void {.cdecl,
    importc: "lv_draw_buf_copy".}
proc lvdrawbufcreate*(w: uint32; h: uint32; cf: lvcolorformatt; stride: uint32): ptr lvdrawbuft {.
    cdecl, importc: "lv_draw_buf_create".}
proc lvdrawbufcreateuser*(handlers: ptr lvdrawbufhandlerst; w: uint32;
                          h: uint32; cf: lvcolorformatt; stride: uint32): ptr lvdrawbuft {.
    cdecl, importc: "lv_draw_buf_create_user".}
proc lvdrawbufdup*(drawbuf: ptr lvdrawbuft): ptr lvdrawbuft {.cdecl,
    importc: "lv_draw_buf_dup".}
proc lvdrawbufdupuser*(handlers: ptr lvdrawbufhandlerst; drawbuf: ptr lvdrawbuft): ptr lvdrawbuft {.
    cdecl, importc: "lv_draw_buf_dup_user".}
proc lvdrawbufinit*(drawbuf: ptr lvdrawbuft; w: uint32; h: uint32;
                    cf: lvcolorformatt; stride: uint32; data: pointer;
                    datasize: uint32): lvresultt {.cdecl,
    importc: "lv_draw_buf_init".}
proc lvdrawbufreshape*(drawbuf: ptr lvdrawbuft; cf: lvcolorformatt; w: uint32;
                       h: uint32; stride: uint32): ptr lvdrawbuft {.cdecl,
    importc: "lv_draw_buf_reshape".}
proc lvdrawbufdestroy*(buf: ptr lvdrawbuft): void {.cdecl,
    importc: "lv_draw_buf_destroy".}
proc lvdrawbufdestroyuser*(handlers: ptr lvdrawbufhandlerst; buf: ptr lvdrawbuft): void {.
    cdecl, importc: "lv_draw_buf_destroy_user".}
proc lvdrawbufgotoxy*(buf: ptr lvdrawbuft; x: uint32; y: uint32): pointer {.
    cdecl, importc: "lv_draw_buf_goto_xy".}
proc lvdrawbufadjuststride*(src: ptr lvdrawbuft; stride: uint32): lvresultt {.
    cdecl, importc: "lv_draw_buf_adjust_stride".}
proc lvdrawbufpremultiply*(drawbuf: ptr lvdrawbuft): lvresultt {.cdecl,
    importc: "lv_draw_buf_premultiply".}
proc lvdrawbufhasflag*(drawbuf: ptr lvdrawbuft; flag: lvimageflagst): bool {.
    cdecl, importc: "lv_draw_buf_has_flag".}
proc lvdrawbufsetflag*(drawbuf: ptr lvdrawbuft; flag: lvimageflagst): void {.
    cdecl, importc: "lv_draw_buf_set_flag".}
proc lvdrawbufclearflag*(drawbuf: ptr lvdrawbuft; flag: lvimageflagst): void {.
    cdecl, importc: "lv_draw_buf_clear_flag".}
proc lvdrawbuffromimage*(buf: ptr lvdrawbuft; img: ptr lvimagedsct): void {.
    cdecl, importc: "lv_draw_buf_from_image".}
proc lvdrawbuftoimage*(buf: ptr lvdrawbuft; img: ptr lvimagedsct): void {.cdecl,
    importc: "lv_draw_buf_to_image".}
proc lvdrawbufsetpalette*(drawbuf: ptr lvdrawbuft; index: uint8;
                          color: lvcolor32t): void {.cdecl,
    importc: "lv_draw_buf_set_palette".}
proc lvimagebufsetpalette*(dsc: ptr lvimagedsct; id: uint8; c: lvcolor32t): void {.
    cdecl, importc: "lv_image_buf_set_palette".}
proc lvimagebuffree*(dsc: ptr lvimagedsct): void {.cdecl,
    importc: "lv_image_buf_free".}
proc lvthreadinit*(thread: ptr lvthreadt; prio: lvthreadpriot;
                   callback: proc (a0: pointer): void {.cdecl.};
                   stacksize: csize_t; userdata: pointer): lvresultt {.cdecl,
    importc: "lv_thread_init".}
proc lvthreaddelete*(thread: ptr lvthreadt): lvresultt {.cdecl,
    importc: "lv_thread_delete".}
proc lvmutexinit*(mutex: ptr lvmutext): lvresultt {.cdecl,
    importc: "lv_mutex_init".}
proc lvmutexlock*(mutex: ptr lvmutext): lvresultt {.cdecl,
    importc: "lv_mutex_lock".}
proc lvmutexlockisr*(mutex: ptr lvmutext): lvresultt {.cdecl,
    importc: "lv_mutex_lock_isr".}
proc lvmutexunlock*(mutex: ptr lvmutext): lvresultt {.cdecl,
    importc: "lv_mutex_unlock".}
proc lvmutexdelete*(mutex: ptr lvmutext): lvresultt {.cdecl,
    importc: "lv_mutex_delete".}
proc lvthreadsyncinit*(sync: ptr lvthreadsynct): lvresultt {.cdecl,
    importc: "lv_thread_sync_init".}
proc lvthreadsyncwait*(sync: ptr lvthreadsynct): lvresultt {.cdecl,
    importc: "lv_thread_sync_wait".}
proc lvthreadsyncsignal*(sync: ptr lvthreadsynct): lvresultt {.cdecl,
    importc: "lv_thread_sync_signal".}
proc lvthreadsyncdelete*(sync: ptr lvthreadsynct): lvresultt {.cdecl,
    importc: "lv_thread_sync_delete".}
proc lvlock*(): void {.cdecl, importc: "lv_lock".}
proc lvlockisr*(): lvresultt {.cdecl, importc: "lv_lock_isr".}
proc lvunlock*(): void {.cdecl, importc: "lv_unlock".}
proc lvcacheentrygetsize*(nodesize: uint32): uint32 {.cdecl,
    importc: "lv_cache_entry_get_size".}
proc lvcacheentrygetref*(entry: ptr lvcacheentryt): int32 {.cdecl,
    importc: "lv_cache_entry_get_ref".}
proc lvcacheentrygetnodesize*(entry: ptr lvcacheentryt): uint32 {.cdecl,
    importc: "lv_cache_entry_get_node_size".}
proc lvcacheentryisinvalid*(entry: ptr lvcacheentryt): bool {.cdecl,
    importc: "lv_cache_entry_is_invalid".}
proc lvcacheentrygetdata*(entry: ptr lvcacheentryt): pointer {.cdecl,
    importc: "lv_cache_entry_get_data".}
proc lvcacheentrygetcache*(entry: ptr lvcacheentryt): ptr lvcachet {.cdecl,
    importc: "lv_cache_entry_get_cache".}
proc lvcacheentrygetentry*(data: pointer; nodesize: uint32): ptr lvcacheentryt {.
    cdecl, importc: "lv_cache_entry_get_entry".}
proc lvcacheentryalloc*(nodesize: uint32; cache: ptr lvcachet): ptr lvcacheentryt {.
    cdecl, importc: "lv_cache_entry_alloc".}
proc lvcacheentryinit*(entry: ptr lvcacheentryt; cache: ptr lvcachet;
                       nodesize: uint32): void {.cdecl,
    importc: "lv_cache_entry_init".}
proc lvcacheentrydelete*(entry: ptr lvcacheentryt): void {.cdecl,
    importc: "lv_cache_entry_delete".}
var lvcacheclasslrurbcount* {.importc: "lv_cache_class_lru_rb_count".}: lvcacheclasst
var lvcacheclasslrurbsize* {.importc: "lv_cache_class_lru_rb_size".}: lvcacheclasst
proc lvimagecacheinit*(size: uint32): lvresultt {.cdecl,
    importc: "lv_image_cache_init".}
proc lvimagecacheresize*(newsize: uint32; evictnow: bool): void {.cdecl,
    importc: "lv_image_cache_resize".}
proc lvimagecachedrop*(src: pointer): void {.cdecl,
    importc: "lv_image_cache_drop".}
proc lvimagecacheisenabled*(): bool {.cdecl,
                                      importc: "lv_image_cache_is_enabled".}
proc lvimageheadercacheinit*(count: uint32): lvresultt {.cdecl,
    importc: "lv_image_header_cache_init".}
proc lvimageheadercacheresize*(count: uint32; evictnow: bool): void {.cdecl,
    importc: "lv_image_header_cache_resize".}
proc lvimageheadercachedrop*(src: pointer): void {.cdecl,
    importc: "lv_image_header_cache_drop".}
proc lvimageheadercacheisenabled*(): bool {.cdecl,
    importc: "lv_image_header_cache_is_enabled".}
proc lvcachecreate*(cacheclass: ptr lvcacheclasst; nodesize: csize_t;
                    maxsize: csize_t; ops: lvcacheopst): ptr lvcachet {.cdecl,
    importc: "lv_cache_create".}
proc lvcachedestroy*(cache: ptr lvcachet; userdata: pointer): void {.cdecl,
    importc: "lv_cache_destroy".}
proc lvcacheacquire*(cache: ptr lvcachet; key: pointer; userdata: pointer): ptr lvcacheentryt {.
    cdecl, importc: "lv_cache_acquire".}
proc lvcacheacquireorcreate*(cache: ptr lvcachet; key: pointer;
                             userdata: pointer): ptr lvcacheentryt {.cdecl,
    importc: "lv_cache_acquire_or_create".}
proc lvcacheadd*(cache: ptr lvcachet; key: pointer; userdata: pointer): ptr lvcacheentryt {.
    cdecl, importc: "lv_cache_add".}
proc lvcacherelease*(cache: ptr lvcachet; entry: ptr lvcacheentryt;
                     userdata: pointer): void {.cdecl,
    importc: "lv_cache_release".}
proc lvcachereserve*(cache: ptr lvcachet; reservedsize: uint32;
                     userdata: pointer): void {.cdecl,
    importc: "lv_cache_reserve".}
proc lvcachedrop*(cache: ptr lvcachet; key: pointer; userdata: pointer): void {.
    cdecl, importc: "lv_cache_drop".}
proc lvcachedropall*(cache: ptr lvcachet; userdata: pointer): void {.cdecl,
    importc: "lv_cache_drop_all".}
proc lvcacheevictone*(cache: ptr lvcachet; userdata: pointer): bool {.cdecl,
    importc: "lv_cache_evict_one".}
proc lvcachesetmaxsize*(cache: ptr lvcachet; maxsize: csize_t; userdata: pointer): void {.
    cdecl, importc: "lv_cache_set_max_size".}
proc lvcachegetmaxsize*(cache: ptr lvcachet; userdata: pointer): csize_t {.
    cdecl, importc: "lv_cache_get_max_size".}
proc lvcachegetsize*(cache: ptr lvcachet; userdata: pointer): csize_t {.cdecl,
    importc: "lv_cache_get_size".}
proc lvcachegetfreesize*(cache: ptr lvcachet; userdata: pointer): csize_t {.
    cdecl, importc: "lv_cache_get_free_size".}
proc lvcacheisenabled*(cache: ptr lvcachet): bool {.cdecl,
    importc: "lv_cache_is_enabled".}
proc lvcachesetcomparecb*(cache: ptr lvcachet; comparecb: lvcachecomparecbt;
                          userdata: pointer): void {.cdecl,
    importc: "lv_cache_set_compare_cb".}
proc lvcachesetcreatecb*(cache: ptr lvcachet; alloccb: lvcachecreatecbt;
                         userdata: pointer): void {.cdecl,
    importc: "lv_cache_set_create_cb".}
proc lvcachesetfreecb*(cache: ptr lvcachet; freecb: lvcachefreecbt;
                       userdata: pointer): void {.cdecl,
    importc: "lv_cache_set_free_cb".}
proc lvcachesetname*(cache: ptr lvcachet; name: cstring): void {.cdecl,
    importc: "lv_cache_set_name".}
proc lvcachegetname*(cache: ptr lvcachet): cstring {.cdecl,
    importc: "lv_cache_get_name".}
proc lvfontgetglyphbitmap*(gdsc: ptr lvfontglyphdsct; drawbuf: ptr lvdrawbuft): pointer {.
    cdecl, importc: "lv_font_get_glyph_bitmap".}
proc lvfontgetglyphdsc*(font: ptr lvfontt; dscout: ptr lvfontglyphdsct;
                        letter: uint32; letternext: uint32): bool {.cdecl,
    importc: "lv_font_get_glyph_dsc".}
proc lvfontglyphreleasedrawdata*(gdsc: ptr lvfontglyphdsct): void {.cdecl,
    importc: "lv_font_glyph_release_draw_data".}
proc lvfontgetglyphwidth*(font: ptr lvfontt; letter: uint32; letternext: uint32): uint16 {.
    cdecl, importc: "lv_font_get_glyph_width".}
proc lvfontgetlineheight*(font: ptr lvfontt): int32 {.cdecl,
    importc: "lv_font_get_line_height".}
proc lvfontsetkerning*(font: ptr lvfontt; kerning: lvfontkerningt): void {.
    cdecl, importc: "lv_font_set_kerning".}
var lvfontmontserrat8* {.importc: "lv_font_montserrat_8".}: lvfontt
var lvfontmontserrat10* {.importc: "lv_font_montserrat_10".}: lvfontt
var lvfontmontserrat12* {.importc: "lv_font_montserrat_12".}: lvfontt
var lvfontmontserrat14* {.importc: "lv_font_montserrat_14".}: lvfontt
var lvfontmontserrat16* {.importc: "lv_font_montserrat_16".}: lvfontt
var lvfontmontserrat18* {.importc: "lv_font_montserrat_18".}: lvfontt
var lvfontmontserrat20* {.importc: "lv_font_montserrat_20".}: lvfontt
var lvfontmontserrat22* {.importc: "lv_font_montserrat_22".}: lvfontt
var lvfontmontserrat24* {.importc: "lv_font_montserrat_24".}: lvfontt
var lvfontmontserrat26* {.importc: "lv_font_montserrat_26".}: lvfontt
var lvfontmontserrat28* {.importc: "lv_font_montserrat_28".}: lvfontt
var lvfontmontserrat30* {.importc: "lv_font_montserrat_30".}: lvfontt
var lvfontmontserrat32* {.importc: "lv_font_montserrat_32".}: lvfontt
var lvfontmontserrat34* {.importc: "lv_font_montserrat_34".}: lvfontt
var lvfontmontserrat36* {.importc: "lv_font_montserrat_36".}: lvfontt
var lvfontmontserrat38* {.importc: "lv_font_montserrat_38".}: lvfontt
var lvfontmontserrat40* {.importc: "lv_font_montserrat_40".}: lvfontt
var lvfontmontserrat42* {.importc: "lv_font_montserrat_42".}: lvfontt
var lvfontmontserrat44* {.importc: "lv_font_montserrat_44".}: lvfontt
var lvfontmontserrat46* {.importc: "lv_font_montserrat_46".}: lvfontt
var lvfontmontserrat48* {.importc: "lv_font_montserrat_48".}: lvfontt
var lvfontmontserrat28compressed* {.importc: "lv_font_montserrat_28_compressed".}: lvfontt
var lvfontdejavu16persianhebrew* {.importc: "lv_font_dejavu_16_persian_hebrew".}: lvfontt
var lvfontsimsun16cjk* {.importc: "lv_font_simsun_16_cjk".}: lvfontt
var lvfontunscii8* {.importc: "lv_font_unscii_8".}: lvfontt
var lvfontunscii16* {.importc: "lv_font_unscii_16".}: lvfontt
proc lvfontdefault*(): ptr lvfontt {.cdecl, importc: "lv_font_default".}
proc lvbidicalculatealign*(align: ptr lvtextalignt; basedir: ptr lvbasedirt;
                           txt: cstring): void {.cdecl,
    importc: "lv_bidi_calculate_align".}
proc internallvlayoutinit*(): void {.cdecl, importc: "_lv_layout_init".}
proc internallvlayoutdeinit*(): void {.cdecl, importc: "_lv_layout_deinit".}
proc lvlayoutregister*(cb: lvlayoutupdatecbt; userdata: pointer): uint32 {.
    cdecl, importc: "lv_layout_register".}
proc internallvlayoutapply*(obj: ptr lvobjt): void {.cdecl,
    importc: "_lv_layout_apply".}
proc lvflexinit*(): void {.cdecl, importc: "lv_flex_init".}
proc lvobjsetflexflow*(obj: ptr lvobjt; flow: lvflexflowt): void {.cdecl,
    importc: "lv_obj_set_flex_flow".}
proc lvobjsetflexalign*(obj: ptr lvobjt; mainplace: lvflexalignt;
                        crossplace: lvflexalignt; trackcrossplace: lvflexalignt): void {.
    cdecl, importc: "lv_obj_set_flex_align".}
proc lvobjsetflexgrow*(obj: ptr lvobjt; grow: uint8): void {.cdecl,
    importc: "lv_obj_set_flex_grow".}
proc lvgridinit*(): void {.cdecl, importc: "lv_grid_init".}
proc lvobjsetgriddscarray*(obj: ptr lvobjt; coldsc: ptr UncheckedArray[int32];
                           rowdsc: ptr UncheckedArray[int32]): void {.cdecl,
    importc: "lv_obj_set_grid_dsc_array".}
proc lvobjsetgridalign*(obj: ptr lvobjt; columnalign: lvgridalignt;
                        rowalign: lvgridalignt): void {.cdecl,
    importc: "lv_obj_set_grid_align".}
proc lvobjsetgridcell*(obj: ptr lvobjt; columnalign: lvgridalignt;
                       colpos: int32; colspan: int32; rowalign: lvgridalignt;
                       rowpos: int32; rowspan: int32): void {.cdecl,
    importc: "lv_obj_set_grid_cell".}
proc lvgridfr*(x: uint8): int32 {.cdecl, importc: "lv_grid_fr".}
proc lvstyleinit*(style: ptr lvstylet): void {.cdecl, importc: "lv_style_init".}
proc lvstylereset*(style: ptr lvstylet): void {.cdecl, importc: "lv_style_reset".}
proc lvstyleisconst*(style: ptr lvstylet): bool {.cdecl,
    importc: "lv_style_is_const".}
proc lvstyleregisterprop*(flag: uint8): lvstylepropt {.cdecl,
    importc: "lv_style_register_prop".}
proc lvstylegetnumcustomprops*(): lvstylepropt {.cdecl,
    importc: "lv_style_get_num_custom_props".}
proc lvstyleremoveprop*(style: ptr lvstylet; prop: lvstylepropt): bool {.cdecl,
    importc: "lv_style_remove_prop".}
proc lvstylesetprop*(style: ptr lvstylet; prop: lvstylepropt;
                     value: lvstylevaluet): void {.cdecl,
    importc: "lv_style_set_prop".}
proc lvstylegetprop*(style: ptr lvstylet; prop: lvstylepropt;
                     value: ptr lvstylevaluet): lvstylerest {.cdecl,
    importc: "lv_style_get_prop".}
proc lvstyletransitiondscinit*(tr: ptr lvstyletransitiondsct;
                               props: ptr UncheckedArray[lvstylepropt];
                               pathcb: lvanimpathcbt; time: uint32;
                               delay: uint32; userdata: pointer): void {.cdecl,
    importc: "lv_style_transition_dsc_init".}
proc lvstylepropgetdefault*(prop: lvstylepropt): lvstylevaluet {.cdecl,
    importc: "lv_style_prop_get_default".}
proc lvstylegetpropinlined*(style: ptr lvstylet; prop: lvstylepropt;
                            value: ptr lvstylevaluet): lvstylerest {.cdecl,
    importc: "lv_style_get_prop_inlined".}
proc lvstyleisempty*(style: ptr lvstylet): bool {.cdecl,
    importc: "lv_style_is_empty".}
proc internallvstylegetpropgroup*(prop: lvstylepropt): uint32 {.cdecl,
    importc: "_lv_style_get_prop_group".}
proc internallvstyleproplookupflags*(prop: lvstylepropt): uint8 {.cdecl,
    importc: "_lv_style_prop_lookup_flags".}
proc lvstylesetwidth*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_width".}
var internallvstyleconstpropidwidth* {.importc: "_lv_style_const_prop_id_WIDTH".}: lvstylepropt
proc lvstylesetminwidth*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_min_width".}
var internallvstyleconstpropidminwidth* {.
    importc: "_lv_style_const_prop_id_MIN_WIDTH".}: lvstylepropt
proc lvstylesetmaxwidth*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_max_width".}
var internallvstyleconstpropidmaxwidth* {.
    importc: "_lv_style_const_prop_id_MAX_WIDTH".}: lvstylepropt
proc lvstylesetheight*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_height".}
var internallvstyleconstpropidheight* {.importc: "_lv_style_const_prop_id_HEIGHT".}: lvstylepropt
proc lvstylesetminheight*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_min_height".}
var internallvstyleconstpropidminheight* {.
    importc: "_lv_style_const_prop_id_MIN_HEIGHT".}: lvstylepropt
proc lvstylesetmaxheight*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_max_height".}
var internallvstyleconstpropidmaxheight* {.
    importc: "_lv_style_const_prop_id_MAX_HEIGHT".}: lvstylepropt
proc lvstylesetlength*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_length".}
var internallvstyleconstpropidlength* {.importc: "_lv_style_const_prop_id_LENGTH".}: lvstylepropt
proc lvstylesetx*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_x".}
var internallvstyleconstpropidx* {.importc: "_lv_style_const_prop_id_X".}: lvstylepropt
proc lvstylesety*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_y".}
var internallvstyleconstpropidy* {.importc: "_lv_style_const_prop_id_Y".}: lvstylepropt
proc lvstylesetalign*(style: ptr lvstylet; value: lvalignt): void {.cdecl,
    importc: "lv_style_set_align".}
var internallvstyleconstpropidalign* {.importc: "_lv_style_const_prop_id_ALIGN".}: lvstylepropt
proc lvstylesettransformwidth*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_transform_width".}
var internallvstyleconstpropidtransformwidth*
    {.importc: "_lv_style_const_prop_id_TRANSFORM_WIDTH".}: lvstylepropt
proc lvstylesettransformheight*(style: ptr lvstylet; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_height".}
var internallvstyleconstpropidtransformheight*
    {.importc: "_lv_style_const_prop_id_TRANSFORM_HEIGHT".}: lvstylepropt
proc lvstylesettranslatex*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_translate_x".}
var internallvstyleconstpropidtranslatex*
    {.importc: "_lv_style_const_prop_id_TRANSLATE_X".}: lvstylepropt
proc lvstylesettranslatey*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_translate_y".}
var internallvstyleconstpropidtranslatey*
    {.importc: "_lv_style_const_prop_id_TRANSLATE_Y".}: lvstylepropt
proc lvstylesettransformscalex*(style: ptr lvstylet; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_scale_x".}
var internallvstyleconstpropidtransformscalex*
    {.importc: "_lv_style_const_prop_id_TRANSFORM_SCALE_X".}: lvstylepropt
proc lvstylesettransformscaley*(style: ptr lvstylet; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_scale_y".}
var internallvstyleconstpropidtransformscaley*
    {.importc: "_lv_style_const_prop_id_TRANSFORM_SCALE_Y".}: lvstylepropt
var internallvstyleconstpropidtransformrotation*
    {.importc: "_lv_style_const_prop_id_TRANSFORM_ROTATION".}: lvstylepropt
proc lvstylesettransformpivotx*(style: ptr lvstylet; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_pivot_x".}
var internallvstyleconstpropidtransformpivotx*
    {.importc: "_lv_style_const_prop_id_TRANSFORM_PIVOT_X".}: lvstylepropt
proc lvstylesettransformpivoty*(style: ptr lvstylet; value: int32): void {.
    cdecl, importc: "lv_style_set_transform_pivot_y".}
var internallvstyleconstpropidtransformpivoty*
    {.importc: "_lv_style_const_prop_id_TRANSFORM_PIVOT_Y".}: lvstylepropt
proc lvstylesettransformskewx*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_transform_skew_x".}
var internallvstyleconstpropidtransformskewx*
    {.importc: "_lv_style_const_prop_id_TRANSFORM_SKEW_X".}: lvstylepropt
proc lvstylesettransformskewy*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_transform_skew_y".}
var internallvstyleconstpropidtransformskewy*
    {.importc: "_lv_style_const_prop_id_TRANSFORM_SKEW_Y".}: lvstylepropt
proc lvstylesetpadtop*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_top".}
var internallvstyleconstpropidpadtop* {.importc: "_lv_style_const_prop_id_PAD_TOP".}: lvstylepropt
proc lvstylesetpadbottom*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_bottom".}
var internallvstyleconstpropidpadbottom* {.
    importc: "_lv_style_const_prop_id_PAD_BOTTOM".}: lvstylepropt
proc lvstylesetpadleft*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_left".}
var internallvstyleconstpropidpadleft* {.
    importc: "_lv_style_const_prop_id_PAD_LEFT".}: lvstylepropt
proc lvstylesetpadright*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_right".}
var internallvstyleconstpropidpadright* {.
    importc: "_lv_style_const_prop_id_PAD_RIGHT".}: lvstylepropt
proc lvstylesetpadrow*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_row".}
var internallvstyleconstpropidpadrow* {.importc: "_lv_style_const_prop_id_PAD_ROW".}: lvstylepropt
proc lvstylesetpadcolumn*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_column".}
var internallvstyleconstpropidpadcolumn* {.
    importc: "_lv_style_const_prop_id_PAD_COLUMN".}: lvstylepropt
proc lvstylesetmargintop*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_margin_top".}
var internallvstyleconstpropidmargintop* {.
    importc: "_lv_style_const_prop_id_MARGIN_TOP".}: lvstylepropt
proc lvstylesetmarginbottom*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_margin_bottom".}
var internallvstyleconstpropidmarginbottom*
    {.importc: "_lv_style_const_prop_id_MARGIN_BOTTOM".}: lvstylepropt
proc lvstylesetmarginleft*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_margin_left".}
var internallvstyleconstpropidmarginleft*
    {.importc: "_lv_style_const_prop_id_MARGIN_LEFT".}: lvstylepropt
proc lvstylesetmarginright*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_margin_right".}
var internallvstyleconstpropidmarginright*
    {.importc: "_lv_style_const_prop_id_MARGIN_RIGHT".}: lvstylepropt
proc lvstylesetbgcolor*(style: ptr lvstylet; value: lvcolort): void {.cdecl,
    importc: "lv_style_set_bg_color".}
var internallvstyleconstpropidbgcolor* {.
    importc: "_lv_style_const_prop_id_BG_COLOR".}: lvstylepropt
proc lvstylesetbgopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_bg_opa".}
var internallvstyleconstpropidbgopa* {.importc: "_lv_style_const_prop_id_BG_OPA".}: lvstylepropt
proc lvstylesetbggradcolor*(style: ptr lvstylet; value: lvcolort): void {.cdecl,
    importc: "lv_style_set_bg_grad_color".}
var internallvstyleconstpropidbggradcolor*
    {.importc: "_lv_style_const_prop_id_BG_GRAD_COLOR".}: lvstylepropt
proc lvstylesetbggraddir*(style: ptr lvstylet; value: lvgraddirt): void {.cdecl,
    importc: "lv_style_set_bg_grad_dir".}
var internallvstyleconstpropidbggraddir* {.
    importc: "_lv_style_const_prop_id_BG_GRAD_DIR".}: lvstylepropt
proc lvstylesetbgmainstop*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_bg_main_stop".}
var internallvstyleconstpropidbgmainstop*
    {.importc: "_lv_style_const_prop_id_BG_MAIN_STOP".}: lvstylepropt
proc lvstylesetbggradstop*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_bg_grad_stop".}
var internallvstyleconstpropidbggradstop*
    {.importc: "_lv_style_const_prop_id_BG_GRAD_STOP".}: lvstylepropt
proc lvstylesetbgmainopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_bg_main_opa".}
var internallvstyleconstpropidbgmainopa* {.
    importc: "_lv_style_const_prop_id_BG_MAIN_OPA".}: lvstylepropt
proc lvstylesetbggradopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_bg_grad_opa".}
var internallvstyleconstpropidbggradopa* {.
    importc: "_lv_style_const_prop_id_BG_GRAD_OPA".}: lvstylepropt
proc lvstylesetbggrad*(style: ptr lvstylet; value: ptr lvgraddsct): void {.
    cdecl, importc: "lv_style_set_bg_grad".}
var internallvstyleconstpropidbggrad* {.importc: "_lv_style_const_prop_id_BG_GRAD".}: lvstylepropt
var internallvstyleconstpropidbgimagesrc*
    {.importc: "_lv_style_const_prop_id_BG_IMAGE_SRC".}: lvstylepropt
proc lvstylesetbgimageopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_bg_image_opa".}
var internallvstyleconstpropidbgimageopa*
    {.importc: "_lv_style_const_prop_id_BG_IMAGE_OPA".}: lvstylepropt
var internallvstyleconstpropidbgimagerecolor*
    {.importc: "_lv_style_const_prop_id_BG_IMAGE_RECOLOR".}: lvstylepropt
var internallvstyleconstpropidbgimagerecoloropa*
    {.importc: "_lv_style_const_prop_id_BG_IMAGE_RECOLOR_OPA".}: lvstylepropt
proc lvstylesetbgimagetiled*(style: ptr lvstylet; value: bool): void {.cdecl,
    importc: "lv_style_set_bg_image_tiled".}
var internallvstyleconstpropidbgimagetiled*
    {.importc: "_lv_style_const_prop_id_BG_IMAGE_TILED".}: lvstylepropt
proc lvstylesetbordercolor*(style: ptr lvstylet; value: lvcolort): void {.cdecl,
    importc: "lv_style_set_border_color".}
var internallvstyleconstpropidbordercolor*
    {.importc: "_lv_style_const_prop_id_BORDER_COLOR".}: lvstylepropt
proc lvstylesetborderopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_border_opa".}
var internallvstyleconstpropidborderopa* {.
    importc: "_lv_style_const_prop_id_BORDER_OPA".}: lvstylepropt
proc lvstylesetborderwidth*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_border_width".}
var internallvstyleconstpropidborderwidth*
    {.importc: "_lv_style_const_prop_id_BORDER_WIDTH".}: lvstylepropt
proc lvstylesetborderside*(style: ptr lvstylet; value: lvbordersidet): void {.
    cdecl, importc: "lv_style_set_border_side".}
var internallvstyleconstpropidborderside*
    {.importc: "_lv_style_const_prop_id_BORDER_SIDE".}: lvstylepropt
proc lvstylesetborderpost*(style: ptr lvstylet; value: bool): void {.cdecl,
    importc: "lv_style_set_border_post".}
var internallvstyleconstpropidborderpost*
    {.importc: "_lv_style_const_prop_id_BORDER_POST".}: lvstylepropt
proc lvstylesetoutlinewidth*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_outline_width".}
var internallvstyleconstpropidoutlinewidth*
    {.importc: "_lv_style_const_prop_id_OUTLINE_WIDTH".}: lvstylepropt
proc lvstylesetoutlinecolor*(style: ptr lvstylet; value: lvcolort): void {.
    cdecl, importc: "lv_style_set_outline_color".}
var internallvstyleconstpropidoutlinecolor*
    {.importc: "_lv_style_const_prop_id_OUTLINE_COLOR".}: lvstylepropt
proc lvstylesetoutlineopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_outline_opa".}
var internallvstyleconstpropidoutlineopa*
    {.importc: "_lv_style_const_prop_id_OUTLINE_OPA".}: lvstylepropt
proc lvstylesetoutlinepad*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_outline_pad".}
var internallvstyleconstpropidoutlinepad*
    {.importc: "_lv_style_const_prop_id_OUTLINE_PAD".}: lvstylepropt
proc lvstylesetshadowwidth*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_shadow_width".}
var internallvstyleconstpropidshadowwidth*
    {.importc: "_lv_style_const_prop_id_SHADOW_WIDTH".}: lvstylepropt
var internallvstyleconstpropidshadowoffsetx*
    {.importc: "_lv_style_const_prop_id_SHADOW_OFFSET_X".}: lvstylepropt
var internallvstyleconstpropidshadowoffsety*
    {.importc: "_lv_style_const_prop_id_SHADOW_OFFSET_Y".}: lvstylepropt
proc lvstylesetshadowspread*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_shadow_spread".}
var internallvstyleconstpropidshadowspread*
    {.importc: "_lv_style_const_prop_id_SHADOW_SPREAD".}: lvstylepropt
proc lvstylesetshadowcolor*(style: ptr lvstylet; value: lvcolort): void {.cdecl,
    importc: "lv_style_set_shadow_color".}
var internallvstyleconstpropidshadowcolor*
    {.importc: "_lv_style_const_prop_id_SHADOW_COLOR".}: lvstylepropt
proc lvstylesetshadowopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_shadow_opa".}
var internallvstyleconstpropidshadowopa* {.
    importc: "_lv_style_const_prop_id_SHADOW_OPA".}: lvstylepropt
var internallvstyleconstpropidimageopa* {.
    importc: "_lv_style_const_prop_id_IMAGE_OPA".}: lvstylepropt
var internallvstyleconstpropidimagerecolor*
    {.importc: "_lv_style_const_prop_id_IMAGE_RECOLOR".}: lvstylepropt
var internallvstyleconstpropidimagerecoloropa*
    {.importc: "_lv_style_const_prop_id_IMAGE_RECOLOR_OPA".}: lvstylepropt
proc lvstylesetlinewidth*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_line_width".}
var internallvstyleconstpropidlinewidth* {.
    importc: "_lv_style_const_prop_id_LINE_WIDTH".}: lvstylepropt
proc lvstylesetlinedashwidth*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_line_dash_width".}
var internallvstyleconstpropidlinedashwidth*
    {.importc: "_lv_style_const_prop_id_LINE_DASH_WIDTH".}: lvstylepropt
proc lvstylesetlinedashgap*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_line_dash_gap".}
var internallvstyleconstpropidlinedashgap*
    {.importc: "_lv_style_const_prop_id_LINE_DASH_GAP".}: lvstylepropt
proc lvstylesetlinerounded*(style: ptr lvstylet; value: bool): void {.cdecl,
    importc: "lv_style_set_line_rounded".}
var internallvstyleconstpropidlinerounded*
    {.importc: "_lv_style_const_prop_id_LINE_ROUNDED".}: lvstylepropt
proc lvstylesetlinecolor*(style: ptr lvstylet; value: lvcolort): void {.cdecl,
    importc: "lv_style_set_line_color".}
var internallvstyleconstpropidlinecolor* {.
    importc: "_lv_style_const_prop_id_LINE_COLOR".}: lvstylepropt
proc lvstylesetlineopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_line_opa".}
var internallvstyleconstpropidlineopa* {.
    importc: "_lv_style_const_prop_id_LINE_OPA".}: lvstylepropt
proc lvstylesetarcwidth*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_arc_width".}
var internallvstyleconstpropidarcwidth* {.
    importc: "_lv_style_const_prop_id_ARC_WIDTH".}: lvstylepropt
proc lvstylesetarcrounded*(style: ptr lvstylet; value: bool): void {.cdecl,
    importc: "lv_style_set_arc_rounded".}
var internallvstyleconstpropidarcrounded*
    {.importc: "_lv_style_const_prop_id_ARC_ROUNDED".}: lvstylepropt
proc lvstylesetarccolor*(style: ptr lvstylet; value: lvcolort): void {.cdecl,
    importc: "lv_style_set_arc_color".}
var internallvstyleconstpropidarccolor* {.
    importc: "_lv_style_const_prop_id_ARC_COLOR".}: lvstylepropt
proc lvstylesetarcopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_arc_opa".}
var internallvstyleconstpropidarcopa* {.importc: "_lv_style_const_prop_id_ARC_OPA".}: lvstylepropt
proc lvstylesetarcimagesrc*(style: ptr lvstylet; value: pointer): void {.cdecl,
    importc: "lv_style_set_arc_image_src".}
var internallvstyleconstpropidarcimagesrc*
    {.importc: "_lv_style_const_prop_id_ARC_IMAGE_SRC".}: lvstylepropt
proc lvstylesettextcolor*(style: ptr lvstylet; value: lvcolort): void {.cdecl,
    importc: "lv_style_set_text_color".}
var internallvstyleconstpropidtextcolor* {.
    importc: "_lv_style_const_prop_id_TEXT_COLOR".}: lvstylepropt
proc lvstylesettextopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_text_opa".}
var internallvstyleconstpropidtextopa* {.
    importc: "_lv_style_const_prop_id_TEXT_OPA".}: lvstylepropt
proc lvstylesettextfont*(style: ptr lvstylet; value: ptr lvfontt): void {.cdecl,
    importc: "lv_style_set_text_font".}
var internallvstyleconstpropidtextfont* {.
    importc: "_lv_style_const_prop_id_TEXT_FONT".}: lvstylepropt
proc lvstylesettextletterspace*(style: ptr lvstylet; value: int32): void {.
    cdecl, importc: "lv_style_set_text_letter_space".}
var internallvstyleconstpropidtextletterspace*
    {.importc: "_lv_style_const_prop_id_TEXT_LETTER_SPACE".}: lvstylepropt
proc lvstylesettextlinespace*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_text_line_space".}
var internallvstyleconstpropidtextlinespace*
    {.importc: "_lv_style_const_prop_id_TEXT_LINE_SPACE".}: lvstylepropt
proc lvstylesettextdecor*(style: ptr lvstylet; value: lvtextdecort): void {.
    cdecl, importc: "lv_style_set_text_decor".}
var internallvstyleconstpropidtextdecor* {.
    importc: "_lv_style_const_prop_id_TEXT_DECOR".}: lvstylepropt
proc lvstylesettextalign*(style: ptr lvstylet; value: lvtextalignt): void {.
    cdecl, importc: "lv_style_set_text_align".}
var internallvstyleconstpropidtextalign* {.
    importc: "_lv_style_const_prop_id_TEXT_ALIGN".}: lvstylepropt
proc lvstylesetradius*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_radius".}
var internallvstyleconstpropidradius* {.importc: "_lv_style_const_prop_id_RADIUS".}: lvstylepropt
proc lvstylesetclipcorner*(style: ptr lvstylet; value: bool): void {.cdecl,
    importc: "lv_style_set_clip_corner".}
var internallvstyleconstpropidclipcorner*
    {.importc: "_lv_style_const_prop_id_CLIP_CORNER".}: lvstylepropt
proc lvstylesetopa*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_opa".}
var internallvstyleconstpropidopa* {.importc: "_lv_style_const_prop_id_OPA".}: lvstylepropt
proc lvstylesetopalayered*(style: ptr lvstylet; value: lvopat): void {.cdecl,
    importc: "lv_style_set_opa_layered".}
var internallvstyleconstpropidopalayered*
    {.importc: "_lv_style_const_prop_id_OPA_LAYERED".}: lvstylepropt
proc lvstylesetcolorfilterdsc*(style: ptr lvstylet; value: ptr lvcolorfilterdsct): void {.
    cdecl, importc: "lv_style_set_color_filter_dsc".}
var internallvstyleconstpropidcolorfilterdsc*
    {.importc: "_lv_style_const_prop_id_COLOR_FILTER_DSC".}: lvstylepropt
proc lvstylesetcolorfilteropa*(style: ptr lvstylet; value: lvopat): void {.
    cdecl, importc: "lv_style_set_color_filter_opa".}
var internallvstyleconstpropidcolorfilteropa*
    {.importc: "_lv_style_const_prop_id_COLOR_FILTER_OPA".}: lvstylepropt
proc lvstylesetanim*(style: ptr lvstylet; value: ptr lvanimt): void {.cdecl,
    importc: "lv_style_set_anim".}
var internallvstyleconstpropidanim* {.importc: "_lv_style_const_prop_id_ANIM".}: lvstylepropt
var internallvstyleconstpropidanimduration*
    {.importc: "_lv_style_const_prop_id_ANIM_DURATION".}: lvstylepropt
proc lvstylesettransition*(style: ptr lvstylet; value: ptr lvstyletransitiondsct): void {.
    cdecl, importc: "lv_style_set_transition".}
var internallvstyleconstpropidtransition*
    {.importc: "_lv_style_const_prop_id_TRANSITION".}: lvstylepropt
proc lvstylesetblendmode*(style: ptr lvstylet; value: lvblendmodet): void {.
    cdecl, importc: "lv_style_set_blend_mode".}
var internallvstyleconstpropidblendmode* {.
    importc: "_lv_style_const_prop_id_BLEND_MODE".}: lvstylepropt
proc lvstylesetlayout*(style: ptr lvstylet; value: uint16): void {.cdecl,
    importc: "lv_style_set_layout".}
var internallvstyleconstpropidlayout* {.importc: "_lv_style_const_prop_id_LAYOUT".}: lvstylepropt
proc lvstylesetbasedir*(style: ptr lvstylet; value: lvbasedirt): void {.cdecl,
    importc: "lv_style_set_base_dir".}
var internallvstyleconstpropidbasedir* {.
    importc: "_lv_style_const_prop_id_BASE_DIR".}: lvstylepropt
proc lvstylesetbitmapmasksrc*(style: ptr lvstylet; value: pointer): void {.
    cdecl, importc: "lv_style_set_bitmap_mask_src".}
var internallvstyleconstpropidbitmapmasksrc*
    {.importc: "_lv_style_const_prop_id_BITMAP_MASK_SRC".}: lvstylepropt
proc lvstylesetrotarysensitivity*(style: ptr lvstylet; value: uint32): void {.
    cdecl, importc: "lv_style_set_rotary_sensitivity".}
var internallvstyleconstpropidrotarysensitivity*
    {.importc: "_lv_style_const_prop_id_ROTARY_SENSITIVITY".}: lvstylepropt
proc lvstylesetflexflow*(style: ptr lvstylet; value: lvflexflowt): void {.cdecl,
    importc: "lv_style_set_flex_flow".}
var internallvstyleconstpropidflexflow* {.
    importc: "_lv_style_const_prop_id_FLEX_FLOW".}: lvstylepropt
proc lvstylesetflexmainplace*(style: ptr lvstylet; value: lvflexalignt): void {.
    cdecl, importc: "lv_style_set_flex_main_place".}
var internallvstyleconstpropidflexmainplace*
    {.importc: "_lv_style_const_prop_id_FLEX_MAIN_PLACE".}: lvstylepropt
proc lvstylesetflexcrossplace*(style: ptr lvstylet; value: lvflexalignt): void {.
    cdecl, importc: "lv_style_set_flex_cross_place".}
var internallvstyleconstpropidflexcrossplace*
    {.importc: "_lv_style_const_prop_id_FLEX_CROSS_PLACE".}: lvstylepropt
proc lvstylesetflextrackplace*(style: ptr lvstylet; value: lvflexalignt): void {.
    cdecl, importc: "lv_style_set_flex_track_place".}
var internallvstyleconstpropidflextrackplace*
    {.importc: "_lv_style_const_prop_id_FLEX_TRACK_PLACE".}: lvstylepropt
proc lvstylesetflexgrow*(style: ptr lvstylet; value: uint8): void {.cdecl,
    importc: "lv_style_set_flex_grow".}
var internallvstyleconstpropidflexgrow* {.
    importc: "_lv_style_const_prop_id_FLEX_GROW".}: lvstylepropt
proc lvstylesetgridcolumndscarray*(style: ptr lvstylet; value: ptr int32): void {.
    cdecl, importc: "lv_style_set_grid_column_dsc_array".}
var internallvstyleconstpropidgridcolumndscarray*
    {.importc: "_lv_style_const_prop_id_GRID_COLUMN_DSC_ARRAY".}: lvstylepropt
proc lvstylesetgridcolumnalign*(style: ptr lvstylet; value: lvgridalignt): void {.
    cdecl, importc: "lv_style_set_grid_column_align".}
var internallvstyleconstpropidgridcolumnalign*
    {.importc: "_lv_style_const_prop_id_GRID_COLUMN_ALIGN".}: lvstylepropt
proc lvstylesetgridrowdscarray*(style: ptr lvstylet; value: ptr int32): void {.
    cdecl, importc: "lv_style_set_grid_row_dsc_array".}
var internallvstyleconstpropidgridrowdscarray*
    {.importc: "_lv_style_const_prop_id_GRID_ROW_DSC_ARRAY".}: lvstylepropt
proc lvstylesetgridrowalign*(style: ptr lvstylet; value: lvgridalignt): void {.
    cdecl, importc: "lv_style_set_grid_row_align".}
var internallvstyleconstpropidgridrowalign*
    {.importc: "_lv_style_const_prop_id_GRID_ROW_ALIGN".}: lvstylepropt
proc lvstylesetgridcellcolumnpos*(style: ptr lvstylet; value: int32): void {.
    cdecl, importc: "lv_style_set_grid_cell_column_pos".}
var internallvstyleconstpropidgridcellcolumnpos*
    {.importc: "_lv_style_const_prop_id_GRID_CELL_COLUMN_POS".}: lvstylepropt
proc lvstylesetgridcellxalign*(style: ptr lvstylet; value: lvgridalignt): void {.
    cdecl, importc: "lv_style_set_grid_cell_x_align".}
var internallvstyleconstpropidgridcellxalign*
    {.importc: "_lv_style_const_prop_id_GRID_CELL_X_ALIGN".}: lvstylepropt
proc lvstylesetgridcellcolumnspan*(style: ptr lvstylet; value: int32): void {.
    cdecl, importc: "lv_style_set_grid_cell_column_span".}
var internallvstyleconstpropidgridcellcolumnspan*
    {.importc: "_lv_style_const_prop_id_GRID_CELL_COLUMN_SPAN".}: lvstylepropt
proc lvstylesetgridcellrowpos*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_grid_cell_row_pos".}
var internallvstyleconstpropidgridcellrowpos*
    {.importc: "_lv_style_const_prop_id_GRID_CELL_ROW_POS".}: lvstylepropt
proc lvstylesetgridcellyalign*(style: ptr lvstylet; value: lvgridalignt): void {.
    cdecl, importc: "lv_style_set_grid_cell_y_align".}
var internallvstyleconstpropidgridcellyalign*
    {.importc: "_lv_style_const_prop_id_GRID_CELL_Y_ALIGN".}: lvstylepropt
proc lvstylesetgridcellrowspan*(style: ptr lvstylet; value: int32): void {.
    cdecl, importc: "lv_style_set_grid_cell_row_span".}
var internallvstyleconstpropidgridcellrowspan*
    {.importc: "_lv_style_const_prop_id_GRID_CELL_ROW_SPAN".}: lvstylepropt
proc lvstylesetsize*(style: ptr lvstylet; width: int32; height: int32): void {.
    cdecl, importc: "lv_style_set_size".}
proc lvstylesetpadall*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_all".}
proc lvstylesetpadhor*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_hor".}
proc lvstylesetpadver*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_ver".}
proc lvstylesetpadgap*(style: ptr lvstylet; value: int32): void {.cdecl,
    importc: "lv_style_set_pad_gap".}
proc lvstyleprophasflag*(prop: lvstylepropt; flag: uint8): bool {.cdecl,
    importc: "lv_style_prop_has_flag".}
var lvstyleconstpropidinv* {.importc: "lv_style_const_prop_id_inv".}: lvstylepropt
proc internallveventpush*(e: ptr lveventt): void {.cdecl,
    importc: "_lv_event_push".}
proc internallveventpop*(e: ptr lveventt): void {.cdecl,
    importc: "_lv_event_pop".}
proc lveventsend*(list: ptr lveventlistt; e: ptr lveventt; preprocess: bool): lvresultt {.
    cdecl, importc: "lv_event_send".}
proc lveventadd*(list: ptr lveventlistt; cb: lveventcbt; filter: lveventcodet;
                 userdata: pointer): ptr lveventdsct {.cdecl,
    importc: "lv_event_add".}
proc lveventremovedsc*(list: ptr lveventlistt; dsc: ptr lveventdsct): bool {.
    cdecl, importc: "lv_event_remove_dsc".}
proc lveventgetcount*(list: ptr lveventlistt): uint32 {.cdecl,
    importc: "lv_event_get_count".}
proc lveventgetdsc*(list: ptr lveventlistt; index: uint32): ptr lveventdsct {.
    cdecl, importc: "lv_event_get_dsc".}
proc lveventdscgetcb*(dsc: ptr lveventdsct): lveventcbt {.cdecl,
    importc: "lv_event_dsc_get_cb".}
proc lveventdscgetuserdata*(dsc: ptr lveventdsct): pointer {.cdecl,
    importc: "lv_event_dsc_get_user_data".}
proc lveventremove*(list: ptr lveventlistt; index: uint32): bool {.cdecl,
    importc: "lv_event_remove".}
proc lveventremoveall*(list: ptr lveventlistt): void {.cdecl,
    importc: "lv_event_remove_all".}
proc lveventgettarget*(e: ptr lveventt): pointer {.cdecl,
    importc: "lv_event_get_target".}
proc lveventgetcurrenttarget*(e: ptr lveventt): pointer {.cdecl,
    importc: "lv_event_get_current_target".}
proc lveventgetcode*(e: ptr lveventt): lveventcodet {.cdecl,
    importc: "lv_event_get_code".}
proc lveventgetparam*(e: ptr lveventt): pointer {.cdecl,
    importc: "lv_event_get_param".}
proc lveventgetuserdata*(e: ptr lveventt): pointer {.cdecl,
    importc: "lv_event_get_user_data".}
proc lveventstopbubbling*(e: ptr lveventt): void {.cdecl,
    importc: "lv_event_stop_bubbling".}
proc lveventstopprocessing*(e: ptr lveventt): void {.cdecl,
    importc: "lv_event_stop_processing".}
proc lveventregisterid*(): uint32 {.cdecl, importc: "lv_event_register_id".}
proc internallveventmarkdeleted*(target: pointer): void {.cdecl,
    importc: "_lv_event_mark_deleted".}
proc internallvfsinit*(): void {.cdecl, importc: "_lv_fs_init".}
proc internallvfsdeinit*(): void {.cdecl, importc: "_lv_fs_deinit".}
proc lvfsdrvinit*(drv: ptr lvfsdrvt): void {.cdecl, importc: "lv_fs_drv_init".}
proc lvfsdrvregister*(drv: ptr lvfsdrvt): void {.cdecl,
    importc: "lv_fs_drv_register".}
proc lvfsgetdrv*(letter: cschar): ptr lvfsdrvt {.cdecl, importc: "lv_fs_get_drv".}
proc lvfsisready*(letter: cschar): bool {.cdecl, importc: "lv_fs_is_ready".}
proc lvfsopen*(filep: ptr lvfsfilet; path: cstring; mode: lvfsmodet): lvfsrest {.
    cdecl, importc: "lv_fs_open".}
proc lvfsmakepathfrombuffer*(path: ptr lvfspathext; letter: cschar;
                             buf: pointer; size: uint32): void {.cdecl,
    importc: "lv_fs_make_path_from_buffer".}
proc lvfsclose*(filep: ptr lvfsfilet): lvfsrest {.cdecl, importc: "lv_fs_close".}
proc lvfsread*(filep: ptr lvfsfilet; buf: pointer; btr: uint32; br: ptr uint32): lvfsrest {.
    cdecl, importc: "lv_fs_read".}
proc lvfswrite*(filep: ptr lvfsfilet; buf: pointer; btw: uint32; bw: ptr uint32): lvfsrest {.
    cdecl, importc: "lv_fs_write".}
proc lvfsseek*(filep: ptr lvfsfilet; pos: uint32; whence: lvfswhencet): lvfsrest {.
    cdecl, importc: "lv_fs_seek".}
proc lvfstell*(filep: ptr lvfsfilet; pos: ptr uint32): lvfsrest {.cdecl,
    importc: "lv_fs_tell".}
proc lvfsdiropen*(rddirp: ptr lvfsdirt; path: cstring): lvfsrest {.cdecl,
    importc: "lv_fs_dir_open".}
proc lvfsdirread*(rddirp: ptr lvfsdirt; fn: cstring; fnlen: uint32): lvfsrest {.
    cdecl, importc: "lv_fs_dir_read".}
proc lvfsdirclose*(rddirp: ptr lvfsdirt): lvfsrest {.cdecl,
    importc: "lv_fs_dir_close".}
proc lvfsgetletters*(buf: cstring): cstring {.cdecl,
    importc: "lv_fs_get_letters".}
proc lvfsgetext*(fn: cstring): cstring {.cdecl, importc: "lv_fs_get_ext".}
proc lvfsup*(path: cstring): cstring {.cdecl, importc: "lv_fs_up".}
proc lvfsgetlast*(path: cstring): cstring {.cdecl, importc: "lv_fs_get_last".}
proc internallvimagedecoderinit*(imagecachesize: uint32;
                                 imageheadercount: uint32): void {.cdecl,
    importc: "_lv_image_decoder_init".}
proc internallvimagedecoderdeinit*(): void {.cdecl,
    importc: "_lv_image_decoder_deinit".}
proc lvimagedecodergetinfo*(src: pointer; header: ptr lvimageheadert): lvresultt {.
    cdecl, importc: "lv_image_decoder_get_info".}
proc lvimagedecoderopen*(dsc: ptr lvimagedecoderdsct; src: pointer;
                         args: ptr lvimagedecoderargst): lvresultt {.cdecl,
    importc: "lv_image_decoder_open".}
proc lvimagedecodergetarea*(dsc: ptr lvimagedecoderdsct; fullarea: ptr lvareat;
                            decodedarea: ptr lvareat): lvresultt {.cdecl,
    importc: "lv_image_decoder_get_area".}
proc lvimagedecoderclose*(dsc: ptr lvimagedecoderdsct): void {.cdecl,
    importc: "lv_image_decoder_close".}
proc lvimagedecodercreate*(): ptr lvimagedecodert {.cdecl,
    importc: "lv_image_decoder_create".}
proc lvimagedecoderdelete*(decoder: ptr lvimagedecodert): void {.cdecl,
    importc: "lv_image_decoder_delete".}
proc lvimagedecodergetnext*(decoder: ptr lvimagedecodert): ptr lvimagedecodert {.
    cdecl, importc: "lv_image_decoder_get_next".}
proc lvimagedecodersetinfocb*(decoder: ptr lvimagedecodert;
                              infocb: lvimagedecoderinfoft): void {.cdecl,
    importc: "lv_image_decoder_set_info_cb".}
proc lvimagedecodersetopencb*(decoder: ptr lvimagedecodert;
                              opencb: lvimagedecoderopenft): void {.cdecl,
    importc: "lv_image_decoder_set_open_cb".}
proc lvimagedecodersetgetareacb*(decoder: ptr lvimagedecodert;
                                 readlinecb: lvimagedecodergetareacbt): void {.
    cdecl, importc: "lv_image_decoder_set_get_area_cb".}
proc lvimagedecodersetclosecb*(decoder: ptr lvimagedecodert;
                               closecb: lvimagedecodercloseft): void {.cdecl,
    importc: "lv_image_decoder_set_close_cb".}
proc lvimagedecoderaddtocache*(decoder: ptr lvimagedecodert;
                               searchkey: ptr lvimagecachedatat;
                               decoded: ptr lvdrawbuft; userdata: pointer): ptr lvcacheentryt {.
    cdecl, importc: "lv_image_decoder_add_to_cache".}
proc lvimagedecoderpostprocess*(dsc: ptr lvimagedecoderdsct;
                                decoded: ptr lvdrawbuft): ptr lvdrawbuft {.
    cdecl, importc: "lv_image_decoder_post_process".}
proc lvdrawinit*(): void {.cdecl, importc: "lv_draw_init".}
proc lvdrawdeinit*(): void {.cdecl, importc: "lv_draw_deinit".}
proc lvdrawcreateunit*(size: csize_t): pointer {.cdecl,
    importc: "lv_draw_create_unit".}
proc lvdrawaddtask*(layer: ptr lvlayert; coords: ptr lvareat): ptr lvdrawtaskt {.
    cdecl, importc: "lv_draw_add_task".}
proc lvdrawfinalizetaskcreation*(layer: ptr lvlayert; t: ptr lvdrawtaskt): void {.
    cdecl, importc: "lv_draw_finalize_task_creation".}
proc lvdrawdispatch*(): void {.cdecl, importc: "lv_draw_dispatch".}
proc lvdrawdispatchlayer*(disp: ptr lvdisplayt; layer: ptr lvlayert): bool {.
    cdecl, importc: "lv_draw_dispatch_layer".}
proc lvdrawdispatchwaitforrequest*(): void {.cdecl,
    importc: "lv_draw_dispatch_wait_for_request".}
proc lvdrawdispatchrequest*(): void {.cdecl, importc: "lv_draw_dispatch_request".}
proc lvdrawgetnextavailabletask*(layer: ptr lvlayert; tprev: ptr lvdrawtaskt;
                                 drawunitid: uint8): ptr lvdrawtaskt {.cdecl,
    importc: "lv_draw_get_next_available_task".}
proc lvdrawgetdependentcount*(tcheck: ptr lvdrawtaskt): uint32 {.cdecl,
    importc: "lv_draw_get_dependent_count".}
proc lvdrawlayercreate*(parentlayer: ptr lvlayert; colorformat: lvcolorformatt;
                        area: ptr lvareat): ptr lvlayert {.cdecl,
    importc: "lv_draw_layer_create".}
proc lvdrawlayerallocbuf*(layer: ptr lvlayert): pointer {.cdecl,
    importc: "lv_draw_layer_alloc_buf".}
proc lvdrawlayergotoxy*(layer: ptr lvlayert; x: int32; y: int32): pointer {.
    cdecl, importc: "lv_draw_layer_go_to_xy".}
proc lvgradientcolorcalculate*(dsc: ptr lvgraddsct; range: int32; frac: int32;
                               colorout: ptr lvgradcolort; opaout: ptr lvopat): void {.
    cdecl, importc: "lv_gradient_color_calculate".}
proc lvgradientget*(gradient: ptr lvgraddsct; w: int32; h: int32): ptr lvgradt {.
    cdecl, importc: "lv_gradient_get".}
proc lvgradientcleanup*(grad: ptr lvgradt): void {.cdecl,
    importc: "lv_gradient_cleanup".}
proc lvgradientinitstops*(grad: ptr lvgraddsct;
                          colors: ptr UncheckedArray[lvcolort];
                          opa: ptr UncheckedArray[lvopat];
                          fracs: ptr UncheckedArray[uint8]; numstops: cint): void {.
    cdecl, importc: "lv_gradient_init_stops".}
proc lvdrawrectdscinit*(dsc: ptr lvdrawrectdsct): void {.cdecl,
    importc: "lv_draw_rect_dsc_init".}
proc lvdrawfilldscinit*(dsc: ptr lvdrawfilldsct): void {.cdecl,
    importc: "lv_draw_fill_dsc_init".}
proc lvdrawtaskgetfilldsc*(task: ptr lvdrawtaskt): ptr lvdrawfilldsct {.cdecl,
    importc: "lv_draw_task_get_fill_dsc".}
proc lvdrawborderdscinit*(dsc: ptr lvdrawborderdsct): void {.cdecl,
    importc: "lv_draw_border_dsc_init".}
proc lvdrawtaskgetborderdsc*(task: ptr lvdrawtaskt): ptr lvdrawborderdsct {.
    cdecl, importc: "lv_draw_task_get_border_dsc".}
proc lvdrawboxshadowdscinit*(dsc: ptr lvdrawboxshadowdsct): void {.cdecl,
    importc: "lv_draw_box_shadow_dsc_init".}
proc lvdrawtaskgetboxshadowdsc*(task: ptr lvdrawtaskt): ptr lvdrawboxshadowdsct {.
    cdecl, importc: "lv_draw_task_get_box_shadow_dsc".}
proc lvdrawrect*(layer: ptr lvlayert; dsc: ptr lvdrawrectdsct;
                 coords: ptr lvareat): void {.cdecl, importc: "lv_draw_rect".}
proc lvdrawlabeldscinit*(dsc: ptr lvdrawlabeldsct): void {.cdecl,
    importc: "lv_draw_label_dsc_init".}
proc lvdrawtaskgetlabeldsc*(task: ptr lvdrawtaskt): ptr lvdrawlabeldsct {.cdecl,
    importc: "lv_draw_task_get_label_dsc".}
proc lvdrawglyphdscinit*(dsc: ptr lvdrawglyphdsct): void {.cdecl,
    importc: "lv_draw_glyph_dsc_init".}
proc lvdrawlabel*(layer: ptr lvlayert; dsc: ptr lvdrawlabeldsct;
                  coords: ptr lvareat): void {.cdecl, importc: "lv_draw_label".}
proc lvdrawcharacter*(layer: ptr lvlayert; dsc: ptr lvdrawlabeldsct;
                      point: ptr lvpointt; unicodeletter: uint32): void {.cdecl,
    importc: "lv_draw_character".}
proc lvdrawlabeliteratecharacters*(drawunit: ptr lvdrawunitt;
                                   dsc: ptr lvdrawlabeldsct;
                                   coords: ptr lvareat; cb: lvdrawglyphcbt): void {.
    cdecl, importc: "lv_draw_label_iterate_characters".}
proc lvdrawimagedscinit*(dsc: ptr lvdrawimagedsct): void {.cdecl,
    importc: "lv_draw_image_dsc_init".}
proc lvdrawtaskgetimagedsc*(task: ptr lvdrawtaskt): ptr lvdrawimagedsct {.cdecl,
    importc: "lv_draw_task_get_image_dsc".}
proc lvdrawimage*(layer: ptr lvlayert; dsc: ptr lvdrawimagedsct;
                  coords: ptr lvareat): void {.cdecl, importc: "lv_draw_image".}
proc lvdrawlayer*(layer: ptr lvlayert; dsc: ptr lvdrawimagedsct;
                  coords: ptr lvareat): void {.cdecl, importc: "lv_draw_layer".}
proc lvimagesrcgettype*(src: pointer): lvimagesrct {.cdecl,
    importc: "lv_image_src_get_type".}
proc internallvdrawimagenormalhelper*(drawunit: ptr lvdrawunitt;
                                      drawdsc: ptr lvdrawimagedsct;
                                      coords: ptr lvareat;
                                      drawcorecb: lvdrawimagecorecb): void {.
    cdecl, importc: "_lv_draw_image_normal_helper".}
proc internallvdrawimagetiledhelper*(drawunit: ptr lvdrawunitt;
                                     drawdsc: ptr lvdrawimagedsct;
                                     coords: ptr lvareat;
                                     drawcorecb: lvdrawimagecorecb): void {.
    cdecl, importc: "_lv_draw_image_tiled_helper".}
proc internallvimagebufgettransformedarea*(res: ptr lvareat; w: int32; h: int32;
    angle: int32; scalex: uint16; scaley: uint16; pivot: ptr lvpointt): void {.
    cdecl, importc: "_lv_image_buf_get_transformed_area".}
proc lvdrawarcdscinit*(dsc: ptr lvdrawarcdsct): void {.cdecl,
    importc: "lv_draw_arc_dsc_init".}
proc lvdrawtaskgetarcdsc*(task: ptr lvdrawtaskt): ptr lvdrawarcdsct {.cdecl,
    importc: "lv_draw_task_get_arc_dsc".}
proc lvdrawarc*(layer: ptr lvlayert; dsc: ptr lvdrawarcdsct): void {.cdecl,
    importc: "lv_draw_arc".}
proc lvdrawarcgetarea*(x: int32; y: int32; radius: uint16;
                       startangle: lvvaluepreciset; endangle: lvvaluepreciset;
                       w: int32; rounded: bool; area: ptr lvareat): void {.
    cdecl, importc: "lv_draw_arc_get_area".}
proc lvdrawlinedscinit*(dsc: ptr lvdrawlinedsct): void {.cdecl,
    importc: "lv_draw_line_dsc_init".}
proc lvdrawtaskgetlinedsc*(task: ptr lvdrawtaskt): ptr lvdrawlinedsct {.cdecl,
    importc: "lv_draw_task_get_line_dsc".}
proc lvdrawline*(layer: ptr lvlayert; dsc: ptr lvdrawlinedsct): void {.cdecl,
    importc: "lv_draw_line".}
proc lvdrawtriangledscinit*(drawdsc: ptr lvdrawtriangledsct): void {.cdecl,
    importc: "lv_draw_triangle_dsc_init".}
proc lvdrawtaskgettriangledsc*(task: ptr lvdrawtaskt): ptr lvdrawtriangledsct {.
    cdecl, importc: "lv_draw_task_get_triangle_dsc".}
proc lvdrawtriangle*(layer: ptr lvlayert; drawdsc: ptr lvdrawtriangledsct): void {.
    cdecl, importc: "lv_draw_triangle".}
proc lvdrawmaskrectdscinit*(dsc: ptr lvdrawmaskrectdsct): void {.cdecl,
    importc: "lv_draw_mask_rect_dsc_init".}
proc lvdrawtaskgetmaskrectdsc*(task: ptr lvdrawtaskt): ptr lvdrawmaskrectdsct {.
    cdecl, importc: "lv_draw_task_get_mask_rect_dsc".}
proc lvdrawmaskrect*(layer: ptr lvlayert; dsc: ptr lvdrawmaskrectdsct): void {.
    cdecl, importc: "lv_draw_mask_rect".}
proc lvdisplaycreate*(horres: int32; verres: int32): ptr lvdisplayt {.cdecl,
    importc: "lv_display_create".}
proc lvdisplaysetresolution*(disp: ptr lvdisplayt; horres: int32; verres: int32): void {.
    cdecl, importc: "lv_display_set_resolution".}
proc lvdisplaysetphysicalresolution*(disp: ptr lvdisplayt; horres: int32;
                                     verres: int32): void {.cdecl,
    importc: "lv_display_set_physical_resolution".}
proc lvdisplaysetoffset*(disp: ptr lvdisplayt; x: int32; y: int32): void {.
    cdecl, importc: "lv_display_set_offset".}
proc lvdisplaysetdpi*(disp: ptr lvdisplayt; dpi: int32): void {.cdecl,
    importc: "lv_display_set_dpi".}
proc lvdisplaysetbuffers*(disp: ptr lvdisplayt; buf1: pointer; buf2: pointer;
                          bufsize: uint32; rendermode: lvdisplayrendermodet): void {.
    cdecl, importc: "lv_display_set_buffers".}
proc lvdisplaysetdrawbuffers*(disp: ptr lvdisplayt; buf1: ptr lvdrawbuft;
                              buf2: ptr lvdrawbuft): void {.cdecl,
    importc: "lv_display_set_draw_buffers".}
proc lvdisplaysetrendermode*(disp: ptr lvdisplayt;
                             rendermode: lvdisplayrendermodet): void {.cdecl,
    importc: "lv_display_set_render_mode".}
proc lvdisplaysetflushcb*(disp: ptr lvdisplayt; flushcb: lvdisplayflushcbt): void {.
    cdecl, importc: "lv_display_set_flush_cb".}
proc lvdisplaysetflushwaitcb*(disp: ptr lvdisplayt;
                              waitcb: lvdisplayflushwaitcbt): void {.cdecl,
    importc: "lv_display_set_flush_wait_cb".}
proc lvdisplaysetcolorformat*(disp: ptr lvdisplayt; colorformat: lvcolorformatt): void {.
    cdecl, importc: "lv_display_set_color_format".}
proc lvdisplaygetcolorformat*(disp: ptr lvdisplayt): lvcolorformatt {.cdecl,
    importc: "lv_display_get_color_format".}
proc lvdisplaysetantialiasing*(disp: ptr lvdisplayt; en: bool): void {.cdecl,
    importc: "lv_display_set_antialiasing".}
proc lvdisplayisdoublebuffered*(disp: ptr lvdisplayt): bool {.cdecl,
    importc: "lv_display_is_double_buffered".}
proc lvdisplaygetlayerbottom*(disp: ptr lvdisplayt): ptr lvobjt {.cdecl,
    importc: "lv_display_get_layer_bottom".}
proc lvlayertop*(): ptr lvobjt {.cdecl, importc: "lv_layer_top".}
proc lvlayersys*(): ptr lvobjt {.cdecl, importc: "lv_layer_sys".}
proc lvlayerbottom*(): ptr lvobjt {.cdecl, importc: "lv_layer_bottom".}
proc lvdisplayaddeventcb*(disp: ptr lvdisplayt; eventcb: lveventcbt;
                          filter: lveventcodet; userdata: pointer): void {.
    cdecl, importc: "lv_display_add_event_cb".}
proc lvdisplaygeteventcount*(disp: ptr lvdisplayt): uint32 {.cdecl,
    importc: "lv_display_get_event_count".}
proc lvdisplaygeteventdsc*(disp: ptr lvdisplayt; index: uint32): ptr lveventdsct {.
    cdecl, importc: "lv_display_get_event_dsc".}
proc lvdisplaydeleteevent*(disp: ptr lvdisplayt; index: uint32): bool {.cdecl,
    importc: "lv_display_delete_event".}
proc lvdisplayremoveeventcbwithuserdata*(disp: ptr lvdisplayt;
    eventcb: lveventcbt; userdata: pointer): uint32 {.cdecl,
    importc: "lv_display_remove_event_cb_with_user_data".}
proc lvdisplaydeleterefrtimer*(disp: ptr lvdisplayt): void {.cdecl,
    importc: "lv_display_delete_refr_timer".}
proc lvdisplaysetuserdata*(disp: ptr lvdisplayt; userdata: pointer): void {.
    cdecl, importc: "lv_display_set_user_data".}
proc lvdisplaysetdriverdata*(disp: ptr lvdisplayt; driverdata: pointer): void {.
    cdecl, importc: "lv_display_set_driver_data".}
proc lvdisplaygetuserdata*(disp: ptr lvdisplayt): pointer {.cdecl,
    importc: "lv_display_get_user_data".}
proc lvdisplaygetdriverdata*(disp: ptr lvdisplayt): pointer {.cdecl,
    importc: "lv_display_get_driver_data".}
proc lvdisplaygetbufactive*(disp: ptr lvdisplayt): ptr lvdrawbuft {.cdecl,
    importc: "lv_display_get_buf_active".}
proc lvdisplayrotatearea*(disp: ptr lvdisplayt; area: ptr lvareat): void {.
    cdecl, importc: "lv_display_rotate_area".}
proc lvdpx*(n: int32): int32 {.cdecl, importc: "lv_dpx".}
proc lvdisplaydpx*(disp: ptr lvdisplayt; n: int32): int32 {.cdecl,
    importc: "lv_display_dpx".}
proc lvobjclean*(obj: ptr lvobjt): void {.cdecl, importc: "lv_obj_clean".}
proc lvobjdeletedelayed*(obj: ptr lvobjt; delayms: uint32): void {.cdecl,
    importc: "lv_obj_delete_delayed".}
proc lvobjsetparent*(obj: ptr lvobjt; parent: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_set_parent".}
proc lvobjswap*(obj1: ptr lvobjt; obj2: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_swap".}
proc lvobjmovetoindex*(obj: ptr lvobjt; index: int32): void {.cdecl,
    importc: "lv_obj_move_to_index".}
proc lvobjgetscreen*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_obj_get_screen".}
proc lvobjgetparent*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_obj_get_parent".}
proc lvobjgetchild*(obj: ptr lvobjt; idx: int32): ptr lvobjt {.cdecl,
    importc: "lv_obj_get_child".}
proc lvobjgetchildbytype*(obj: ptr lvobjt; idx: int32; classp: ptr lvobjclasst): ptr lvobjt {.
    cdecl, importc: "lv_obj_get_child_by_type".}
proc lvobjgetsibling*(obj: ptr lvobjt; idx: int32): ptr lvobjt {.cdecl,
    importc: "lv_obj_get_sibling".}
proc lvobjgetsiblingbytype*(obj: ptr lvobjt; idx: int32; classp: ptr lvobjclasst): ptr lvobjt {.
    cdecl, importc: "lv_obj_get_sibling_by_type".}
proc lvobjgetchildcountbytype*(obj: ptr lvobjt; classp: ptr lvobjclasst): uint32 {.
    cdecl, importc: "lv_obj_get_child_count_by_type".}
proc lvobjgetindex*(obj: ptr lvobjt): int32 {.cdecl, importc: "lv_obj_get_index".}
proc lvobjgetindexbytype*(obj: ptr lvobjt; classp: ptr lvobjclasst): int32 {.
    cdecl, importc: "lv_obj_get_index_by_type".}
proc lvobjtreewalk*(startobj: ptr lvobjt; cb: lvobjtreewalkcbt;
                    userdata: pointer): void {.cdecl,
    importc: "lv_obj_tree_walk".}
proc lvobjdumptree*(startob: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_dump_tree".}
proc lvobjsetpos*(obj: ptr lvobjt; x: int32; y: int32): void {.cdecl,
    importc: "lv_obj_set_pos".}
proc lvobjsetx*(obj: ptr lvobjt; x: int32): void {.cdecl,
    importc: "lv_obj_set_x".}
proc lvobjsety*(obj: ptr lvobjt; y: int32): void {.cdecl,
    importc: "lv_obj_set_y".}
proc lvobjsetsize*(obj: ptr lvobjt; w: int32; h: int32): void {.cdecl,
    importc: "lv_obj_set_size".}
proc lvobjrefrsize*(obj: ptr lvobjt): bool {.cdecl, importc: "lv_obj_refr_size".}
proc lvobjsetwidth*(obj: ptr lvobjt; w: int32): void {.cdecl,
    importc: "lv_obj_set_width".}
proc lvobjsetheight*(obj: ptr lvobjt; h: int32): void {.cdecl,
    importc: "lv_obj_set_height".}
proc lvobjsetcontentwidth*(obj: ptr lvobjt; w: int32): void {.cdecl,
    importc: "lv_obj_set_content_width".}
proc lvobjsetcontentheight*(obj: ptr lvobjt; h: int32): void {.cdecl,
    importc: "lv_obj_set_content_height".}
proc lvobjsetlayout*(obj: ptr lvobjt; layout: uint32): void {.cdecl,
    importc: "lv_obj_set_layout".}
proc lvobjislayoutpositioned*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_obj_is_layout_positioned".}
proc lvobjmarklayoutasdirty*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_mark_layout_as_dirty".}
proc lvobjupdatelayout*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_update_layout".}
proc lvobjsetalign*(obj: ptr lvobjt; align: lvalignt): void {.cdecl,
    importc: "lv_obj_set_align".}
proc lvobjalign*(obj: ptr lvobjt; align: lvalignt; xofs: int32; yofs: int32): void {.
    cdecl, importc: "lv_obj_align".}
proc lvobjalignto*(obj: ptr lvobjt; base: ptr lvobjt; align: lvalignt;
                   xofs: int32; yofs: int32): void {.cdecl,
    importc: "lv_obj_align_to".}
proc lvobjcenter*(obj: ptr lvobjt): void {.cdecl, importc: "lv_obj_center".}
proc lvobjgetcoords*(obj: ptr lvobjt; coords: ptr lvareat): void {.cdecl,
    importc: "lv_obj_get_coords".}
proc lvobjgetx*(obj: ptr lvobjt): int32 {.cdecl, importc: "lv_obj_get_x".}
proc lvobjgetx2*(obj: ptr lvobjt): int32 {.cdecl, importc: "lv_obj_get_x2".}
proc lvobjgety*(obj: ptr lvobjt): int32 {.cdecl, importc: "lv_obj_get_y".}
proc lvobjgety2*(obj: ptr lvobjt): int32 {.cdecl, importc: "lv_obj_get_y2".}
proc lvobjgetxaligned*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_x_aligned".}
proc lvobjgetyaligned*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_y_aligned".}
proc lvobjgetwidth*(obj: ptr lvobjt): int32 {.cdecl, importc: "lv_obj_get_width".}
proc lvobjgetheight*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_height".}
proc lvobjgetcontentwidth*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_content_width".}
proc lvobjgetcontentheight*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_content_height".}
proc lvobjgetcontentcoords*(obj: ptr lvobjt; area: ptr lvareat): void {.cdecl,
    importc: "lv_obj_get_content_coords".}
proc lvobjgetselfwidth*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_self_width".}
proc lvobjgetselfheight*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_self_height".}
proc lvobjrefreshselfsize*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_obj_refresh_self_size".}
proc lvobjrefrpos*(obj: ptr lvobjt): void {.cdecl, importc: "lv_obj_refr_pos".}
proc lvobjmoveto*(obj: ptr lvobjt; x: int32; y: int32): void {.cdecl,
    importc: "lv_obj_move_to".}
proc lvobjmovechildrenby*(obj: ptr lvobjt; xdiff: int32; ydiff: int32;
                          ignorefloating: bool): void {.cdecl,
    importc: "lv_obj_move_children_by".}
proc lvobjtransformpoint*(obj: ptr lvobjt; p: ptr lvpointt;
                          flags: lvobjpointtransformflagt): void {.cdecl,
    importc: "lv_obj_transform_point".}
proc lvobjtransformpointarray*(obj: ptr lvobjt;
                               points: ptr UncheckedArray[lvpointt];
                               count: csize_t; flags: lvobjpointtransformflagt): void {.
    cdecl, importc: "lv_obj_transform_point_array".}
proc lvobjgettransformedarea*(obj: ptr lvobjt; area: ptr lvareat;
                              flags: lvobjpointtransformflagt): void {.cdecl,
    importc: "lv_obj_get_transformed_area".}
proc lvobjinvalidatearea*(obj: ptr lvobjt; area: ptr lvareat): void {.cdecl,
    importc: "lv_obj_invalidate_area".}
proc lvobjinvalidate*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_invalidate".}
proc lvobjareaisvisible*(obj: ptr lvobjt; area: ptr lvareat): bool {.cdecl,
    importc: "lv_obj_area_is_visible".}
proc lvobjisvisible*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_obj_is_visible".}
proc lvobjsetextclickarea*(obj: ptr lvobjt; size: int32): void {.cdecl,
    importc: "lv_obj_set_ext_click_area".}
proc lvobjgetclickarea*(obj: ptr lvobjt; area: ptr lvareat): void {.cdecl,
    importc: "lv_obj_get_click_area".}
proc lvobjhittest*(obj: ptr lvobjt; point: ptr lvpointt): bool {.cdecl,
    importc: "lv_obj_hit_test".}
proc lvclampwidth*(width: int32; minwidth: int32; maxwidth: int32;
                   refwidth: int32): int32 {.cdecl, importc: "lv_clamp_width".}
proc lvclampheight*(height: int32; minheight: int32; maxheight: int32;
                    refheight: int32): int32 {.cdecl, importc: "lv_clamp_height".}
proc lvobjsetscrollbarmode*(obj: ptr lvobjt; mode: lvscrollbarmodet): void {.
    cdecl, importc: "lv_obj_set_scrollbar_mode".}
proc lvobjsetscrolldir*(obj: ptr lvobjt; dir: lvdirt): void {.cdecl,
    importc: "lv_obj_set_scroll_dir".}
proc lvobjsetscrollsnapx*(obj: ptr lvobjt; align: lvscrollsnapt): void {.cdecl,
    importc: "lv_obj_set_scroll_snap_x".}
proc lvobjsetscrollsnapy*(obj: ptr lvobjt; align: lvscrollsnapt): void {.cdecl,
    importc: "lv_obj_set_scroll_snap_y".}
proc lvobjgetscrollbarmode*(obj: ptr lvobjt): lvscrollbarmodet {.cdecl,
    importc: "lv_obj_get_scrollbar_mode".}
proc lvobjgetscrolldir*(obj: ptr lvobjt): lvdirt {.cdecl,
    importc: "lv_obj_get_scroll_dir".}
proc lvobjgetscrollsnapx*(obj: ptr lvobjt): lvscrollsnapt {.cdecl,
    importc: "lv_obj_get_scroll_snap_x".}
proc lvobjgetscrollsnapy*(obj: ptr lvobjt): lvscrollsnapt {.cdecl,
    importc: "lv_obj_get_scroll_snap_y".}
proc lvobjgetscrollx*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_scroll_x".}
proc lvobjgetscrolly*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_scroll_y".}
proc lvobjgetscrolltop*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_scroll_top".}
proc lvobjgetscrollbottom*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_scroll_bottom".}
proc lvobjgetscrollleft*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_scroll_left".}
proc lvobjgetscrollright*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_obj_get_scroll_right".}
proc lvobjgetscrollend*(obj: ptr lvobjt; endarg: ptr lvpointt): void {.cdecl,
    importc: "lv_obj_get_scroll_end".}
proc lvobjscrollby*(obj: ptr lvobjt; x: int32; y: int32; animen: lvanimenablet): void {.
    cdecl, importc: "lv_obj_scroll_by".}
proc lvobjscrollbybounded*(obj: ptr lvobjt; dx: int32; dy: int32;
                           animen: lvanimenablet): void {.cdecl,
    importc: "lv_obj_scroll_by_bounded".}
proc lvobjscrollto*(obj: ptr lvobjt; x: int32; y: int32; animen: lvanimenablet): void {.
    cdecl, importc: "lv_obj_scroll_to".}
proc lvobjscrolltox*(obj: ptr lvobjt; x: int32; animen: lvanimenablet): void {.
    cdecl, importc: "lv_obj_scroll_to_x".}
proc lvobjscrolltoy*(obj: ptr lvobjt; y: int32; animen: lvanimenablet): void {.
    cdecl, importc: "lv_obj_scroll_to_y".}
proc lvobjscrolltoview*(obj: ptr lvobjt; animen: lvanimenablet): void {.cdecl,
    importc: "lv_obj_scroll_to_view".}
proc lvobjscrolltoviewrecursive*(obj: ptr lvobjt; animen: lvanimenablet): void {.
    cdecl, importc: "lv_obj_scroll_to_view_recursive".}
proc internallvobjscrollbyraw*(obj: ptr lvobjt; x: int32; y: int32): lvresultt {.
    cdecl, importc: "_lv_obj_scroll_by_raw".}
proc lvobjisscrolling*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_obj_is_scrolling".}
proc lvobjupdatesnap*(obj: ptr lvobjt; animen: lvanimenablet): void {.cdecl,
    importc: "lv_obj_update_snap".}
proc lvobjgetscrollbararea*(obj: ptr lvobjt; hor: ptr lvareat; ver: ptr lvareat): void {.
    cdecl, importc: "lv_obj_get_scrollbar_area".}
proc lvobjscrollbarinvalidate*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_scrollbar_invalidate".}
proc lvobjreadjustscroll*(obj: ptr lvobjt; animen: lvanimenablet): void {.cdecl,
    importc: "lv_obj_readjust_scroll".}
proc internallvobjstyleinit*(): void {.cdecl, importc: "_lv_obj_style_init".}
proc internallvobjstyledeinit*(): void {.cdecl, importc: "_lv_obj_style_deinit".}
proc lvobjaddstyle*(obj: ptr lvobjt; style: ptr lvstylet;
                    selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_add_style".}
proc lvobjreplacestyle*(obj: ptr lvobjt; oldstyle: ptr lvstylet;
                        newstyle: ptr lvstylet; selector: lvstyleselectort): bool {.
    cdecl, importc: "lv_obj_replace_style".}
proc lvobjremovestyle*(obj: ptr lvobjt; style: ptr lvstylet;
                       selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_remove_style".}
proc lvobjremovestyleall*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_remove_style_all".}
proc lvobjreportstylechange*(style: ptr lvstylet): void {.cdecl,
    importc: "lv_obj_report_style_change".}
proc lvobjrefreshstyle*(obj: ptr lvobjt; part: lvpartt; prop: lvstylepropt): void {.
    cdecl, importc: "lv_obj_refresh_style".}
proc lvobjenablestylerefresh*(en: bool): void {.cdecl,
    importc: "lv_obj_enable_style_refresh".}
proc lvobjgetstyleprop*(obj: ptr lvobjt; part: lvpartt; prop: lvstylepropt): lvstylevaluet {.
    cdecl, importc: "lv_obj_get_style_prop".}
proc lvobjhasstyleprop*(obj: ptr lvobjt; selector: lvstyleselectort;
                        prop: lvstylepropt): bool {.cdecl,
    importc: "lv_obj_has_style_prop".}
proc lvobjsetlocalstyleprop*(obj: ptr lvobjt; prop: lvstylepropt;
                             value: lvstylevaluet; selector: lvstyleselectort): void {.
    cdecl, importc: "lv_obj_set_local_style_prop".}
proc lvobjgetlocalstyleprop*(obj: ptr lvobjt; prop: lvstylepropt;
                             value: ptr lvstylevaluet;
                             selector: lvstyleselectort): lvstylerest {.cdecl,
    importc: "lv_obj_get_local_style_prop".}
proc lvobjremovelocalstyleprop*(obj: ptr lvobjt; prop: lvstylepropt;
                                selector: lvstyleselectort): bool {.cdecl,
    importc: "lv_obj_remove_local_style_prop".}
proc internallvobjstyleapplycolorfilter*(obj: ptr lvobjt; part: lvpartt;
    v: lvstylevaluet): lvstylevaluet {.cdecl, importc: "_lv_obj_style_apply_color_filter".}
proc internallvobjstylecreatetransition*(obj: ptr lvobjt; part: lvpartt;
    prevstate: lvstatet; newstate: lvstatet;
    tr: ptr internallvobjstyletransitiondsct): void {.cdecl,
    importc: "_lv_obj_style_create_transition".}
proc internallvobjstylestatecompare*(obj: ptr lvobjt; state1: lvstatet;
                                     state2: lvstatet): internallvstylestatecmpt {.
    cdecl, importc: "_lv_obj_style_state_compare".}
proc lvobjfadein*(obj: ptr lvobjt; time: uint32; delay: uint32): void {.cdecl,
    importc: "lv_obj_fade_in".}
proc lvobjfadeout*(obj: ptr lvobjt; time: uint32; delay: uint32): void {.cdecl,
    importc: "lv_obj_fade_out".}
proc lvobjstylegetselectorstate*(selector: lvstyleselectort): lvstatet {.cdecl,
    importc: "lv_obj_style_get_selector_state".}
proc lvobjstylegetselectorpart*(selector: lvstyleselectort): lvpartt {.cdecl,
    importc: "lv_obj_style_get_selector_part".}
proc lvobjgetstylewidth*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_width".}
proc lvobjgetstyleminwidth*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_min_width".}
proc lvobjgetstylemaxwidth*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_max_width".}
proc lvobjgetstyleheight*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_height".}
proc lvobjgetstyleminheight*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_min_height".}
proc lvobjgetstylemaxheight*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_max_height".}
proc lvobjgetstylelength*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_length".}
proc lvobjgetstylex*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_x".}
proc lvobjgetstyley*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_y".}
proc lvobjgetstylealign*(obj: ptr lvobjt; part: lvpartt): lvalignt {.cdecl,
    importc: "lv_obj_get_style_align".}
proc lvobjgetstyletransformwidth*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_width".}
proc lvobjgetstyletransformheight*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_height".}
proc lvobjgetstyletranslatex*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_translate_x".}
proc lvobjgetstyletranslatey*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_translate_y".}
proc lvobjgetstyletransformscalex*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_scale_x".}
proc lvobjgetstyletransformscaley*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_scale_y".}
proc lvobjgetstyletransformpivotx*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_pivot_x".}
proc lvobjgetstyletransformpivoty*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_pivot_y".}
proc lvobjgetstyletransformskewx*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_skew_x".}
proc lvobjgetstyletransformskewy*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_skew_y".}
proc lvobjgetstylepadtop*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_pad_top".}
proc lvobjgetstylepadbottom*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_pad_bottom".}
proc lvobjgetstylepadleft*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_pad_left".}
proc lvobjgetstylepadright*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_pad_right".}
proc lvobjgetstylepadrow*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_pad_row".}
proc lvobjgetstylepadcolumn*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_pad_column".}
proc lvobjgetstylemargintop*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_margin_top".}
proc lvobjgetstylemarginbottom*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_margin_bottom".}
proc lvobjgetstylemarginleft*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_margin_left".}
proc lvobjgetstylemarginright*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_margin_right".}
proc lvobjgetstylebgcolor*(obj: ptr lvobjt; part: lvpartt): lvcolort {.cdecl,
    importc: "lv_obj_get_style_bg_color".}
proc lvobjgetstylebgcolorfiltered*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_bg_color_filtered".}
proc lvobjgetstylebgopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_bg_opa".}
proc lvobjgetstylebggradcolor*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_bg_grad_color".}
proc lvobjgetstylebggradcolorfiltered*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_bg_grad_color_filtered".}
proc lvobjgetstylebggraddir*(obj: ptr lvobjt; part: lvpartt): lvgraddirt {.
    cdecl, importc: "lv_obj_get_style_bg_grad_dir".}
proc lvobjgetstylebgmainstop*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_bg_main_stop".}
proc lvobjgetstylebggradstop*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_bg_grad_stop".}
proc lvobjgetstylebgmainopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_bg_main_opa".}
proc lvobjgetstylebggradopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_bg_grad_opa".}
proc lvobjgetstylebggrad*(obj: ptr lvobjt; part: lvpartt): ptr lvgraddsct {.
    cdecl, importc: "lv_obj_get_style_bg_grad".}
proc lvobjgetstylebgimageopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_bg_image_opa".}
proc lvobjgetstylebgimagerecolorfiltered*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_bg_image_recolor_filtered".}
proc lvobjgetstylebgimagetiled*(obj: ptr lvobjt; part: lvpartt): bool {.cdecl,
    importc: "lv_obj_get_style_bg_image_tiled".}
proc lvobjgetstylebordercolor*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_border_color".}
proc lvobjgetstylebordercolorfiltered*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_border_color_filtered".}
proc lvobjgetstyleborderopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_border_opa".}
proc lvobjgetstyleborderwidth*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_border_width".}
proc lvobjgetstyleborderside*(obj: ptr lvobjt; part: lvpartt): lvbordersidet {.
    cdecl, importc: "lv_obj_get_style_border_side".}
proc lvobjgetstyleborderpost*(obj: ptr lvobjt; part: lvpartt): bool {.cdecl,
    importc: "lv_obj_get_style_border_post".}
proc lvobjgetstyleoutlinewidth*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_outline_width".}
proc lvobjgetstyleoutlinecolor*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_outline_color".}
proc lvobjgetstyleoutlinecolorfiltered*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_outline_color_filtered".}
proc lvobjgetstyleoutlineopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_outline_opa".}
proc lvobjgetstyleoutlinepad*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_outline_pad".}
proc lvobjgetstyleshadowwidth*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_shadow_width".}
proc lvobjgetstyleshadowspread*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_shadow_spread".}
proc lvobjgetstyleshadowcolor*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_shadow_color".}
proc lvobjgetstyleshadowcolorfiltered*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_shadow_color_filtered".}
proc lvobjgetstyleshadowopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_shadow_opa".}
proc lvobjgetstylelinewidth*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_line_width".}
proc lvobjgetstylelinedashwidth*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_line_dash_width".}
proc lvobjgetstylelinedashgap*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_line_dash_gap".}
proc lvobjgetstylelinerounded*(obj: ptr lvobjt; part: lvpartt): bool {.cdecl,
    importc: "lv_obj_get_style_line_rounded".}
proc lvobjgetstylelinecolor*(obj: ptr lvobjt; part: lvpartt): lvcolort {.cdecl,
    importc: "lv_obj_get_style_line_color".}
proc lvobjgetstylelinecolorfiltered*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_line_color_filtered".}
proc lvobjgetstylelineopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_line_opa".}
proc lvobjgetstylearcwidth*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_arc_width".}
proc lvobjgetstylearcrounded*(obj: ptr lvobjt; part: lvpartt): bool {.cdecl,
    importc: "lv_obj_get_style_arc_rounded".}
proc lvobjgetstylearccolor*(obj: ptr lvobjt; part: lvpartt): lvcolort {.cdecl,
    importc: "lv_obj_get_style_arc_color".}
proc lvobjgetstylearccolorfiltered*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_arc_color_filtered".}
proc lvobjgetstylearcopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_arc_opa".}
proc lvobjgetstylearcimagesrc*(obj: ptr lvobjt; part: lvpartt): pointer {.cdecl,
    importc: "lv_obj_get_style_arc_image_src".}
proc lvobjgetstyletextcolor*(obj: ptr lvobjt; part: lvpartt): lvcolort {.cdecl,
    importc: "lv_obj_get_style_text_color".}
proc lvobjgetstyletextcolorfiltered*(obj: ptr lvobjt; part: lvpartt): lvcolort {.
    cdecl, importc: "lv_obj_get_style_text_color_filtered".}
proc lvobjgetstyletextopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_text_opa".}
proc lvobjgetstyletextfont*(obj: ptr lvobjt; part: lvpartt): ptr lvfontt {.
    cdecl, importc: "lv_obj_get_style_text_font".}
proc lvobjgetstyletextletterspace*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_text_letter_space".}
proc lvobjgetstyletextlinespace*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_text_line_space".}
proc lvobjgetstyletextdecor*(obj: ptr lvobjt; part: lvpartt): lvtextdecort {.
    cdecl, importc: "lv_obj_get_style_text_decor".}
proc lvobjgetstyletextalign*(obj: ptr lvobjt; part: lvpartt): lvtextalignt {.
    cdecl, importc: "lv_obj_get_style_text_align".}
proc lvobjgetstyleradius*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_radius".}
proc lvobjgetstyleclipcorner*(obj: ptr lvobjt; part: lvpartt): bool {.cdecl,
    importc: "lv_obj_get_style_clip_corner".}
proc lvobjgetstyleopa*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_opa".}
proc lvobjgetstyleopalayered*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_opa_layered".}
proc lvobjgetstylecolorfilterdsc*(obj: ptr lvobjt; part: lvpartt): ptr lvcolorfilterdsct {.
    cdecl, importc: "lv_obj_get_style_color_filter_dsc".}
proc lvobjgetstylecolorfilteropa*(obj: ptr lvobjt; part: lvpartt): lvopat {.
    cdecl, importc: "lv_obj_get_style_color_filter_opa".}
proc lvobjgetstyleanim*(obj: ptr lvobjt; part: lvpartt): ptr lvanimt {.cdecl,
    importc: "lv_obj_get_style_anim".}
proc lvobjgetstyletransition*(obj: ptr lvobjt; part: lvpartt): ptr lvstyletransitiondsct {.
    cdecl, importc: "lv_obj_get_style_transition".}
proc lvobjgetstyleblendmode*(obj: ptr lvobjt; part: lvpartt): lvblendmodet {.
    cdecl, importc: "lv_obj_get_style_blend_mode".}
proc lvobjgetstylelayout*(obj: ptr lvobjt; part: lvpartt): uint16 {.cdecl,
    importc: "lv_obj_get_style_layout".}
proc lvobjgetstylebasedir*(obj: ptr lvobjt; part: lvpartt): lvbasedirt {.cdecl,
    importc: "lv_obj_get_style_base_dir".}
proc lvobjgetstylebitmapmasksrc*(obj: ptr lvobjt; part: lvpartt): pointer {.
    cdecl, importc: "lv_obj_get_style_bitmap_mask_src".}
proc lvobjgetstylerotarysensitivity*(obj: ptr lvobjt; part: lvpartt): uint32 {.
    cdecl, importc: "lv_obj_get_style_rotary_sensitivity".}
proc lvobjgetstyleflexflow*(obj: ptr lvobjt; part: lvpartt): lvflexflowt {.
    cdecl, importc: "lv_obj_get_style_flex_flow".}
proc lvobjgetstyleflexmainplace*(obj: ptr lvobjt; part: lvpartt): lvflexalignt {.
    cdecl, importc: "lv_obj_get_style_flex_main_place".}
proc lvobjgetstyleflexcrossplace*(obj: ptr lvobjt; part: lvpartt): lvflexalignt {.
    cdecl, importc: "lv_obj_get_style_flex_cross_place".}
proc lvobjgetstyleflextrackplace*(obj: ptr lvobjt; part: lvpartt): lvflexalignt {.
    cdecl, importc: "lv_obj_get_style_flex_track_place".}
proc lvobjgetstyleflexgrow*(obj: ptr lvobjt; part: lvpartt): uint8 {.cdecl,
    importc: "lv_obj_get_style_flex_grow".}
proc lvobjgetstylegridcolumndscarray*(obj: ptr lvobjt; part: lvpartt): ptr int32 {.
    cdecl, importc: "lv_obj_get_style_grid_column_dsc_array".}
proc lvobjgetstylegridcolumnalign*(obj: ptr lvobjt; part: lvpartt): lvgridalignt {.
    cdecl, importc: "lv_obj_get_style_grid_column_align".}
proc lvobjgetstylegridrowdscarray*(obj: ptr lvobjt; part: lvpartt): ptr int32 {.
    cdecl, importc: "lv_obj_get_style_grid_row_dsc_array".}
proc lvobjgetstylegridrowalign*(obj: ptr lvobjt; part: lvpartt): lvgridalignt {.
    cdecl, importc: "lv_obj_get_style_grid_row_align".}
proc lvobjgetstylegridcellcolumnpos*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_grid_cell_column_pos".}
proc lvobjgetstylegridcellxalign*(obj: ptr lvobjt; part: lvpartt): lvgridalignt {.
    cdecl, importc: "lv_obj_get_style_grid_cell_x_align".}
proc lvobjgetstylegridcellcolumnspan*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_grid_cell_column_span".}
proc lvobjgetstylegridcellrowpos*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_grid_cell_row_pos".}
proc lvobjgetstylegridcellyalign*(obj: ptr lvobjt; part: lvpartt): lvgridalignt {.
    cdecl, importc: "lv_obj_get_style_grid_cell_y_align".}
proc lvobjgetstylegridcellrowspan*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_grid_cell_row_span".}
proc lvobjsetstylewidth*(obj: ptr lvobjt; value: int32;
                         selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_width".}
proc lvobjsetstyleminwidth*(obj: ptr lvobjt; value: int32;
                            selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_min_width".}
proc lvobjsetstylemaxwidth*(obj: ptr lvobjt; value: int32;
                            selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_max_width".}
proc lvobjsetstyleheight*(obj: ptr lvobjt; value: int32;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_height".}
proc lvobjsetstyleminheight*(obj: ptr lvobjt; value: int32;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_min_height".}
proc lvobjsetstylemaxheight*(obj: ptr lvobjt; value: int32;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_max_height".}
proc lvobjsetstylelength*(obj: ptr lvobjt; value: int32;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_length".}
proc lvobjsetstylex*(obj: ptr lvobjt; value: int32; selector: lvstyleselectort): void {.
    cdecl, importc: "lv_obj_set_style_x".}
proc lvobjsetstyley*(obj: ptr lvobjt; value: int32; selector: lvstyleselectort): void {.
    cdecl, importc: "lv_obj_set_style_y".}
proc lvobjsetstylealign*(obj: ptr lvobjt; value: lvalignt;
                         selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_align".}
proc lvobjsetstyletransformwidth*(obj: ptr lvobjt; value: int32;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_transform_width".}
proc lvobjsetstyletransformheight*(obj: ptr lvobjt; value: int32;
                                   selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_transform_height".}
proc lvobjsetstyletranslatex*(obj: ptr lvobjt; value: int32;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_translate_x".}
proc lvobjsetstyletranslatey*(obj: ptr lvobjt; value: int32;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_translate_y".}
proc lvobjsetstyletransformscalex*(obj: ptr lvobjt; value: int32;
                                   selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_transform_scale_x".}
proc lvobjsetstyletransformscaley*(obj: ptr lvobjt; value: int32;
                                   selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_transform_scale_y".}
proc lvobjsetstyletransformpivotx*(obj: ptr lvobjt; value: int32;
                                   selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_transform_pivot_x".}
proc lvobjsetstyletransformpivoty*(obj: ptr lvobjt; value: int32;
                                   selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_transform_pivot_y".}
proc lvobjsetstyletransformskewx*(obj: ptr lvobjt; value: int32;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_transform_skew_x".}
proc lvobjsetstyletransformskewy*(obj: ptr lvobjt; value: int32;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_transform_skew_y".}
proc lvobjsetstylepadtop*(obj: ptr lvobjt; value: int32;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_pad_top".}
proc lvobjsetstylepadbottom*(obj: ptr lvobjt; value: int32;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_pad_bottom".}
proc lvobjsetstylepadleft*(obj: ptr lvobjt; value: int32;
                           selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_pad_left".}
proc lvobjsetstylepadright*(obj: ptr lvobjt; value: int32;
                            selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_pad_right".}
proc lvobjsetstylepadrow*(obj: ptr lvobjt; value: int32;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_pad_row".}
proc lvobjsetstylepadcolumn*(obj: ptr lvobjt; value: int32;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_pad_column".}
proc lvobjsetstylemargintop*(obj: ptr lvobjt; value: int32;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_margin_top".}
proc lvobjsetstylemarginbottom*(obj: ptr lvobjt; value: int32;
                                selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_margin_bottom".}
proc lvobjsetstylemarginleft*(obj: ptr lvobjt; value: int32;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_margin_left".}
proc lvobjsetstylemarginright*(obj: ptr lvobjt; value: int32;
                               selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_margin_right".}
proc lvobjsetstylebgcolor*(obj: ptr lvobjt; value: lvcolort;
                           selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_color".}
proc lvobjsetstylebgopa*(obj: ptr lvobjt; value: lvopat;
                         selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_opa".}
proc lvobjsetstylebggradcolor*(obj: ptr lvobjt; value: lvcolort;
                               selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_grad_color".}
proc lvobjsetstylebggraddir*(obj: ptr lvobjt; value: lvgraddirt;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_grad_dir".}
proc lvobjsetstylebgmainstop*(obj: ptr lvobjt; value: int32;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_main_stop".}
proc lvobjsetstylebggradstop*(obj: ptr lvobjt; value: int32;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_grad_stop".}
proc lvobjsetstylebgmainopa*(obj: ptr lvobjt; value: lvopat;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_main_opa".}
proc lvobjsetstylebggradopa*(obj: ptr lvobjt; value: lvopat;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_grad_opa".}
proc lvobjsetstylebggrad*(obj: ptr lvobjt; value: ptr lvgraddsct;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_grad".}
proc lvobjsetstylebgimageopa*(obj: ptr lvobjt; value: lvopat;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_image_opa".}
proc lvobjsetstylebgimagetiled*(obj: ptr lvobjt; value: bool;
                                selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bg_image_tiled".}
proc lvobjsetstylebordercolor*(obj: ptr lvobjt; value: lvcolort;
                               selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_border_color".}
proc lvobjsetstyleborderopa*(obj: ptr lvobjt; value: lvopat;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_border_opa".}
proc lvobjsetstyleborderwidth*(obj: ptr lvobjt; value: int32;
                               selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_border_width".}
proc lvobjsetstyleborderside*(obj: ptr lvobjt; value: lvbordersidet;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_border_side".}
proc lvobjsetstyleborderpost*(obj: ptr lvobjt; value: bool;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_border_post".}
proc lvobjsetstyleoutlinewidth*(obj: ptr lvobjt; value: int32;
                                selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_outline_width".}
proc lvobjsetstyleoutlinecolor*(obj: ptr lvobjt; value: lvcolort;
                                selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_outline_color".}
proc lvobjsetstyleoutlineopa*(obj: ptr lvobjt; value: lvopat;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_outline_opa".}
proc lvobjsetstyleoutlinepad*(obj: ptr lvobjt; value: int32;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_outline_pad".}
proc lvobjsetstyleshadowwidth*(obj: ptr lvobjt; value: int32;
                               selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_shadow_width".}
proc lvobjsetstyleshadowspread*(obj: ptr lvobjt; value: int32;
                                selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_shadow_spread".}
proc lvobjsetstyleshadowcolor*(obj: ptr lvobjt; value: lvcolort;
                               selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_shadow_color".}
proc lvobjsetstyleshadowopa*(obj: ptr lvobjt; value: lvopat;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_shadow_opa".}
proc lvobjsetstylelinewidth*(obj: ptr lvobjt; value: int32;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_line_width".}
proc lvobjsetstylelinedashwidth*(obj: ptr lvobjt; value: int32;
                                 selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_line_dash_width".}
proc lvobjsetstylelinedashgap*(obj: ptr lvobjt; value: int32;
                               selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_line_dash_gap".}
proc lvobjsetstylelinerounded*(obj: ptr lvobjt; value: bool;
                               selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_line_rounded".}
proc lvobjsetstylelinecolor*(obj: ptr lvobjt; value: lvcolort;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_line_color".}
proc lvobjsetstylelineopa*(obj: ptr lvobjt; value: lvopat;
                           selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_line_opa".}
proc lvobjsetstylearcwidth*(obj: ptr lvobjt; value: int32;
                            selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_arc_width".}
proc lvobjsetstylearcrounded*(obj: ptr lvobjt; value: bool;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_arc_rounded".}
proc lvobjsetstylearccolor*(obj: ptr lvobjt; value: lvcolort;
                            selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_arc_color".}
proc lvobjsetstylearcopa*(obj: ptr lvobjt; value: lvopat;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_arc_opa".}
proc lvobjsetstylearcimagesrc*(obj: ptr lvobjt; value: pointer;
                               selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_arc_image_src".}
proc lvobjsetstyletextcolor*(obj: ptr lvobjt; value: lvcolort;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_text_color".}
proc lvobjsetstyletextopa*(obj: ptr lvobjt; value: lvopat;
                           selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_text_opa".}
proc lvobjsetstyletextfont*(obj: ptr lvobjt; value: ptr lvfontt;
                            selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_text_font".}
proc lvobjsetstyletextletterspace*(obj: ptr lvobjt; value: int32;
                                   selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_text_letter_space".}
proc lvobjsetstyletextlinespace*(obj: ptr lvobjt; value: int32;
                                 selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_text_line_space".}
proc lvobjsetstyletextdecor*(obj: ptr lvobjt; value: lvtextdecort;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_text_decor".}
proc lvobjsetstyletextalign*(obj: ptr lvobjt; value: lvtextalignt;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_text_align".}
proc lvobjsetstyleradius*(obj: ptr lvobjt; value: int32;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_radius".}
proc lvobjsetstyleclipcorner*(obj: ptr lvobjt; value: bool;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_clip_corner".}
proc lvobjsetstyleopa*(obj: ptr lvobjt; value: lvopat;
                       selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_opa".}
proc lvobjsetstyleopalayered*(obj: ptr lvobjt; value: lvopat;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_opa_layered".}
proc lvobjsetstylecolorfilterdsc*(obj: ptr lvobjt; value: ptr lvcolorfilterdsct;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_color_filter_dsc".}
proc lvobjsetstylecolorfilteropa*(obj: ptr lvobjt; value: lvopat;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_color_filter_opa".}
proc lvobjsetstyleanim*(obj: ptr lvobjt; value: ptr lvanimt;
                        selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_anim".}
proc lvobjsetstyletransition*(obj: ptr lvobjt; value: ptr lvstyletransitiondsct;
                              selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_transition".}
proc lvobjsetstyleblendmode*(obj: ptr lvobjt; value: lvblendmodet;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_blend_mode".}
proc lvobjsetstylelayout*(obj: ptr lvobjt; value: uint16;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_layout".}
proc lvobjsetstylebasedir*(obj: ptr lvobjt; value: lvbasedirt;
                           selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_base_dir".}
proc lvobjsetstylebitmapmasksrc*(obj: ptr lvobjt; value: pointer;
                                 selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_bitmap_mask_src".}
proc lvobjsetstylerotarysensitivity*(obj: ptr lvobjt; value: uint32;
                                     selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_rotary_sensitivity".}
proc lvobjsetstyleflexflow*(obj: ptr lvobjt; value: lvflexflowt;
                            selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_flex_flow".}
proc lvobjsetstyleflexmainplace*(obj: ptr lvobjt; value: lvflexalignt;
                                 selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_flex_main_place".}
proc lvobjsetstyleflexcrossplace*(obj: ptr lvobjt; value: lvflexalignt;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_flex_cross_place".}
proc lvobjsetstyleflextrackplace*(obj: ptr lvobjt; value: lvflexalignt;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_flex_track_place".}
proc lvobjsetstyleflexgrow*(obj: ptr lvobjt; value: uint8;
                            selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_flex_grow".}
proc lvobjsetstylegridcolumndscarray*(obj: ptr lvobjt; value: ptr int32;
                                      selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_grid_column_dsc_array".}
proc lvobjsetstylegridcolumnalign*(obj: ptr lvobjt; value: lvgridalignt;
                                   selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_grid_column_align".}
proc lvobjsetstylegridrowdscarray*(obj: ptr lvobjt; value: ptr int32;
                                   selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_grid_row_dsc_array".}
proc lvobjsetstylegridrowalign*(obj: ptr lvobjt; value: lvgridalignt;
                                selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_grid_row_align".}
proc lvobjsetstylegridcellcolumnpos*(obj: ptr lvobjt; value: int32;
                                     selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_column_pos".}
proc lvobjsetstylegridcellxalign*(obj: ptr lvobjt; value: lvgridalignt;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_x_align".}
proc lvobjsetstylegridcellcolumnspan*(obj: ptr lvobjt; value: int32;
                                      selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_column_span".}
proc lvobjsetstylegridcellrowpos*(obj: ptr lvobjt; value: int32;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_row_pos".}
proc lvobjsetstylegridcellyalign*(obj: ptr lvobjt; value: lvgridalignt;
                                  selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_y_align".}
proc lvobjsetstylegridcellrowspan*(obj: ptr lvobjt; value: int32;
                                   selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_grid_cell_row_span".}
proc lvobjsetstylepadall*(obj: ptr lvobjt; value: int32;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_pad_all".}
proc lvobjsetstylepadhor*(obj: ptr lvobjt; value: int32;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_pad_hor".}
proc lvobjsetstylepadver*(obj: ptr lvobjt; value: int32;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_pad_ver".}
proc lvobjsetstylemarginall*(obj: ptr lvobjt; value: int32;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_margin_all".}
proc lvobjsetstylemarginhor*(obj: ptr lvobjt; value: int32;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_margin_hor".}
proc lvobjsetstylemarginver*(obj: ptr lvobjt; value: int32;
                             selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_margin_ver".}
proc lvobjsetstylepadgap*(obj: ptr lvobjt; value: int32;
                          selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_pad_gap".}
proc lvobjsetstylesize*(obj: ptr lvobjt; width: int32; height: int32;
                        selector: lvstyleselectort): void {.cdecl,
    importc: "lv_obj_set_style_size".}
proc lvobjgetstylespaceleft*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_space_left".}
proc lvobjgetstylespaceright*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_space_right".}
proc lvobjgetstylespacetop*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_space_top".}
proc lvobjgetstylespacebottom*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_get_style_space_bottom".}
proc lvobjcalculatestyletextalign*(obj: ptr lvobjt; part: lvpartt; txt: cstring): lvtextalignt {.
    cdecl, importc: "lv_obj_calculate_style_text_align".}
proc lvobjgetstyletransformscalexsafe*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_scale_x_safe".}
proc lvobjgetstyletransformscaleysafe*(obj: ptr lvobjt; part: lvpartt): int32 {.
    cdecl, importc: "lv_obj_get_style_transform_scale_y_safe".}
proc lvobjgetstyleoparecursive*(obj: ptr lvobjt; part: lvpartt): lvopat {.cdecl,
    importc: "lv_obj_get_style_opa_recursive".}
proc internallvobjupdatelayertype*(obj: ptr lvobjt): void {.cdecl,
    importc: "_lv_obj_update_layer_type".}
proc lvobjinitdrawrectdsc*(obj: ptr lvobjt; part: lvpartt;
                           drawdsc: ptr lvdrawrectdsct): void {.cdecl,
    importc: "lv_obj_init_draw_rect_dsc".}
proc lvobjinitdrawlabeldsc*(obj: ptr lvobjt; part: lvpartt;
                            drawdsc: ptr lvdrawlabeldsct): void {.cdecl,
    importc: "lv_obj_init_draw_label_dsc".}
proc lvobjinitdrawimagedsc*(obj: ptr lvobjt; part: lvpartt;
                            drawdsc: ptr lvdrawimagedsct): void {.cdecl,
    importc: "lv_obj_init_draw_image_dsc".}
proc lvobjinitdrawlinedsc*(obj: ptr lvobjt; part: lvpartt;
                           drawdsc: ptr lvdrawlinedsct): void {.cdecl,
    importc: "lv_obj_init_draw_line_dsc".}
proc lvobjinitdrawarcdsc*(obj: ptr lvobjt; part: lvpartt;
                          drawdsc: ptr lvdrawarcdsct): void {.cdecl,
    importc: "lv_obj_init_draw_arc_dsc".}
proc lvobjcalculateextdrawsize*(obj: ptr lvobjt; part: lvpartt): int32 {.cdecl,
    importc: "lv_obj_calculate_ext_draw_size".}
proc lvobjrefreshextdrawsize*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_refresh_ext_draw_size".}
proc internallvobjgetextdrawsize*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "_lv_obj_get_ext_draw_size".}
proc internallvobjgetlayertype*(obj: ptr lvobjt): lvlayertypet {.cdecl,
    importc: "_lv_obj_get_layer_type".}
proc lvobjclasscreateobj*(classp: ptr lvobjclasst; parent: ptr lvobjt): ptr lvobjt {.
    cdecl, importc: "lv_obj_class_create_obj".}
proc lvobjclassinitobj*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_class_init_obj".}
proc internallvobjdestruct*(obj: ptr lvobjt): void {.cdecl,
    importc: "_lv_obj_destruct".}
proc lvobjiseditable*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_obj_is_editable".}
proc lvobjisgroupdef*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_obj_is_group_def".}
proc internallvgroupinit*(): void {.cdecl, importc: "_lv_group_init".}
proc internallvgroupdeinit*(): void {.cdecl, importc: "_lv_group_deinit".}
proc lvgroupcreate*(): ptr lvgroupt {.cdecl, importc: "lv_group_create".}
proc lvgroupsetdefault*(group: ptr lvgroupt): void {.cdecl,
    importc: "lv_group_set_default".}
proc lvgroupgetdefault*(): ptr lvgroupt {.cdecl, importc: "lv_group_get_default".}
proc lvgroupaddobj*(group: ptr lvgroupt; obj: ptr lvobjt): void {.cdecl,
    importc: "lv_group_add_obj".}
proc lvgroupswapobj*(obj1: ptr lvobjt; obj2: ptr lvobjt): void {.cdecl,
    importc: "lv_group_swap_obj".}
proc lvgroupremoveobj*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_group_remove_obj".}
proc lvgroupremoveallobjs*(group: ptr lvgroupt): void {.cdecl,
    importc: "lv_group_remove_all_objs".}
proc lvgroupfocusobj*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_group_focus_obj".}
proc lvgroupfocusnext*(group: ptr lvgroupt): void {.cdecl,
    importc: "lv_group_focus_next".}
proc lvgroupfocusprev*(group: ptr lvgroupt): void {.cdecl,
    importc: "lv_group_focus_prev".}
proc lvgroupfocusfreeze*(group: ptr lvgroupt; en: bool): void {.cdecl,
    importc: "lv_group_focus_freeze".}
proc lvgroupsenddata*(group: ptr lvgroupt; c: uint32): lvresultt {.cdecl,
    importc: "lv_group_send_data".}
proc lvgroupsetfocuscb*(group: ptr lvgroupt; focuscb: lvgroupfocuscbt): void {.
    cdecl, importc: "lv_group_set_focus_cb".}
proc lvgroupsetedgecb*(group: ptr lvgroupt; edgecb: lvgroupedgecbt): void {.
    cdecl, importc: "lv_group_set_edge_cb".}
proc lvgroupsetrefocuspolicy*(group: ptr lvgroupt; policy: lvgrouprefocuspolicyt): void {.
    cdecl, importc: "lv_group_set_refocus_policy".}
proc lvgroupsetediting*(group: ptr lvgroupt; edit: bool): void {.cdecl,
    importc: "lv_group_set_editing".}
proc lvgroupsetwrap*(group: ptr lvgroupt; en: bool): void {.cdecl,
    importc: "lv_group_set_wrap".}
proc lvgroupgetfocused*(group: ptr lvgroupt): ptr lvobjt {.cdecl,
    importc: "lv_group_get_focused".}
proc lvgroupgetfocuscb*(group: ptr lvgroupt): lvgroupfocuscbt {.cdecl,
    importc: "lv_group_get_focus_cb".}
proc lvgroupgetedgecb*(group: ptr lvgroupt): lvgroupedgecbt {.cdecl,
    importc: "lv_group_get_edge_cb".}
proc lvgroupgetediting*(group: ptr lvgroupt): bool {.cdecl,
    importc: "lv_group_get_editing".}
proc lvgroupgetwrap*(group: ptr lvgroupt): bool {.cdecl,
    importc: "lv_group_get_wrap".}
proc lvgroupgetobjcount*(group: ptr lvgroupt): uint32 {.cdecl,
    importc: "lv_group_get_obj_count".}
proc lvgroupgetcount*(): uint32 {.cdecl, importc: "lv_group_get_count".}
proc lvgroupbyindex*(index: uint32): ptr lvgroupt {.cdecl,
    importc: "lv_group_by_index".}
proc lvindevcreate*(): ptr lvindevt {.cdecl, importc: "lv_indev_create".}
proc lvindevdelete*(indev: ptr lvindevt): void {.cdecl,
    importc: "lv_indev_delete".}
proc lvindevgetnext*(indev: ptr lvindevt): ptr lvindevt {.cdecl,
    importc: "lv_indev_get_next".}
proc lvindevread*(indev: ptr lvindevt): void {.cdecl, importc: "lv_indev_read".}
proc lvindevreadtimercb*(timer: ptr lvtimert): void {.cdecl,
    importc: "lv_indev_read_timer_cb".}
proc lvindevenable*(indev: ptr lvindevt; enable: bool): void {.cdecl,
    importc: "lv_indev_enable".}
proc lvindevsettype*(indev: ptr lvindevt; indevtype: lvindevtypet): void {.
    cdecl, importc: "lv_indev_set_type".}
proc lvindevsetreadcb*(indev: ptr lvindevt; readcb: lvindevreadcbt): void {.
    cdecl, importc: "lv_indev_set_read_cb".}
proc lvindevsetuserdata*(indev: ptr lvindevt; userdata: pointer): void {.cdecl,
    importc: "lv_indev_set_user_data".}
proc lvindevsetdriverdata*(indev: ptr lvindevt; driverdata: pointer): void {.
    cdecl, importc: "lv_indev_set_driver_data".}
proc lvindevgettype*(indev: ptr lvindevt): lvindevtypet {.cdecl,
    importc: "lv_indev_get_type".}
proc lvindevgetreadcb*(indev: ptr lvindevt): lvindevreadcbt {.cdecl,
    importc: "lv_indev_get_read_cb".}
proc lvindevgetstate*(indev: ptr lvindevt): lvindevstatet {.cdecl,
    importc: "lv_indev_get_state".}
proc lvindevgetgroup*(indev: ptr lvindevt): ptr lvgroupt {.cdecl,
    importc: "lv_indev_get_group".}
proc lvindevgetdisplay*(indev: ptr lvindevt): ptr lvdisplayt {.cdecl,
    importc: "lv_indev_get_display".}
proc lvindevgetuserdata*(indev: ptr lvindevt): pointer {.cdecl,
    importc: "lv_indev_get_user_data".}
proc lvindevgetdriverdata*(indev: ptr lvindevt): pointer {.cdecl,
    importc: "lv_indev_get_driver_data".}
proc lvindevreset*(indev: ptr lvindevt; obj: ptr lvobjt): void {.cdecl,
    importc: "lv_indev_reset".}
proc lvindevresetlongpress*(indev: ptr lvindevt): void {.cdecl,
    importc: "lv_indev_reset_long_press".}
proc lvindevsetcursor*(indev: ptr lvindevt; curobj: ptr lvobjt): void {.cdecl,
    importc: "lv_indev_set_cursor".}
proc lvindevsetgroup*(indev: ptr lvindevt; group: ptr lvgroupt): void {.cdecl,
    importc: "lv_indev_set_group".}
proc lvindevsetbuttonpoints*(indev: ptr lvindevt;
                             points: ptr UncheckedArray[lvpointt]): void {.
    cdecl, importc: "lv_indev_set_button_points".}
proc lvindevgetpoint*(indev: ptr lvindevt; point: ptr lvpointt): void {.cdecl,
    importc: "lv_indev_get_point".}
proc lvindevgetgesturedir*(indev: ptr lvindevt): lvdirt {.cdecl,
    importc: "lv_indev_get_gesture_dir".}
proc lvindevgetkey*(indev: ptr lvindevt): uint32 {.cdecl,
    importc: "lv_indev_get_key".}
proc lvindevgetscrolldir*(indev: ptr lvindevt): lvdirt {.cdecl,
    importc: "lv_indev_get_scroll_dir".}
proc lvindevgetscrollobj*(indev: ptr lvindevt): ptr lvobjt {.cdecl,
    importc: "lv_indev_get_scroll_obj".}
proc lvindevgetvect*(indev: ptr lvindevt; point: ptr lvpointt): void {.cdecl,
    importc: "lv_indev_get_vect".}
proc lvindevwaitrelease*(indev: ptr lvindevt): void {.cdecl,
    importc: "lv_indev_wait_release".}
proc lvindevgetactiveobj*(): ptr lvobjt {.cdecl,
    importc: "lv_indev_get_active_obj".}
proc lvindevgetreadtimer*(indev: ptr lvindevt): ptr lvtimert {.cdecl,
    importc: "lv_indev_get_read_timer".}
proc lvindevsetmode*(indev: ptr lvindevt; mode: lvindevmodet): void {.cdecl,
    importc: "lv_indev_set_mode".}
proc lvindevgetmode*(indev: ptr lvindevt): lvindevmodet {.cdecl,
    importc: "lv_indev_get_mode".}
proc lvindevsearchobj*(obj: ptr lvobjt; point: ptr lvpointt): ptr lvobjt {.
    cdecl, importc: "lv_indev_search_obj".}
proc lvindevaddeventcb*(indev: ptr lvindevt; eventcb: lveventcbt;
                        filter: lveventcodet; userdata: pointer): void {.cdecl,
    importc: "lv_indev_add_event_cb".}
proc lvindevgeteventcount*(indev: ptr lvindevt): uint32 {.cdecl,
    importc: "lv_indev_get_event_count".}
proc lvindevgeteventdsc*(indev: ptr lvindevt; index: uint32): ptr lveventdsct {.
    cdecl, importc: "lv_indev_get_event_dsc".}
proc lvindevremoveevent*(indev: ptr lvindevt; index: uint32): bool {.cdecl,
    importc: "lv_indev_remove_event".}
proc lvindevremoveeventcbwithuserdata*(indev: ptr lvindevt; eventcb: lveventcbt;
                                       userdata: pointer): uint32 {.cdecl,
    importc: "lv_indev_remove_event_cb_with_user_data".}
proc lvindevsendevent*(indev: ptr lvindevt; code: lveventcodet; param: pointer): lvresultt {.
    cdecl, importc: "lv_indev_send_event".}
proc lvobjsendevent*(obj: ptr lvobjt; eventcode: lveventcodet; param: pointer): lvresultt {.
    cdecl, importc: "lv_obj_send_event".}
proc lvobjeventbase*(classp: ptr lvobjclasst; e: ptr lveventt): lvresultt {.
    cdecl, importc: "lv_obj_event_base".}
proc lveventgetcurrenttargetobj*(e: ptr lveventt): ptr lvobjt {.cdecl,
    importc: "lv_event_get_current_target_obj".}
proc lveventgettargetobj*(e: ptr lveventt): ptr lvobjt {.cdecl,
    importc: "lv_event_get_target_obj".}
proc lvobjaddeventcb*(obj: ptr lvobjt; eventcb: lveventcbt;
                      filter: lveventcodet; userdata: pointer): ptr lveventdsct {.
    cdecl, importc: "lv_obj_add_event_cb".}
proc lvobjgeteventcount*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_obj_get_event_count".}
proc lvobjgeteventdsc*(obj: ptr lvobjt; index: uint32): ptr lveventdsct {.cdecl,
    importc: "lv_obj_get_event_dsc".}
proc lvobjremoveevent*(obj: ptr lvobjt; index: uint32): bool {.cdecl,
    importc: "lv_obj_remove_event".}
proc lvobjremoveeventcb*(obj: ptr lvobjt; eventcb: lveventcbt): bool {.cdecl,
    importc: "lv_obj_remove_event_cb".}
proc lvobjremoveeventdsc*(obj: ptr lvobjt; dsc: ptr lveventdsct): bool {.cdecl,
    importc: "lv_obj_remove_event_dsc".}
proc lvobjremoveeventcbwithuserdata*(obj: ptr lvobjt; eventcb: lveventcbt;
                                     userdata: pointer): uint32 {.cdecl,
    importc: "lv_obj_remove_event_cb_with_user_data".}
proc lveventgetindev*(e: ptr lveventt): ptr lvindevt {.cdecl,
    importc: "lv_event_get_indev".}
proc lveventgetlayer*(e: ptr lveventt): ptr lvlayert {.cdecl,
    importc: "lv_event_get_layer".}
proc lveventgetoldsize*(e: ptr lveventt): ptr lvareat {.cdecl,
    importc: "lv_event_get_old_size".}
proc lveventgetkey*(e: ptr lveventt): uint32 {.cdecl,
    importc: "lv_event_get_key".}
proc lveventgetrotarydiff*(e: ptr lveventt): int32 {.cdecl,
    importc: "lv_event_get_rotary_diff".}
proc lveventgetscrollanim*(e: ptr lveventt): ptr lvanimt {.cdecl,
    importc: "lv_event_get_scroll_anim".}
proc lveventsetextdrawsize*(e: ptr lveventt; size: int32): void {.cdecl,
    importc: "lv_event_set_ext_draw_size".}
proc lveventgetselfsizeinfo*(e: ptr lveventt): ptr lvpointt {.cdecl,
    importc: "lv_event_get_self_size_info".}
proc lveventgethittestinfo*(e: ptr lveventt): ptr lvhittestinfot {.cdecl,
    importc: "lv_event_get_hit_test_info".}
proc lveventgetcoverarea*(e: ptr lveventt): ptr lvareat {.cdecl,
    importc: "lv_event_get_cover_area".}
proc lveventsetcoverres*(e: ptr lveventt; res: lvcoverrest): void {.cdecl,
    importc: "lv_event_set_cover_res".}
proc lveventgetdrawtask*(e: ptr lveventt): ptr lvdrawtaskt {.cdecl,
    importc: "lv_event_get_draw_task".}
var lvobjclass* {.importc: "lv_obj_class".}: lvobjclasst
proc lvobjcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_obj_create".}
proc lvobjaddflag*(obj: ptr lvobjt; f: lvobjflagt): void {.cdecl,
    importc: "lv_obj_add_flag".}
proc lvobjupdateflag*(obj: ptr lvobjt; f: lvobjflagt; v: bool): void {.cdecl,
    importc: "lv_obj_update_flag".}
proc lvobjaddstate*(obj: ptr lvobjt; state: lvstatet): void {.cdecl,
    importc: "lv_obj_add_state".}
proc lvobjsetstate*(obj: ptr lvobjt; state: lvstatet; v: bool): void {.cdecl,
    importc: "lv_obj_set_state".}
proc lvobjsetuserdata*(obj: ptr lvobjt; userdata: pointer): void {.cdecl,
    importc: "lv_obj_set_user_data".}
proc lvobjhasflag*(obj: ptr lvobjt; f: lvobjflagt): bool {.cdecl,
    importc: "lv_obj_has_flag".}
proc lvobjhasflagany*(obj: ptr lvobjt; f: lvobjflagt): bool {.cdecl,
    importc: "lv_obj_has_flag_any".}
proc lvobjgetstate*(obj: ptr lvobjt): lvstatet {.cdecl,
    importc: "lv_obj_get_state".}
proc lvobjhasstate*(obj: ptr lvobjt; state: lvstatet): bool {.cdecl,
    importc: "lv_obj_has_state".}
proc lvobjgetgroup*(obj: ptr lvobjt): ptr lvgroupt {.cdecl,
    importc: "lv_obj_get_group".}
proc lvobjgetuserdata*(obj: ptr lvobjt): pointer {.cdecl,
    importc: "lv_obj_get_user_data".}
proc lvobjallocatespecattr*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_allocate_spec_attr".}
proc lvobjchecktype*(obj: ptr lvobjt; classp: ptr lvobjclasst): bool {.cdecl,
    importc: "lv_obj_check_type".}
proc lvobjhasclass*(obj: ptr lvobjt; classp: ptr lvobjclasst): bool {.cdecl,
    importc: "lv_obj_has_class".}
proc lvobjgetclass*(obj: ptr lvobjt): ptr lvobjclasst {.cdecl,
    importc: "lv_obj_get_class".}
proc lvobjisvalid*(obj: ptr lvobjt): bool {.cdecl, importc: "lv_obj_is_valid".}
proc internallvrefrinit*(): void {.cdecl, importc: "_lv_refr_init".}
proc internallvrefrdeinit*(): void {.cdecl, importc: "_lv_refr_deinit".}
proc lvrefrnow*(disp: ptr lvdisplayt): void {.cdecl, importc: "lv_refr_now".}
proc lvobjredraw*(layer: ptr lvlayert; obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_redraw".}
proc internallvinvarea*(disp: ptr lvdisplayt; areap: ptr lvareat): void {.cdecl,
    importc: "_lv_inv_area".}
proc internallvrefrgetdisprefreshing*(): ptr lvdisplayt {.cdecl,
    importc: "_lv_refr_get_disp_refreshing".}
proc internallvrefrsetdisprefreshing*(disp: ptr lvdisplayt): void {.cdecl,
    importc: "_lv_refr_set_disp_refreshing".}
proc lvbinfontcreate*(fontname: cstring): ptr lvfontt {.cdecl,
    importc: "lv_binfont_create".}
proc lvbinfontcreatefrombuffer*(buffer: pointer; size: uint32): ptr lvfontt {.
    cdecl, importc: "lv_binfont_create_from_buffer".}
proc lvbinfontdestroy*(font: ptr lvfontt): void {.cdecl,
    importc: "lv_binfont_destroy".}
proc lvfontgetbitmapfmttxt*(gdsc: ptr lvfontglyphdsct; drawbuf: ptr lvdrawbuft): pointer {.
    cdecl, importc: "lv_font_get_bitmap_fmt_txt".}
proc lvfontgetglyphdscfmttxt*(font: ptr lvfontt; dscout: ptr lvfontglyphdsct;
                              unicodeletter: uint32; unicodeletternext: uint32): bool {.
    cdecl, importc: "lv_font_get_glyph_dsc_fmt_txt".}
var lvimageclass* {.importc: "lv_image_class".}: lvobjclasst
proc internallvimagesetpivot*(obj: ptr lvobjt; pivot: ptr lvpointt): void {.
    cdecl, importc: "_lv_image_set_pivot".}
proc lvimagesetscalex*(obj: ptr lvobjt; zoom: uint32): void {.cdecl,
    importc: "lv_image_set_scale_x".}
proc lvimagesetscaley*(obj: ptr lvobjt; zoom: uint32): void {.cdecl,
    importc: "lv_image_set_scale_y".}
proc lvimagesetblendmode*(obj: ptr lvobjt; blendmode: lvblendmodet): void {.
    cdecl, importc: "lv_image_set_blend_mode".}
proc lvimagesetbitmapmapsrc*(obj: ptr lvobjt; src: ptr lvimagedsct): void {.
    cdecl, importc: "lv_image_set_bitmap_map_src".}
proc internallvimagegetpivot*(obj: ptr lvobjt): lvpointt {.cdecl,
    importc: "_lv_image_get_pivot".}
proc lvimagegetscalex*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_image_get_scale_x".}
proc lvimagegetscaley*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_image_get_scale_y".}
proc lvimagegetblendmode*(obj: ptr lvobjt): lvblendmodet {.cdecl,
    importc: "lv_image_get_blend_mode".}
proc lvimagegetbitmapmapsrc*(obj: ptr lvobjt): ptr lvimagedsct {.cdecl,
    importc: "lv_image_get_bitmap_map_src".}
var lvanimimgclass* {.importc: "lv_animimg_class".}: lvobjclasst
proc lvanimimgcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_animimg_create".}
proc lvanimimgsetsrc*(img: ptr lvobjt; dsc: ptr UncheckedArray[pointer];
                      num: csize_t): void {.cdecl, importc: "lv_animimg_set_src".}
proc lvanimimgstart*(obj: ptr lvobjt): void {.cdecl, importc: "lv_animimg_start".}
proc lvanimimgsetduration*(img: ptr lvobjt; duration: uint32): void {.cdecl,
    importc: "lv_animimg_set_duration".}
proc lvanimimgsetrepeatcount*(img: ptr lvobjt; count: uint32): void {.cdecl,
    importc: "lv_animimg_set_repeat_count".}
proc lvanimimggetsrc*(img: ptr lvobjt): ptr pointer {.cdecl,
    importc: "lv_animimg_get_src".}
proc lvanimimggetsrccount*(img: ptr lvobjt): uint8 {.cdecl,
    importc: "lv_animimg_get_src_count".}
proc lvanimimggetduration*(img: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_animimg_get_duration".}
proc lvanimimggetrepeatcount*(img: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_animimg_get_repeat_count".}
var lvarcclass* {.importc: "lv_arc_class".}: lvobjclasst
proc lvarccreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_arc_create".}
proc lvarcsetstartangle*(obj: ptr lvobjt; start: lvvaluepreciset): void {.cdecl,
    importc: "lv_arc_set_start_angle".}
proc lvarcsetendangle*(obj: ptr lvobjt; endarg: lvvaluepreciset): void {.cdecl,
    importc: "lv_arc_set_end_angle".}
proc lvarcsetangles*(obj: ptr lvobjt; start: lvvaluepreciset;
                     endarg: lvvaluepreciset): void {.cdecl,
    importc: "lv_arc_set_angles".}
proc lvarcsetbgstartangle*(obj: ptr lvobjt; start: lvvaluepreciset): void {.
    cdecl, importc: "lv_arc_set_bg_start_angle".}
proc lvarcsetbgendangle*(obj: ptr lvobjt; endarg: lvvaluepreciset): void {.
    cdecl, importc: "lv_arc_set_bg_end_angle".}
proc lvarcsetbgangles*(obj: ptr lvobjt; start: lvvaluepreciset;
                       endarg: lvvaluepreciset): void {.cdecl,
    importc: "lv_arc_set_bg_angles".}
proc lvarcsetrotation*(obj: ptr lvobjt; rotation: int32): void {.cdecl,
    importc: "lv_arc_set_rotation".}
proc lvarcsetmode*(obj: ptr lvobjt; typearg: lvarcmodet): void {.cdecl,
    importc: "lv_arc_set_mode".}
proc lvarcsetvalue*(obj: ptr lvobjt; value: int32): void {.cdecl,
    importc: "lv_arc_set_value".}
proc lvarcsetrange*(obj: ptr lvobjt; min: int32; max: int32): void {.cdecl,
    importc: "lv_arc_set_range".}
proc lvarcsetchangerate*(obj: ptr lvobjt; rate: uint32): void {.cdecl,
    importc: "lv_arc_set_change_rate".}
proc lvarcsetknoboffset*(obj: ptr lvobjt; offset: int32): void {.cdecl,
    importc: "lv_arc_set_knob_offset".}
proc lvarcgetanglestart*(obj: ptr lvobjt): lvvaluepreciset {.cdecl,
    importc: "lv_arc_get_angle_start".}
proc lvarcgetangleend*(obj: ptr lvobjt): lvvaluepreciset {.cdecl,
    importc: "lv_arc_get_angle_end".}
proc lvarcgetbganglestart*(obj: ptr lvobjt): lvvaluepreciset {.cdecl,
    importc: "lv_arc_get_bg_angle_start".}
proc lvarcgetbgangleend*(obj: ptr lvobjt): lvvaluepreciset {.cdecl,
    importc: "lv_arc_get_bg_angle_end".}
proc lvarcgetvalue*(obj: ptr lvobjt): int32 {.cdecl, importc: "lv_arc_get_value".}
proc lvarcgetminvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_arc_get_min_value".}
proc lvarcgetmaxvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_arc_get_max_value".}
proc lvarcgetmode*(obj: ptr lvobjt): lvarcmodet {.cdecl,
    importc: "lv_arc_get_mode".}
proc lvarcgetrotation*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_arc_get_rotation".}
proc lvarcgetknoboffset*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_arc_get_knob_offset".}
proc lvarcalignobjtoangle*(obj: ptr lvobjt; objtoalign: ptr lvobjt;
                           roffset: int32): void {.cdecl,
    importc: "lv_arc_align_obj_to_angle".}
proc lvarcrotateobjtoangle*(obj: ptr lvobjt; objtorotate: ptr lvobjt;
                            roffset: int32): void {.cdecl,
    importc: "lv_arc_rotate_obj_to_angle".}
var lvlabelclass* {.importc: "lv_label_class".}: lvobjclasst
proc lvlabelcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_label_create".}
proc lvlabelsettext*(obj: ptr lvobjt; text: cstring): void {.cdecl,
    importc: "lv_label_set_text".}
proc lvlabelsettextfmt*(obj: ptr lvobjt; fmt: cstring): void {.cdecl, varargs,
    importc: "lv_label_set_text_fmt".}
proc lvlabelsettextstatic*(obj: ptr lvobjt; text: cstring): void {.cdecl,
    importc: "lv_label_set_text_static".}
proc lvlabelsetlongmode*(obj: ptr lvobjt; longmode: lvlabellongmodet): void {.
    cdecl, importc: "lv_label_set_long_mode".}
proc lvlabelsettextselectionstart*(obj: ptr lvobjt; index: uint32): void {.
    cdecl, importc: "lv_label_set_text_selection_start".}
proc lvlabelsettextselectionend*(obj: ptr lvobjt; index: uint32): void {.cdecl,
    importc: "lv_label_set_text_selection_end".}
proc lvlabelgettext*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_label_get_text".}
proc lvlabelgetlongmode*(obj: ptr lvobjt): lvlabellongmodet {.cdecl,
    importc: "lv_label_get_long_mode".}
proc lvlabelgetletterpos*(obj: ptr lvobjt; charid: uint32; pos: ptr lvpointt): void {.
    cdecl, importc: "lv_label_get_letter_pos".}
proc lvlabelgetletteron*(obj: ptr lvobjt; posin: ptr lvpointt; bidi: bool): uint32 {.
    cdecl, importc: "lv_label_get_letter_on".}
proc lvlabelischarunderpos*(obj: ptr lvobjt; pos: ptr lvpointt): bool {.cdecl,
    importc: "lv_label_is_char_under_pos".}
proc lvlabelgettextselectionstart*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_label_get_text_selection_start".}
proc lvlabelgettextselectionend*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_label_get_text_selection_end".}
proc lvlabelinstext*(obj: ptr lvobjt; pos: uint32; txt: cstring): void {.cdecl,
    importc: "lv_label_ins_text".}
proc lvlabelcuttext*(obj: ptr lvobjt; pos: uint32; cnt: uint32): void {.cdecl,
    importc: "lv_label_cut_text".}
var lvbarclass* {.importc: "lv_bar_class".}: lvobjclasst
proc lvbarcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_bar_create".}
proc lvbarsetvalue*(obj: ptr lvobjt; value: int32; anim: lvanimenablet): void {.
    cdecl, importc: "lv_bar_set_value".}
proc lvbarsetstartvalue*(obj: ptr lvobjt; startvalue: int32; anim: lvanimenablet): void {.
    cdecl, importc: "lv_bar_set_start_value".}
proc lvbarsetrange*(obj: ptr lvobjt; min: int32; max: int32): void {.cdecl,
    importc: "lv_bar_set_range".}
proc lvbarsetmode*(obj: ptr lvobjt; mode: lvbarmodet): void {.cdecl,
    importc: "lv_bar_set_mode".}
proc lvbarsetorientation*(obj: ptr lvobjt; orientation: lvbarorientationt): void {.
    cdecl, importc: "lv_bar_set_orientation".}
proc lvbargetvalue*(obj: ptr lvobjt): int32 {.cdecl, importc: "lv_bar_get_value".}
proc lvbargetstartvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_bar_get_start_value".}
proc lvbargetminvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_bar_get_min_value".}
proc lvbargetmaxvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_bar_get_max_value".}
proc lvbargetmode*(obj: ptr lvobjt): lvbarmodet {.cdecl,
    importc: "lv_bar_get_mode".}
proc lvbargetorientation*(obj: ptr lvobjt): lvbarorientationt {.cdecl,
    importc: "lv_bar_get_orientation".}
proc lvbarissymmetrical*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_bar_is_symmetrical".}
var lvbuttonclass* {.importc: "lv_button_class".}: lvobjclasst
var lvbuttonmatrixclass* {.importc: "lv_buttonmatrix_class".}: lvobjclasst
var lvcalendarclass* {.importc: "lv_calendar_class".}: lvobjclasst
proc lvcalendarcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_calendar_create".}
proc lvcalendarsettodaydate*(obj: ptr lvobjt; year: uint32; month: uint32;
                             day: uint32): void {.cdecl,
    importc: "lv_calendar_set_today_date".}
proc lvcalendarsetshoweddate*(obj: ptr lvobjt; year: uint32; month: uint32): void {.
    cdecl, importc: "lv_calendar_set_showed_date".}
proc lvcalendarsethighlighteddates*(obj: ptr lvobjt; highlighted: ptr UncheckedArray[
    lvcalendardatet]; datenum: csize_t): void {.cdecl,
    importc: "lv_calendar_set_highlighted_dates".}
proc lvcalendarsetdaynames*(obj: ptr lvobjt; daynames: ptr cstring): void {.
    cdecl, importc: "lv_calendar_set_day_names".}
proc lvcalendargetbtnmatrix*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_calendar_get_btnmatrix".}
proc lvcalendargettodaydate*(calendar: ptr lvobjt): ptr lvcalendardatet {.cdecl,
    importc: "lv_calendar_get_today_date".}
proc lvcalendargetshoweddate*(calendar: ptr lvobjt): ptr lvcalendardatet {.
    cdecl, importc: "lv_calendar_get_showed_date".}
proc lvcalendargethighlighteddates*(calendar: ptr lvobjt): ptr lvcalendardatet {.
    cdecl, importc: "lv_calendar_get_highlighted_dates".}
proc lvcalendargethighlighteddatesnum*(calendar: ptr lvobjt): csize_t {.cdecl,
    importc: "lv_calendar_get_highlighted_dates_num".}
proc lvcalendargetpresseddate*(calendar: ptr lvobjt; date: ptr lvcalendardatet): lvresultt {.
    cdecl, importc: "lv_calendar_get_pressed_date".}
var lvcalendarheaderarrowclass* {.importc: "lv_calendar_header_arrow_class".}: lvobjclasst
proc lvcalendarheaderarrowcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_calendar_header_arrow_create".}
var lvcalendarheaderdropdownclass* {.importc: "lv_calendar_header_dropdown_class".}: lvobjclasst
proc lvcalendarheaderdropdowncreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_calendar_header_dropdown_create".}
proc lvcalendarheaderdropdownsetyearlist*(parent: ptr lvobjt; yearslist: cstring): void {.
    cdecl, importc: "lv_calendar_header_dropdown_set_year_list".}
var lvcanvasclass* {.importc: "lv_canvas_class".}: lvobjclasst
proc lvcanvascreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_canvas_create".}
proc lvcanvassetbuffer*(obj: ptr lvobjt; buf: pointer; w: int32; h: int32;
                        cf: lvcolorformatt): void {.cdecl,
    importc: "lv_canvas_set_buffer".}
proc lvcanvassetdrawbuf*(obj: ptr lvobjt; drawbuf: ptr lvdrawbuft): void {.
    cdecl, importc: "lv_canvas_set_draw_buf".}
proc lvcanvassetpx*(obj: ptr lvobjt; x: int32; y: int32; color: lvcolort;
                    opa: lvopat): void {.cdecl, importc: "lv_canvas_set_px".}
proc lvcanvassetpalette*(obj: ptr lvobjt; index: uint8; color: lvcolor32t): void {.
    cdecl, importc: "lv_canvas_set_palette".}
proc lvcanvasgetdrawbuf*(obj: ptr lvobjt): ptr lvdrawbuft {.cdecl,
    importc: "lv_canvas_get_draw_buf".}
proc lvcanvasgetpx*(obj: ptr lvobjt; x: int32; y: int32): lvcolor32t {.cdecl,
    importc: "lv_canvas_get_px".}
proc lvcanvasgetimage*(canvas: ptr lvobjt): ptr lvimagedsct {.cdecl,
    importc: "lv_canvas_get_image".}
proc lvcanvasgetbuf*(canvas: ptr lvobjt): pointer {.cdecl,
    importc: "lv_canvas_get_buf".}
proc lvcanvascopybuf*(obj: ptr lvobjt; canvasarea: ptr lvareat;
                      destbuf: ptr lvdrawbuft; destarea: ptr lvareat): void {.
    cdecl, importc: "lv_canvas_copy_buf".}
proc lvcanvasfillbg*(obj: ptr lvobjt; color: lvcolort; opa: lvopat): void {.
    cdecl, importc: "lv_canvas_fill_bg".}
proc lvcanvasinitlayer*(canvas: ptr lvobjt; layer: ptr lvlayert): void {.cdecl,
    importc: "lv_canvas_init_layer".}
proc lvcanvasfinishlayer*(canvas: ptr lvobjt; layer: ptr lvlayert): void {.
    cdecl, importc: "lv_canvas_finish_layer".}
proc lvcanvasbufsize*(w: int32; h: int32; bpp: uint8; stride: uint8): uint32 {.
    cdecl, importc: "lv_canvas_buf_size".}
var lvchartclass* {.importc: "lv_chart_class".}: lvobjclasst
proc lvchartcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_chart_create".}
proc lvchartsettype*(obj: ptr lvobjt; typearg: lvcharttypet): void {.cdecl,
    importc: "lv_chart_set_type".}
proc lvchartsetpointcount*(obj: ptr lvobjt; cnt: uint32): void {.cdecl,
    importc: "lv_chart_set_point_count".}
proc lvchartsetrange*(obj: ptr lvobjt; axis: lvchartaxist; min: int32;
                      max: int32): void {.cdecl, importc: "lv_chart_set_range".}
proc lvchartsetupdatemode*(obj: ptr lvobjt; updatemode: lvchartupdatemodet): void {.
    cdecl, importc: "lv_chart_set_update_mode".}
proc lvchartsetdivlinecount*(obj: ptr lvobjt; hdiv: uint8; vdiv: uint8): void {.
    cdecl, importc: "lv_chart_set_div_line_count".}
proc lvchartgettype*(obj: ptr lvobjt): lvcharttypet {.cdecl,
    importc: "lv_chart_get_type".}
proc lvchartgetpointcount*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_chart_get_point_count".}
proc lvchartgetxstartpoint*(obj: ptr lvobjt; ser: ptr lvchartseriest): uint32 {.
    cdecl, importc: "lv_chart_get_x_start_point".}
proc lvchartgetpointposbyid*(obj: ptr lvobjt; ser: ptr lvchartseriest;
                             id: uint32; pout: ptr lvpointt): void {.cdecl,
    importc: "lv_chart_get_point_pos_by_id".}
proc lvchartrefresh*(obj: ptr lvobjt): void {.cdecl, importc: "lv_chart_refresh".}
proc lvchartaddseries*(obj: ptr lvobjt; color: lvcolort; axis: lvchartaxist): ptr lvchartseriest {.
    cdecl, importc: "lv_chart_add_series".}
proc lvchartremoveseries*(obj: ptr lvobjt; series: ptr lvchartseriest): void {.
    cdecl, importc: "lv_chart_remove_series".}
proc lvcharthideseries*(chart: ptr lvobjt; series: ptr lvchartseriest;
                        hide: bool): void {.cdecl,
    importc: "lv_chart_hide_series".}
proc lvchartsetseriescolor*(chart: ptr lvobjt; series: ptr lvchartseriest;
                            color: lvcolort): void {.cdecl,
    importc: "lv_chart_set_series_color".}
proc lvchartsetxstartpoint*(obj: ptr lvobjt; ser: ptr lvchartseriest; id: uint32): void {.
    cdecl, importc: "lv_chart_set_x_start_point".}
proc lvchartgetseriesnext*(chart: ptr lvobjt; ser: ptr lvchartseriest): ptr lvchartseriest {.
    cdecl, importc: "lv_chart_get_series_next".}
proc lvchartaddcursor*(obj: ptr lvobjt; color: lvcolort; dir: lvdirt): ptr lvchartcursort {.
    cdecl, importc: "lv_chart_add_cursor".}
proc lvchartsetcursorpos*(chart: ptr lvobjt; cursor: ptr lvchartcursort;
                          pos: ptr lvpointt): void {.cdecl,
    importc: "lv_chart_set_cursor_pos".}
proc lvchartsetcursorpoint*(chart: ptr lvobjt; cursor: ptr lvchartcursort;
                            ser: ptr lvchartseriest; pointid: uint32): void {.
    cdecl, importc: "lv_chart_set_cursor_point".}
proc lvchartgetcursorpoint*(chart: ptr lvobjt; cursor: ptr lvchartcursort): lvpointt {.
    cdecl, importc: "lv_chart_get_cursor_point".}
proc lvchartsetallvalue*(obj: ptr lvobjt; ser: ptr lvchartseriest; value: int32): void {.
    cdecl, importc: "lv_chart_set_all_value".}
proc lvchartsetnextvalue*(obj: ptr lvobjt; ser: ptr lvchartseriest; value: int32): void {.
    cdecl, importc: "lv_chart_set_next_value".}
proc lvchartsetnextvalue2*(obj: ptr lvobjt; ser: ptr lvchartseriest;
                           xvalue: int32; yvalue: int32): void {.cdecl,
    importc: "lv_chart_set_next_value2".}
proc lvchartsetvaluebyid*(obj: ptr lvobjt; ser: ptr lvchartseriest; id: uint32;
                          value: int32): void {.cdecl,
    importc: "lv_chart_set_value_by_id".}
proc lvchartsetvaluebyid2*(obj: ptr lvobjt; ser: ptr lvchartseriest; id: uint32;
                           xvalue: int32; yvalue: int32): void {.cdecl,
    importc: "lv_chart_set_value_by_id2".}
proc lvchartsetextyarray*(obj: ptr lvobjt; ser: ptr lvchartseriest;
                          array: ptr UncheckedArray[int32]): void {.cdecl,
    importc: "lv_chart_set_ext_y_array".}
proc lvchartsetextxarray*(obj: ptr lvobjt; ser: ptr lvchartseriest;
                          array: ptr UncheckedArray[int32]): void {.cdecl,
    importc: "lv_chart_set_ext_x_array".}
proc lvchartgetyarray*(obj: ptr lvobjt; ser: ptr lvchartseriest): ptr int32 {.
    cdecl, importc: "lv_chart_get_y_array".}
proc lvchartgetxarray*(obj: ptr lvobjt; ser: ptr lvchartseriest): ptr int32 {.
    cdecl, importc: "lv_chart_get_x_array".}
proc lvchartgetpressedpoint*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_chart_get_pressed_point".}
proc lvchartgetfirstpointcenteroffset*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_chart_get_first_point_center_offset".}
var lvcheckboxclass* {.importc: "lv_checkbox_class".}: lvobjclasst
proc lvcheckboxcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_checkbox_create".}
proc lvcheckboxsettext*(obj: ptr lvobjt; txt: cstring): void {.cdecl,
    importc: "lv_checkbox_set_text".}
proc lvcheckboxsettextstatic*(obj: ptr lvobjt; txt: cstring): void {.cdecl,
    importc: "lv_checkbox_set_text_static".}
proc lvcheckboxgettext*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_checkbox_get_text".}
var lvdropdownclass* {.importc: "lv_dropdown_class".}: lvobjclasst
var lvdropdownlistclass* {.importc: "lv_dropdownlist_class".}: lvobjclasst
proc lvdropdowncreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_dropdown_create".}
proc lvdropdownsettext*(obj: ptr lvobjt; txt: cstring): void {.cdecl,
    importc: "lv_dropdown_set_text".}
proc lvdropdownsetoptions*(obj: ptr lvobjt; options: cstring): void {.cdecl,
    importc: "lv_dropdown_set_options".}
proc lvdropdownsetoptionsstatic*(obj: ptr lvobjt; options: cstring): void {.
    cdecl, importc: "lv_dropdown_set_options_static".}
proc lvdropdownaddoption*(obj: ptr lvobjt; option: cstring; pos: uint32): void {.
    cdecl, importc: "lv_dropdown_add_option".}
proc lvdropdownclearoptions*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_dropdown_clear_options".}
proc lvdropdownsetselected*(obj: ptr lvobjt; selopt: uint32): void {.cdecl,
    importc: "lv_dropdown_set_selected".}
proc lvdropdownsetdir*(obj: ptr lvobjt; dir: lvdirt): void {.cdecl,
    importc: "lv_dropdown_set_dir".}
proc lvdropdownsetsymbol*(obj: ptr lvobjt; symbol: pointer): void {.cdecl,
    importc: "lv_dropdown_set_symbol".}
proc lvdropdownsetselectedhighlight*(obj: ptr lvobjt; en: bool): void {.cdecl,
    importc: "lv_dropdown_set_selected_highlight".}
proc lvdropdowngetlist*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_dropdown_get_list".}
proc lvdropdowngettext*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_dropdown_get_text".}
proc lvdropdowngetoptions*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_dropdown_get_options".}
proc lvdropdowngetselected*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_dropdown_get_selected".}
proc lvdropdowngetselectedstr*(obj: ptr lvobjt; buf: cstring; bufsize: uint32): void {.
    cdecl, importc: "lv_dropdown_get_selected_str".}
proc lvdropdowngetoptionindex*(obj: ptr lvobjt; option: cstring): int32 {.cdecl,
    importc: "lv_dropdown_get_option_index".}
proc lvdropdowngetsymbol*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_dropdown_get_symbol".}
proc lvdropdowngetselectedhighlight*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_dropdown_get_selected_highlight".}
proc lvdropdowngetdir*(obj: ptr lvobjt): lvdirt {.cdecl,
    importc: "lv_dropdown_get_dir".}
proc lvdropdownopen*(dropdownobj: ptr lvobjt): void {.cdecl,
    importc: "lv_dropdown_open".}
proc lvdropdownclose*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_dropdown_close".}
proc lvdropdownisopen*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_dropdown_is_open".}
var lvimagebuttonclass* {.importc: "lv_imagebutton_class".}: lvobjclasst
proc lvimagebuttoncreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_imagebutton_create".}
proc lvimagebuttonsetsrc*(imagebutton: ptr lvobjt; state: lvimagebuttonstatet;
                          srcleft: pointer; srcmid: pointer; srcright: pointer): void {.
    cdecl, importc: "lv_imagebutton_set_src".}
proc lvimagebuttonsetstate*(imagebutton: ptr lvobjt; state: lvimagebuttonstatet): void {.
    cdecl, importc: "lv_imagebutton_set_state".}
proc lvimagebuttongetsrcleft*(imagebutton: ptr lvobjt;
                              state: lvimagebuttonstatet): pointer {.cdecl,
    importc: "lv_imagebutton_get_src_left".}
proc lvimagebuttongetsrcmiddle*(imagebutton: ptr lvobjt;
                                state: lvimagebuttonstatet): pointer {.cdecl,
    importc: "lv_imagebutton_get_src_middle".}
proc lvimagebuttongetsrcright*(imagebutton: ptr lvobjt;
                               state: lvimagebuttonstatet): pointer {.cdecl,
    importc: "lv_imagebutton_get_src_right".}
var lvkeyboardclass* {.importc: "lv_keyboard_class".}: lvobjclasst
proc lvkeyboardcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_keyboard_create".}
proc lvkeyboardsettextarea*(kb: ptr lvobjt; ta: ptr lvobjt): void {.cdecl,
    importc: "lv_keyboard_set_textarea".}
proc lvkeyboardsetmode*(kb: ptr lvobjt; mode: lvkeyboardmodet): void {.cdecl,
    importc: "lv_keyboard_set_mode".}
proc lvkeyboardsetpopovers*(kb: ptr lvobjt; en: bool): void {.cdecl,
    importc: "lv_keyboard_set_popovers".}
proc lvkeyboardsetmap*(kb: ptr lvobjt; mode: lvkeyboardmodet;
                       map: ptr UncheckedArray[cstring];
                       ctrlmap: ptr UncheckedArray[lvbuttonmatrixctrlt]): void {.
    cdecl, importc: "lv_keyboard_set_map".}
proc lvkeyboardgettextarea*(kb: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_keyboard_get_textarea".}
proc lvkeyboardgetmode*(kb: ptr lvobjt): lvkeyboardmodet {.cdecl,
    importc: "lv_keyboard_get_mode".}
proc lvbuttonmatrixgetpopovers*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_buttonmatrix_get_popovers".}
proc lvkeyboardgetmaparray*(kb: ptr lvobjt): ptr cstring {.cdecl,
    importc: "lv_keyboard_get_map_array".}
proc lvkeyboarddefeventcb*(e: ptr lveventt): void {.cdecl,
    importc: "lv_keyboard_def_event_cb".}
var lvledclass* {.importc: "lv_led_class".}: lvobjclasst
proc lvledcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_led_create".}
proc lvledsetcolor*(led: ptr lvobjt; color: lvcolort): void {.cdecl,
    importc: "lv_led_set_color".}
proc lvledsetbrightness*(led: ptr lvobjt; bright: uint8): void {.cdecl,
    importc: "lv_led_set_brightness".}
proc lvledon*(led: ptr lvobjt): void {.cdecl, importc: "lv_led_on".}
proc lvledoff*(led: ptr lvobjt): void {.cdecl, importc: "lv_led_off".}
proc lvledtoggle*(led: ptr lvobjt): void {.cdecl, importc: "lv_led_toggle".}
proc lvledgetbrightness*(obj: ptr lvobjt): uint8 {.cdecl,
    importc: "lv_led_get_brightness".}
var lvlineclass* {.importc: "lv_line_class".}: lvobjclasst
proc lvlinecreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_line_create".}
proc lvlinesetpoints*(obj: ptr lvobjt;
                      points: ptr UncheckedArray[lvpointpreciset];
                      pointnum: uint32): void {.cdecl,
    importc: "lv_line_set_points".}
proc lvlinesetpointsmutable*(obj: ptr lvobjt;
                             points: ptr UncheckedArray[lvpointpreciset];
                             pointnum: uint32): void {.cdecl,
    importc: "lv_line_set_points_mutable".}
proc lvlinesetyinvert*(obj: ptr lvobjt; en: bool): void {.cdecl,
    importc: "lv_line_set_y_invert".}
proc lvlinegetpoints*(obj: ptr lvobjt): ptr lvpointpreciset {.cdecl,
    importc: "lv_line_get_points".}
proc lvlinegetpointcount*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_line_get_point_count".}
proc lvlineispointarraymutable*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_line_is_point_array_mutable".}
proc lvlinegetpointsmutable*(obj: ptr lvobjt): ptr lvpointpreciset {.cdecl,
    importc: "lv_line_get_points_mutable".}
proc lvlinegetyinvert*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_line_get_y_invert".}
var lvlistclass* {.importc: "lv_list_class".}: lvobjclasst
var lvlisttextclass* {.importc: "lv_list_text_class".}: lvobjclasst
var lvlistbuttonclass* {.importc: "lv_list_button_class".}: lvobjclasst
proc lvlistcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_list_create".}
proc lvlistaddtext*(list: ptr lvobjt; txt: cstring): ptr lvobjt {.cdecl,
    importc: "lv_list_add_text".}
var lvmenuclass* {.importc: "lv_menu_class".}: lvobjclasst
var lvmenupageclass* {.importc: "lv_menu_page_class".}: lvobjclasst
var lvmenucontclass* {.importc: "lv_menu_cont_class".}: lvobjclasst
var lvmenusectionclass* {.importc: "lv_menu_section_class".}: lvobjclasst
var lvmenuseparatorclass* {.importc: "lv_menu_separator_class".}: lvobjclasst
var lvmenusidebarcontclass* {.importc: "lv_menu_sidebar_cont_class".}: lvobjclasst
var lvmenumaincontclass* {.importc: "lv_menu_main_cont_class".}: lvobjclasst
var lvmenusidebarheadercontclass* {.importc: "lv_menu_sidebar_header_cont_class".}: lvobjclasst
var lvmenumainheadercontclass* {.importc: "lv_menu_main_header_cont_class".}: lvobjclasst
proc lvmenucreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_menu_create".}
proc lvmenupagecreate*(parent: ptr lvobjt; title: cstring): ptr lvobjt {.cdecl,
    importc: "lv_menu_page_create".}
proc lvmenucontcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_menu_cont_create".}
proc lvmenusectioncreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_menu_section_create".}
proc lvmenuseparatorcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_menu_separator_create".}
proc lvmenusetpage*(obj: ptr lvobjt; page: ptr lvobjt): void {.cdecl,
    importc: "lv_menu_set_page".}
proc lvmenusetpagetitle*(page: ptr lvobjt; title: cstring): void {.cdecl,
    importc: "lv_menu_set_page_title".}
proc lvmenusetpagetitlestatic*(page: ptr lvobjt; title: cstring): void {.cdecl,
    importc: "lv_menu_set_page_title_static".}
proc lvmenusetsidebarpage*(obj: ptr lvobjt; page: ptr lvobjt): void {.cdecl,
    importc: "lv_menu_set_sidebar_page".}
proc lvmenusetmodeheader*(obj: ptr lvobjt; mode: lvmenumodeheadert): void {.
    cdecl, importc: "lv_menu_set_mode_header".}
proc lvmenusetmoderootbackbutton*(obj: ptr lvobjt;
                                  mode: lvmenumoderootbackbuttont): void {.
    cdecl, importc: "lv_menu_set_mode_root_back_button".}
proc lvmenusetloadpageevent*(menu: ptr lvobjt; obj: ptr lvobjt; page: ptr lvobjt): void {.
    cdecl, importc: "lv_menu_set_load_page_event".}
proc lvmenugetcurmainpage*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_menu_get_cur_main_page".}
proc lvmenugetcursidebarpage*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_menu_get_cur_sidebar_page".}
proc lvmenugetmainheader*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_menu_get_main_header".}
proc lvmenugetmainheaderbackbutton*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_menu_get_main_header_back_button".}
proc lvmenugetsidebarheader*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_menu_get_sidebar_header".}
proc lvmenugetsidebarheaderbackbutton*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_menu_get_sidebar_header_back_button".}
proc lvmenubackbuttonisroot*(menu: ptr lvobjt; obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_menu_back_button_is_root".}
proc lvmenuclearhistory*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_menu_clear_history".}
var lvmsgboxclass* {.importc: "lv_msgbox_class".}: lvobjclasst
var lvmsgboxheaderclass* {.importc: "lv_msgbox_header_class".}: lvobjclasst
var lvmsgboxcontentclass* {.importc: "lv_msgbox_content_class".}: lvobjclasst
var lvmsgboxfooterclass* {.importc: "lv_msgbox_footer_class".}: lvobjclasst
var lvmsgboxheaderbuttonclass* {.importc: "lv_msgbox_header_button_class".}: lvobjclasst
var lvmsgboxfooterbuttonclass* {.importc: "lv_msgbox_footer_button_class".}: lvobjclasst
var lvmsgboxbackdropclass* {.importc: "lv_msgbox_backdrop_class".}: lvobjclasst
proc lvmsgboxcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_msgbox_create".}
proc lvmsgboxaddtitle*(obj: ptr lvobjt; title: cstring): ptr lvobjt {.cdecl,
    importc: "lv_msgbox_add_title".}
proc lvmsgboxaddheaderbutton*(obj: ptr lvobjt; icon: pointer): ptr lvobjt {.
    cdecl, importc: "lv_msgbox_add_header_button".}
proc lvmsgboxaddtext*(obj: ptr lvobjt; text: cstring): ptr lvobjt {.cdecl,
    importc: "lv_msgbox_add_text".}
proc lvmsgboxaddfooterbutton*(obj: ptr lvobjt; text: cstring): ptr lvobjt {.
    cdecl, importc: "lv_msgbox_add_footer_button".}
proc lvmsgboxaddclosebutton*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_msgbox_add_close_button".}
proc lvmsgboxgetheader*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_msgbox_get_header".}
proc lvmsgboxgetfooter*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_msgbox_get_footer".}
proc lvmsgboxgetcontent*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_msgbox_get_content".}
proc lvmsgboxgettitle*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_msgbox_get_title".}
proc lvmsgboxclose*(mbox: ptr lvobjt): void {.cdecl, importc: "lv_msgbox_close".}
proc lvmsgboxcloseasync*(mbox: ptr lvobjt): void {.cdecl,
    importc: "lv_msgbox_close_async".}
var lvrollerclass* {.importc: "lv_roller_class".}: lvobjclasst
proc lvrollercreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_roller_create".}
proc lvrollersetoptions*(obj: ptr lvobjt; options: cstring; mode: lvrollermodet): void {.
    cdecl, importc: "lv_roller_set_options".}
proc lvrollersetselected*(obj: ptr lvobjt; selopt: uint32; anim: lvanimenablet): void {.
    cdecl, importc: "lv_roller_set_selected".}
proc lvrollergetselected*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_roller_get_selected".}
proc lvrollergetselectedstr*(obj: ptr lvobjt; buf: cstring; bufsize: uint32): void {.
    cdecl, importc: "lv_roller_get_selected_str".}
proc lvrollergetoptions*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_roller_get_options".}
var lvscaleclass* {.importc: "lv_scale_class".}: lvobjclasst
proc lvscalecreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_scale_create".}
proc lvscalesetmode*(obj: ptr lvobjt; mode: lvscalemodet): void {.cdecl,
    importc: "lv_scale_set_mode".}
proc lvscalesettotaltickcount*(obj: ptr lvobjt; totaltickcount: uint32): void {.
    cdecl, importc: "lv_scale_set_total_tick_count".}
proc lvscalesetmajortickevery*(obj: ptr lvobjt; majortickevery: uint32): void {.
    cdecl, importc: "lv_scale_set_major_tick_every".}
proc lvscalesetlabelshow*(obj: ptr lvobjt; showlabel: bool): void {.cdecl,
    importc: "lv_scale_set_label_show".}
proc lvscalesetrange*(obj: ptr lvobjt; min: int32; max: int32): void {.cdecl,
    importc: "lv_scale_set_range".}
proc lvscalesetanglerange*(obj: ptr lvobjt; anglerange: uint32): void {.cdecl,
    importc: "lv_scale_set_angle_range".}
proc lvscalesetrotation*(obj: ptr lvobjt; rotation: int32): void {.cdecl,
    importc: "lv_scale_set_rotation".}
proc lvscalesetlineneedlevalue*(obj: ptr lvobjt; needleline: ptr lvobjt;
                                needlelength: int32; value: int32): void {.
    cdecl, importc: "lv_scale_set_line_needle_value".}
proc lvscalesetimageneedlevalue*(obj: ptr lvobjt; needleimg: ptr lvobjt;
                                 value: int32): void {.cdecl,
    importc: "lv_scale_set_image_needle_value".}
proc lvscalesettextsrc*(obj: ptr lvobjt; txtsrc: ptr UncheckedArray[cstring]): void {.
    cdecl, importc: "lv_scale_set_text_src".}
proc lvscalesetpostdraw*(obj: ptr lvobjt; en: bool): void {.cdecl,
    importc: "lv_scale_set_post_draw".}
proc lvscalesetdrawticksontop*(obj: ptr lvobjt; en: bool): void {.cdecl,
    importc: "lv_scale_set_draw_ticks_on_top".}
proc lvscaleaddsection*(obj: ptr lvobjt): ptr lvscalesectiont {.cdecl,
    importc: "lv_scale_add_section".}
proc lvscalesectionsetrange*(section: ptr lvscalesectiont; minorrange: int32;
                             majorrange: int32): void {.cdecl,
    importc: "lv_scale_section_set_range".}
proc lvscalesectionsetstyle*(section: ptr lvscalesectiont; part: lvpartt;
                             sectionpartstyle: ptr lvstylet): void {.cdecl,
    importc: "lv_scale_section_set_style".}
proc lvscalegetmode*(obj: ptr lvobjt): lvscalemodet {.cdecl,
    importc: "lv_scale_get_mode".}
proc lvscalegettotaltickcount*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_scale_get_total_tick_count".}
proc lvscalegetmajortickevery*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_scale_get_major_tick_every".}
proc lvscalegetlabelshow*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_scale_get_label_show".}
proc lvscalegetanglerange*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_scale_get_angle_range".}
proc lvscalegetrangeminvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_scale_get_range_min_value".}
proc lvscalegetrangemaxvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_scale_get_range_max_value".}
var lvsliderclass* {.importc: "lv_slider_class".}: lvobjclasst
proc lvslidercreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_slider_create".}
proc lvslidersetvalue*(obj: ptr lvobjt; value: int32; anim: lvanimenablet): void {.
    cdecl, importc: "lv_slider_set_value".}
proc lvslidersetleftvalue*(obj: ptr lvobjt; value: int32; anim: lvanimenablet): void {.
    cdecl, importc: "lv_slider_set_left_value".}
proc lvslidersetrange*(obj: ptr lvobjt; min: int32; max: int32): void {.cdecl,
    importc: "lv_slider_set_range".}
proc lvslidersetmode*(obj: ptr lvobjt; mode: lvslidermodet): void {.cdecl,
    importc: "lv_slider_set_mode".}
proc lvslidergetvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_slider_get_value".}
proc lvslidergetleftvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_slider_get_left_value".}
proc lvslidergetminvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_slider_get_min_value".}
proc lvslidergetmaxvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_slider_get_max_value".}
proc lvsliderisdragged*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_slider_is_dragged".}
proc lvslidergetmode*(slider: ptr lvobjt): lvslidermodet {.cdecl,
    importc: "lv_slider_get_mode".}
proc lvsliderissymmetrical*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_slider_is_symmetrical".}
var lvspangroupclass* {.importc: "lv_spangroup_class".}: lvobjclasst
proc lvspanstackinit*(): void {.cdecl, importc: "lv_span_stack_init".}
proc lvspanstackdeinit*(): void {.cdecl, importc: "lv_span_stack_deinit".}
proc lvspangroupcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_spangroup_create".}
proc lvspangroupnewspan*(obj: ptr lvobjt): ptr lvspant {.cdecl,
    importc: "lv_spangroup_new_span".}
proc lvspangroupdeletespan*(obj: ptr lvobjt; span: ptr lvspant): void {.cdecl,
    importc: "lv_spangroup_delete_span".}
proc lvspansettext*(span: ptr lvspant; text: cstring): void {.cdecl,
    importc: "lv_span_set_text".}
proc lvspansettextstatic*(span: ptr lvspant; text: cstring): void {.cdecl,
    importc: "lv_span_set_text_static".}
proc lvspangroupsetalign*(obj: ptr lvobjt; align: lvtextalignt): void {.cdecl,
    importc: "lv_spangroup_set_align".}
proc lvspangroupsetoverflow*(obj: ptr lvobjt; overflow: lvspanoverflowt): void {.
    cdecl, importc: "lv_spangroup_set_overflow".}
proc lvspangroupsetindent*(obj: ptr lvobjt; indent: int32): void {.cdecl,
    importc: "lv_spangroup_set_indent".}
proc lvspangroupsetmode*(obj: ptr lvobjt; mode: lvspanmodet): void {.cdecl,
    importc: "lv_spangroup_set_mode".}
proc lvspangroupsetmaxlines*(obj: ptr lvobjt; lines: int32): void {.cdecl,
    importc: "lv_spangroup_set_max_lines".}
proc lvspangroupgetchild*(obj: ptr lvobjt; id: int32): ptr lvspant {.cdecl,
    importc: "lv_spangroup_get_child".}
proc lvspangroupgetspancount*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_spangroup_get_span_count".}
proc lvspangroupgetalign*(obj: ptr lvobjt): lvtextalignt {.cdecl,
    importc: "lv_spangroup_get_align".}
proc lvspangroupgetoverflow*(obj: ptr lvobjt): lvspanoverflowt {.cdecl,
    importc: "lv_spangroup_get_overflow".}
proc lvspangroupgetindent*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_spangroup_get_indent".}
proc lvspangroupgetmode*(obj: ptr lvobjt): lvspanmodet {.cdecl,
    importc: "lv_spangroup_get_mode".}
proc lvspangroupgetmaxlines*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_spangroup_get_max_lines".}
proc lvspangroupgetmaxlineheight*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_spangroup_get_max_line_height".}
proc lvspangroupgetexpandwidth*(obj: ptr lvobjt; maxwidth: uint32): uint32 {.
    cdecl, importc: "lv_spangroup_get_expand_width".}
proc lvspangroupgetexpandheight*(obj: ptr lvobjt; width: int32): int32 {.cdecl,
    importc: "lv_spangroup_get_expand_height".}
proc lvspangrouprefrmode*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_spangroup_refr_mode".}
var lvtextareaclass* {.importc: "lv_textarea_class".}: lvobjclasst
proc lvtextareacreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_textarea_create".}
proc lvtextareaaddchar*(obj: ptr lvobjt; c: uint32): void {.cdecl,
    importc: "lv_textarea_add_char".}
proc lvtextareaaddtext*(obj: ptr lvobjt; txt: cstring): void {.cdecl,
    importc: "lv_textarea_add_text".}
proc lvtextareadeletechar*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_textarea_delete_char".}
proc lvtextareadeletecharforward*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_textarea_delete_char_forward".}
proc lvtextareasettext*(obj: ptr lvobjt; txt: cstring): void {.cdecl,
    importc: "lv_textarea_set_text".}
proc lvtextareasetplaceholdertext*(obj: ptr lvobjt; txt: cstring): void {.cdecl,
    importc: "lv_textarea_set_placeholder_text".}
proc lvtextareasetcursorpos*(obj: ptr lvobjt; pos: int32): void {.cdecl,
    importc: "lv_textarea_set_cursor_pos".}
proc lvtextareasetcursorclickpos*(obj: ptr lvobjt; en: bool): void {.cdecl,
    importc: "lv_textarea_set_cursor_click_pos".}
proc lvtextareasetpasswordmode*(obj: ptr lvobjt; en: bool): void {.cdecl,
    importc: "lv_textarea_set_password_mode".}
proc lvtextareasetpasswordbullet*(obj: ptr lvobjt; bullet: cstring): void {.
    cdecl, importc: "lv_textarea_set_password_bullet".}
proc lvtextareasetoneline*(obj: ptr lvobjt; en: bool): void {.cdecl,
    importc: "lv_textarea_set_one_line".}
proc lvtextareasetacceptedchars*(obj: ptr lvobjt; list: cstring): void {.cdecl,
    importc: "lv_textarea_set_accepted_chars".}
proc lvtextareasetmaxlength*(obj: ptr lvobjt; num: uint32): void {.cdecl,
    importc: "lv_textarea_set_max_length".}
proc lvtextareasetinsertreplace*(obj: ptr lvobjt; txt: cstring): void {.cdecl,
    importc: "lv_textarea_set_insert_replace".}
proc lvtextareasettextselection*(obj: ptr lvobjt; en: bool): void {.cdecl,
    importc: "lv_textarea_set_text_selection".}
proc lvtextareasetpasswordshowtime*(obj: ptr lvobjt; time: uint32): void {.
    cdecl, importc: "lv_textarea_set_password_show_time".}
proc lvtextareasetalign*(obj: ptr lvobjt; align: lvtextalignt): void {.cdecl,
    importc: "lv_textarea_set_align".}
proc lvtextareagettext*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_textarea_get_text".}
proc lvtextareagetplaceholdertext*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_textarea_get_placeholder_text".}
proc lvtextareagetlabel*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_textarea_get_label".}
proc lvtextareagetcursorpos*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_textarea_get_cursor_pos".}
proc lvtextareagetcursorclickpos*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_textarea_get_cursor_click_pos".}
proc lvtextareagetpasswordmode*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_textarea_get_password_mode".}
proc lvtextareagetpasswordbullet*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_textarea_get_password_bullet".}
proc lvtextareagetoneline*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_textarea_get_one_line".}
proc lvtextareagetacceptedchars*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_textarea_get_accepted_chars".}
proc lvtextareagetmaxlength*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_textarea_get_max_length".}
proc lvtextareatextisselected*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_textarea_text_is_selected".}
proc lvtextareagettextselection*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_textarea_get_text_selection".}
proc lvtextareagetpasswordshowtime*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_textarea_get_password_show_time".}
proc lvtextareagetcurrentchar*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_textarea_get_current_char".}
proc lvtextareaclearselection*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_textarea_clear_selection".}
proc lvtextareacursorright*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_textarea_cursor_right".}
proc lvtextareacursorleft*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_textarea_cursor_left".}
proc lvtextareacursordown*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_textarea_cursor_down".}
proc lvtextareacursorup*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_textarea_cursor_up".}
var lvspinboxclass* {.importc: "lv_spinbox_class".}: lvobjclasst
proc lvspinboxcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_spinbox_create".}
proc lvspinboxsetvalue*(obj: ptr lvobjt; v: int32): void {.cdecl,
    importc: "lv_spinbox_set_value".}
proc lvspinboxsetrollover*(obj: ptr lvobjt; rollover: bool): void {.cdecl,
    importc: "lv_spinbox_set_rollover".}
proc lvspinboxsetdigitformat*(obj: ptr lvobjt; digitcount: uint32;
                              seppos: uint32): void {.cdecl,
    importc: "lv_spinbox_set_digit_format".}
proc lvspinboxsetstep*(obj: ptr lvobjt; step: uint32): void {.cdecl,
    importc: "lv_spinbox_set_step".}
proc lvspinboxsetrange*(obj: ptr lvobjt; rangemin: int32; rangemax: int32): void {.
    cdecl, importc: "lv_spinbox_set_range".}
proc lvspinboxsetcursorpos*(obj: ptr lvobjt; pos: uint32): void {.cdecl,
    importc: "lv_spinbox_set_cursor_pos".}
proc lvspinboxsetdigitstepdirection*(obj: ptr lvobjt; direction: lvdirt): void {.
    cdecl, importc: "lv_spinbox_set_digit_step_direction".}
proc lvspinboxgetrollover*(obj: ptr lvobjt): bool {.cdecl,
    importc: "lv_spinbox_get_rollover".}
proc lvspinboxgetvalue*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_spinbox_get_value".}
proc lvspinboxgetstep*(obj: ptr lvobjt): int32 {.cdecl,
    importc: "lv_spinbox_get_step".}
proc lvspinboxstepnext*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_spinbox_step_next".}
proc lvspinboxstepprev*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_spinbox_step_prev".}
proc lvspinboxincrement*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_spinbox_increment".}
proc lvspinboxdecrement*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_spinbox_decrement".}
var lvspinnerclass* {.importc: "lv_spinner_class".}: lvobjclasst
proc lvspinnercreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_spinner_create".}
proc lvspinnersetanimparams*(obj: ptr lvobjt; t: uint32; angle: uint32): void {.
    cdecl, importc: "lv_spinner_set_anim_params".}
var lvswitchclass* {.importc: "lv_switch_class".}: lvobjclasst
proc lvswitchcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_switch_create".}
var lvtableclass* {.importc: "lv_table_class".}: lvobjclasst
proc lvtablecreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_table_create".}
proc lvtablesetcellvalue*(obj: ptr lvobjt; row: uint32; col: uint32;
                          txt: cstring): void {.cdecl,
    importc: "lv_table_set_cell_value".}
proc lvtablesetcellvaluefmt*(obj: ptr lvobjt; row: uint32; col: uint32;
                             fmt: cstring): void {.cdecl, varargs,
    importc: "lv_table_set_cell_value_fmt".}
proc lvtableaddcellctrl*(obj: ptr lvobjt; row: uint32; col: uint32;
                         ctrl: lvtablecellctrlt): void {.cdecl,
    importc: "lv_table_add_cell_ctrl".}
proc lvtableclearcellctrl*(obj: ptr lvobjt; row: uint32; col: uint32;
                           ctrl: lvtablecellctrlt): void {.cdecl,
    importc: "lv_table_clear_cell_ctrl".}
proc lvtablesetcelluserdata*(obj: ptr lvobjt; row: uint16; col: uint16;
                             userdata: pointer): void {.cdecl,
    importc: "lv_table_set_cell_user_data".}
proc lvtablesetselectedcell*(obj: ptr lvobjt; row: uint16; col: uint16): void {.
    cdecl, importc: "lv_table_set_selected_cell".}
proc lvtablegetcellvalue*(obj: ptr lvobjt; row: uint32; col: uint32): cstring {.
    cdecl, importc: "lv_table_get_cell_value".}
proc lvtablehascellctrl*(obj: ptr lvobjt; row: uint32; col: uint32;
                         ctrl: lvtablecellctrlt): bool {.cdecl,
    importc: "lv_table_has_cell_ctrl".}
proc lvtablegetselectedcell*(obj: ptr lvobjt; row: ptr uint32; col: ptr uint32): void {.
    cdecl, importc: "lv_table_get_selected_cell".}
proc lvtablegetcelluserdata*(obj: ptr lvobjt; row: uint16; col: uint16): pointer {.
    cdecl, importc: "lv_table_get_cell_user_data".}
var lvtabviewclass* {.importc: "lv_tabview_class".}: lvobjclasst
proc lvtabviewcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_tabview_create".}
proc lvtabviewaddtab*(obj: ptr lvobjt; name: cstring): ptr lvobjt {.cdecl,
    importc: "lv_tabview_add_tab".}
proc lvtabviewrenametab*(obj: ptr lvobjt; idx: uint32; newname: cstring): void {.
    cdecl, importc: "lv_tabview_rename_tab".}
proc lvtabviewsettabbarposition*(obj: ptr lvobjt; dir: lvdirt): void {.cdecl,
    importc: "lv_tabview_set_tab_bar_position".}
proc lvtabviewsettabbarsize*(obj: ptr lvobjt; size: int32): void {.cdecl,
    importc: "lv_tabview_set_tab_bar_size".}
proc lvtabviewgettabcount*(obj: ptr lvobjt): uint32 {.cdecl,
    importc: "lv_tabview_get_tab_count".}
proc lvtabviewgetcontent*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_tabview_get_content".}
var lvtileviewclass* {.importc: "lv_tileview_class".}: lvobjclasst
var lvtileviewtileclass* {.importc: "lv_tileview_tile_class".}: lvobjclasst
proc lvtileviewcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_tileview_create".}
proc lvtileviewaddtile*(tv: ptr lvobjt; colid: uint8; rowid: uint8; dir: lvdirt): ptr lvobjt {.
    cdecl, importc: "lv_tileview_add_tile".}
var lvwinclass* {.importc: "lv_win_class".}: lvobjclasst
proc lvwincreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_win_create".}
proc lvwinaddtitle*(win: ptr lvobjt; txt: cstring): ptr lvobjt {.cdecl,
    importc: "lv_win_add_title".}
proc lvwinaddbutton*(win: ptr lvobjt; icon: pointer; btnw: int32): ptr lvobjt {.
    cdecl, importc: "lv_win_add_button".}
proc lvwingetheader*(win: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_win_get_header".}
proc lvwingetcontent*(win: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_win_get_content".}
proc lvsnapshottake*(obj: ptr lvobjt; cf: lvcolorformatt): ptr lvdrawbuft {.
    cdecl, importc: "lv_snapshot_take".}
proc lvsnapshotcreatedrawbuf*(obj: ptr lvobjt; cf: lvcolorformatt): ptr lvdrawbuft {.
    cdecl, importc: "lv_snapshot_create_draw_buf".}
proc lvsnapshotreshapedrawbuf*(obj: ptr lvobjt; drawbuf: ptr lvdrawbuft): lvresultt {.
    cdecl, importc: "lv_snapshot_reshape_draw_buf".}
proc lvsnapshottaketodrawbuf*(obj: ptr lvobjt; cf: lvcolorformatt;
                              drawbuf: ptr lvdrawbuft): lvresultt {.cdecl,
    importc: "lv_snapshot_take_to_draw_buf".}
proc lvsnapshotfree*(dsc: ptr lvimagedsct): void {.cdecl,
    importc: "lv_snapshot_free".}
proc lvsnapshottaketobuf*(obj: ptr lvobjt; cf: lvcolorformatt;
                          dsc: ptr lvimagedsct; buf: pointer; bufsize: uint32): lvresultt {.
    cdecl, importc: "lv_snapshot_take_to_buf".}
proc lvsubjectinitint*(subject: ptr lvsubjectt; value: int32): void {.cdecl,
    importc: "lv_subject_init_int".}
proc lvsubjectsetint*(subject: ptr lvsubjectt; value: int32): void {.cdecl,
    importc: "lv_subject_set_int".}
proc lvsubjectgetint*(subject: ptr lvsubjectt): int32 {.cdecl,
    importc: "lv_subject_get_int".}
proc lvsubjectgetpreviousint*(subject: ptr lvsubjectt): int32 {.cdecl,
    importc: "lv_subject_get_previous_int".}
proc lvsubjectinitstring*(subject: ptr lvsubjectt; buf: cstring;
                          prevbuf: cstring; size: csize_t; value: cstring): void {.
    cdecl, importc: "lv_subject_init_string".}
proc lvsubjectcopystring*(subject: ptr lvsubjectt; buf: cstring): void {.cdecl,
    importc: "lv_subject_copy_string".}
proc lvsubjectgetstring*(subject: ptr lvsubjectt): cstring {.cdecl,
    importc: "lv_subject_get_string".}
proc lvsubjectgetpreviousstring*(subject: ptr lvsubjectt): cstring {.cdecl,
    importc: "lv_subject_get_previous_string".}
proc lvsubjectinitpointer*(subject: ptr lvsubjectt; value: pointer): void {.
    cdecl, importc: "lv_subject_init_pointer".}
proc lvsubjectsetpointer*(subject: ptr lvsubjectt; ptrarg: pointer): void {.
    cdecl, importc: "lv_subject_set_pointer".}
proc lvsubjectgetpointer*(subject: ptr lvsubjectt): pointer {.cdecl,
    importc: "lv_subject_get_pointer".}
proc lvsubjectgetpreviouspointer*(subject: ptr lvsubjectt): pointer {.cdecl,
    importc: "lv_subject_get_previous_pointer".}
proc lvsubjectinitcolor*(subject: ptr lvsubjectt; color: lvcolort): void {.
    cdecl, importc: "lv_subject_init_color".}
proc lvsubjectsetcolor*(subject: ptr lvsubjectt; color: lvcolort): void {.cdecl,
    importc: "lv_subject_set_color".}
proc lvsubjectgetcolor*(subject: ptr lvsubjectt): lvcolort {.cdecl,
    importc: "lv_subject_get_color".}
proc lvsubjectgetpreviouscolor*(subject: ptr lvsubjectt): lvcolort {.cdecl,
    importc: "lv_subject_get_previous_color".}
proc lvsubjectinitgroup*(subject: ptr lvsubjectt;
                         list: ptr UncheckedArray[ptr lvsubjectt];
                         listlen: uint32): void {.cdecl,
    importc: "lv_subject_init_group".}
proc lvsubjectdeinit*(subject: ptr lvsubjectt): void {.cdecl,
    importc: "lv_subject_deinit".}
proc lvsubjectgetgroupelement*(subject: ptr lvsubjectt; index: int32): ptr lvsubjectt {.
    cdecl, importc: "lv_subject_get_group_element".}
proc lvsubjectaddobserver*(subject: ptr lvsubjectt; observercb: lvobservercbt;
                           userdata: pointer): ptr lvobservert {.cdecl,
    importc: "lv_subject_add_observer".}
proc lvsubjectaddobserverobj*(subject: ptr lvsubjectt;
                              observercb: lvobservercbt; obj: ptr lvobjt;
                              userdata: pointer): ptr lvobservert {.cdecl,
    importc: "lv_subject_add_observer_obj".}
proc lvsubjectaddobserverwithtarget*(subject: ptr lvsubjectt; cb: lvobservercbt;
                                     target: pointer; userdata: pointer): ptr lvobservert {.
    cdecl, importc: "lv_subject_add_observer_with_target".}
proc lvobserverremove*(observer: ptr lvobservert): void {.cdecl,
    importc: "lv_observer_remove".}
proc lvsubjectremoveallobj*(subject: ptr lvsubjectt; obj: ptr lvobjt): void {.
    cdecl, importc: "lv_subject_remove_all_obj".}
proc lvobservergettarget*(observer: ptr lvobservert): pointer {.cdecl,
    importc: "lv_observer_get_target".}
proc lvobservergettargetobj*(observer: ptr lvobservert): ptr lvobjt {.cdecl,
    importc: "lv_observer_get_target_obj".}
proc lvsubjectnotify*(subject: ptr lvsubjectt): void {.cdecl,
    importc: "lv_subject_notify".}
proc lvobjbindflagifeq*(obj: ptr lvobjt; subject: ptr lvsubjectt;
                        flag: lvobjflagt; refvalue: int32): ptr lvobservert {.
    cdecl, importc: "lv_obj_bind_flag_if_eq".}
proc lvobjbindflagifnoteq*(obj: ptr lvobjt; subject: ptr lvsubjectt;
                           flag: lvobjflagt; refvalue: int32): ptr lvobservert {.
    cdecl, importc: "lv_obj_bind_flag_if_not_eq".}
proc lvobjbindstateifeq*(obj: ptr lvobjt; subject: ptr lvsubjectt;
                         state: lvstatet; refvalue: int32): ptr lvobservert {.
    cdecl, importc: "lv_obj_bind_state_if_eq".}
proc lvobjbindstateifnoteq*(obj: ptr lvobjt; subject: ptr lvsubjectt;
                            state: lvstatet; refvalue: int32): ptr lvobservert {.
    cdecl, importc: "lv_obj_bind_state_if_not_eq".}
proc lvlabelbindtext*(obj: ptr lvobjt; subject: ptr lvsubjectt; fmt: cstring): ptr lvobservert {.
    cdecl, importc: "lv_label_bind_text".}
proc lvarcbindvalue*(obj: ptr lvobjt; subject: ptr lvsubjectt): ptr lvobservert {.
    cdecl, importc: "lv_arc_bind_value".}
proc lvsliderbindvalue*(obj: ptr lvobjt; subject: ptr lvsubjectt): ptr lvobservert {.
    cdecl, importc: "lv_slider_bind_value".}
proc lvrollerbindvalue*(obj: ptr lvobjt; subject: ptr lvsubjectt): ptr lvobservert {.
    cdecl, importc: "lv_roller_bind_value".}
proc lvdropdownbindvalue*(obj: ptr lvobjt; subject: ptr lvsubjectt): ptr lvobservert {.
    cdecl, importc: "lv_dropdown_bind_value".}
proc lvsysmoncreate*(disp: ptr lvdisplayt): ptr lvobjt {.cdecl,
    importc: "lv_sysmon_create".}
proc internallvsysmonbuiltininit*(): void {.cdecl,
    importc: "_lv_sysmon_builtin_init".}
proc internallvsysmonbuiltindeinit*(): void {.cdecl,
    importc: "_lv_sysmon_builtin_deinit".}
proc lvmonkeyconfiginit*(config: ptr lvmonkeyconfigt): void {.cdecl,
    importc: "lv_monkey_config_init".}
proc lvmonkeycreate*(config: ptr lvmonkeyconfigt): ptr lvmonkeyt {.cdecl,
    importc: "lv_monkey_create".}
proc lvmonkeygetindev*(monkey: ptr lvmonkeyt): ptr lvindevt {.cdecl,
    importc: "lv_monkey_get_indev".}
proc lvmonkeysetenable*(monkey: ptr lvmonkeyt; en: bool): void {.cdecl,
    importc: "lv_monkey_set_enable".}
proc lvmonkeygetenable*(monkey: ptr lvmonkeyt): bool {.cdecl,
    importc: "lv_monkey_get_enable".}
proc lvmonkeysetuserdata*(monkey: ptr lvmonkeyt; userdata: pointer): void {.
    cdecl, importc: "lv_monkey_set_user_data".}
proc lvmonkeygetuserdata*(monkey: ptr lvmonkeyt): pointer {.cdecl,
    importc: "lv_monkey_get_user_data".}
proc lvmonkeydelete*(monkey: ptr lvmonkeyt): void {.cdecl,
    importc: "lv_monkey_delete".}
proc lvgridnavadd*(obj: ptr lvobjt; ctrl: lvgridnavctrlt): void {.cdecl,
    importc: "lv_gridnav_add".}
proc lvgridnavremove*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_gridnav_remove".}
proc lvgridnavsetfocused*(cont: ptr lvobjt; tofocus: ptr lvobjt;
                          animen: lvanimenablet): void {.cdecl,
    importc: "lv_gridnav_set_focused".}
proc lvfragmentmanagercreate*(parent: ptr lvfragmentt): ptr lvfragmentmanagert {.
    cdecl, importc: "lv_fragment_manager_create".}
proc lvfragmentmanagerdelete*(manager: ptr lvfragmentmanagert): void {.cdecl,
    importc: "lv_fragment_manager_delete".}
proc lvfragmentmanagercreateobj*(manager: ptr lvfragmentmanagert): void {.cdecl,
    importc: "lv_fragment_manager_create_obj".}
proc lvfragmentmanagerdeleteobj*(manager: ptr lvfragmentmanagert): void {.cdecl,
    importc: "lv_fragment_manager_delete_obj".}
proc lvfragmentmanageradd*(manager: ptr lvfragmentmanagert;
                           fragment: ptr lvfragmentt; container: ptr ptr lvobjt): void {.
    cdecl, importc: "lv_fragment_manager_add".}
proc lvfragmentmanagerremove*(manager: ptr lvfragmentmanagert;
                              fragment: ptr lvfragmentt): void {.cdecl,
    importc: "lv_fragment_manager_remove".}
proc lvfragmentmanagerpush*(manager: ptr lvfragmentmanagert;
                            fragment: ptr lvfragmentt; container: ptr ptr lvobjt): void {.
    cdecl, importc: "lv_fragment_manager_push".}
proc lvfragmentmanagerpop*(manager: ptr lvfragmentmanagert): bool {.cdecl,
    importc: "lv_fragment_manager_pop".}
proc lvfragmentmanagerreplace*(manager: ptr lvfragmentmanagert;
                               fragment: ptr lvfragmentt;
                               container: ptr ptr lvobjt): void {.cdecl,
    importc: "lv_fragment_manager_replace".}
proc lvfragmentmanagersendevent*(manager: ptr lvfragmentmanagert; code: cint;
                                 userdata: pointer): bool {.cdecl,
    importc: "lv_fragment_manager_send_event".}
proc lvfragmentmanagergetstacksize*(manager: ptr lvfragmentmanagert): csize_t {.
    cdecl, importc: "lv_fragment_manager_get_stack_size".}
proc lvfragmentmanagergettop*(manager: ptr lvfragmentmanagert): ptr lvfragmentt {.
    cdecl, importc: "lv_fragment_manager_get_top".}
proc lvfragmentmanagerfindbycontainer*(manager: ptr lvfragmentmanagert;
                                       container: ptr lvobjt): ptr lvfragmentt {.
    cdecl, importc: "lv_fragment_manager_find_by_container".}
proc lvfragmentmanagergetparentfragment*(manager: ptr lvfragmentmanagert): ptr lvfragmentt {.
    cdecl, importc: "lv_fragment_manager_get_parent_fragment".}
proc lvfragmentcreate*(cls: ptr lvfragmentclasst; args: pointer): ptr lvfragmentt {.
    cdecl, importc: "lv_fragment_create".}
proc lvfragmentdelete*(fragment: ptr lvfragmentt): void {.cdecl,
    importc: "lv_fragment_delete".}
proc lvfragmentgetmanager*(fragment: ptr lvfragmentt): ptr lvfragmentmanagert {.
    cdecl, importc: "lv_fragment_get_manager".}
proc lvfragmentgetcontainer*(fragment: ptr lvfragmentt): ptr ptr lvobjt {.cdecl,
    importc: "lv_fragment_get_container".}
proc lvfragmentgetparent*(fragment: ptr lvfragmentt): ptr lvfragmentt {.cdecl,
    importc: "lv_fragment_get_parent".}
proc lvfragmentcreateobj*(fragment: ptr lvfragmentt; container: ptr lvobjt): ptr lvobjt {.
    cdecl, importc: "lv_fragment_create_obj".}
proc lvfragmentdeleteobj*(fragment: ptr lvfragmentt): void {.cdecl,
    importc: "lv_fragment_delete_obj".}
proc lvfragmentrecreateobj*(fragment: ptr lvfragmentt): void {.cdecl,
    importc: "lv_fragment_recreate_obj".}
proc lvimgfontcreate*(height: uint16; pathcb: lvimgfontgetpathcbt;
                      userdata: pointer): ptr lvfontt {.cdecl,
    importc: "lv_imgfont_create".}
proc lvimgfontdestroy*(font: ptr lvfontt): void {.cdecl,
    importc: "lv_imgfont_destroy".}
var lvimepinyinclass* {.importc: "lv_ime_pinyin_class".}: lvobjclasst
proc lvimepinyincreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_ime_pinyin_create".}
proc lvimepinyinsetkeyboard*(obj: ptr lvobjt; kb: ptr lvobjt): void {.cdecl,
    importc: "lv_ime_pinyin_set_keyboard".}
proc lvimepinyinsetdict*(obj: ptr lvobjt; dict: ptr lvpinyindictt): void {.
    cdecl, importc: "lv_ime_pinyin_set_dict".}
proc lvimepinyinsetmode*(obj: ptr lvobjt; mode: lvimepinyinmodet): void {.cdecl,
    importc: "lv_ime_pinyin_set_mode".}
proc lvimepinyingetkb*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_ime_pinyin_get_kb".}
proc lvimepinyingetcandpanel*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_ime_pinyin_get_cand_panel".}
proc lvimepinyingetdict*(obj: ptr lvobjt): ptr lvpinyindictt {.cdecl,
    importc: "lv_ime_pinyin_get_dict".}
var lvfileexplorerclass* {.importc: "lv_file_explorer_class".}: lvobjclasst
proc lvfileexplorercreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_file_explorer_create".}
proc lvfileexplorersetquickaccesspath*(obj: ptr lvobjt; dir: lvfileexplorerdirt;
                                       path: cstring): void {.cdecl,
    importc: "lv_file_explorer_set_quick_access_path".}
proc lvfileexplorersetsort*(obj: ptr lvobjt; sort: lvfileexplorersortt): void {.
    cdecl, importc: "lv_file_explorer_set_sort".}
proc lvfileexplorergetselectedfilename*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_file_explorer_get_selected_file_name".}
proc lvfileexplorergetcurrentpath*(obj: ptr lvobjt): cstring {.cdecl,
    importc: "lv_file_explorer_get_current_path".}
proc lvfileexplorergetheader*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_file_explorer_get_header".}
proc lvfileexplorergetquickaccessarea*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_file_explorer_get_quick_access_area".}
proc lvfileexplorergetpathlabel*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_file_explorer_get_path_label".}
proc lvfileexplorergetplaceslist*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_file_explorer_get_places_list".}
proc lvfileexplorergetdevicelist*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_file_explorer_get_device_list".}
proc lvfileexplorergetfiletable*(obj: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_file_explorer_get_file_table".}
proc lvfileexplorergetsort*(obj: ptr lvobjt): lvfileexplorersortt {.cdecl,
    importc: "lv_file_explorer_get_sort".}
proc lvfileexploreropendir*(obj: ptr lvobjt; dir: cstring): void {.cdecl,
    importc: "lv_file_explorer_open_dir".}
var lvbarcodeclass* {.importc: "lv_barcode_class".}: lvobjclasst
proc lvbarcodecreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_barcode_create".}
proc lvbarcodesetdarkcolor*(obj: ptr lvobjt; color: lvcolort): void {.cdecl,
    importc: "lv_barcode_set_dark_color".}
proc lvbarcodesetlightcolor*(obj: ptr lvobjt; color: lvcolort): void {.cdecl,
    importc: "lv_barcode_set_light_color".}
proc lvbarcodesetscale*(obj: ptr lvobjt; scale: uint16): void {.cdecl,
    importc: "lv_barcode_set_scale".}
proc lvbarcodesetdirection*(obj: ptr lvobjt; direction: lvdirt): void {.cdecl,
    importc: "lv_barcode_set_direction".}
proc lvbarcodeupdate*(obj: ptr lvobjt; data: cstring): lvresultt {.cdecl,
    importc: "lv_barcode_update".}
proc lvbarcodegetdarkcolor*(obj: ptr lvobjt): lvcolort {.cdecl,
    importc: "lv_barcode_get_dark_color".}
proc lvbarcodegetlightcolor*(obj: ptr lvobjt): lvcolort {.cdecl,
    importc: "lv_barcode_get_light_color".}
proc lvbarcodegetscale*(obj: ptr lvobjt): uint16 {.cdecl,
    importc: "lv_barcode_get_scale".}
proc lvbindecoderinit*(): void {.cdecl, importc: "lv_bin_decoder_init".}
proc lvbindecoderinfo*(decoder: ptr lvimagedecodert; src: pointer;
                       header: ptr lvimageheadert): lvresultt {.cdecl,
    importc: "lv_bin_decoder_info".}
proc lvbindecodergetarea*(decoder: ptr lvimagedecodert;
                          dsc: ptr lvimagedecoderdsct; fullarea: ptr lvareat;
                          decodedarea: ptr lvareat): lvresultt {.cdecl,
    importc: "lv_bin_decoder_get_area".}
proc lvbmpinit*(): void {.cdecl, importc: "lv_bmp_init".}
proc lvbmpdeinit*(): void {.cdecl, importc: "lv_bmp_deinit".}
proc lvrledecompress*(input: ptr uint8; inputbufflen: uint32; output: ptr uint8;
                      outputbufflen: uint32; blksize: uint8): uint32 {.cdecl,
    importc: "lv_rle_decompress".}
proc lvfsstdioinit*(): void {.cdecl, importc: "lv_fs_stdio_init".}
proc lvfsmemfsinit*(): void {.cdecl, importc: "lv_fs_memfs_init".}
proc lvlodepnginit*(): void {.cdecl, importc: "lv_lodepng_init".}
proc lvlodepngdeinit*(): void {.cdecl, importc: "lv_lodepng_deinit".}
proc gdopengiffile*(fname: cstring): ptr gdgif {.cdecl,
    importc: "gd_open_gif_file".}
proc gdopengifdata*(data: pointer): ptr gdgif {.cdecl,
    importc: "gd_open_gif_data".}
proc gdrenderframe*(gif: ptr gdgif; buffer: ptr uint8): void {.cdecl,
    importc: "gd_render_frame".}
proc gdgetframe*(gif: ptr gdgif): cint {.cdecl, importc: "gd_get_frame".}
proc gdrewind*(gif: ptr gdgif): void {.cdecl, importc: "gd_rewind".}
proc gdclosegif*(gif: ptr gdgif): void {.cdecl, importc: "gd_close_gif".}
var lvgifclass* {.importc: "lv_gif_class".}: lvobjclasst
proc lvgifcreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_gif_create".}
proc lvgifsetsrc*(obj: ptr lvobjt; src: pointer): void {.cdecl,
    importc: "lv_gif_set_src".}
proc lvgifrestart*(obj: ptr lvobjt): void {.cdecl, importc: "lv_gif_restart".}
proc lvgifpause*(obj: ptr lvobjt): void {.cdecl, importc: "lv_gif_pause".}
proc lvgifresume*(obj: ptr lvobjt): void {.cdecl, importc: "lv_gif_resume".}
var lvqrcodeclass* {.importc: "lv_qrcode_class".}: lvobjclasst
proc lvqrcodecreate*(parent: ptr lvobjt): ptr lvobjt {.cdecl,
    importc: "lv_qrcode_create".}
proc lvqrcodesetsize*(obj: ptr lvobjt; size: int32): void {.cdecl,
    importc: "lv_qrcode_set_size".}
proc lvqrcodesetdarkcolor*(obj: ptr lvobjt; color: lvcolort): void {.cdecl,
    importc: "lv_qrcode_set_dark_color".}
proc lvqrcodesetlightcolor*(obj: ptr lvobjt; color: lvcolort): void {.cdecl,
    importc: "lv_qrcode_set_light_color".}
proc lvqrcodeupdate*(obj: ptr lvobjt; data: pointer; datalen: uint32): lvresultt {.
    cdecl, importc: "lv_qrcode_update".}
proc lvtjpgdinit*(): void {.cdecl, importc: "lv_tjpgd_init".}
proc lvtjpgddeinit*(): void {.cdecl, importc: "lv_tjpgd_deinit".}
proc lvtinyttfinit*(): void {.cdecl, importc: "lv_tiny_ttf_init".}
proc lvtinyttfdeinit*(): void {.cdecl, importc: "lv_tiny_ttf_deinit".}
proc lvtinyttfcreatedata*(data: pointer; datasize: csize_t; fontsize: int32): ptr lvfontt {.
    cdecl, importc: "lv_tiny_ttf_create_data".}
proc lvtinyttfcreatedataex*(data: pointer; datasize: csize_t; fontsize: int32;
                            cachesize: csize_t): ptr lvfontt {.cdecl,
    importc: "lv_tiny_ttf_create_data_ex".}
proc lvtinyttfsetsize*(font: ptr lvfontt; fontsize: int32): void {.cdecl,
    importc: "lv_tiny_ttf_set_size".}
proc lvtinyttfdestroy*(font: ptr lvfontt): void {.cdecl,
    importc: "lv_tiny_ttf_destroy".}
proc lvmatrixidentity*(matrix: ptr lvmatrixt): void {.cdecl,
    importc: "lv_matrix_identity".}
proc lvmatrixtranslate*(matrix: ptr lvmatrixt; tx: cfloat; ty: cfloat): void {.
    cdecl, importc: "lv_matrix_translate".}
proc lvmatrixscale*(matrix: ptr lvmatrixt; scalex: cfloat; scaley: cfloat): void {.
    cdecl, importc: "lv_matrix_scale".}
proc lvmatrixrotate*(matrix: ptr lvmatrixt; degree: cfloat): void {.cdecl,
    importc: "lv_matrix_rotate".}
proc lvmatrixskew*(matrix: ptr lvmatrixt; skewx: cfloat; skewy: cfloat): void {.
    cdecl, importc: "lv_matrix_skew".}
proc lvmatrixmultiply*(matrix: ptr lvmatrixt; matrix2: ptr lvmatrixt): void {.
    cdecl, importc: "lv_matrix_multiply".}
proc lvmatrixtransformpoint*(matrix: ptr lvmatrixt; point: ptr lvfpointt): void {.
    cdecl, importc: "lv_matrix_transform_point".}
proc lvmatrixtransformpath*(matrix: ptr lvmatrixt; path: ptr lvvectorpatht): void {.
    cdecl, importc: "lv_matrix_transform_path".}
proc lvvectorpathcreate*(quality: lvvectorpathqualityt): ptr lvvectorpatht {.
    cdecl, importc: "lv_vector_path_create".}
proc lvvectorpathcopy*(targetpath: ptr lvvectorpatht; path: ptr lvvectorpatht): void {.
    cdecl, importc: "lv_vector_path_copy".}
proc lvvectorpathclear*(path: ptr lvvectorpatht): void {.cdecl,
    importc: "lv_vector_path_clear".}
proc lvvectorpathdelete*(path: ptr lvvectorpatht): void {.cdecl,
    importc: "lv_vector_path_delete".}
proc lvvectorpathmoveto*(path: ptr lvvectorpatht; p: ptr lvfpointt): void {.
    cdecl, importc: "lv_vector_path_move_to".}
proc lvvectorpathlineto*(path: ptr lvvectorpatht; p: ptr lvfpointt): void {.
    cdecl, importc: "lv_vector_path_line_to".}
proc lvvectorpathquadto*(path: ptr lvvectorpatht; p1: ptr lvfpointt;
                         p2: ptr lvfpointt): void {.cdecl,
    importc: "lv_vector_path_quad_to".}
proc lvvectorpathcubicto*(path: ptr lvvectorpatht; p1: ptr lvfpointt;
                          p2: ptr lvfpointt; p3: ptr lvfpointt): void {.cdecl,
    importc: "lv_vector_path_cubic_to".}
proc lvvectorpathclose*(path: ptr lvvectorpatht): void {.cdecl,
    importc: "lv_vector_path_close".}
proc lvvectorpathgetbounding*(path: ptr lvvectorpatht; area: ptr lvareat): void {.
    cdecl, importc: "lv_vector_path_get_bounding".}
proc lvvectorpathappendrect*(path: ptr lvvectorpatht; rect: ptr lvareat;
                             rx: cfloat; ry: cfloat): void {.cdecl,
    importc: "lv_vector_path_append_rect".}
proc lvvectorpathappendcircle*(path: ptr lvvectorpatht; c: ptr lvfpointt;
                               rx: cfloat; ry: cfloat): void {.cdecl,
    importc: "lv_vector_path_append_circle".}
proc lvvectorpathappendarc*(path: ptr lvvectorpatht; c: ptr lvfpointt;
                            radius: cfloat; startangle: cfloat; sweep: cfloat;
                            pie: bool): void {.cdecl,
    importc: "lv_vector_path_append_arc".}
proc lvvectorpathappendpath*(path: ptr lvvectorpatht; subpath: ptr lvvectorpatht): void {.
    cdecl, importc: "lv_vector_path_append_path".}
proc lvvectordsccreate*(layer: ptr lvlayert): ptr lvvectordsct {.cdecl,
    importc: "lv_vector_dsc_create".}
proc lvvectordscdelete*(dsc: ptr lvvectordsct): void {.cdecl,
    importc: "lv_vector_dsc_delete".}
proc lvvectordscsettransform*(dsc: ptr lvvectordsct; matrix: ptr lvmatrixt): void {.
    cdecl, importc: "lv_vector_dsc_set_transform".}
proc lvvectordscsetblendmode*(dsc: ptr lvvectordsct; blend: lvvectorblendt): void {.
    cdecl, importc: "lv_vector_dsc_set_blend_mode".}
proc lvvectordscsetfillcolor32*(dsc: ptr lvvectordsct; color: lvcolor32t): void {.
    cdecl, importc: "lv_vector_dsc_set_fill_color32".}
proc lvvectordscsetfillcolor*(dsc: ptr lvvectordsct; color: lvcolort): void {.
    cdecl, importc: "lv_vector_dsc_set_fill_color".}
proc lvvectordscsetfillopa*(dsc: ptr lvvectordsct; opa: lvopat): void {.cdecl,
    importc: "lv_vector_dsc_set_fill_opa".}
proc lvvectordscsetfillrule*(dsc: ptr lvvectordsct; rule: lvvectorfillt): void {.
    cdecl, importc: "lv_vector_dsc_set_fill_rule".}
proc lvvectordscsetfillimage*(dsc: ptr lvvectordsct; imgdsc: ptr lvdrawimagedsct): void {.
    cdecl, importc: "lv_vector_dsc_set_fill_image".}
proc lvvectordscsetfilllineargradient*(dsc: ptr lvvectordsct; x1: cfloat;
                                       y1: cfloat; x2: cfloat; y2: cfloat): void {.
    cdecl, importc: "lv_vector_dsc_set_fill_linear_gradient".}
proc lvvectordscsetfillradialgradient*(dsc: ptr lvvectordsct; cx: cfloat;
                                       cy: cfloat; radius: cfloat): void {.
    cdecl, importc: "lv_vector_dsc_set_fill_radial_gradient".}
proc lvvectordscsetfillgradientspread*(dsc: ptr lvvectordsct;
                                       spread: lvvectorgradientspreadt): void {.
    cdecl, importc: "lv_vector_dsc_set_fill_gradient_spread".}
proc lvvectordscsetfillgradientcolorstops*(dsc: ptr lvvectordsct;
    stops: ptr lvgradientstopt; count: uint16): void {.cdecl,
    importc: "lv_vector_dsc_set_fill_gradient_color_stops".}
proc lvvectordscsetfilltransform*(dsc: ptr lvvectordsct; matrix: ptr lvmatrixt): void {.
    cdecl, importc: "lv_vector_dsc_set_fill_transform".}
proc lvvectordscsetstrokecolor32*(dsc: ptr lvvectordsct; color: lvcolor32t): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_color32".}
proc lvvectordscsetstrokecolor*(dsc: ptr lvvectordsct; color: lvcolort): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_color".}
proc lvvectordscsetstrokeopa*(dsc: ptr lvvectordsct; opa: lvopat): void {.cdecl,
    importc: "lv_vector_dsc_set_stroke_opa".}
proc lvvectordscsetstrokewidth*(dsc: ptr lvvectordsct; width: cfloat): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_width".}
proc lvvectordscsetstrokedash*(dsc: ptr lvvectordsct; dashpattern: ptr cfloat;
                               dashcount: uint16): void {.cdecl,
    importc: "lv_vector_dsc_set_stroke_dash".}
proc lvvectordscsetstrokecap*(dsc: ptr lvvectordsct; cap: lvvectorstrokecapt): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_cap".}
proc lvvectordscsetstrokejoin*(dsc: ptr lvvectordsct; join: lvvectorstrokejoint): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_join".}
proc lvvectordscsetstrokemiterlimit*(dsc: ptr lvvectordsct; miterlimit: uint16): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_miter_limit".}
proc lvvectordscsetstrokelineargradient*(dsc: ptr lvvectordsct; x1: cfloat;
    y1: cfloat; x2: cfloat; y2: cfloat): void {.cdecl,
    importc: "lv_vector_dsc_set_stroke_linear_gradient".}
proc lvvectordscsetstrokeradialgradient*(dsc: ptr lvvectordsct; cx: cfloat;
    cy: cfloat; radius: cfloat): void {.cdecl, importc: "lv_vector_dsc_set_stroke_radial_gradient".}
proc lvvectordscsetstrokegradientspread*(dsc: ptr lvvectordsct;
    spread: lvvectorgradientspreadt): void {.cdecl,
    importc: "lv_vector_dsc_set_stroke_gradient_spread".}
proc lvvectordscsetstrokegradientcolorstops*(dsc: ptr lvvectordsct;
    stops: ptr lvgradientstopt; count: uint16): void {.cdecl,
    importc: "lv_vector_dsc_set_stroke_gradient_color_stops".}
proc lvvectordscsetstroketransform*(dsc: ptr lvvectordsct; matrix: ptr lvmatrixt): void {.
    cdecl, importc: "lv_vector_dsc_set_stroke_transform".}
proc lvvectordscidentity*(dsc: ptr lvvectordsct): void {.cdecl,
    importc: "lv_vector_dsc_identity".}
proc lvvectordscscale*(dsc: ptr lvvectordsct; scalex: cfloat; scaley: cfloat): void {.
    cdecl, importc: "lv_vector_dsc_scale".}
proc lvvectordscrotate*(dsc: ptr lvvectordsct; degree: cfloat): void {.cdecl,
    importc: "lv_vector_dsc_rotate".}
proc lvvectordsctranslate*(dsc: ptr lvvectordsct; tx: cfloat; ty: cfloat): void {.
    cdecl, importc: "lv_vector_dsc_translate".}
proc lvvectordscskew*(dsc: ptr lvvectordsct; skewx: cfloat; skewy: cfloat): void {.
    cdecl, importc: "lv_vector_dsc_skew".}
proc lvvectordscaddpath*(dsc: ptr lvvectordsct; path: ptr lvvectorpatht): void {.
    cdecl, importc: "lv_vector_dsc_add_path".}
proc lvvectorcleararea*(dsc: ptr lvvectordsct; rect: ptr lvareat): void {.cdecl,
    importc: "lv_vector_clear_area".}
proc lvdrawvector*(dsc: ptr lvvectordsct): void {.cdecl,
    importc: "lv_draw_vector".}
proc internallvvectorforeachdestroytasks*(tasklist: ptr lvllt;
    cb: vectordrawtaskcb; data: pointer): void {.cdecl,
    importc: "_lv_vector_for_each_destroy_tasks".}
proc lvthemegetfromobj*(obj: ptr lvobjt): ptr lvthemet {.cdecl,
    importc: "lv_theme_get_from_obj".}
proc lvthemeapply*(obj: ptr lvobjt): void {.cdecl, importc: "lv_theme_apply".}
proc lvthemesetparent*(newtheme: ptr lvthemet; parent: ptr lvthemet): void {.
    cdecl, importc: "lv_theme_set_parent".}
proc lvthemesetapplycb*(theme: ptr lvthemet; applycb: lvthemeapplycbt): void {.
    cdecl, importc: "lv_theme_set_apply_cb".}
proc lvthemegetfontsmall*(obj: ptr lvobjt): ptr lvfontt {.cdecl,
    importc: "lv_theme_get_font_small".}
proc lvthemegetfontnormal*(obj: ptr lvobjt): ptr lvfontt {.cdecl,
    importc: "lv_theme_get_font_normal".}
proc lvthemegetfontlarge*(obj: ptr lvobjt): ptr lvfontt {.cdecl,
    importc: "lv_theme_get_font_large".}
proc lvthemegetcolorprimary*(obj: ptr lvobjt): lvcolort {.cdecl,
    importc: "lv_theme_get_color_primary".}
proc lvthemegetcolorsecondary*(obj: ptr lvobjt): lvcolort {.cdecl,
    importc: "lv_theme_get_color_secondary".}
proc lvthemedefaultinit*(disp: ptr lvdisplayt; colorprimary: lvcolort;
                         colorsecondary: lvcolort; dark: bool; font: ptr lvfontt): ptr lvthemet {.
    cdecl, importc: "lv_theme_default_init".}
proc lvthemedefaultget*(): ptr lvthemet {.cdecl, importc: "lv_theme_default_get".}
proc lvthemedefaultisinited*(): bool {.cdecl,
                                       importc: "lv_theme_default_is_inited".}
proc lvthemedefaultdeinit*(): void {.cdecl, importc: "lv_theme_default_deinit".}
proc lvthememonoinit*(disp: ptr lvdisplayt; darkbg: bool; font: ptr lvfontt): ptr lvthemet {.
    cdecl, importc: "lv_theme_mono_init".}
proc lvthememonoisinited*(): bool {.cdecl, importc: "lv_theme_mono_is_inited".}
proc lvthememonodeinit*(): void {.cdecl, importc: "lv_theme_mono_deinit".}
proc lvthemesimpleinit*(disp: ptr lvdisplayt): ptr lvthemet {.cdecl,
    importc: "lv_theme_simple_init".}
proc lvthemesimpleisinited*(): bool {.cdecl,
                                      importc: "lv_theme_simple_is_inited".}
proc lvthemesimpleget*(): ptr lvthemet {.cdecl, importc: "lv_theme_simple_get".}
proc lvthemesimpledeinit*(): void {.cdecl, importc: "lv_theme_simple_deinit".}
proc lvsdlwindowcreate*(horres: int32; verres: int32): ptr lvdisplayt {.cdecl,
    importc: "lv_sdl_window_create".}
proc lvsdlwindowsetresizeable*(disp: ptr lvdisplayt; value: bool): void {.cdecl,
    importc: "lv_sdl_window_set_resizeable".}
proc lvsdlwindowsetzoom*(disp: ptr lvdisplayt; zoom: uint8): void {.cdecl,
    importc: "lv_sdl_window_set_zoom".}
proc lvsdlwindowgetzoom*(disp: ptr lvdisplayt): uint8 {.cdecl,
    importc: "lv_sdl_window_get_zoom".}
proc internallvsdlgetdispfromwinid*(winid: uint32): ptr lvdisplayt {.cdecl,
    importc: "_lv_sdl_get_disp_from_win_id".}
proc lvsdlwindowsettitle*(disp: ptr lvdisplayt; title: cstring): void {.cdecl,
    importc: "lv_sdl_window_set_title".}
proc lvsdlwindowgetrenderer*(disp: ptr lvdisplayt): pointer {.cdecl,
    importc: "lv_sdl_window_get_renderer".}
proc lvsdlquit*(): void {.cdecl, importc: "lv_sdl_quit".}
proc lvsdlmousecreate*(): ptr lvindevt {.cdecl, importc: "lv_sdl_mouse_create".}
proc lvsdlmousewheelcreate*(): ptr lvindevt {.cdecl,
    importc: "lv_sdl_mousewheel_create".}
proc lvsdlkeyboardcreate*(): ptr lvindevt {.cdecl,
    importc: "lv_sdl_keyboard_create".}
proc lvtaskhandler*(): uint32 {.cdecl, importc: "lv_task_handler".}
proc lvobjmoveforeground*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_move_foreground".}
proc lvobjmovebackground*(obj: ptr lvobjt): void {.cdecl,
    importc: "lv_obj_move_background".}
proc lvdrawswinit*(): void {.cdecl, importc: "lv_draw_sw_init".}
proc lvdrawswdeinit*(): void {.cdecl, importc: "lv_draw_sw_deinit".}
proc lvdrawswfill*(drawunit: ptr lvdrawunitt; dsc: ptr lvdrawfilldsct;
                   coords: ptr lvareat): void {.cdecl,
    importc: "lv_draw_sw_fill".}
proc lvdrawswborder*(drawunit: ptr lvdrawunitt; dsc: ptr lvdrawborderdsct;
                     coords: ptr lvareat): void {.cdecl,
    importc: "lv_draw_sw_border".}
proc lvdrawswboxshadow*(drawunit: ptr lvdrawunitt; dsc: ptr lvdrawboxshadowdsct;
                        coords: ptr lvareat): void {.cdecl,
    importc: "lv_draw_sw_box_shadow".}
proc lvdrawswimage*(drawunit: ptr lvdrawunitt; drawdsc: ptr lvdrawimagedsct;
                    coords: ptr lvareat): void {.cdecl,
    importc: "lv_draw_sw_image".}
proc lvdrawswlabel*(drawunit: ptr lvdrawunitt; dsc: ptr lvdrawlabeldsct;
                    coords: ptr lvareat): void {.cdecl,
    importc: "lv_draw_sw_label".}
proc lvdrawswarc*(drawunit: ptr lvdrawunitt; dsc: ptr lvdrawarcdsct;
                  coords: ptr lvareat): void {.cdecl, importc: "lv_draw_sw_arc".}
proc lvdrawswline*(drawunit: ptr lvdrawunitt; dsc: ptr lvdrawlinedsct): void {.
    cdecl, importc: "lv_draw_sw_line".}
proc lvdrawswlayer*(drawunit: ptr lvdrawunitt; drawdsc: ptr lvdrawimagedsct;
                    coords: ptr lvareat): void {.cdecl,
    importc: "lv_draw_sw_layer".}
proc lvdrawswtriangle*(drawunit: ptr lvdrawunitt; dsc: ptr lvdrawtriangledsct): void {.
    cdecl, importc: "lv_draw_sw_triangle".}
proc lvdrawswmaskrect*(drawunit: ptr lvdrawunitt; dsc: ptr lvdrawmaskrectdsct;
                       coords: ptr lvareat): void {.cdecl,
    importc: "lv_draw_sw_mask_rect".}
proc lvdrawswtransform*(drawunit: ptr lvdrawunitt; destarea: ptr lvareat;
                        srcbuf: pointer; srcw: int32; srch: int32;
                        srcstride: int32; drawdsc: ptr lvdrawimagedsct;
                        sup: ptr lvdrawimagesupt; cf: lvcolorformatt;
                        destbuf: pointer): void {.cdecl,
    importc: "lv_draw_sw_transform".}
proc lvdrawswvector*(drawunit: ptr lvdrawunitt; dsc: ptr lvdrawvectortaskdsct): void {.
    cdecl, importc: "lv_draw_sw_vector".}
proc lvdrawswrgb565swap*(buf: pointer; bufsizepx: uint32): void {.cdecl,
    importc: "lv_draw_sw_rgb565_swap".}
proc lvdrawswrotate*(src: pointer; dest: pointer; srcwidth: int32;
                     srcheight: int32; srcstride: int32; deststride: int32;
                     rotation: lvdisplayrotationt; colorformat: lvcolorformatt): void {.
    cdecl, importc: "lv_draw_sw_rotate".}
proc lvdrawswmaskinit*(): void {.cdecl, importc: "lv_draw_sw_mask_init".}
proc lvdrawswmaskdeinit*(): void {.cdecl, importc: "lv_draw_sw_mask_deinit".}
proc lvdrawswmaskapply*(masks: ptr UncheckedArray[pointer]; maskbuf: ptr lvopat;
                        absx: int32; absy: int32; len: int32): lvdrawswmaskrest {.
    cdecl, importc: "lv_draw_sw_mask_apply".}
proc lvdrawswmaskfreeparam*(p: pointer): void {.cdecl,
    importc: "lv_draw_sw_mask_free_param".}
proc internallvdrawswmaskcleanup*(): void {.cdecl,
    importc: "_lv_draw_sw_mask_cleanup".}
proc lvdrawswmasklinepointsinit*(param: ptr lvdrawswmasklineparamt; p1x: int32;
                                 p1y: int32; p2x: int32; p2y: int32;
                                 side: lvdrawswmasklinesidet): void {.cdecl,
    importc: "lv_draw_sw_mask_line_points_init".}
proc lvdrawswmasklineangleinit*(param: ptr lvdrawswmasklineparamt; p1x: int32;
                                py: int32; angle: int16;
                                side: lvdrawswmasklinesidet): void {.cdecl,
    importc: "lv_draw_sw_mask_line_angle_init".}
proc lvdrawswmaskangleinit*(param: ptr lvdrawswmaskangleparamt; vertexx: int32;
                            vertexy: int32; startangle: int32; endangle: int32): void {.
    cdecl, importc: "lv_draw_sw_mask_angle_init".}
proc lvdrawswmaskradiusinit*(param: ptr lvdrawswmaskradiusparamt;
                             rect: ptr lvareat; radius: int32; inv: bool): void {.
    cdecl, importc: "lv_draw_sw_mask_radius_init".}
proc lvdrawswmaskfadeinit*(param: ptr lvdrawswmaskfadeparamt;
                           coords: ptr lvareat; opatop: lvopat; ytop: int32;
                           opabottom: lvopat; ybottom: int32): void {.cdecl,
    importc: "lv_draw_sw_mask_fade_init".}
proc lvdrawswmaskmapinit*(param: ptr lvdrawswmaskmapparamt; coords: ptr lvareat;
                          map: ptr lvopat): void {.cdecl,
    importc: "lv_draw_sw_mask_map_init".}
proc lvdrawswblend*(drawunit: ptr lvdrawunitt; dsc: ptr lvdrawswblenddsct): void {.
    cdecl, importc: "lv_draw_sw_blend".}
proc lvtlsfcreate*(mem: pointer): lvtlsft {.cdecl, importc: "lv_tlsf_create".}
proc lvtlsfcreatewithpool*(mem: pointer; bytes: csize_t): lvtlsft {.cdecl,
    importc: "lv_tlsf_create_with_pool".}
proc lvtlsfdestroy*(tlsf: lvtlsft): void {.cdecl, importc: "lv_tlsf_destroy".}
proc lvtlsfgetpool*(tlsf: lvtlsft): lvpoolt {.cdecl, importc: "lv_tlsf_get_pool".}
proc lvtlsfaddpool*(tlsf: lvtlsft; mem: pointer; bytes: csize_t): lvpoolt {.
    cdecl, importc: "lv_tlsf_add_pool".}
proc lvtlsfremovepool*(tlsf: lvtlsft; pool: lvpoolt): void {.cdecl,
    importc: "lv_tlsf_remove_pool".}
proc lvtlsfmalloc*(tlsf: lvtlsft; bytes: csize_t): pointer {.cdecl,
    importc: "lv_tlsf_malloc".}
proc lvtlsfmemalign*(tlsf: lvtlsft; align: csize_t; bytes: csize_t): pointer {.
    cdecl, importc: "lv_tlsf_memalign".}
proc lvtlsfrealloc*(tlsf: lvtlsft; ptrarg: pointer; size: csize_t): pointer {.
    cdecl, importc: "lv_tlsf_realloc".}
proc lvtlsffree*(tlsf: lvtlsft; ptrarg: pointer): csize_t {.cdecl,
    importc: "lv_tlsf_free".}
proc lvtlsfblocksize*(ptrarg: pointer): csize_t {.cdecl,
    importc: "lv_tlsf_block_size".}
proc lvtlsfsize*(): csize_t {.cdecl, importc: "lv_tlsf_size".}
proc lvtlsfalignsize*(): csize_t {.cdecl, importc: "lv_tlsf_align_size".}
proc lvtlsfblocksizemin*(): csize_t {.cdecl, importc: "lv_tlsf_block_size_min".}
proc lvtlsfblocksizemax*(): csize_t {.cdecl, importc: "lv_tlsf_block_size_max".}
proc lvtlsfpooloverhead*(): csize_t {.cdecl, importc: "lv_tlsf_pool_overhead".}
proc lvtlsfallocoverhead*(): csize_t {.cdecl, importc: "lv_tlsf_alloc_overhead".}
proc lvtlsfwalkpool*(pool: lvpoolt; walker: lvtlsfwalker; user: pointer): void {.
    cdecl, importc: "lv_tlsf_walk_pool".}
proc lvtlsfcheck*(tlsf: lvtlsft): cint {.cdecl, importc: "lv_tlsf_check".}
proc lvtlsfcheckpool*(pool: lvpoolt): cint {.cdecl,
    importc: "lv_tlsf_check_pool".}
var lvglobal* {.importc: "lv_global".}: lvglobalt
proc lvversionmajor*(): cint {.cdecl, importc: "lv_version_major".}
proc lvversionminor*(): cint {.cdecl, importc: "lv_version_minor".}
proc lvversionpatch*(): cint {.cdecl, importc: "lv_version_patch".}
proc lvversioninfo*(): cstring {.cdecl, importc: "lv_version_info".}
