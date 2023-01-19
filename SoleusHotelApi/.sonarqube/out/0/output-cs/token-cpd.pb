ë
rC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Constants\ErrorMessages\AdminServiceError.cs
	namespace 	
SoleusHotelApi
 
. 
	Constants "
." #
ErrorMessages# 0
{ 
public 

static 
class 
AdminServiceError )
{ 
public 
const 
string 
ConfigurationDone -
=. /
$str0 Y
;Y Z
} 
} ©
vC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Constants\ErrorMessages\HotelUserServiceError.cs
	namespace 	
SoleusHotelApi
 
. 
	Constants "
." #
ErrorMessages# 0
{ 
public 

static 
class !
HotelUserServiceError -
{ 
public 
const 
string 
UserNotFound (
=) *
$str+ ;
;; <
public 
const 
string 
UserAlreadyExists -
=. /
$str0 J
;J K
public 
const 
string 
UserCreated '
=( )
$str* B
;B C
public 
const 
string #
NullPasswordAndUserName 3
=4 5
$str6 a
;a b
public		 
const		 
string		 
InvalidUserName		 +
=		, -
$str		. @
;		@ A
public

 
const

 
string

 
InvalidPassword

 +
=

, -
$str

. @
;

@ A
public 
const 
string 
ChangesUnsaved *
=+ ,
$str- J
;J K
public 
const 
string !
UserEditedButPassword 1
=2 3
$str4 k
;k l
public 
const 
string 
RoomDatesUnsaved ,
=- .
$str/ W
;W X
public 
const 
string #
ForbiddenEditPermission 3
=4 5
$str6 i
;i j
public 
const 
string '
ForbiddenPasswordChangeRole 7
=8 9
$str	: Ç
;
Ç É
public 
const 
string ,
 ForbiddenPasswordChangeWrongRoom <
== >
$str? e
;e f
public 
const 
string 
WrongGuestName *
=+ ,
$str- U
;U V
public 
const 
string 
	LastAdmin %
=& '
$str( N
;N O
} 
} í
xC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Constants\ErrorMessages\RoomRequestServiceError.cs
	namespace 	
SoleusHotelApi
 
. 
	Constants "
." #
ErrorMessages# 0
{ 
public 

static 
class #
RoomRequestServiceError /
{ 
public 
const 
string 
UserNotFound (
=) *
$str+ ;
;; <
public 
const 
string 
RoomNotFound (
=) *
$str+ ;
;; <
public 
const 
string 
RoomRequestNotFound /
=0 1
$str2 E
;E F
public 
const 
string 
UnableToSaveRequest /
=0 1
$str2 N
;N O
public		 
const		 
string		 +
StartDifferentDepartmentRequest		 ;
=		< =
$str		> o
;		o p
public

 
const

 
string

 )
EndDifferentDepartmentRequest

 9
=

: ;
$str

< k
;

k l
public 
const 
string 
UnableToInitiate ,
=- .
$str/ O
;O P
public 
const 
string 
UnableToEnd '
=( )
$str* E
;E F
public 
const 
string '
UnableToDeleteRequestStatus 7
=8 9
$str: c
;c d
public 
const 
string !
UnableToDeleteRequest 1
=2 3
$str4 S
;S T
} 
} û
qC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Constants\ErrorMessages\RoomServiceError.cs
	namespace 	
SoleusHotelApi
 
. 
	Constants "
." #
ErrorMessages# 0
{ 
public 

static 
class 
RoomServiceError (
{ 
public 
const 
string 
RoomNotFound (
=) *
$str+ ;
;; <
public 
const 
string 
UnableToChangeDates /
=0 1
$str2 Z
;Z [
public 
const 
string 
UnableToAddUser +
=, -
$str. Q
;Q R
} 
}		 Û
XC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Constants\Roles.cs
	namespace 	
SoleusHotelApi
 
. 
	Constants "
{ 
public 

static 
class 
Roles 
{ 
public 
const 
string 
Admin !
=" #
$str$ +
;+ ,
public 
const 
string 
Maintenance '
=( )
$str* 7
;7 8
public		 
const		 
string		 
Housekeeping		 (
=		) *
$str		+ 9
;		9 :
public

 
const

 
string

 
	Reception

 %
=

& '
$str

( 3
;

3 4
public 
const 
string 
Guest !
=" #
$str$ +
;+ ,
public 
static 
readonly 
IList $
<$ %
string% +
>+ ,
Employee- 5
=6 7
new8 ;
ReadOnlyCollection< N
<N O
stringO U
>U V
( 	
new	 
List 
< 
String 
> 
{ 	
Admin 
, 
Maintenance 
, 
Housekeeping 
, 
	Reception 
} 	
)	 

;
 
} 
} ÏL
dC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Controllers\AdminController.cs
	namespace 	
SoleusHotelApi
 
. 
Controllers $
{ 
[		 
	Authorize		 
(		 
Policy		 
=		 
$str		 $
)		$ %
]		% &
public

 

class

 
AdminController

  
:

! "
BaseApiController

# 4
{ 
private 
readonly 
IHotelUserService *
_hotelUserService+ <
;< =
private 
readonly 
IAdminService &
_adminService' 4
;4 5
public 
AdminController 
( 
IHotelUserService 0
hotelUserService1 A
,A B
IAdminServiceC P
adminServiceQ ]
)] ^
{ 	
_hotelUserService 
= 
hotelUserService  0
;0 1
_adminService 
= 
adminService (
;( )
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
List' +
<+ ,!
HotelUserWithRolesDto, A
>A B
>B C
>C D
GetHotelUsersE R
(R S
)S T
{ 	
ServiceResponse 
< 
List  
<  !!
HotelUserWithRolesDto! 6
>6 7
>7 8
response9 A
=B C
awaitD I
_hotelUserServiceJ [
.[ \
GetHotelUsers\ i
(i j
)j k
;k l
if 
( 
! 
response 
. 
IsValid !
)! "
{ 
return 

BadRequest !
(! "
response" *
.* +
Errors+ 1
)1 2
;2 3
} 
return 
Ok 
( 
response 
. 
Data #
)# $
;$ %
}   	
["" 	
HttpGet""	 
("" 
$str"" %
)""% &
]""& '
public## 
async## 
Task## 
<## 
ActionResult## &
<##& '!
HotelUserWithRolesDto##' <
>##< =
>##= >
GetHotelUsers##? L
(##L M
string##M S

roomNumber##T ^
)##^ _
{$$ 	
ServiceResponse%% 
<%% !
HotelUserWithRolesDto%% 1
>%%1 2
response%%3 ;
=%%< =
await%%> C
_hotelUserService%%D U
.%%U V!
GetHotelUserWithRoles%%V k
(%%k l

roomNumber%%l v
)%%v w
;%%w x
if'' 
('' 
!'' 
response'' 
.'' 
IsValid'' !
)''! "
{(( 
return)) 

BadRequest)) !
())! "
response))" *
.))* +
Errors))+ 1
)))1 2
;))2 3
}** 
return,, 
Ok,, 
(,, 
response,, 
.,, 
Data,, #
),,# $
;,,$ %
}-- 	
[// 	
HttpPost//	 
(// 
$str// 
)//  
]//  !
public00 
async00 
Task00 
<00 
ActionResult00 &
<00& '
CreatedHotelUserDto00' :
>00: ;
>00; <

CreateUser00= G
(00G H
[00H I
FromBody00I Q
]00Q R
CreateHotelUserDto00S e
createHotelUserDto00f x
)00x y
{11 	
ServiceResponse22 
<22 
CreatedHotelUserDto22 /
>22/ 0
response221 9
=22: ;
await22< A
_hotelUserService22B S
.22S T
CreateHotelUser22T c
(22c d
createHotelUserDto22d v
)22v w
;22w x
if44 
(44 
!44 
response44 
.44 
IsValid44 !
)44! "
{55 
return66 

BadRequest66 !
(66! "
response66" *
.66* +
Errors66+ 1
)661 2
;662 3
}77 
return99 
Ok99 
(99 
response99 
.99 
Data99 #
)99# $
;99$ %
}:: 	
[<< 	
HttpPut<<	 
(<< 
$str<< 
)<< 
]<< 
public== 
async== 
Task== 
<== 
ActionResult== &
<==& '
CreatedHotelUserDto==' :
>==: ;
>==; <
EditUser=== E
(==E F
[==F G
FromBody==G O
]==O P
CreateHotelUserDto==Q c
editHotelUser==d q
)==q r
{>> 	
ServiceResponse?? 
<?? 
CreatedHotelUserDto?? /
>??/ 0
response??1 9
=??: ;
await??< A
_hotelUserService??B S
.??S T
EditUser??T \
(??\ ]
editHotelUser??] j
)??j k
;??k l
ifAA 
(AA 
!AA 
responseAA 
.AA 
IsValidAA !
)AA! "
{BB 
returnCC 

BadRequestCC !
(CC! "
responseCC" *
.CC* +
ErrorsCC+ 1
)CC1 2
;CC2 3
}DD 
returnFF 
OkFF 
(FF 
responseFF 
.FF 
DataFF #
)FF# $
;FF$ %
}GG 	
[II 	
HttpPostII	 
(II 
$strII #
)II# $
]II$ %
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
ActionResultJJ &
>JJ& '
ResetGuestPasswordsJJ( ;
(JJ; <
[JJ< =
FromBodyJJ= E
]JJE F
stringJJG M
passwordJJN V
)JJV W
{KK 	
ServiceResponseLL 
<LL 
boolLL  
>LL  !
responseLL" *
=LL+ ,
awaitLL- 2
_hotelUserServiceLL3 D
.LLD E 
ResetGuestsPasswordsLLE Y
(LLY Z
passwordLLZ b
)LLb c
;LLc d
ifNN 
(NN 
!NN 
responseNN 
.NN 
IsValidNN !
)NN! "
{OO 
returnPP 

BadRequestPP !
(PP! "
responsePP" *
.PP* +
ErrorsPP+ 1
)PP1 2
;PP2 3
}QQ 
returnSS 
	NoContentSS 
(SS 
)SS 
;SS 
}TT 	
[VV 	

HttpDeleteVV	 
(VV 
$strVV .
)VV. /
]VV/ 0
publicWW 
asyncWW 
TaskWW 
<WW 
ActionResultWW &
>WW& '

DeleteUserWW( 2
(WW2 3
stringWW3 9

roomNumberWW: D
)WWD E
{XX 	
ServiceResponseYY 
<YY 
boolYY  
>YY  !
responseYY" *
=YY+ ,
awaitYY- 2
_hotelUserServiceYY3 D
.YYD E
DeleteHotelUserYYE T
(YYT U

roomNumberYYU _
)YY_ `
;YY` a
if[[ 
([[ 
![[ 
response[[ 
.[[ 
IsValid[[ !
)[[! "
{\\ 
return]] 

BadRequest]] !
(]]! "
response]]" *
.]]* +
Errors]]+ 1
)]]1 2
;]]2 3
}^^ 
return`` 
Ok`` 
(`` 
)`` 
;`` 
}aa 	
[cc 	
HttpGetcc	 
(cc 
$strcc 
)cc 
]cc  
publicdd 
asyncdd 
Taskdd 
<dd 
ActionResultdd &
<dd& '
Listdd' +
<dd+ ,
HotelRoleDtodd, 8
>dd8 9
>dd9 :
>dd: ;
GetUsersWithRolesdd< M
(ddM N
)ddN O
{ee 	
ServiceResponseff 
<ff 
Listff  
<ff  !
HotelRoleDtoff! -
>ff- .
>ff. /
responseff0 8
=ff9 :
awaitff; @
_hotelUserServiceffA R
.ffR S"
GetUsersWithRolesAsyncffS i
(ffi j
)ffj k
;ffk l
returnhh 
Okhh 
(hh 
responsehh 
.hh 
Datahh #
)hh# $
;hh$ %
}ii 	
[kk 	
AllowAnonymouskk	 
]kk 
[ll 	
HttpGetll	 
(ll 
$strll  
)ll  !
]ll! "
publicmm 
asyncmm 
Taskmm 
<mm 
ActionResultmm &
<mm& '
stringmm' -
>mm- .
>mm. /
InitialSetupmm0 <
(mm< =
)mm= >
{nn 	
ServiceResponseoo 
<oo 
stringoo "
>oo" #
responseoo$ ,
=oo- .
awaitoo/ 4
_adminServiceoo5 B
.ooB C
InitialSetupooC O
(ooO P
)ooP Q
;ooQ R
ifqq 
(qq 
!qq 
responseqq 
.qq 
IsValidqq !
)qq! "
{rr 
returnss 

BadRequestss !
(ss! "
responsess" *
.ss* +
Errorsss+ 1
)ss1 2
;ss2 3
}tt 
returnvv 
Okvv 
(vv 
responsevv 
.vv 
Datavv #
)vv# $
;vv$ %
}ww 	
}xx 
}{{ π
fC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Controllers\BaseApiController.cs
	namespace 	
SoleusHotelApi
 
. 
Controllers $
{ 
[ 
ApiController 
] 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
public		 

class		 
BaseApiController		 "
:		# $
ControllerBase		% 3
{

 
} 
} èD
hC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Controllers\HotelUserController.cs
	namespace 	
SoleusHotelApi
 
. 
Controllers $
{		 
public

 

class

 
HotelUserController

 $
:

% &
BaseApiController

' 8
{ 
private 
readonly 
IHotelUserService *
_hotelUserService+ <
;< =
public 
HotelUserController "
(" #
IHotelUserService# 4
hotelUserService5 E
)E F
{ 	
_hotelUserService 
= 
hotelUserService  0
;0 1
} 	
[ 	
AllowAnonymous	 
] 
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
LoggedUserDto' 4
>4 5
>5 6
Login7 <
(< =
[= >
FromBody> F
]F G
LoginHotelUserDtoH Y
loginHotelUserDtoZ k
)k l
{ 	
ServiceResponse 
< 
LoggedUserDto )
>) *
response+ 3
=4 5
await6 ;
_hotelUserService< M
.M N
LoginHotelUserN \
(\ ]
loginHotelUserDto] n
)n o
;o p
if 
( 
! 
response 
. 
IsValid !
)! "
{ 
return 
Unauthorized #
(# $
response$ ,
., -
Errors- 3
)3 4
;4 5
} 
return 
Ok 
( 
response 
. 
Data #
)# $
;$ %
} 	
[!! 	
	Authorize!!	 
(!! 
Policy!! 
=!! 
$str!! +
)!!+ ,
]!!, -
["" 	
HttpGet""	 
("" 
$str"" 
)"" 
]"" 
public## 
async## 
Task## 
<## 
ActionResult## &
<##& '
List##' +
<##+ ,$
HotelUserWithRequestsDto##, D
>##D E
>##E F
>##F G*
GetHotelUserWithRequestsNumber##H f
(##f g
)##g h
{$$ 	
ServiceResponse%% 
<%% 
List%%  
<%%  !$
HotelUserWithRequestsDto%%! 9
>%%9 :
>%%: ;
response%%< D
=%%E F
await%%G L
_hotelUserService%%M ^
.%%^ _$
GetHotelUserWithRequests%%_ w
(%%w x
)%%x y
;%%y z
if'' 
('' 
!'' 
response'' 
.'' 
IsValid'' !
)''! "
{(( 
return)) 

BadRequest)) !
())! "
response))" *
.))* +
Errors))+ 1
)))1 2
;))2 3
}** 
return,, 
Ok,, 
(,, 
response,, 
.,, 
Data,, #
),,# $
;,,$ %
}-- 	
[// 	
	Authorize//	 
(// 
Policy// 
=// 
$str// +
)//+ ,
]//, -
[00 	
HttpGet00	 
(00 
$str00 
)00  
]00  !
public11 
async11 
Task11 
<11 
ActionResult11 &
<11& '
HotelUserDto11' 3
>113 4
>114 5
GetHotelUser116 B
(11B C
string11C I

roomNumber11J T
)11T U
{22 	
ServiceResponse33 
<33 
HotelUserDto33 (
>33( )
response33* 2
=333 4
await335 :
_hotelUserService33; L
.33L M
GetHotelUser33M Y
(33Y Z

roomNumber33Z d
)33d e
;33e f
if55 
(55 
!55 
response55 
.55 
IsValid55 !
)55! "
{66 
return77 

BadRequest77 !
(77! "
response77" *
.77* +
Errors77+ 1
)771 2
;772 3
}88 
return:: 
Ok:: 
(:: 
response:: 
.:: 
Data:: #
)::# $
;::$ %
};; 	
[== 	
	Authorize==	 
(== 
Policy== 
=== 
$str== ,
)==, -
]==- .
[>> 	
	HttpPatch>>	 
(>> 
$str>> 
)>>  
]>>  !
public?? 
async?? 
Task?? 
<?? 
ActionResult?? &
<??& '
HotelUserDto??' 3
>??3 4
>??4 5

EditGuests??6 @
(??@ A
[??A B
FromBody??B J
]??J K
HotelUserDto??L X
editUser??Y a
)??a b
{@@ 	
ServiceResponseAA 
<AA 
HotelUserDtoAA (
>AA( )
responseAA* 2
=AA3 4
awaitAA5 :
_hotelUserServiceAA; L
.AAL M
EditGuestUserAAM Z
(AAZ [
editUserAA[ c
)AAc d
;AAd e
ifCC 
(CC 
!CC 
responseCC 
.CC 
IsValidCC !
)CC! "
{DD 
returnEE 

BadRequestEE !
(EE! "
responseEE" *
.EE* +
ErrorsEE+ 1
)EE1 2
;EE2 3
}FF 
returnHH 
OkHH 
(HH 
responseHH 
.HH 
DataHH #
)HH# $
;HH$ %
}II 	
[KK 	
	HttpPatchKK	 
(KK 
$strKK $
)KK$ %
]KK% &
publicLL 
asyncLL 
TaskLL 
<LL 
ActionResultLL &
<LL& '
LoggedUserDtoLL' 4
>LL4 5
>LL5 6
UpdateUserPasswordLL7 I
(LLI J
[LLJ K
FromBodyLLK S
]LLS T'
HotelUserPasswordUpdatesDtoLLU p
passwordUpdateLLq 
)	LL Ä
{MM 	
ifNN 
(NN 
passwordUpdateNN 
isNN !
nullNN" &
)NN& '
{OO 
returnPP 

BadRequestPP !
(PP! "
)PP" #
;PP# $
}QQ 
ServiceResponseSS 
<SS 
LoggedUserDtoSS )
>SS) *
responseSS+ 3
=SS4 5
awaitSS6 ;
_hotelUserServiceSS< M
.SSM N
ForgotPasswordSSN \
(SS\ ]
passwordUpdateSS] k
,SSk l
UserSSm q
.SSq r
GetRoomNumberSSr 
(	SS Ä
)
SSÄ Å
)
SSÅ Ç
;
SSÇ É
ifUU 
(UU 
!UU 
responseUU 
.UU 
IsValidUU !
)UU! "
{VV 
returnWW 

BadRequestWW !
(WW! "
responseWW" *
.WW* +
ErrorsWW+ 1
)WW1 2
;WW2 3
}XX 
returnZZ 
OkZZ 
(ZZ 
responseZZ 
.ZZ 
DataZZ #
)ZZ# $
;ZZ$ %
}[[ 	
[]] 	
	Authorize]]	 
(]] 
Policy]] 
=]] 
$str]] ,
)]], -
]]]- .
[^^ 	
	HttpPatch^^	 
(^^ 
$str^^ 3
)^^3 4
]^^4 5
public__ 
async__ 
Task__ 
<__ 
ActionResult__ &
<__& '(
GenerateHotelUserPasswordDto__' C
>__C D
>__D E 
GenerateUserPassword__F Z
(__Z [
string__[ a

roomNumber__b l
)__l m
{`` 	
ServiceResponseaa 
<aa (
GenerateHotelUserPasswordDtoaa 8
>aa8 9
responseaa: B
=aaC D
awaitaaE J
_hotelUserServiceaaK \
.aa\ ] 
GenerateUserPasswordaa] q
(aaq r

roomNumberaar |
)aa| }
;aa} ~
ifcc 
(cc 
!cc 
responsecc 
.cc 
IsValidcc !
)cc! "
{dd 
returnee 

BadRequestee !
(ee! "
responseee" *
.ee* +
Errorsee+ 1
)ee1 2
;ee2 3
}ff 
returnhh 
Okhh 
(hh 
responsehh 
.hh 
Datahh #
)hh# $
;hh$ %
}ii 	
}jj 
}kk ÷C
jC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Controllers\RoomRequestController.cs
	namespace 	
SoleusHotelApi
 
. 
Controllers $
{		 
public

 

class

 !
RoomRequestController

 &
:

' (
BaseApiController

) :
{ 
private 
readonly 
IRoomRequestService ,
_roomRequestService- @
;@ A
public !
RoomRequestController $
($ %
IRoomRequestService% 8
roomRequestService9 K
)K L
{ 	
_roomRequestService 
=  !
roomRequestService" 4
;4 5
} 	
[ 	
HttpPost	 
( 
$str "
)" #
]# $
public 
async 
Task 
< 
ActionResult &
<& '
bool' +
>+ ,
>, -
CreateRoomRequest. ?
(? @
[@ A
FromBodyA I
]I J 
CreateRoomRequestDtoK _
createRoomRequest` q
)q r
{ 	
ServiceResponse 
< 
bool  
>  !
serviceResponse" 1
=2 3
await4 9
_roomRequestService: M
.M N
CreateRoomRequestN _
(_ `
createRoomRequest` q
,q r
Users w
.w x
GetRoomNumber	x Ö
(
Ö Ü
)
Ü á
)
á à
;
à â
if 
( 
! 
serviceResponse  
.  !
IsValid! (
)( )
{ 
return 

BadRequest !
(! "
serviceResponse" 1
.1 2
Errors2 8
)8 9
;9 :
} 
return 
	NoContent 
( 
) 
; 
} 	
[   	
HttpGet  	 
(   
$str   !
)  ! "
]  " #
public!! 
async!! 
Task!! 
<!! 
ActionResult!! &
<!!& '
BaseRoomRequestDto!!' 9
>!!9 :
>!!: ;
GetMyRequests!!< I
(!!I J
)!!J K
{"" 	
ServiceResponse## 
<## 
List##  
<##  !
BaseRoomRequestDto##! 3
>##3 4
>##4 5
serviceResponse##6 E
=##F G
await##H M
_roomRequestService##N a
.##a b 
GetGuestRoomRequests##b v
(##v w
User##w {
.##{ |
GetRoomNumber	##| â
(
##â ä
)
##ä ã
)
##ã å
;
##å ç
if%% 
(%% 
!%% 
serviceResponse%%  
.%%  !
IsValid%%! (
)%%( )
{&& 
return'' 

BadRequest'' !
(''! "
serviceResponse''" 1
.''1 2
Errors''2 8
)''8 9
;''9 :
}(( 
return** 
Ok** 
(** 
serviceResponse** %
.**% &
Data**& *
)*** +
;**+ ,
}++ 	
[-- 	
HttpGet--	 
(-- 
$str-- "
)--" #
]--# $
public.. 
async.. 
Task.. 
<.. 
ActionResult.. &
<..& '
RoomRequestDto..' 5
>..5 6
>..6 7
GetRoomRequest..8 F
(..F G
int..G J
roomRequestId..K X
)..X Y
{// 	
ServiceResponse00 
<00 
RoomRequestDto00 *
>00* +
serviceResponse00, ;
=00< =
await00> C
_roomRequestService00D W
.00W X
GetRoomRequest00X f
(00f g
roomRequestId00g t
,00t u
User00v z
.00z {
GetRoomNumber	00{ à
(
00à â
)
00â ä
,
00ã å
User
00ç ë
.
00ë í
GetRoles
00í ö
(
00ö õ
)
00õ ú
)
00ú ù
;
00ù û
if22 
(22 
!22 
serviceResponse22  
.22  !
IsValid22! (
)22( )
{33 
return44 
NotFound44 
(44  
serviceResponse44  /
.44/ 0
Errors440 6
)446 7
;447 8
}55 
return77 
Ok77 
(77 
serviceResponse77 %
.77% &
Data77& *
)77* +
;77+ ,
}88 	
[:: 	
	Authorize::	 
(:: 
Policy:: 
=:: 
$str:: +
)::+ ,
]::, -
[;; 	
	HttpPatch;;	 
(;; 
$str;; *
);;* +
];;+ ,
public<< 
async<< 
Task<< 
<<< 
ActionResult<< &
><<& '
StartRoomRequest<<( 8
(<<8 9
int<<9 <
roomRequestId<<= J
)<<J K
{== 	
ServiceResponse>> 
<>> 
bool>>  
>>>  !
response>>" *
=>>+ ,
await>>- 2
_roomRequestService>>3 F
.>>F G
StartRoomRequest>>G W
(>>W X
roomRequestId>>X e
,>>e f
User>>g k
.>>k l
GetRoomNumber>>l y
(>>y z
)>>z {
,>>{ |
User	>>} Å
.
>>Å Ç
GetRoles
>>Ç ä
(
>>ä ã
)
>>ã å
)
>>å ç
;
>>ç é
if@@ 
(@@ 
!@@ 
response@@ 
.@@ 
IsValid@@ !
)@@! "
{AA 
returnBB 

BadRequestBB !
(BB! "
responseBB" *
.BB* +
ErrorsBB+ 1
)BB1 2
;BB2 3
}CC 
returnEE 
	NoContentEE 
(EE 
)EE 
;EE 
}FF 	
[HH 	
	AuthorizeHH	 
(HH 
PolicyHH 
=HH 
$strHH +
)HH+ ,
]HH, -
[II 	
	HttpPatchII	 
(II 
$strII (
)II( )
]II) *
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
ActionResultJJ &
>JJ& '
EndRoomRequestJJ( 6
(JJ6 7
intJJ7 :
roomRequestIdJJ; H
)JJH I
{KK 	
ServiceResponseLL 
<LL 
boolLL  
>LL  !
responseLL" *
=LL+ ,
awaitLL- 2
_roomRequestServiceLL3 F
.LLF G
EndRoomRequestLLG U
(LLU V
roomRequestIdLLV c
,LLc d
UserLLe i
.LLi j
GetRoomNumberLLj w
(LLw x
)LLx y
,LLy z
UserLL{ 
.	LL Ä
GetRoles
LLÄ à
(
LLà â
)
LLâ ä
)
LLä ã
;
LLã å
ifNN 
(NN 
!NN 
responseNN 
.NN 
IsValidNN !
)NN! "
{OO 
returnPP 

BadRequestPP !
(PP! "
responsePP" *
.PP* +
ErrorsPP+ 1
)PP1 2
;PP2 3
}QQ 
returnSS 
	NoContentSS 
(SS 
)SS 
;SS 
}TT 	
[VV 	

HttpDeleteVV	 
(VV 
$strVV %
)VV% &
]VV& '
publicWW 
asyncWW 
TaskWW 
<WW 
ActionResultWW &
>WW& '
DeleteRoomRequestWW( 9
(WW9 :
intWW: =
roomRequestIdWW> K
)WWK L
{XX 	
ServiceResponseYY 
<YY 
boolYY  
>YY  !
serviceResponseYY" 1
=YY2 3
awaitYY4 9
_roomRequestServiceYY: M
.YYM N!
SafeDeleteRoomRequestYYN c
(YYc d
roomRequestIdYYd q
,YYq r
UserYYs w
.YYw x
GetRoomNumber	YYx Ö
(
YYÖ Ü
)
YYÜ á
,
YYá à
User
YYâ ç
.
YYç é
GetRoles
YYé ñ
(
YYñ ó
)
YYó ò
)
YYò ô
;
YYô ö
if[[ 
([[ 
![[ 
serviceResponse[[  
.[[  !
IsValid[[! (
)[[( )
{\\ 
return]] 

BadRequest]] !
(]]! "
serviceResponse]]" 1
.]]1 2
Errors]]2 8
)]]8 9
;]]9 :
}^^ 
return`` 
	NoContent`` 
(`` 
)`` 
;`` 
}aa 	
}bb 
}cc Û3
YC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Data\DataContext.cs
	namespace 	
SoleusHotelApi
 
. 
Data 
{ 
public 

class 
DataContext 
: 
IdentityDbContext 0
<0 1
	HotelUser1 :
,: ;
	HotelRole< E
,E F
intG J
,J K
IdentityUserClaim		 
<		 
int		 
>		 
,		 
HotelUserRole		  -
,		- .
IdentityUserLogin		/ @
<		@ A
int		A D
>		D E
,		E F
IdentityRoleClaim

 
<

 
int

 
>

 
,

 
IdentityUserToken

  1
<

1 2
int

2 5
>

5 6
>

6 7
{ 
public 
DataContext 
( 
DbContextOptions +
options, 3
)3 4
:5 6
base7 ;
(; <
options< C
)C D
{ 	
} 	
public 
DbSet 
< 
RoomRequest  
>  !
RoomRequests" .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
DbSet 
< 
Room 
> 
Rooms  
{! "
get# &
;& '
set( +
;+ ,
}- .
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
builder= D
)D E
{ 	
base 
. 
OnModelCreating  
(  !
builder! (
)( )
;) *
builder 
. 
Entity 
< 
	HotelUser $
>$ %
(% &
)& '
.' (
Ignore( .
(. /
c/ 0
=>1 3
c4 5
.5 6
AccessFailedCount6 G
)G H
.* +
Ignore+ 1
(1 2
c2 3
=>4 6
c7 8
.8 9
Email9 >
)> ?
.* +
Ignore+ 1
(1 2
c2 3
=>4 6
c7 8
.8 9
EmailConfirmed9 G
)G H
.* +
Ignore+ 1
(1 2
c2 3
=>4 6
c7 8
.8 9
LockoutEnabled9 G
)G H
.* +
Ignore+ 1
(1 2
c2 3
=>4 6
c7 8
.8 9

LockoutEnd9 C
)C D
.* +
Ignore+ 1
(1 2
c2 3
=>4 6
c7 8
.8 9
NormalizedEmail9 H
)H I
.* +
Ignore+ 1
(1 2
c2 3
=>4 6
c7 8
.8 9
PhoneNumber9 D
)D E
.  * +
Ignore  + 1
(  1 2
c  2 3
=>  4 6
c  7 8
.  8 9 
PhoneNumberConfirmed  9 M
)  M N
.!!* +
Ignore!!+ 1
(!!1 2
c!!2 3
=>!!4 6
c!!7 8
.!!8 9
TwoFactorEnabled!!9 I
)!!I J
;!!J K
builder## 
.## 
Entity## 
<## 
	HotelUser## $
>##$ %
(##% &
)##& '
.$$ 
HasOne$$ 
($$ 
u$$ 
=>$$ 
u$$ 
.$$ 
Room$$ #
)$$# $
.%% 
WithOne%% 
(%% 
h%% 
=>%% 
h%% 
.%%  
User%%  $
)%%$ %
.&& 
HasForeignKey&& 
<&& 
Room&& #
>&&# $
(&&$ %
h&&% &
=>&&' )
h&&* +
.&&+ ,
UserId&&, 2
)&&2 3
;&&3 4
builder(( 
.(( 
Entity(( 
<(( 
Room(( 
>((  
(((  !
)((! "
.)) 
HasOne)) 
()) 
u)) 
=>)) 
u)) 
.)) 
User)) !
)))! "
.** 
WithOne** 
(** 
h** 
=>** 
h** 
.** 
Room** "
)**" #
.++ 
HasForeignKey++ 
<++ 
	HotelUser++ &
>++& '
(++' (
h++( )
=>++* ,
h++- .
.++. /
RoomId++/ 5
)++5 6
;++6 7
builder-- 
.-- 
Entity-- 
<-- 
Room-- 
>--  
(--  !
)--! "
.--" #
HasIndex--# +
(--+ ,
u--, -
=>--. 0
u--1 2
.--2 3

RoomNumber--3 =
)--= >
.--> ?
IsUnique--? G
(--G H
)--H I
;--I J
builder// 
.// 
Entity// 
<// 
	HotelUser// $
>//$ %
(//% &
)//& '
.//' (
ToTable//( /
(/// 0
$str//0 <
)//< =
;//= >
builder11 
.11 
Entity11 
<11 
	HotelUser11 $
>11$ %
(11% &
)11& '
.22 
HasMany22 
(22 
ur22 
=>22 
ur22 !
.22! "
	UserRoles22" +
)22+ ,
.33 
WithOne33 
(33 
u33 
=>33 
u33 
.33  
	HotelUser33  )
)33) *
.44 
HasForeignKey44 
(44 
u44  
=>44! #
u44$ %
.44% &
UserId44& ,
)44, -
.55 

IsRequired55 
(55 
)55 
;55 
builder77 
.77 
Entity77 
<77 
	HotelRole77 $
>77$ %
(77% &
)77& '
.88 
HasMany88 
(88 
ur88 
=>88 
ur88 !
.88! "
HotelUserRoles88" 0
)880 1
.99 
WithOne99 
(99 
u99 
=>99 
u99 
.99  
Role99  $
)99$ %
.:: 
HasForeignKey:: 
(:: 
u::  
=>::! #
u::$ %
.::% &
RoleId::& ,
)::, -
.;; 

IsRequired;; 
(;; 
);; 
;;; 
}<< 	
}== 
}>> ¥
yC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Data\Repositories\Contracts\IHotelUserRepository.cs
	namespace 	
SoleusHotelApi
 
. 
Data 
. 
Repositories *
.* +
	Contracts+ 4
{ 
public 

	interface  
IHotelUserRepository )
{ 
Task 
< 
HotelUserDto 
>  
GetHotelUserDtoAsync /
(/ 0
string0 6

roomNumber7 A
)A B
;B C
Task		 
<		 
	HotelUser		 
>		 ,
 GetHotelUserWithRoomByRoomNumber		 8
(		8 9
string		9 ?

roomNumber		@ J
)		J K
;		K L
Task

 
<

 
List

 
<

 
	HotelUser

 
>

 
>

 
GetAllUsers

 )
(

) *
)

* +
;

+ ,
Task 
< 
List 
< 
	HotelUser 
> 
> 
GetAllGuests *
(* +
)+ ,
;, -
void 
Update 
( 
	HotelUser 
user "
)" #
;# $
Task 
< 
bool 
> 
SaveAllAsync 
(  
)  !
;! "
} 
} À
tC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Data\Repositories\Contracts\IRoomRepository.cs
	namespace 	
SoleusHotelApi
 
. 
Data 
. 
Repositories *
.* +
	Contracts+ 4
{ 
public 

	interface 
IRoomRepository $
{ 
Task 
AddRoom 
( 
Room 
room 
) 
;  
void 
Update 
( 
Room 
room 
) 
; 
Task		 
<		 
Room		 
>		 
GetRoomByRoomNumber		 &
(		& '
string		' -

roomNumber		. 8
)		8 9
;		9 :
Task

 
<

 
bool

 
>

 
SaveAllAsync

 
(

  
)

  !
;

! "
} 
} “
{C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Data\Repositories\Contracts\IRoomRequestRepository.cs
	namespace 	
SoleusHotelApi
 
. 
Data 
. 
Repositories *
.* +
	Contracts+ 4
{ 
public 

	interface "
IRoomRequestRepository +
{ 
Task 
AddRoomRequest 
( 
RoomRequest '
roomRequest( 3
)3 4
;4 5
void		 
Update		 
(		 
RoomRequest		 
roomRequest		  +
)		+ ,
;		, -
Task

 
<

 
List

 
<

 
BaseRoomRequestDto

 $
>

$ %
>

% &/
#GetGuestRoomRequestsDtoByRoomNumber

' J
(

J K
string

K Q

roomNumber

R \
)

\ ]
;

] ^
Task 
< 
RoomRequest 
> 
GetRoomRequestById ,
(, -
int- 0
id1 3
)3 4
;4 5
Task 
< 
RoomRequestDto 
> !
GetRoomRequestDtoById 2
(2 3
int3 6
id7 9
)9 :
;: ;
void !
DeleteRoomRequestById "
(" #
RoomRequest# .
roomRequest/ :
): ;
;; <
Task 
< 
bool 
> 
SaveAllAsync 
(  
)  !
;! "
} 
} ¥,
nC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Data\Repositories\HotelUserRepository.cs
	namespace		 	
SoleusHotelApi		
 
.		 
Data		 
.		 
Repositories		 *
{

 
public 

class 
HotelUserRepository $
:% & 
IHotelUserRepository' ;
{ 
private 
readonly 
DataContext $
_dataContext% 1
;1 2
private 
readonly 
IMapper  
_mapper! (
;( )
public 
HotelUserRepository "
(" #
DataContext# .
dataContext/ :
,: ;
IMapper< C
mapperD J
)J K
{ 	
_dataContext 
= 
dataContext &
;& '
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
HotelUserDto &
>& ' 
GetHotelUserDtoAsync( <
(< =
string= C

roomNumberD N
)N O
{ 	
return 
await 
_dataContext %
.% &
Users& +
. 
Include 
( 
r 
=> 
r 
.  
Room  $
)$ %
. 
Where 
( 
x 
=> 
x 
. 
Room "
." #

RoomNumber# -
==. 0

roomNumber1 ;
); <
. 
OrderBy 
( 
x 
=> 
x 
.  
Room  $
.$ %

RoomNumber% /
)/ 0
. 
	ProjectTo 
< 
HotelUserDto '
>' (
(( )
_mapper) 0
.0 1!
ConfigurationProvider1 F
)F G
.  
SingleOrDefaultAsync %
(% &
)& '
;' (
} 	
public   
async   
Task   
<   
	HotelUser   #
>  # $,
 GetHotelUserWithRoomByRoomNumber  % E
(  E F
string  F L

roomNumber  M W
)  W X
{!! 	
return"" 
await"" 
_dataContext"" %
.""% &
Users""& +
.""+ ,
Include"", 3
(""3 4
r""4 5
=>""6 8
r""9 :
."": ;
Room""; ?
)""? @
.""@ A 
SingleOrDefaultAsync""A U
(""U V
x""V W
=>""X Z
x""[ \
.""\ ]
Room""] a
.""a b

RoomNumber""b l
==""m o

roomNumber""p z
)""z {
;""{ |
}## 	
public%% 
async%% 
Task%% 
<%% 
List%% 
<%% 
	HotelUser%% (
>%%( )
>%%) *
GetAllUsers%%+ 6
(%%6 7
)%%7 8
{&& 	
return'' 
await'' 
_dataContext'' %
.''% &
Users''& +
.''+ ,
Include'', 3
(''3 4
r''4 5
=>''6 8
r''9 :
.'': ;
Room''; ?
)''? @
.''@ A
OrderByDescending''A R
(''R S
x''S T
=>''U W
x''X Y
.''Y Z
Room''Z ^
.''^ _

RoomNumber''_ i
.''i j
Length''j p
)''p q
.''q r
ThenBy''r x
(''x y
x''y z
=>''{ }
x''~ 
.	'' Ä
Room
''Ä Ñ
.
''Ñ Ö

RoomNumber
''Ö è
)
''è ê
.
''ê ë
ToListAsync
''ë ú
(
''ú ù
)
''ù û
;
''û ü
}(( 	
public** 
async** 
Task** 
<** 
List** 
<** 
	HotelUser** (
>**( )
>**) *
GetAllGuests**+ 7
(**7 8
)**8 9
{++ 	
return,, 
await,, 
_dataContext,, %
.,,% &
Users,,& +
.,,+ ,
Include,,, 3
(,,3 4
r,,4 5
=>,,6 8
r,,9 :
.,,: ;
Room,,; ?
),,? @
.,,@ A
Where,,A F
(,,F G
x,,G H
=>,,I K
x,,L M
.,,M N
	UserRoles,,N W
.,,W X
Any,,X [
(,,[ \
x,,\ ]
=>,,^ `
x,,a b
.,,b c
Role,,c g
.,,g h
Name,,h l
==,,m o
Roles,,p u
.,,u v
Guest,,v {
),,{ |
),,| }
.,,} ~
ToListAsync	,,~ â
(
,,â ä
)
,,ä ã
;
,,ã å
}-- 	
public// 
void// 
Update// 
(// 
	HotelUser// $
user//% )
)//) *
{00 	
_dataContext11 
.11 
Entry11 
(11 
user11 #
)11# $
.11$ %
State11% *
=11+ ,
EntityState11- 8
.118 9
Modified119 A
;11A B
}22 	
public44 
async44 
Task44 
<44 
bool44 
>44 
SaveAllAsync44  ,
(44, -
)44- .
{55 	
return66 
await66 
_dataContext66 %
.66% &
SaveChangesAsync66& 6
(666 7
)667 8
>669 :
$num66; <
;66< =
}77 	
}88 
}99 û
iC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Data\Repositories\RoomRepository.cs
	namespace 	
SoleusHotelApi
 
. 
Data 
. 
Repositories *
{ 
public 

class 
RoomRepository 
:  !
IRoomRepository" 1
{ 
private		 
readonly		 
DataContext		 $
_dataContext		% 1
;		1 2
public 
RoomRepository 
( 
DataContext )
dataContext* 5
)5 6
{ 	
_dataContext 
= 
dataContext &
;& '
} 	
public 
async 
Task 
AddRoom !
(! "
Room" &
room' +
)+ ,
{ 	
await 
_dataContext 
. 
Rooms $
.$ %
AddAsync% -
(- .
room. 2
)2 3
;3 4
} 	
public 
void 
Update 
( 
Room 
room  $
)$ %
{ 	
_dataContext 
. 
Entry 
( 
room #
)# $
.$ %
State% *
=+ ,
EntityState- 8
.8 9
Modified9 A
;A B
} 	
public 
async 
Task 
< 
Room 
> 
GetRoomByRoomNumber  3
(3 4
string4 :

roomNumber; E
)E F
{ 	
return 
await 
_dataContext %
.% &
Rooms& +
.+ , 
SingleOrDefaultAsync, @
(@ A
rA B
=>C E
rF G
.G H

RoomNumberH R
==S U

roomNumberV `
)` a
;a b
} 	
public 
async 
Task 
< 
bool 
> 
RoomUserExists  .
(. /
int/ 2
id3 5
)5 6
{   	
return!! 
await!! 
_dataContext!! %
.!!% &
Rooms!!& +
.!!+ ,
AnyAsync!!, 4
(!!4 5
r!!5 6
=>!!7 9
r!!: ;
.!!; <
User!!< @
.!!@ A
Id!!A C
==!!D F
id!!G I
)!!I J
;!!J K
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
bool$$ 
>$$ 
SaveAllAsync$$  ,
($$, -
)$$- .
{%% 	
return&& 
await&& 
_dataContext&& %
.&&% &
SaveChangesAsync&&& 6
(&&6 7
)&&7 8
>&&9 :
$num&&; <
;&&< =
}'' 	
}(( 
})) €/
pC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Data\Repositories\RoomRequestRepository.cs
	namespace 	
SoleusHotelApi
 
. 
Data 
. 
Repositories *
{		 
public

 

class

 !
RoomRequestRepository

 &
:

' ("
IRoomRequestRepository

) ?
{ 
private 
readonly 
DataContext $
_dataContext% 1
;1 2
private 
readonly 
IMapper  
_mapper! (
;( )
public !
RoomRequestRepository $
($ %
DataContext% 0
dataContext1 <
,< =
IMapper> E
mapperF L
)L M
{ 	
_dataContext 
= 
dataContext &
;& '
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
AddRoomRequest (
(( )
RoomRequest) 4
roomRequest5 @
)@ A
{ 	
await 
_dataContext 
. 
RoomRequests +
.+ ,
AddAsync, 4
(4 5
roomRequest5 @
)@ A
;A B
} 	
public 
void 
Update 
( 
RoomRequest &
roomRequest' 2
)2 3
{ 	
_dataContext 
. 
Entry 
( 
roomRequest *
)* +
.+ ,
State, 1
=2 3
EntityState4 ?
.? @
Modified@ H
;H I
} 	
public 
async 
Task 
< 
List 
< 
BaseRoomRequestDto 1
>1 2
>2 3/
#GetGuestRoomRequestsDtoByRoomNumber4 W
(W X
stringX ^

roomNumber_ i
)i j
{   	
return!! 
await!! 
_dataContext!! %
.!!% &
RoomRequests!!& 2
."" 
Where"" 
("" 
r"" 
=>"" 
r"" 
."" 
Room"" !
.""! "

RoomNumber""" ,
."", -
Equals""- 3
(""3 4

roomNumber""4 >
)""> ?
)""? @
.## 
Where## 
(## 
d## 
=>## 
d## 
.## 
RequestDate## (
>=##) +
d##, -
.##- .
Room##. 2
.##2 3
CheckInDate##3 >
&&##? A
d##B C
.##C D
RequestDate##D O
<=##P R
d##S T
.##T U
Room##U Y
.##Y Z
CheckOutDate##Z f
)##f g
.$$ 
Where$$ 
($$ 
s$$ 
=>$$ 
s$$ 
.$$ 
RequestStatus$$ *
==$$+ -
Enums$$. 3
.$$3 4
RoomRequestStatus$$4 E
.$$E F
New$$F I
||$$J L
s$$M N
.$$N O
RequestStatus$$O \
==$$] _
Enums$$` e
.$$e f
RoomRequestStatus$$f w
.$$w x

InProgress	$$x Ç
)
$$Ç É
.%% 
	ProjectTo%% 
<%% 
BaseRoomRequestDto%% ,
>%%, -
(%%- .
_mapper%%. 5
.%%5 6!
ConfigurationProvider%%6 K
)%%K L
.%%L M
ToListAsync%%M X
(%%X Y
)%%Y Z
;%%Z [
}&& 	
public(( 
async(( 
Task(( 
<(( 
RoomRequest(( %
>((% &
GetRoomRequestById((' 9
(((9 :
int((: =
id((> @
)((@ A
{)) 	
return** 
await** 
_dataContext** %
.**% &
RoomRequests**& 2
.**2 3
Include**3 :
(**: ;
r**; <
=>**= ?
r**@ A
.**A B
Room**B F
)**F G
.**G H
Include**H O
(**O P
u**P Q
=>**R T
u**U V
.**V W

AssignedTo**W a
)**a b
.**b c 
SingleOrDefaultAsync**c w
(**w x
r**x y
=>**z |
r**} ~
.**~ 
Id	** Å
==
**Ç Ñ
id
**Ö á
)
**á à
;
**à â
}++ 	
public-- 
async-- 
Task-- 
<-- 
RoomRequestDto-- (
>--( )!
GetRoomRequestDtoById--* ?
(--? @
int--@ C
id--D F
)--F G
{.. 	
return// 
_mapper// 
.// 
Map// 
<// 
RoomRequestDto// -
>//- .
(//. /
await/// 4
_dataContext//5 A
.//A B
RoomRequests//B N
.//N O
Include//O V
(//V W
r//W X
=>//Y [
r//\ ]
.//] ^
Room//^ b
)//b c
.//c d 
SingleOrDefaultAsync//d x
(//x y
r//y z
=>//{ }
r//~ 
.	// Ä
Id
//Ä Ç
==
//É Ö
id
//Ü à
)
//à â
)
//â ä
;
//ä ã
}00 	
public22 
void22 !
DeleteRoomRequestById22 )
(22) *
RoomRequest22* 5
roomRequest226 A
)22A B
{33 	
_dataContext44 
.44 
RoomRequests44 %
.44% &
Remove44& ,
(44, -
roomRequest44- 8
)448 9
;449 :
}55 	
public77 
async77 
Task77 
<77 
bool77 
>77 
SaveAllAsync77  ,
(77, -
)77- .
{88 	
return99 
await99 
_dataContext99 %
.99% &
SaveChangesAsync99& 6
(996 7
)997 8
>999 :
$num99; <
;99< =
}:: 	
};; 
}<< ¸
oC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\HotelUserDtos\CreatedHotelUserDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
HotelUserDtos +
{ 
public 

class 
CreatedHotelUserDto $
{ 
public 
string 

RoomNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	GuestName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
ICollection 
< 
string !
>! "
	UserRoles# ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
}		 Ì
nC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\HotelUserDtos\CreateHotelUserDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
HotelUserDtos +
{ 
public 

class 
CreateHotelUserDto #
{ 
[ 	
Required	 
] 
public 
string 

RoomNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
[		 	
StringLength			 
(		 
$num		 
)		 
]		 
public

 
string

 
	GuestName

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
[ 	
Required	 
] 
public 
List 
< 
string 
> 
Roles !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
DateTime 
CheckInDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
public 
DateTime 
CheckOutDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength &
=' (
$num) *
)* +
]+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Œ
lC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\HotelUserDtos\EditHotelUserDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
HotelUserDtos +
{ 
public 

class 
EditHotelUserDto !
{ 
[ 	
Required	 
] 
public 
string 

RoomNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
[		 	
StringLength			 
(		 
$num		 
)		 
]		 
public

 
string

 
	GuestName

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
List 
< 
string 
> 
Roles !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
DateTime 
CheckInDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
public 
DateTime 
CheckOutDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ƒ
xC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\HotelUserDtos\GenerateHotelUserPasswordDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
HotelUserDtos +
{ 
public 

class (
GenerateHotelUserPasswordDto -
:. /
HotelUserDto0 <
{ 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ›
hC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\HotelUserDtos\HotelUserDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
HotelUserDtos +
{ 
public 

class 
HotelUserDto 
{ 
public 
string 

RoomNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	GuestName 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
DateTime		 
CheckInDate		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
DateTime

 
CheckOutDate

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
} 
} ¸
wC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\HotelUserDtos\HotelUserPasswordUpdatesDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
HotelUserDtos +
{ 
public 

class '
HotelUserPasswordUpdatesDto ,
:- .
LoginHotelUserDto/ @
{ 
[ 	
Required	 
] 
public 
string 
	GuestName 
{  !
get" %
;% &
set' *
;* +
}, -
}		 
}

 ﬁ
lC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\HotelUserDtos\HotelUserRoleDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
HotelUserDtos +
{ 
public 

class 
HotelRoleDto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 

RoomNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
IList 
< 
string 
> 
Roles "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
}		 í	
tC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\HotelUserDtos\HotelUserWithRequestsDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
HotelUserDtos +
{ 
public 

class $
HotelUserWithRequestsDto )
{ 
public 
string 

RoomNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	GuestName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
CheckInDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
CheckOutDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public		 
int		 
RoomRequests		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
}

 
} √	
qC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\HotelUserDtos\HotelUserWithRolesDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
HotelUserDtos +
{ 
public 

class !
HotelUserWithRolesDto &
{ 
public 
string 

RoomNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	GuestName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
ICollection 
< 
string !
>! "
	UserRoles# ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
DateTime 
CheckInDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public		 
DateTime		 
CheckOutDate		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
}

 
} µ
iC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\HotelUserDtos\LoggedUserDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
HotelUserDtos +
{ 
public 

class 
LoggedUserDto 
{ 
public 
string 

RoomNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	GuestName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
} 
}		 ã
mC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\HotelUserDtos\LoginHotelUserDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
HotelUserDtos +
{ 
public 

class 
LoginHotelUserDto "
{ 
[ 	
Required	 
] 
public 
string 

RoomNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
[		 	
Required			 
]		 
public

 
string

 
Password

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
} 
} ˘
`C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\PhotoDtos\PhotoDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
	PhotoDtos '
{ 
public 

class 
PhotoDto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ÿ
pC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\RoomRequestDtos\BaseRoomRequestDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
RoomRequestDtos -
{ 
public 

class 
BaseRoomRequestDto #
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Room 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 

Department		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
Topic

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
RequestDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
RoomRequestStatus  
RequestStatus! .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} £
rC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\RoomRequestDtos\CreateRoomRequestDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
RoomRequestDtos -
{ 
public 

class  
CreateRoomRequestDto %
{ 
[ 	
Required	 
] 
public		 
string		 

Department		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
[

 	
Required

	 
]

 
public 
string 
Topic 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
ICollection 
< 
PhotoDto #
># $
Photos% +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} •
lC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\DTOs\RoomRequestDtos\RoomRequestDto.cs
	namespace 	
SoleusHotelApi
 
. 
DTOs 
. 
RoomRequestDtos -
{ 
public 

class 
RoomRequestDto 
:  !
BaseRoomRequestDto" 4
{ 
public 
DateTime 
	DateStart !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
DateEnd 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
ICollection		 
<		 
PhotoDto		 #
>		# $
Photos		% +
{		, -
get		. 1
;		1 2
set		3 6
;		6 7
}		8 9
}

 
} ·
[C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Entities\HotelRole.cs
	namespace 	
SoleusHotelApi
 
. 
Entities !
{ 
public 

class 
	HotelRole 
: 
IdentityRole )
<) *
int* -
>- .
{ 
public 
ICollection 
< 
HotelUserRole (
>( )
HotelUserRoles* 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
} 
}		 ô

[C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Entities\HotelUser.cs
	namespace 	
SoleusHotelApi
 
. 
Entities !
{ 
public 

class 
	HotelUser 
: 
IdentityUser )
<) *
int* -
>- .
{ 
public 
string 
	GuestName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
ICollection 
< 
RoomRequest &
>& ' 
AssignedRoomRequests( <
{= >
get? B
;B C
setD G
;G H
}I J
public		 
ICollection		 
<		 
HotelUserRole		 (
>		( )
	UserRoles		* 3
{		4 5
get		6 9
;		9 :
set		; >
;		> ?
}		@ A
public

 
int

 
?

 
RoomId

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
Room 
Room 
{ 
get 
; 
set  #
;# $
}% &
} 
} »
_C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Entities\HotelUserRole.cs
	namespace 	
SoleusHotelApi
 
. 
Entities !
{ 
public 

class 
HotelUserRole 
:  
IdentityUserRole! 1
<1 2
int2 5
>5 6
{ 
public 
	HotelUser 
	HotelUser "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
	HotelRole 
Role 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
}

 Ï
WC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Entities\Photo.cs
	namespace 	
SoleusHotelApi
 
. 
Entities !
{ 
[ 
Table 

(
 
$str 
) 
] 
public 

class 
Photo 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public		 
string		 
Url		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
public

 
string

 
PublicId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
RoomRequest 
RoomRequest &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ‰
VC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Entities\Room.cs
	namespace 	
SoleusHotelApi
 
. 
Entities !
{ 
public 

class 
Room 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
] 
public		 
string		 

RoomNumber		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
DateTime

 
CheckInDate

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
DateTime 
CheckOutDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
ICollection 
< 
RoomRequest &
>& '
RoomRequests( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
int 
? 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
	HotelUser 
User 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ¯
]C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Entities\RoomRequest.cs
	namespace 	
SoleusHotelApi
 
. 
Entities !
{ 
public 

class 
RoomRequest 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[		 	
Required			 
]		 
public

 
Room

 
Room

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
[ 	
Required	 
] 
public 
string 

Department  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Required	 
] 
public 
string 
Topic 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
DateTime 
RequestDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
DateTime4 <
.< =
Now= @
;@ A
[ 	
Required	 
] 
public 
RoomRequestStatus  
RequestStatus! .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
DateTime 
? 
	DateStart "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTime 
? 
DateEnd  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
;5 6
public 
TimeSpan 
? 
Duration !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
null2 6
;6 7
public 
	HotelUser 

AssignedTo #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
;8 9
public 
ICollection 
< 
Photo  
>  !
Photos" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ”
`C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Enums\RoomRequestStatus.cs
	namespace 	
SoleusHotelApi
 
. 
Enums 
{ 
public 

enum 
RoomRequestStatus !
{ 
New 
, 

InProgress 
, 
Paused 
, 
Ended 
, 
Deleted		 
}

 
} ⁄
mC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Extensions\ClaimsPrincipalExtensions.cs
	namespace 	
SoleusHotelApi
 
. 

Extensions #
{ 
public 

static 
class %
ClaimsPrincipalExtensions 1
{ 
public 
static 
string 
GetRoomNumber *
(* +
this+ /
ClaimsPrincipal0 ?
user@ D
)D E
{ 	
return		 
user		 
.		 
	FindFirst		 !
(		! "

ClaimTypes		" ,
.		, -
Name		- 1
)		1 2
?		2 3
.		3 4
Value		4 9
;		9 :
}

 	
public 
static 
List 
< 
string !
>! "
GetRoles# +
(+ ,
this, 0
ClaimsPrincipal1 @
userA E
)E F
{ 	
List 
< 
string 
> 
roles 
=  
new! $
List% )
<) *
string* 0
>0 1
(1 2
)2 3
;3 4
foreach 
( 
var 
role 
in  
user! %
.% &
FindAll& -
(- .

ClaimTypes. 8
.8 9
Role9 =
)= >
)> ?
{ 
roles 
. 
Add 
( 
role 
. 
Value $
)$ %
;% &
} 
return 
roles 
; 
} 	
} 
} ¿
bC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Extensions\HttpExtensions.cs
	namespace 	
SoleusHotelApi
 
. 

Extensions #
{ 
public 

static 
class 
HttpExtensions &
{ 
public 
static 
void 
AddPaginationHeader .
(. /
this/ 3
HttpResponse4 @
responseA I
,I J
intK N
currentPageO Z
,Z [
int		 
itemsPerPage		 
,		 
int		 !

totalItems		" ,
,		, -
int		. 1

totalPages		2 <
)		< =
{

 	
var 
paginationHeader  
=! "
new# &
PaginationHeader' 7
(7 8
currentPage8 C
,C D
itemsPerPageE Q
,Q R

totalItemsS ]
,] ^

totalPages_ i
)i j
;j k
var 
options 
= 
new !
JsonSerializerOptions 3
{  
PropertyNamingPolicy $
=% &
JsonNamingPolicy' 7
.7 8
	CamelCase8 A
} 
; 
response 
. 
Headers 
. 
Add  
(  !
$str! -
,- .
JsonSerializer/ =
.= >
	Serialize> G
(G H
paginationHeaderH X
,X Y
optionsZ a
)a b
)b c
;c d
response 
. 
Headers 
. 
Add  
(  !
$str! @
,@ A
$strB N
)N O
;O P
} 	
} 
} ≤/
mC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Extensions\IdentityServiceExtensions.cs
	namespace		 	
SoleusHotelApi		
 
.		 

Extensions		 #
{

 
public 

static 
class %
IdentityServiceExtensions 1
{ 
public 
static 
IServiceCollection (
AddIdentityServices) <
(< =
this= A
IServiceCollectionB T
servicesU ]
,] ^
IConfiguration_ m
configurationn {
){ |
{ 	
services 
. 
AddIdentityCore $
<$ %
	HotelUser% .
>. /
(/ 0
opt0 3
=>4 6
{ 
opt 
. 
Password 
. "
RequireNonAlphanumeric 3
=4 5
false6 ;
;; <
} 
) 
. 
AddRoles 
< 
	HotelRole #
># $
($ %
)% &
. 
AddRoleManager 
<  
RoleManager  +
<+ ,
	HotelRole, 5
>5 6
>6 7
(7 8
)8 9
. 
AddSignInManager !
<! "
SignInManager" /
</ 0
	HotelUser0 9
>9 :
>: ;
(; <
)< =
. 
AddRoleValidator !
<! "
RoleValidator" /
</ 0
	HotelRole0 9
>9 :
>: ;
(; <
)< =
. $
AddEntityFrameworkStores )
<) *
DataContext* 5
>5 6
(6 7
)7 8
. 
AddTokenProvider !
<! "&
DataProtectorTokenProvider" <
<< =
	HotelUser= F
>F G
>G H
(H I
TokenOptionsI U
.U V
DefaultProviderV e
)e f
;f g
services 
. 
AddAuthentication &
(& '
JwtBearerDefaults' 8
.8 9 
AuthenticationScheme9 M
)M N
. 
AddJwtBearer 
( 
options %
=>& (
{ 
options 
. %
TokenValidationParameters 5
=6 7
new8 ;%
TokenValidationParameters< U
{   $
ValidateIssuerSigningKey!! 0
=!!1 2
true!!3 7
,!!7 8
IssuerSigningKey"" (
="") *
new""+ . 
SymmetricSecurityKey""/ C
(""C D
Encoding""D L
.""L M
UTF8""M Q
.""Q R
GetBytes""R Z
(""Z [
configuration""[ h
[""h i
$str""i s
]""s t
)""t u
)""u v
,""v w
ValidateIssuer## &
=##' (
false##) .
,##. /
ValidateAudience$$ (
=$$) *
false$$+ 0
}%% 
;%% 
}&& 
)&& 
;&& 
services(( 
.(( 
AddAuthorization(( %
(((% &
opt((& )
=>((* ,
{)) 
opt** 
.** 
	AddPolicy** 
(** 
$str** *
,*** +
policy**, 2
=>**3 5
policy**6 <
.**< =
RequireRole**= H
(**H I
Roles**I N
.**N O
Admin**O T
)**T U
)**U V
;**V W
opt++ 
.++ 
	AddPolicy++ 
(++ 
$str++ )
,++) *
policy+++ 1
=>++2 4
policy++5 ;
.++; <
RequireRole++< G
(++G H
Roles++H M
.++M N
Admin++N S
,++S T
Roles++U Z
.++Z [
Maintenance++[ f
,++f g
Roles++h m
.++m n
Housekeeping++n z
,++z {
Roles	++| Å
.
++Å Ç
Guest
++Ç á
)
++á à
)
++à â
;
++â ä
opt,, 
.,, 
	AddPolicy,, 
(,, 
$str,, *
,,,* +
policy,,, 2
=>,,3 5
policy,,6 <
.,,< =
RequireRole,,= H
(,,H I
Roles,,I N
.,,N O
Admin,,O T
,,,T U
Roles,,V [
.,,[ \
Guest,,\ a
),,a b
),,b c
;,,c d
opt-- 
.-- 
	AddPolicy-- 
(-- 
$str-- -
,--- .
policy--/ 5
=>--6 8
policy--9 ?
.--? @
RequireRole--@ K
(--K L
Roles--L Q
.--Q R
Admin--R W
,--W X
Roles--Y ^
.--^ _
Maintenance--_ j
,--j k
Roles--l q
.--q r
Housekeeping--r ~
,--~ 
Roles
--Ä Ö
.
--Ö Ü
	Reception
--Ü è
)
--è ê
)
--ê ë
;
--ë í
opt.. 
... 
	AddPolicy.. 
(.. 
$str.. .
,... /
policy..0 6
=>..7 9
policy..: @
...@ A
RequireRole..A L
(..L M
Roles..M R
...R S
Admin..S X
,..X Y
Roles..Z _
..._ `
	Reception..` i
)..i j
)..j k
;..k l
opt// 
.// 
	AddPolicy// 
(// 
$str// /
,/// 0
policy//1 7
=>//8 :
policy//; A
.//A B
RequireRole//B M
(//M N
Roles//N S
.//S T
Admin//T Y
,//Y Z
Roles//[ `
.//` a
Maintenance//a l
,//l m
Roles//n s
.//s t
Housekeeping	//t Ä
)
//Ä Å
)
//Å Ç
;
//Ç É
}00 
)00 
;00 
return22 
services22 
;22 
}33 	
}44 
}55 —
eC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Extensions\StartupExtensions.cs
	namespace		 	
SoleusHotelApi		
 
.		 

Extensions		 #
{

 
public 

static 
class 
StartupExtensions )
{ 
public 
static 
IServiceCollection ("
AddApplicationServices) ?
(? @
this@ D
IServiceCollectionE W
servicesX `
,` a
IConfigurationb p
configurationq ~
)~ 
{ 	
services 
. 
AddDbContext !
<! "
DataContext" -
>- .
(. /
options/ 6
=>7 9
options 
. 
UseSqlServer $
($ %
configuration% 2
.2 3
GetConnectionString3 F
(F G
$strG Z
)Z [
)[ \
)\ ]
;] ^
services 
. 
	AddScoped 
<  
IHotelUserRepository 3
,3 4
HotelUserRepository5 H
>H I
(I J
)J K
;K L
services 
. 
	AddScoped 
< "
IRoomRequestRepository 5
,5 6!
RoomRequestRepository7 L
>L M
(M N
)N O
;O P
services 
. 
	AddScoped 
< 
IRoomRepository .
,. /
RoomRepository0 >
>> ?
(? @
)@ A
;A B
services 
. 
	AddScoped 
< 
ITokenService ,
,, -
TokenService. :
>: ;
(; <
)< =
;= >
services 
. 
	AddScoped 
< 
IAdminService ,
,, -
AdminService. :
>: ;
(; <
)< =
;= >
services 
. 
	AddScoped 
< 
IHotelUserService 0
,0 1
HotelUserService2 B
>B C
(C D
)D E
;E F
services 
. 
	AddScoped 
< 
IRoomRequestService 2
,2 3
RoomRequestService4 F
>F G
(G H
)H I
;I J
services 
. 
	AddScoped 
< 
IRoomService +
,+ ,
RoomService- 8
>8 9
(9 :
): ;
;; <
services 
. 
AddAutoMapper "
(" #
typeof# )
() *
AutoMapperProfiles* <
)< =
.= >
Assembly> F
)F G
;G H
return 
services 
; 
} 	
} 
} ô
aC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Extensions\SwaggerConfig.cs
	namespace 	
SoleusHotelApi
 
. 

Extensions #
{ 
public 

static 
class 
SwaggerConfig %
{ 
public 
static 
IServiceCollection ("
AddSwagerConfiguration) ?
(? @
this@ D
IServiceCollectionE W
servicesX `
)` a
{ 	
services		 
.		 
AddSwaggerGen		 "
(		" #
opt		# &
=>		' )
{

 
opt 
. 

SwaggerDoc 
(  
$str  $
,$ %
new& )
OpenApiInfo* 5
{6 7
Title8 =
=> ?
$str@ G
,G H
VersionI P
=Q R
$strS W
}X Y
)Y Z
;Z [
opt 
. !
AddSecurityDefinition *
(* +
$str+ 3
,3 4
new5 8!
OpenApiSecurityScheme9 N
{ 
In 
= 
ParameterLocation +
.+ ,
Header, 2
,2 3
Description  
=! "
$str# 7
,7 8
Name 
= 
$str +
,+ ,
Type 
= 
SecuritySchemeType .
.. /
Http/ 3
,3 4
BearerFormat !
=" #
$str$ )
,) *
Scheme 
= 
$str &
} 
) 
; 
opt 
. "
AddSecurityRequirement +
(+ ,
new, /&
OpenApiSecurityRequirement0 J
{ 
{ 
new !
OpenApiSecurityScheme 1
{ 
	Reference %
=& '
new( +
OpenApiReference, <
{ 
Type  $
=$ %
ReferenceType% 2
.2 3
SecurityScheme3 A
,A B
Id  "
=" #
$str# +
} 
} 
, 
Array   
.   
Empty   #
<  # $
string  $ *
>  * +
(  + ,
)  , -
}!! 
}"" 
)"" 
;"" 
}## 
)## 
;## 
return%% 
services%% 
;%% 
}&& 	
}'' 
}(( “S
cC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Helpers\AutoMapperProfiles.cs
	namespace 	
SoleusHotelApi
 
. 
Helpers  
{ 
public		 

class		 
AutoMapperProfiles		 #
:		$ %
Profile		& -
{

 
public 
AutoMapperProfiles !
(! "
)" #
{ 	
	CreateMap 
< 
CreateHotelUserDto (
,( )
	HotelUser* 3
>3 4
(4 5
)5 6
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
UserName( 0
,0 1
opt2 5
=>6 8
opt9 <
.< =
MapFrom= D
(D E
srcE H
=>I K
srcL O
.O P

RoomNumberP Z
)Z [
)[ \
;\ ]
	CreateMap 
< 
	HotelUser 
,  
HotelUserDto! -
>- .
(. /
)/ 0
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (

RoomNumber( 2
,2 3
opt4 7
=>8 :
opt; >
.> ?
MapFrom? F
(F G
srcG J
=>K M
srcN Q
.Q R
RoomR V
.V W

RoomNumberW a
)a b
)b c
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
CheckInDate( 3
,3 4
opt5 8
=>9 ;
opt< ?
.? @
MapFrom@ G
(G H
srcH K
=>L N
srcO R
.R S
RoomS W
.W X
CheckInDateX c
)c d
)d e
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
CheckOutDate( 4
,4 5
opt6 9
=>: <
opt= @
.@ A
MapFromA H
(H I
srcI L
=>M O
srcP S
.S T
RoomT X
.X Y
CheckOutDateY e
)e f
)f g
. 

ReverseMap 
( 
) 
; 
	CreateMap 
< 
	HotelUser 
,  
CreatedHotelUserDto! 4
>4 5
(5 6
)6 7
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
	UserRoles( 1
,1 2
opt3 6
=>7 9
opt: =
.= >
Ignore> D
(D E
)E F
)F G
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (

RoomNumber( 2
,2 3
opt4 7
=>8 :
opt; >
.> ?
MapFrom? F
(F G
srcG J
=>K M
srcN Q
.Q R
RoomR V
.V W

RoomNumberW a
)a b
)b c
;c d
	CreateMap 
< 
	HotelUser 
,  $
HotelUserWithRequestsDto! 9
>9 :
(: ;
); <
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
RoomRequests( 4
,4 5
opt6 9
=>: <
opt= @
.@ A
MapFromA H
(H I
srcI L
=>M O
srcP S
.S T
RoomT X
.X Y
RoomRequestsY e
.e f
Countf k
)k l
)l m
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (

RoomNumber( 2
,2 3
opt4 7
=>8 :
opt; >
.> ?
MapFrom? F
(F G
srcG J
=>K M
srcN Q
.Q R
RoomR V
.V W

RoomNumberW a
)a b
)b c
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
CheckInDate( 3
,3 4
opt5 8
=>9 ;
opt< ?
.? @
MapFrom@ G
(G H
srcH K
=>L N
srcO R
.R S
RoomS W
.W X
CheckInDateX c
)c d
)d e
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
CheckOutDate( 4
,4 5
opt6 9
=>: <
opt= @
.@ A
MapFromA H
(H I
srcI L
=>M O
srcP S
.S T
RoomT X
.X Y
CheckOutDateY e
)e f
)f g
;g h
	CreateMap 
< 
	HotelUser 
,  (
GenerateHotelUserPasswordDto! =
>= >
(> ?
)? @
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (

RoomNumber( 2
,2 3
opt4 7
=>8 :
opt; >
.> ?
MapFrom? F
(F G
srcG J
=>K M
srcN Q
.Q R
RoomR V
.V W

RoomNumberW a
)a b
)b c
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
CheckInDate( 3
,3 4
opt5 8
=>9 ;
opt< ?
.? @
MapFrom@ G
(G H
srcH K
=>L N
srcO R
.R S
RoomS W
.W X
CheckInDateX c
)c d
)d e
.   
	ForMember   
(   
dest   
=>    "
dest  # '
.  ' (
CheckOutDate  ( 4
,  4 5
opt  6 9
=>  : <
opt  = @
.  @ A
MapFrom  A H
(  H I
src  I L
=>  M O
src  P S
.  S T
Room  T X
.  X Y
CheckOutDate  Y e
)  e f
)  f g
.!! 
	ForMember!! 
(!! 
dest!! 
=>!!  "
dest!!# '
.!!' (
Password!!( 0
,!!0 1
opt!!2 5
=>!!6 8
opt!!9 <
.!!< =
Ignore!!= C
(!!C D
)!!D E
)!!E F
;!!F G
	CreateMap"" 
<"" 
	HotelUser"" 
,""  !
HotelUserWithRolesDto""! 6
>""6 7
(""7 8
)""8 9
.## 
	ForMember## 
(## 
dest## 
=>##  "
dest### '
.##' (

RoomNumber##( 2
,##2 3
opt##4 7
=>##8 :
opt##; >
.##> ?
MapFrom##? F
(##F G
src##G J
=>##K M
src##N Q
.##Q R
Room##R V
.##V W

RoomNumber##W a
)##a b
)##b c
.$$ 
	ForMember$$ 
($$ 
dest$$ 
=>$$  "
dest$$# '
.$$' (
CheckInDate$$( 3
,$$3 4
opt$$5 8
=>$$9 ;
opt$$< ?
.$$? @
MapFrom$$@ G
($$G H
src$$H K
=>$$L N
src$$O R
.$$R S
Room$$S W
.$$W X
CheckInDate$$X c
)$$c d
)$$d e
.%% 
	ForMember%% 
(%% 
dest%% 
=>%%  "
dest%%# '
.%%' (
CheckOutDate%%( 4
,%%4 5
opt%%6 9
=>%%: <
opt%%= @
.%%@ A
MapFrom%%A H
(%%H I
src%%I L
=>%%M O
src%%P S
.%%S T
Room%%T X
.%%X Y
CheckOutDate%%Y e
)%%e f
)%%f g
.&& 
	ForMember&& 
(&& 
dest&& 
=>&&  "
dest&&# '
.&&' (
	UserRoles&&( 1
,&&1 2
opt&&3 6
=>&&7 9
opt&&: =
.&&= >
Ignore&&> D
(&&D E
)&&E F
)&&F G
;&&G H
	CreateMap'' 
<'' 
HotelUserDto'' "
,''" #
CreateHotelUserDto''$ 6
>''6 7
(''7 8
)''8 9
;''9 :
	CreateMap++ 
<++  
CreateRoomRequestDto++ *
,++* +
RoomRequest++, 7
>++7 8
(++8 9
)++9 :
;++: ;
	CreateMap,, 
<,, 
RoomRequest,, !
,,,! "
BaseRoomRequestDto,,# 5
>,,5 6
(,,6 7
),,7 8
.-- 
	ForMember-- 
(-- 
dest-- 
=>--  "
dest--# '
.--' (
Room--( ,
,--, -
opt--. 1
=>--2 4
opt--5 8
.--8 9
MapFrom--9 @
(--@ A
src--A D
=>--E G
src--H K
.--K L
Room--L P
.--P Q

RoomNumber--Q [
)--[ \
)--\ ]
;--] ^
	CreateMap.. 
<.. 
RoomRequest.. !
,..! "
RoomRequestDto..# 1
>..1 2
(..2 3
)..3 4
.// 
	ForMember// 
(// 
dest// 
=>//  "
dest//# '
.//' (
Room//( ,
,//, -
opt//. 1
=>//2 4
opt//5 8
.//8 9
MapFrom//9 @
(//@ A
src//A D
=>//E G
src//H K
.//K L
Room//L P
.//P Q

RoomNumber//Q [
)//[ \
)//\ ]
;//] ^
	CreateMap44 
<44 
Photo44 
,44 
PhotoDto44 %
>44% &
(44& '
)44' (
;44( )
	CreateMap88 
<88 
DateTime88 
,88 
DateTime88  (
>88( )
(88) *
)88* +
.88+ ,
ConvertUsing88, 8
(888 9
d889 :
=>88; =
DateTime88> F
.88F G
SpecifyKind88G R
(88R S
d88S T
,88T U
DateTimeKind88V b
.88b c
Utc88c f
)88f g
)88g h
;88h i
}:: 	
}<< 
}== §
aC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Helpers\PaginationHeader.cs
	namespace 	
SoleusHotelApi
 
. 
Helpers  
{ 
public 

class 
PaginationHeader !
{ 
public 
PaginationHeader 
(  
int  #
currentPage$ /
,/ 0
int1 4
itemsPerPage5 A
,A B
intC F

totalItemsG Q
,Q R
intS V

totalPagesW a
)a b
{ 	
CurrentPage 
= 
currentPage %
;% &
ItemsPerPage 
= 
itemsPerPage '
;' (

TotalItems		 
=		 

totalItems		 #
;		# $

TotalPages

 
=

 

totalPages

 #
;

# $
} 	
public 
int 
CurrentPage 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
ItemsPerPage 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 

TotalItems 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 

TotalPages 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ◊
aC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Helpers\PaginationParams.cs
	namespace 	
SoleusHotelApi
 
. 
Helpers  
{ 
public 

class 
PaginationParams !
{ 
public 
const 
int 
MaxPageSize $
=% &
$num' )
;) *
public 
int 

PageNumber 
{ 
get  #
;# $
set% (
;( )
}* +
private 
int 
	_pageSize 
= 
$num  "
;" #
public		 
int		 
PageSize		 
{

 	
get 
=> 
	_pageSize 
; 
set 
=> 
	_pageSize 
= 
(  
value  %
>& '
MaxPageSize( 3
)3 4
?5 6
MaxPageSize7 B
:C D
valueE J
;J K
} 	
} 
} ≤!
bC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Helpers\PasswordGenerator.cs
	namespace 	
SoleusHotelApi
 
. 
Helpers  
{ 
public 

static 
class 
PasswordGenerator )
{ 
public 
static 
string 
GeneratePassword -
(- .
). /
{		 	
var

 
passwordOptions

 
=

  !
new

" %
PasswordOptions

& 5
(

5 6
)

6 7
{ 
RequiredLength 
=  
$num! "
," #
RequiredUniqueChars #
=$ %
$num& '
,' (
RequireDigit 
= 
true #
,# $
RequireLowercase  
=! "
true# '
,' ("
RequireNonAlphanumeric &
=' (
true) -
,- .
RequireUppercase  
=! "
true# '
} 
; 
string 
[ 
] 
randomChars  
=! "
new# &
[& '
]' (
{) *
$str &
,& '
$str &
,& '
$str 
, 
$str 
} 
; 
var 
rand 
= 
new 
CryptoRandom '
(' (
Environment( 3
.3 4
	TickCount4 =
)= >
;> ?
List 
< 
char 
> 
chars 
= 
new "
List# '
<' (
char( ,
>, -
(- .
). /
;/ 0
for 
( 
int 
i 
= 
$num 
; 
i 
<=  
$num  !
;! "
i# $
++$ &
)& '
{   
chars!! 
.!! 
Insert!! 
(!! 
rand!! !
.!!! "
Next!!" &
(!!& '
$num!!' (
,!!( )
chars!!* /
.!!/ 0
Count!!0 5
)!!5 6
,!!6 7
randomChars"" 
["" 
i"" 
]"" 
["" 
rand"" #
.""# $
Next""$ (
(""( )
$num"") *
,""* +
randomChars"", 7
[""7 8
i""8 9
]""9 :
."": ;
Length""; A
)""A B
]""B C
)""C D
;""D E
}## 
for%% 
(%% 
int%% 
i%% 
=%% 
chars%% 
.%% 
Count%% $
;%%$ %
i%%& '
<%%( )
passwordOptions%%* 9
.%%9 :
RequiredLength%%: H
||&& 
chars&& 
.&& 
Distinct&& !
(&&! "
)&&" #
.&&# $
Count&&$ )
(&&) *
)&&* +
<&&, -
passwordOptions&&. =
.&&= >
RequiredUniqueChars&&> Q
;&&Q R
i&&S T
++&&T V
)&&V W
{'' 
string(( 
rcs(( 
=(( 
randomChars(( (
[((( )
rand(() -
.((- .
Next((. 2
(((2 3
$num((3 4
,((4 5
randomChars((6 A
.((A B
Length((B H
)((H I
]((I J
;((J K
chars)) 
.)) 
Insert)) 
()) 
rand)) !
.))! "
Next))" &
())& '
$num))' (
,))( )
chars))* /
.))/ 0
Count))0 5
)))5 6
,))6 7
rcs** 
[** 
rand** 
.** 
Next** !
(**! "
$num**" #
,**# $
rcs**% (
.**( )
Length**) /
)**/ 0
]**0 1
)**1 2
;**2 3
}++ 
return-- 
new-- 
string-- 
(-- 
chars-- #
.--# $
ToArray--$ +
(--+ ,
)--, -
)--- .
;--. /
}.. 	
}00 
}11 ù

bC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Helpers\RoomRequestParams.cs
	namespace 	
SoleusHotelApi
 
. 
Helpers  
{ 
public 

class 
RoomRequestParams "
:# $
PaginationParams% 5
{ 
public 
RoomRequestStatus  
RoomRequestStatus! 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
string 
Room 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 

Department		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
Topic

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
RequestDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} Á°
jC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Migrations\20230118144707_Initial.cs
	namespace 	
SoleusHotelApi
 
. 

Migrations #
{ 
public 

partial 
class 
Initial  
:! "
	Migration# ,
{		 
	protected

 
override

 
void

 
Up

  "
(

" #
MigrationBuilder

# 3
migrationBuilder

4 D
)

D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
	maxLengthG P
:P Q
$numR U
,U V
nullableW _
:_ `
truea e
)e f
,f g
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
	maxLengthQ Z
:Z [
$num\ _
,_ `
nullablea i
:i j
truek o
)o p
,p q
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
true] a
)a b
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
.   

Annotation   #
(  # $
$str  $ 8
,  8 9
$str  : @
)  @ A
,  A B

RoomNumber!! 
=!!  
table!!! &
.!!& '
Column!!' -
<!!- .
string!!. 4
>!!4 5
(!!5 6
type!!6 :
:!!: ;
$str!!< K
,!!K L
nullable!!M U
:!!U V
false!!W \
)!!\ ]
,!!] ^
CheckInDate"" 
=""  !
table""" '
.""' (
Column""( .
<"". /
DateTime""/ 7
>""7 8
(""8 9
type""9 =
:""= >
$str""? J
,""J K
nullable""L T
:""T U
false""V [
)""[ \
,""\ ]
CheckOutDate##  
=##! "
table### (
.##( )
Column##) /
<##/ 0
DateTime##0 8
>##8 9
(##9 :
type##: >
:##> ?
$str##@ K
,##K L
nullable##M U
:##U V
false##W \
)##\ ]
,##] ^
UserId$$ 
=$$ 
table$$ "
.$$" #
Column$$# )
<$$) *
int$$* -
>$$- .
($$. /
type$$/ 3
:$$3 4
$str$$5 :
,$$: ;
nullable$$< D
:$$D E
true$$F J
)$$J K
}%% 
,%% 
constraints&& 
:&& 
table&& "
=>&&# %
{'' 
table(( 
.(( 

PrimaryKey(( $
((($ %
$str((% /
,((/ 0
x((1 2
=>((3 5
x((6 7
.((7 8
Id((8 :
)((: ;
;((; <
})) 
))) 
;)) 
migrationBuilder++ 
.++ 
CreateTable++ (
(++( )
name,, 
:,, 
$str,, (
,,,( )
columns-- 
:-- 
table-- 
=>-- !
new--" %
{.. 
Id// 
=// 
table// 
.// 
Column// %
<//% &
int//& )
>//) *
(//* +
type//+ /
:/// 0
$str//1 6
,//6 7
nullable//8 @
://@ A
false//B G
)//G H
.00 

Annotation00 #
(00# $
$str00$ 8
,008 9
$str00: @
)00@ A
,00A B
RoleId11 
=11 
table11 "
.11" #
Column11# )
<11) *
int11* -
>11- .
(11. /
type11/ 3
:113 4
$str115 :
,11: ;
nullable11< D
:11D E
false11F K
)11K L
,11L M
	ClaimType22 
=22 
table22  %
.22% &
Column22& ,
<22, -
string22- 3
>223 4
(224 5
type225 9
:229 :
$str22; J
,22J K
nullable22L T
:22T U
true22V Z
)22Z [
,22[ \

ClaimValue33 
=33  
table33! &
.33& '
Column33' -
<33- .
string33. 4
>334 5
(335 6
type336 :
:33: ;
$str33< K
,33K L
nullable33M U
:33U V
true33W [
)33[ \
}44 
,44 
constraints55 
:55 
table55 "
=>55# %
{66 
table77 
.77 

PrimaryKey77 $
(77$ %
$str77% :
,77: ;
x77< =
=>77> @
x77A B
.77B C
Id77C E
)77E F
;77F G
table88 
.88 

ForeignKey88 $
(88$ %
name99 
:99 
$str99 F
,99F G
column:: 
::: 
x::  !
=>::" $
x::% &
.::& '
RoleId::' -
,::- .
principalTable;; &
:;;& '
$str;;( 5
,;;5 6
principalColumn<< '
:<<' (
$str<<) -
,<<- .
onDelete==  
:==  !
ReferentialAction==" 3
.==3 4
Cascade==4 ;
)==; <
;==< =
}>> 
)>> 
;>> 
migrationBuilder@@ 
.@@ 
CreateTable@@ (
(@@( )
nameAA 
:AA 
$strAA "
,AA" #
columnsBB 
:BB 
tableBB 
=>BB !
newBB" %
{CC 
IdDD 
=DD 
tableDD 
.DD 
ColumnDD %
<DD% &
intDD& )
>DD) *
(DD* +
typeDD+ /
:DD/ 0
$strDD1 6
,DD6 7
nullableDD8 @
:DD@ A
falseDDB G
)DDG H
.EE 

AnnotationEE #
(EE# $
$strEE$ 8
,EE8 9
$strEE: @
)EE@ A
,EEA B
	GuestNameFF 
=FF 
tableFF  %
.FF% &
ColumnFF& ,
<FF, -
stringFF- 3
>FF3 4
(FF4 5
typeFF5 9
:FF9 :
$strFF; J
,FFJ K
nullableFFL T
:FFT U
trueFFV Z
)FFZ [
,FF[ \
RoomIdGG 
=GG 
tableGG "
.GG" #
ColumnGG# )
<GG) *
intGG* -
>GG- .
(GG. /
typeGG/ 3
:GG3 4
$strGG5 :
,GG: ;
nullableGG< D
:GGD E
trueGGF J
)GGJ K
,GGK L
UserNameHH 
=HH 
tableHH $
.HH$ %
ColumnHH% +
<HH+ ,
stringHH, 2
>HH2 3
(HH3 4
typeHH4 8
:HH8 9
$strHH: I
,HHI J
	maxLengthHHK T
:HHT U
$numHHV Y
,HHY Z
nullableHH[ c
:HHc d
trueHHe i
)HHi j
,HHj k
NormalizedUserNameII &
=II' (
tableII) .
.II. /
ColumnII/ 5
<II5 6
stringII6 <
>II< =
(II= >
typeII> B
:IIB C
$strIID S
,IIS T
	maxLengthIIU ^
:II^ _
$numII` c
,IIc d
nullableIIe m
:IIm n
trueIIo s
)IIs t
,IIt u
PasswordHashJJ  
=JJ! "
tableJJ# (
.JJ( )
ColumnJJ) /
<JJ/ 0
stringJJ0 6
>JJ6 7
(JJ7 8
typeJJ8 <
:JJ< =
$strJJ> M
,JJM N
nullableJJO W
:JJW X
trueJJY ]
)JJ] ^
,JJ^ _
SecurityStampKK !
=KK" #
tableKK$ )
.KK) *
ColumnKK* 0
<KK0 1
stringKK1 7
>KK7 8
(KK8 9
typeKK9 =
:KK= >
$strKK? N
,KKN O
nullableKKP X
:KKX Y
trueKKZ ^
)KK^ _
,KK_ `
ConcurrencyStampLL $
=LL% &
tableLL' ,
.LL, -
ColumnLL- 3
<LL3 4
stringLL4 :
>LL: ;
(LL; <
typeLL< @
:LL@ A
$strLLB Q
,LLQ R
nullableLLS [
:LL[ \
trueLL] a
)LLa b
}MM 
,MM 
constraintsNN 
:NN 
tableNN "
=>NN# %
{OO 
tablePP 
.PP 

PrimaryKeyPP $
(PP$ %
$strPP% 4
,PP4 5
xPP6 7
=>PP8 :
xPP; <
.PP< =
IdPP= ?
)PP? @
;PP@ A
tableQQ 
.QQ 

ForeignKeyQQ $
(QQ$ %
nameRR 
:RR 
$strRR :
,RR: ;
columnSS 
:SS 
xSS  !
=>SS" $
xSS% &
.SS& '
RoomIdSS' -
,SS- .
principalTableTT &
:TT& '
$strTT( /
,TT/ 0
principalColumnUU '
:UU' (
$strUU) -
)UU- .
;UU. /
}VV 
)VV 
;VV 
migrationBuilderXX 
.XX 
CreateTableXX (
(XX( )
nameYY 
:YY 
$strYY (
,YY( )
columnsZZ 
:ZZ 
tableZZ 
=>ZZ !
newZZ" %
{[[ 
Id\\ 
=\\ 
table\\ 
.\\ 
Column\\ %
<\\% &
int\\& )
>\\) *
(\\* +
type\\+ /
:\\/ 0
$str\\1 6
,\\6 7
nullable\\8 @
:\\@ A
false\\B G
)\\G H
.]] 

Annotation]] #
(]]# $
$str]]$ 8
,]]8 9
$str]]: @
)]]@ A
,]]A B
UserId^^ 
=^^ 
table^^ "
.^^" #
Column^^# )
<^^) *
int^^* -
>^^- .
(^^. /
type^^/ 3
:^^3 4
$str^^5 :
,^^: ;
nullable^^< D
:^^D E
false^^F K
)^^K L
,^^L M
	ClaimType__ 
=__ 
table__  %
.__% &
Column__& ,
<__, -
string__- 3
>__3 4
(__4 5
type__5 9
:__9 :
$str__; J
,__J K
nullable__L T
:__T U
true__V Z
)__Z [
,__[ \

ClaimValue`` 
=``  
table``! &
.``& '
Column``' -
<``- .
string``. 4
>``4 5
(``5 6
type``6 :
:``: ;
$str``< K
,``K L
nullable``M U
:``U V
true``W [
)``[ \
}aa 
,aa 
constraintsbb 
:bb 
tablebb "
=>bb# %
{cc 
tabledd 
.dd 

PrimaryKeydd $
(dd$ %
$strdd% :
,dd: ;
xdd< =
=>dd> @
xddA B
.ddB C
IdddC E
)ddE F
;ddF G
tableee 
.ee 

ForeignKeyee $
(ee$ %
nameff 
:ff 
$strff E
,ffE F
columngg 
:gg 
xgg  !
=>gg" $
xgg% &
.gg& '
UserIdgg' -
,gg- .
principalTablehh &
:hh& '
$strhh( 4
,hh4 5
principalColumnii '
:ii' (
$strii) -
,ii- .
onDeletejj  
:jj  !
ReferentialActionjj" 3
.jj3 4
Cascadejj4 ;
)jj; <
;jj< =
}kk 
)kk 
;kk 
migrationBuildermm 
.mm 
CreateTablemm (
(mm( )
namenn 
:nn 
$strnn (
,nn( )
columnsoo 
:oo 
tableoo 
=>oo !
newoo" %
{pp 
LoginProviderqq !
=qq" #
tableqq$ )
.qq) *
Columnqq* 0
<qq0 1
stringqq1 7
>qq7 8
(qq8 9
typeqq9 =
:qq= >
$strqq? N
,qqN O
nullableqqP X
:qqX Y
falseqqZ _
)qq_ `
,qq` a
ProviderKeyrr 
=rr  !
tablerr" '
.rr' (
Columnrr( .
<rr. /
stringrr/ 5
>rr5 6
(rr6 7
typerr7 ;
:rr; <
$strrr= L
,rrL M
nullablerrN V
:rrV W
falserrX ]
)rr] ^
,rr^ _
ProviderDisplayNamess '
=ss( )
tabless* /
.ss/ 0
Columnss0 6
<ss6 7
stringss7 =
>ss= >
(ss> ?
typess? C
:ssC D
$strssE T
,ssT U
nullablessV ^
:ss^ _
truess` d
)ssd e
,sse f
UserIdtt 
=tt 
tablett "
.tt" #
Columntt# )
<tt) *
inttt* -
>tt- .
(tt. /
typett/ 3
:tt3 4
$strtt5 :
,tt: ;
nullablett< D
:ttD E
falsettF K
)ttK L
}uu 
,uu 
constraintsvv 
:vv 
tablevv "
=>vv# %
{ww 
tablexx 
.xx 

PrimaryKeyxx $
(xx$ %
$strxx% :
,xx: ;
xxx< =
=>xx> @
newxxA D
{xxE F
xxxG H
.xxH I
LoginProviderxxI V
,xxV W
xxxX Y
.xxY Z
ProviderKeyxxZ e
}xxf g
)xxg h
;xxh i
tableyy 
.yy 

ForeignKeyyy $
(yy$ %
namezz 
:zz 
$strzz E
,zzE F
column{{ 
:{{ 
x{{  !
=>{{" $
x{{% &
.{{& '
UserId{{' -
,{{- .
principalTable|| &
:||& '
$str||( 4
,||4 5
principalColumn}} '
:}}' (
$str}}) -
,}}- .
onDelete~~  
:~~  !
ReferentialAction~~" 3
.~~3 4
Cascade~~4 ;
)~~; <
;~~< =
} 
) 
; 
migrationBuilder
ÅÅ 
.
ÅÅ 
CreateTable
ÅÅ (
(
ÅÅ( )
name
ÇÇ 
:
ÇÇ 
$str
ÇÇ '
,
ÇÇ' (
columns
ÉÉ 
:
ÉÉ 
table
ÉÉ 
=>
ÉÉ !
new
ÉÉ" %
{
ÑÑ 
UserId
ÖÖ 
=
ÖÖ 
table
ÖÖ "
.
ÖÖ" #
Column
ÖÖ# )
<
ÖÖ) *
int
ÖÖ* -
>
ÖÖ- .
(
ÖÖ. /
type
ÖÖ/ 3
:
ÖÖ3 4
$str
ÖÖ5 :
,
ÖÖ: ;
nullable
ÖÖ< D
:
ÖÖD E
false
ÖÖF K
)
ÖÖK L
,
ÖÖL M
RoleId
ÜÜ 
=
ÜÜ 
table
ÜÜ "
.
ÜÜ" #
Column
ÜÜ# )
<
ÜÜ) *
int
ÜÜ* -
>
ÜÜ- .
(
ÜÜ. /
type
ÜÜ/ 3
:
ÜÜ3 4
$str
ÜÜ5 :
,
ÜÜ: ;
nullable
ÜÜ< D
:
ÜÜD E
false
ÜÜF K
)
ÜÜK L
}
áá 
,
áá 
constraints
àà 
:
àà 
table
àà "
=>
àà# %
{
ââ 
table
ää 
.
ää 

PrimaryKey
ää $
(
ää$ %
$str
ää% 9
,
ää9 :
x
ää; <
=>
ää= ?
new
ää@ C
{
ääD E
x
ääF G
.
ääG H
UserId
ääH N
,
ääN O
x
ääP Q
.
ääQ R
RoleId
ääR X
}
ääY Z
)
ääZ [
;
ää[ \
table
ãã 
.
ãã 

ForeignKey
ãã $
(
ãã$ %
name
åå 
:
åå 
$str
åå E
,
ååE F
column
çç 
:
çç 
x
çç  !
=>
çç" $
x
çç% &
.
çç& '
RoleId
çç' -
,
çç- .
principalTable
éé &
:
éé& '
$str
éé( 5
,
éé5 6
principalColumn
èè '
:
èè' (
$str
èè) -
,
èè- .
onDelete
êê  
:
êê  !
ReferentialAction
êê" 3
.
êê3 4
Cascade
êê4 ;
)
êê; <
;
êê< =
table
ëë 
.
ëë 

ForeignKey
ëë $
(
ëë$ %
name
íí 
:
íí 
$str
íí D
,
ííD E
column
ìì 
:
ìì 
x
ìì  !
=>
ìì" $
x
ìì% &
.
ìì& '
UserId
ìì' -
,
ìì- .
principalTable
îî &
:
îî& '
$str
îî( 4
,
îî4 5
principalColumn
ïï '
:
ïï' (
$str
ïï) -
,
ïï- .
onDelete
ññ  
:
ññ  !
ReferentialAction
ññ" 3
.
ññ3 4
Cascade
ññ4 ;
)
ññ; <
;
ññ< =
}
óó 
)
óó 
;
óó 
migrationBuilder
ôô 
.
ôô 
CreateTable
ôô (
(
ôô( )
name
öö 
:
öö 
$str
öö (
,
öö( )
columns
õõ 
:
õõ 
table
õõ 
=>
õõ !
new
õõ" %
{
úú 
UserId
ùù 
=
ùù 
table
ùù "
.
ùù" #
Column
ùù# )
<
ùù) *
int
ùù* -
>
ùù- .
(
ùù. /
type
ùù/ 3
:
ùù3 4
$str
ùù5 :
,
ùù: ;
nullable
ùù< D
:
ùùD E
false
ùùF K
)
ùùK L
,
ùùL M
LoginProvider
ûû !
=
ûû" #
table
ûû$ )
.
ûû) *
Column
ûû* 0
<
ûû0 1
string
ûû1 7
>
ûû7 8
(
ûû8 9
type
ûû9 =
:
ûû= >
$str
ûû? N
,
ûûN O
nullable
ûûP X
:
ûûX Y
false
ûûZ _
)
ûû_ `
,
ûû` a
Name
üü 
=
üü 
table
üü  
.
üü  !
Column
üü! '
<
üü' (
string
üü( .
>
üü. /
(
üü/ 0
type
üü0 4
:
üü4 5
$str
üü6 E
,
üüE F
nullable
üüG O
:
üüO P
false
üüQ V
)
üüV W
,
üüW X
Value
†† 
=
†† 
table
†† !
.
††! "
Column
††" (
<
††( )
string
††) /
>
††/ 0
(
††0 1
type
††1 5
:
††5 6
$str
††7 F
,
††F G
nullable
††H P
:
††P Q
true
††R V
)
††V W
}
°° 
,
°° 
constraints
¢¢ 
:
¢¢ 
table
¢¢ "
=>
¢¢# %
{
££ 
table
§§ 
.
§§ 

PrimaryKey
§§ $
(
§§$ %
$str
§§% :
,
§§: ;
x
§§< =
=>
§§> @
new
§§A D
{
§§E F
x
§§G H
.
§§H I
UserId
§§I O
,
§§O P
x
§§Q R
.
§§R S
LoginProvider
§§S `
,
§§` a
x
§§b c
.
§§c d
Name
§§d h
}
§§i j
)
§§j k
;
§§k l
table
•• 
.
•• 

ForeignKey
•• $
(
••$ %
name
¶¶ 
:
¶¶ 
$str
¶¶ E
,
¶¶E F
column
ßß 
:
ßß 
x
ßß  !
=>
ßß" $
x
ßß% &
.
ßß& '
UserId
ßß' -
,
ßß- .
principalTable
®® &
:
®®& '
$str
®®( 4
,
®®4 5
principalColumn
©© '
:
©©' (
$str
©©) -
,
©©- .
onDelete
™™  
:
™™  !
ReferentialAction
™™" 3
.
™™3 4
Cascade
™™4 ;
)
™™; <
;
™™< =
}
´´ 
)
´´ 
;
´´ 
migrationBuilder
≠≠ 
.
≠≠ 
CreateTable
≠≠ (
(
≠≠( )
name
ÆÆ 
:
ÆÆ 
$str
ÆÆ $
,
ÆÆ$ %
columns
ØØ 
:
ØØ 
table
ØØ 
=>
ØØ !
new
ØØ" %
{
∞∞ 
Id
±± 
=
±± 
table
±± 
.
±± 
Column
±± %
<
±±% &
int
±±& )
>
±±) *
(
±±* +
type
±±+ /
:
±±/ 0
$str
±±1 6
,
±±6 7
nullable
±±8 @
:
±±@ A
false
±±B G
)
±±G H
.
≤≤ 

Annotation
≤≤ #
(
≤≤# $
$str
≤≤$ 8
,
≤≤8 9
$str
≤≤: @
)
≤≤@ A
,
≤≤A B
RoomId
≥≥ 
=
≥≥ 
table
≥≥ "
.
≥≥" #
Column
≥≥# )
<
≥≥) *
int
≥≥* -
>
≥≥- .
(
≥≥. /
type
≥≥/ 3
:
≥≥3 4
$str
≥≥5 :
,
≥≥: ;
nullable
≥≥< D
:
≥≥D E
false
≥≥F K
)
≥≥K L
,
≥≥L M

Department
¥¥ 
=
¥¥  
table
¥¥! &
.
¥¥& '
Column
¥¥' -
<
¥¥- .
string
¥¥. 4
>
¥¥4 5
(
¥¥5 6
type
¥¥6 :
:
¥¥: ;
$str
¥¥< K
,
¥¥K L
nullable
¥¥M U
:
¥¥U V
false
¥¥W \
)
¥¥\ ]
,
¥¥] ^
Topic
µµ 
=
µµ 
table
µµ !
.
µµ! "
Column
µµ" (
<
µµ( )
string
µµ) /
>
µµ/ 0
(
µµ0 1
type
µµ1 5
:
µµ5 6
$str
µµ7 F
,
µµF G
nullable
µµH P
:
µµP Q
false
µµR W
)
µµW X
,
µµX Y
Subject
∂∂ 
=
∂∂ 
table
∂∂ #
.
∂∂# $
Column
∂∂$ *
<
∂∂* +
string
∂∂+ 1
>
∂∂1 2
(
∂∂2 3
type
∂∂3 7
:
∂∂7 8
$str
∂∂9 G
,
∂∂G H
	maxLength
∂∂I R
:
∂∂R S
$num
∂∂T V
,
∂∂V W
nullable
∂∂X `
:
∂∂` a
false
∂∂b g
)
∂∂g h
,
∂∂h i
Description
∑∑ 
=
∑∑  !
table
∑∑" '
.
∑∑' (
Column
∑∑( .
<
∑∑. /
string
∑∑/ 5
>
∑∑5 6
(
∑∑6 7
type
∑∑7 ;
:
∑∑; <
$str
∑∑= L
,
∑∑L M
	maxLength
∑∑N W
:
∑∑W X
$num
∑∑Y \
,
∑∑\ ]
nullable
∑∑^ f
:
∑∑f g
true
∑∑h l
)
∑∑l m
,
∑∑m n
RequestDate
∏∏ 
=
∏∏  !
table
∏∏" '
.
∏∏' (
Column
∏∏( .
<
∏∏. /
DateTime
∏∏/ 7
>
∏∏7 8
(
∏∏8 9
type
∏∏9 =
:
∏∏= >
$str
∏∏? J
,
∏∏J K
nullable
∏∏L T
:
∏∏T U
false
∏∏V [
)
∏∏[ \
,
∏∏\ ]
RequestStatus
ππ !
=
ππ" #
table
ππ$ )
.
ππ) *
Column
ππ* 0
<
ππ0 1
int
ππ1 4
>
ππ4 5
(
ππ5 6
type
ππ6 :
:
ππ: ;
$str
ππ< A
,
ππA B
nullable
ππC K
:
ππK L
false
ππM R
)
ππR S
,
ππS T
	DateStart
∫∫ 
=
∫∫ 
table
∫∫  %
.
∫∫% &
Column
∫∫& ,
<
∫∫, -
DateTime
∫∫- 5
>
∫∫5 6
(
∫∫6 7
type
∫∫7 ;
:
∫∫; <
$str
∫∫= H
,
∫∫H I
nullable
∫∫J R
:
∫∫R S
true
∫∫T X
)
∫∫X Y
,
∫∫Y Z
DateEnd
ªª 
=
ªª 
table
ªª #
.
ªª# $
Column
ªª$ *
<
ªª* +
DateTime
ªª+ 3
>
ªª3 4
(
ªª4 5
type
ªª5 9
:
ªª9 :
$str
ªª; F
,
ªªF G
nullable
ªªH P
:
ªªP Q
true
ªªR V
)
ªªV W
,
ªªW X
Duration
ºº 
=
ºº 
table
ºº $
.
ºº$ %
Column
ºº% +
<
ºº+ ,
TimeSpan
ºº, 4
>
ºº4 5
(
ºº5 6
type
ºº6 :
:
ºº: ;
$str
ºº< B
,
ººB C
nullable
ººD L
:
ººL M
true
ººN R
)
ººR S
,
ººS T
AssignedToId
ΩΩ  
=
ΩΩ! "
table
ΩΩ# (
.
ΩΩ( )
Column
ΩΩ) /
<
ΩΩ/ 0
int
ΩΩ0 3
>
ΩΩ3 4
(
ΩΩ4 5
type
ΩΩ5 9
:
ΩΩ9 :
$str
ΩΩ; @
,
ΩΩ@ A
nullable
ΩΩB J
:
ΩΩJ K
true
ΩΩL P
)
ΩΩP Q
}
ææ 
,
ææ 
constraints
øø 
:
øø 
table
øø "
=>
øø# %
{
¿¿ 
table
¡¡ 
.
¡¡ 

PrimaryKey
¡¡ $
(
¡¡$ %
$str
¡¡% 6
,
¡¡6 7
x
¡¡8 9
=>
¡¡: <
x
¡¡= >
.
¡¡> ?
Id
¡¡? A
)
¡¡A B
;
¡¡B C
table
¬¬ 
.
¬¬ 

ForeignKey
¬¬ $
(
¬¬$ %
name
√√ 
:
√√ 
$str
√√ G
,
√√G H
column
ƒƒ 
:
ƒƒ 
x
ƒƒ  !
=>
ƒƒ" $
x
ƒƒ% &
.
ƒƒ& '
AssignedToId
ƒƒ' 3
,
ƒƒ3 4
principalTable
≈≈ &
:
≈≈& '
$str
≈≈( 4
,
≈≈4 5
principalColumn
∆∆ '
:
∆∆' (
$str
∆∆) -
)
∆∆- .
;
∆∆. /
table
«« 
.
«« 

ForeignKey
«« $
(
««$ %
name
»» 
:
»» 
$str
»» <
,
»»< =
column
…… 
:
…… 
x
……  !
=>
……" $
x
……% &
.
……& '
RoomId
……' -
,
……- .
principalTable
   &
:
  & '
$str
  ( /
,
  / 0
principalColumn
ÀÀ '
:
ÀÀ' (
$str
ÀÀ) -
,
ÀÀ- .
onDelete
ÃÃ  
:
ÃÃ  !
ReferentialAction
ÃÃ" 3
.
ÃÃ3 4
Cascade
ÃÃ4 ;
)
ÃÃ; <
;
ÃÃ< =
}
ÕÕ 
)
ÕÕ 
;
ÕÕ 
migrationBuilder
œœ 
.
œœ 
CreateTable
œœ (
(
œœ( )
name
–– 
:
–– 
$str
–– 
,
–– 
columns
—— 
:
—— 
table
—— 
=>
—— !
new
——" %
{
““ 
Id
”” 
=
”” 
table
”” 
.
”” 
Column
”” %
<
””% &
int
””& )
>
””) *
(
””* +
type
””+ /
:
””/ 0
$str
””1 6
,
””6 7
nullable
””8 @
:
””@ A
false
””B G
)
””G H
.
‘‘ 

Annotation
‘‘ #
(
‘‘# $
$str
‘‘$ 8
,
‘‘8 9
$str
‘‘: @
)
‘‘@ A
,
‘‘A B
Url
’’ 
=
’’ 
table
’’ 
.
’’  
Column
’’  &
<
’’& '
string
’’' -
>
’’- .
(
’’. /
type
’’/ 3
:
’’3 4
$str
’’5 D
,
’’D E
nullable
’’F N
:
’’N O
true
’’P T
)
’’T U
,
’’U V
PublicId
÷÷ 
=
÷÷ 
table
÷÷ $
.
÷÷$ %
Column
÷÷% +
<
÷÷+ ,
string
÷÷, 2
>
÷÷2 3
(
÷÷3 4
type
÷÷4 8
:
÷÷8 9
$str
÷÷: I
,
÷÷I J
nullable
÷÷K S
:
÷÷S T
true
÷÷U Y
)
÷÷Y Z
,
÷÷Z [
RoomRequestId
◊◊ !
=
◊◊" #
table
◊◊$ )
.
◊◊) *
Column
◊◊* 0
<
◊◊0 1
int
◊◊1 4
>
◊◊4 5
(
◊◊5 6
type
◊◊6 :
:
◊◊: ;
$str
◊◊< A
,
◊◊A B
nullable
◊◊C K
:
◊◊K L
true
◊◊M Q
)
◊◊Q R
}
ÿÿ 
,
ÿÿ 
constraints
ŸŸ 
:
ŸŸ 
table
ŸŸ "
=>
ŸŸ# %
{
⁄⁄ 
table
€€ 
.
€€ 

PrimaryKey
€€ $
(
€€$ %
$str
€€% 0
,
€€0 1
x
€€2 3
=>
€€4 6
x
€€7 8
.
€€8 9
Id
€€9 ;
)
€€; <
;
€€< =
table
‹‹ 
.
‹‹ 

ForeignKey
‹‹ $
(
‹‹$ %
name
›› 
:
›› 
$str
›› D
,
››D E
column
ﬁﬁ 
:
ﬁﬁ 
x
ﬁﬁ  !
=>
ﬁﬁ" $
x
ﬁﬁ% &
.
ﬁﬁ& '
RoomRequestId
ﬁﬁ' 4
,
ﬁﬁ4 5
principalTable
ﬂﬂ &
:
ﬂﬂ& '
$str
ﬂﬂ( 6
,
ﬂﬂ6 7
principalColumn
‡‡ '
:
‡‡' (
$str
‡‡) -
)
‡‡- .
;
‡‡. /
}
·· 
)
·· 
;
·· 
migrationBuilder
„„ 
.
„„ 
CreateIndex
„„ (
(
„„( )
name
‰‰ 
:
‰‰ 
$str
‰‰ 2
,
‰‰2 3
table
ÂÂ 
:
ÂÂ 
$str
ÂÂ )
,
ÂÂ) *
column
ÊÊ 
:
ÊÊ 
$str
ÊÊ  
)
ÊÊ  !
;
ÊÊ! "
migrationBuilder
ËË 
.
ËË 
CreateIndex
ËË (
(
ËË( )
name
ÈÈ 
:
ÈÈ 
$str
ÈÈ %
,
ÈÈ% &
table
ÍÍ 
:
ÍÍ 
$str
ÍÍ $
,
ÍÍ$ %
column
ÎÎ 
:
ÎÎ 
$str
ÎÎ (
,
ÎÎ( )
unique
ÏÏ 
:
ÏÏ 
true
ÏÏ 
,
ÏÏ 
filter
ÌÌ 
:
ÌÌ 
$str
ÌÌ 6
)
ÌÌ6 7
;
ÌÌ7 8
migrationBuilder
ÔÔ 
.
ÔÔ 
CreateIndex
ÔÔ (
(
ÔÔ( )
name
 
:
 
$str
 2
,
2 3
table
ÒÒ 
:
ÒÒ 
$str
ÒÒ )
,
ÒÒ) *
column
ÚÚ 
:
ÚÚ 
$str
ÚÚ  
)
ÚÚ  !
;
ÚÚ! "
migrationBuilder
ÙÙ 
.
ÙÙ 
CreateIndex
ÙÙ (
(
ÙÙ( )
name
ıı 
:
ıı 
$str
ıı 2
,
ıı2 3
table
ˆˆ 
:
ˆˆ 
$str
ˆˆ )
,
ˆˆ) *
column
˜˜ 
:
˜˜ 
$str
˜˜  
)
˜˜  !
;
˜˜! "
migrationBuilder
˘˘ 
.
˘˘ 
CreateIndex
˘˘ (
(
˘˘( )
name
˙˙ 
:
˙˙ 
$str
˙˙ 1
,
˙˙1 2
table
˚˚ 
:
˚˚ 
$str
˚˚ (
,
˚˚( )
column
¸¸ 
:
¸¸ 
$str
¸¸  
)
¸¸  !
;
¸¸! "
migrationBuilder
˛˛ 
.
˛˛ 
CreateIndex
˛˛ (
(
˛˛( )
name
ˇˇ 
:
ˇˇ 
$str
ˇˇ ,
,
ˇˇ, -
table
ÄÄ 
:
ÄÄ 
$str
ÄÄ #
,
ÄÄ# $
column
ÅÅ 
:
ÅÅ 
$str
ÅÅ  
,
ÅÅ  !
unique
ÇÇ 
:
ÇÇ 
true
ÇÇ 
,
ÇÇ 
filter
ÉÉ 
:
ÉÉ 
$str
ÉÉ .
)
ÉÉ. /
;
ÉÉ/ 0
migrationBuilder
ÖÖ 
.
ÖÖ 
CreateIndex
ÖÖ (
(
ÖÖ( )
name
ÜÜ 
:
ÜÜ 
$str
ÜÜ %
,
ÜÜ% &
table
áá 
:
áá 
$str
áá #
,
áá# $
column
àà 
:
àà 
$str
àà ,
,
àà, -
unique
ââ 
:
ââ 
true
ââ 
,
ââ 
filter
ää 
:
ää 
$str
ää :
)
ää: ;
;
ää; <
migrationBuilder
åå 
.
åå 
CreateIndex
åå (
(
åå( )
name
çç 
:
çç 
$str
çç /
,
çç/ 0
table
éé 
:
éé 
$str
éé 
,
éé  
column
èè 
:
èè 
$str
èè '
)
èè' (
;
èè( )
migrationBuilder
ëë 
.
ëë 
CreateIndex
ëë (
(
ëë( )
name
íí 
:
íí 
$str
íí 4
,
íí4 5
table
ìì 
:
ìì 
$str
ìì %
,
ìì% &
column
îî 
:
îî 
$str
îî &
)
îî& '
;
îî' (
migrationBuilder
ññ 
.
ññ 
CreateIndex
ññ (
(
ññ( )
name
óó 
:
óó 
$str
óó .
,
óó. /
table
òò 
:
òò 
$str
òò %
,
òò% &
column
ôô 
:
ôô 
$str
ôô  
)
ôô  !
;
ôô! "
migrationBuilder
õõ 
.
õõ 
CreateIndex
õõ (
(
õõ( )
name
úú 
:
úú 
$str
úú +
,
úú+ ,
table
ùù 
:
ùù 
$str
ùù 
,
ùù 
column
ûû 
:
ûû 
$str
ûû $
,
ûû$ %
unique
üü 
:
üü 
true
üü 
)
üü 
;
üü 
}
†† 	
	protected
¢¢ 
override
¢¢ 
void
¢¢ 
Down
¢¢  $
(
¢¢$ %
MigrationBuilder
¢¢% 5
migrationBuilder
¢¢6 F
)
¢¢F G
{
££ 	
migrationBuilder
§§ 
.
§§ 
	DropTable
§§ &
(
§§& '
name
•• 
:
•• 
$str
•• (
)
••( )
;
••) *
migrationBuilder
ßß 
.
ßß 
	DropTable
ßß &
(
ßß& '
name
®® 
:
®® 
$str
®® (
)
®®( )
;
®®) *
migrationBuilder
™™ 
.
™™ 
	DropTable
™™ &
(
™™& '
name
´´ 
:
´´ 
$str
´´ (
)
´´( )
;
´´) *
migrationBuilder
≠≠ 
.
≠≠ 
	DropTable
≠≠ &
(
≠≠& '
name
ÆÆ 
:
ÆÆ 
$str
ÆÆ '
)
ÆÆ' (
;
ÆÆ( )
migrationBuilder
∞∞ 
.
∞∞ 
	DropTable
∞∞ &
(
∞∞& '
name
±± 
:
±± 
$str
±± (
)
±±( )
;
±±) *
migrationBuilder
≥≥ 
.
≥≥ 
	DropTable
≥≥ &
(
≥≥& '
name
¥¥ 
:
¥¥ 
$str
¥¥ 
)
¥¥ 
;
¥¥  
migrationBuilder
∂∂ 
.
∂∂ 
	DropTable
∂∂ &
(
∂∂& '
name
∑∑ 
:
∑∑ 
$str
∑∑ #
)
∑∑# $
;
∑∑$ %
migrationBuilder
ππ 
.
ππ 
	DropTable
ππ &
(
ππ& '
name
∫∫ 
:
∫∫ 
$str
∫∫ $
)
∫∫$ %
;
∫∫% &
migrationBuilder
ºº 
.
ºº 
	DropTable
ºº &
(
ºº& '
name
ΩΩ 
:
ΩΩ 
$str
ΩΩ "
)
ΩΩ" #
;
ΩΩ# $
migrationBuilder
øø 
.
øø 
	DropTable
øø &
(
øø& '
name
¿¿ 
:
¿¿ 
$str
¿¿ 
)
¿¿ 
;
¿¿ 
}
¡¡ 	
}
¬¬ 
}√√ Â
_C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Models\ServiceResponse.cs
	namespace 	
SoleusHotelApi
 
. 
Models 
{ 
public 

class 
ServiceResponse  
<  !
T! "
>" #
{ 
public 
bool 
IsValid 
{ 
get !
;! "
set# &
;& '
}( )
public 
List 
< 
string 
> 
Errors "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
new3 6
List7 ;
<; <
string< B
>B C
(C D
)D E
;E F
public 
T 
Data 
{ 
get 
; 
set  
;  !
}" #
} 
}		 •
PC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var 
startup 
= 
new 
Startup 
( 
builder !
.! "
Configuration" /
)/ 0
;0 1
startup 
. 
ConfigureServices 
( 
builder !
.! "
Services" *
)* +
;+ ,
var		 
app		 
=		 	
builder		
 
.		 
Build		 
(		 
)		 
;		 
startup 
. 
	Configure 
( 
app 
, 
app 
. 
Environment &
)& '
;' (
app 
. 
Run 
( 
) 	
;	 
ô4
^C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\AdminService.cs
	namespace

 	
SoleusHotelApi


 
.

 
Services

 !
{ 
public 

class 
AdminService 
: 
IAdminService  -
{ 
private 
readonly 
UserManager $
<$ %
	HotelUser% .
>. /
_userManager0 <
;< =
private 
readonly 
RoleManager $
<$ %
	HotelRole% .
>. /
_roleManager0 <
;< =
private 
readonly 
IRoomRepository (
_roomRepository) 8
;8 9
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
AdminService 
( 
UserManager '
<' (
	HotelUser( 1
>1 2
userManager3 >
,> ?
RoleManager@ K
<K L
	HotelRoleL U
>U V
roleManagerW b
,b c
IRoomRepositoryd s
roomRepository	t Ç
,
É Ñ
IConfiguration
Ö ì
configuration
î °
)
° ¢
{ 	
_userManager 
= 
userManager &
;& '
_roleManager 
= 
roleManager &
;& '
_roomRepository 
= 
roomRepository ,
;, -
_configuration 
= 
configuration *
;* +
} 	
public 
async 
Task 
< 
ServiceResponse )
<) *
string* 0
>0 1
>1 2
InitialSetup3 ?
(? @
)@ A
{ 	
ServiceResponse 
< 
string "
>" #
response$ ,
=- .
new/ 2
(2 3
)3 4
;4 5
if 
( 
await 
_userManager "
." #
Users# (
.( )
AnyAsync) 1
(1 2
x2 3
=>4 6
x7 8
.8 9
Room9 =
.= >

RoomNumber> H
==I K
_configurationL Z
[Z [
$str[ q
]q r
)r s
)s t
{   
response!! 
.!! 
Errors!! 
.!!  
Add!!  #
(!!# $
AdminServiceError!!$ 5
.!!5 6
ConfigurationDone!!6 G
)!!G H
;!!H I
return"" 
response"" 
;""  
}## 
List%% 
<%% 
string%% 
>%% 
	rolesList%% "
=%%# $
new%%% (
(%%( )
)%%) *
{%%+ ,
Roles%%- 2
.%%2 3
Admin%%3 8
,%%8 9
Roles%%: ?
.%%? @
Housekeeping%%@ L
,%%L M
Roles%%N S
.%%S T
Maintenance%%T _
,%%_ `
Roles%%a f
.%%f g
	Reception%%g p
,%%p q
Roles%%r w
.%%w x
Guest%%x }
}%%~ 
;	%% Ä
foreach'' 
('' 
var'' 
role'' 
in''  
	rolesList''! *
)''* +
{(( 
if)) 
()) 
!)) 
await)) 
_roleManager)) '
.))' (
RoleExistsAsync))( 7
())7 8
role))8 <
)))< =
)))= >
{** 
	HotelRole++ 
newRole++ %
=++& '
new++( +
(+++ ,
)++, -
;++- .
newRole,, 
.,, 
Name,,  
=,,! "
role,,# '
;,,' (
await-- 
_roleManager-- &
.--& '
CreateAsync--' 2
(--2 3
newRole--3 :
)--: ;
;--; <
}.. 
}// 
Room11 
superUserRoom11 
=11  
new11! $
(11$ %
)11% &
{22 

RoomNumber33 
=33 
_configuration33 +
[33+ ,
$str33, B
]33B C
,33C D
CheckInDate44 
=44 
DateTime44 &
.44& '
Now44' *
,44* +
CheckOutDate55 
=55 
DateTime55 '
.55' (
Now55( +
.55+ ,
AddYears55, 4
(554 5
$num555 8
)558 9
}66 
;66 
await88 
_roomRepository88 !
.88! "
AddRoom88" )
(88) *
superUserRoom88* 7
)887 8
;888 9
	HotelUser:: 
	superUser:: 
=::  !
new::" %
(::% &
)::& '
{;; 
Room<< 
=<< 
superUserRoom<< $
,<<$ %
	GuestName== 
=== 
_configuration== *
[==* +
$str==+ A
]==A B
,==B C
UserName>> 
=>> 
_configuration>> )
[>>) *
$str>>* @
]>>@ A
}?? 
;?? 
superUserRoomAA 
.AA 
UserIdAA  
=AA! "
	superUserAA# ,
.AA, -
IdAA- /
;AA/ 0
stringCC 
superUserPassCC  
=CC! "
_configurationCC# 1
[CC1 2
$strCC2 F
]CCF G
;CCG H
IdentityResultEE 
resultEE !
=EE" #
awaitEE$ )
_userManagerEE* 6
.EE6 7
CreateAsyncEE7 B
(EEB C
	superUserEEC L
,EEL M
superUserPassEEN [
)EE[ \
;EE\ ]
ifGG 
(GG 
resultGG 
.GG 
	SucceededGG  
)GG  !
{HH 
_II 
=II 
awaitII 
_userManagerII &
.II& '
AddToRoleAsyncII' 5
(II5 6
	superUserII6 ?
,II? @
RolesIIA F
.IIF G
AdminIIG L
)IIL M
;IIM N
}JJ 
awaitLL 
_roomRepositoryLL !
.LL! "
SaveAllAsyncLL" .
(LL. /
)LL/ 0
;LL0 1
responseNN 
.NN 
IsValidNN 
=NN 
trueNN #
;NN# $
responseOO 
.OO 
DataOO 
=OO 
$strOO ;
;OO; <
returnPP 
responsePP 
;PP 
}QQ 	
}RR 
}SS ´
iC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\Contracts\IAdminService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
.! "
	Contracts" +
{ 
public 

	interface 
IAdminService "
{ 
Task 
< 
ServiceResponse 
< 
string #
># $
>$ %
InitialSetup& 2
(2 3
)3 4
;4 5
} 
}		 å
mC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\Contracts\IHotelUserService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
.! "
	Contracts" +
{ 
public 

	interface 
IHotelUserService &
{ 
Task		 
<		 
ServiceResponse		 
<		 
List		 !
<		! "!
HotelUserWithRolesDto		" 7
>		7 8
>		8 9
>		9 :
GetHotelUsers		; H
(		H I
)		I J
;		J K
Task

 
<

 
ServiceResponse

 
<

 
HotelUserDto

 )
>

) *
>

* +
GetHotelUser

, 8
(

8 9
string

9 ?

roomNumber

@ J
)

J K
;

K L
Task 
< 
ServiceResponse 
< !
HotelUserWithRolesDto 2
>2 3
>3 4!
GetHotelUserWithRoles5 J
(J K
stringK Q

roomNumberR \
)\ ]
;] ^
Task 
< 
ServiceResponse 
< 
List !
<! "$
HotelUserWithRequestsDto" :
>: ;
>; <
>< =$
GetHotelUserWithRequests> V
(V W
)W X
;X Y
Task 
< 
ServiceResponse 
< 
CreatedHotelUserDto 0
>0 1
>1 2
CreateHotelUser3 B
(B C
CreateHotelUserDtoC U
createHotelUserDtoV h
)h i
;i j
Task 
< 
ServiceResponse 
< 
LoggedUserDto *
>* +
>+ ,
LoginHotelUser- ;
(; <
LoginHotelUserDto< M
loginHotelUserDtoN _
)_ `
;` a
Task 
< 
ServiceResponse 
< 
CreatedHotelUserDto 0
>0 1
>1 2
EditUser3 ;
(; <
CreateHotelUserDto< N
editUserO W
)W X
;X Y
Task 
< 
ServiceResponse 
< 
HotelUserDto )
>) *
>* +
EditGuestUser, 9
(9 :
HotelUserDto: F
editUserG O
)O P
;P Q
Task 
< 
ServiceResponse 
< 
LoggedUserDto *
>* +
>+ ,
ForgotPassword- ;
(; <'
HotelUserPasswordUpdatesDto< W!
userPasswordForgotDtoX m
,m n
stringo u
userRoomNumber	v Ñ
)
Ñ Ö
;
Ö Ü
Task 
< 
ServiceResponse 
< (
GenerateHotelUserPasswordDto 9
>9 :
>: ; 
GenerateUserPassword< P
(P Q
stringQ W

roomNumberX b
)b c
;c d
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" # 
ResetGuestsPasswords$ 8
(8 9
string9 ?
password@ H
)H I
;I J
Task 
< 
ServiceResponse 
< 
List !
<! "
HotelRoleDto" .
>. /
>/ 0
>0 1"
GetUsersWithRolesAsync2 H
(H I
)I J
;J K
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" #
DeleteHotelUser$ 3
(3 4
string4 :

roomNumber; E
)E F
;F G
} 
} ˆ
oC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\Contracts\IRoomRequestService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
.! "
	Contracts" +
{ 
public 

	interface 
IRoomRequestService (
{ 
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" #
CreateRoomRequest$ 5
(5 6 
CreateRoomRequestDto6 J 
createRoomRequestDtoK _
,_ `
stringa g
userRoomNumberh v
)v w
;w x
Task		 
<		 
ServiceResponse		 
<		 
List		 !
<		! "
BaseRoomRequestDto		" 4
>		4 5
>		5 6
>		6 7 
GetGuestRoomRequests		8 L
(		L M
string		M S
userRoomNumber		T b
)		b c
;		c d
Task

 
<

 
ServiceResponse

 
<

 
RoomRequestDto

 +
>

+ ,
>

, -
GetRoomRequest

. <
(

< =
int

= @
roomRequestId

A N
,

N O
string

P V
userRoomNumber

W e
,

e f
List

g k
<

k l
string

l r
>

r s
	userRoles

t }
)

} ~
;

~ 
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" #
StartRoomRequest$ 4
(4 5
int5 8
roomRequestId9 F
,F G
stringH N
userRoomNumberO ]
,] ^
List_ c
<c d
stringd j
>j k
	userRolesl u
)u v
;v w
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" #
EndRoomRequest$ 2
(2 3
int3 6
roomRequestId7 D
,D E
stringF L
userRoomNumberM [
,[ \
List] a
<a b
stringb h
>h i
	userRolesj s
)s t
;t u
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" #!
SafeDeleteRoomRequest$ 9
(9 :
int: =
roomRequestId> K
,K L
stringM S
userRoomNumberT b
,b c
Listd h
<h i
stringi o
>o p
	userRolesq z
)z {
;{ |
} 
} £
hC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\Contracts\IRoomService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
.! "
	Contracts" +
{ 
public 

	interface 
IRoomService !
{ 
Task		 
<		 
ServiceResponse		 
<		 
bool		 !
>		! "
>		" #

UpdateRoom		$ .
(		. /
CreateHotelUserDto		/ A
createHotelUserDto		B T
)		T U
;		U V
Task

 
<

 
ServiceResponse

 
<

 
bool

 !
>

! "
>

" #
AddUserToRoom

$ 1
(

1 2
	HotelUser

2 ;
user

< @
,

@ A
CreateHotelUserDto

B T
createdHotelUserDto

U h
)

h i
;

i j
} 
} ò
iC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\Contracts\ITokenService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
.! "
	Contracts" +
{ 
public 

	interface 
ITokenService "
{ 
Task 
< 
string 
> 
CreateToken  
(  !
	HotelUser! *
user+ /
)/ 0
;0 1
} 
}		 ò¶
bC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\HotelUserService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
{ 
public 

class 
HotelUserService !
:" #
IHotelUserService$ 5
{ 
private 
readonly 
IRoomService %
_roomService& 2
;2 3
private 
readonly 
UserManager $
<$ %
	HotelUser% .
>. /
_userManager0 <
;< =
private 
readonly 
SignInManager &
<& '
	HotelUser' 0
>0 1
_signInManager2 @
;@ A
private 
readonly  
IHotelUserRepository -
_userRepository. =
;= >
private 
readonly 
IRoomRepository (
_roomRepository) 8
;8 9
private 
readonly 
ITokenService &
_tokenService' 4
;4 5
private 
readonly 
IMapper  
_mapper! (
;( )
public 
HotelUserService 
(  
IRoomService  ,
roomService- 8
,8 9
UserManager: E
<E F
	HotelUserF O
>O P
userManagerQ \
,\ ]
SignInManager^ k
<k l
	HotelUserl u
>u v
signInManager	w Ñ
,
Ñ Ö"
IHotelUserRepository
Ü ö
userRepository
õ ©
,
© ™
IRoomRepository 
roomRepository *
,* +
ITokenService, 9
tokenService: F
,F G
IMapperH O
mapperP V
)V W
{ 	
_roomService 
= 
roomService &
;& '
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_userRepository 
= 
userRepository ,
;, -
_roomRepository   
=   
roomRepository   ,
;  , -
_tokenService!! 
=!! 
tokenService!! (
;!!( )
_mapper"" 
="" 
mapper"" 
;"" 
}## 	
public&& 
async&& 
Task&& 
<&& 
ServiceResponse&& )
<&&) *
List&&* .
<&&. /!
HotelUserWithRolesDto&&/ D
>&&D E
>&&E F
>&&F G
GetHotelUsers&&H U
(&&U V
)&&V W
{'' 	
ServiceResponse(( 
<(( 
List((  
<((  !!
HotelUserWithRolesDto((! 6
>((6 7
>((7 8
response((9 A
=((B C
new((D G
(((G H
)((H I
;((I J
List** 
<** 
	HotelUser** 
>** 
userList** $
=**% &
await**' ,
_userRepository**- <
.**< =
GetAllUsers**= H
(**H I
)**I J
;**J K
List++ 
<++ !
HotelUserWithRolesDto++ &
>++& '
usersWithRoles++( 6
=++7 8
_mapper++9 @
.++@ A
Map++A D
<++D E
List++E I
<++I J!
HotelUserWithRolesDto++J _
>++_ `
>++` a
(++a b
userList++b j
)++j k
;++k l
foreach,, 
(,, 
var,, 
user,, 
in,,  
usersWithRoles,,! /
),,/ 0
{-- 
	HotelUser.. 
userInDb.. "
=..# $
userList..% -
...- .
First... 3
(..3 4
room..4 8
=>..9 ;
room..< @
...@ A
Room..A E
...E F

RoomNumber..F P
==..Q S
user..T X
...X Y

RoomNumber..Y c
)..c d
;..d e
user// 
.// 
	UserRoles// 
=//  
await//! &
_userManager//' 3
.//3 4
GetRolesAsync//4 A
(//A B
userInDb//B J
)//J K
;//K L
}00 
response22 
.22 
IsValid22 
=22 
true22 #
;22# $
response33 
.33 
Data33 
=33 
usersWithRoles33 *
;33* +
return44 
response44 
;44 
}55 	
public77 
async77 
Task77 
<77 
ServiceResponse77 )
<77) *
HotelUserDto77* 6
>776 7
>777 8
GetHotelUser779 E
(77E F
string77F L

roomNumber77M W
)77W X
{88 	
return99 
new99 
ServiceResponse99 &
<99& '
HotelUserDto99' 3
>993 4
{:: 
IsValid;; 
=;; 
true;; 
,;; 
Data<< 
=<< 
await<< 
_userRepository<< ,
.<<, - 
GetHotelUserDtoAsync<<- A
(<<A B

roomNumber<<B L
)<<L M
}== 
;== 
}>> 	
public@@ 
async@@ 
Task@@ 
<@@ 
ServiceResponse@@ )
<@@) *!
HotelUserWithRolesDto@@* ?
>@@? @
>@@@ A!
GetHotelUserWithRoles@@B W
(@@W X
string@@X ^

roomNumber@@_ i
)@@i j
{AA 	
ServiceResponseBB 
<BB !
HotelUserWithRolesDtoBB 1
>BB1 2
responseBB3 ;
=BB< =
newBB> A
(BBA B
)BBB C
;BBC D
varDD 
userDD 
=DD 
awaitDD 
_userManagerDD )
.DD) *
UsersDD* /
.DD/ 0
IncludeDD0 7
(DD7 8
rDD8 9
=>DD: <
rDD= >
.DD> ?
RoomDD? C
)DDC D
.DDD E
FirstOrDefaultAsyncDDE X
(DDX Y
xDDY Z
=>DD[ ]
xDD^ _
.DD_ `
RoomDD` d
.DDd e

RoomNumberDDe o
==DDp r

roomNumberDDs }
)DD} ~
;DD~ 
ifFF 
(FF 
userFF 
isFF 
nullFF 
)FF 
{GG 
responseHH 
.HH 
ErrorsHH 
.HH  
AddHH  #
(HH# $!
HotelUserServiceErrorHH$ 9
.HH9 :
UserNotFoundHH: F
)HHF G
;HHG H
returnII 
responseII 
;II  
}JJ !
HotelUserWithRolesDtoLL !
userWithRolesDtoLL" 2
=LL3 4
_mapperLL5 <
.LL< =
MapLL= @
<LL@ A!
HotelUserWithRolesDtoLLA V
>LLV W
(LLW X
userLLX \
)LL\ ]
;LL] ^
userWithRolesDtoMM 
.MM 
	UserRolesMM &
=MM' (
awaitMM) .
_userManagerMM/ ;
.MM; <
GetRolesAsyncMM< I
(MMI J
userMMJ N
)MMN O
;MMO P
responseOO 
.OO 
IsValidOO 
=OO 
trueOO #
;OO# $
responsePP 
.PP 
DataPP 
=PP 
userWithRolesDtoPP ,
;PP, -
returnRR 
responseRR 
;RR 
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
ServiceResponseUU )
<UU) *
ListUU* .
<UU. /$
HotelUserWithRequestsDtoUU/ G
>UUG H
>UUH I
>UUI J$
GetHotelUserWithRequestsUUK c
(UUc d
)UUd e
{VV 	
ListWW 
<WW 
	HotelUserWW 
>WW 
guestsWW "
=WW# $
awaitWW% *
_userRepositoryWW+ :
.WW: ;
GetAllGuestsWW; G
(WWG H
)WWH I
;WWI J
returnYY 
newYY 
ServiceResponseYY &
<YY& '
ListYY' +
<YY+ ,$
HotelUserWithRequestsDtoYY, D
>YYD E
>YYE F
{ZZ 
IsValid[[ 
=[[ 
true[[ 
,[[ 
Data\\ 
=\\ 
_mapper\\ 
.\\ 
Map\\ "
<\\" #
List\\# '
<\\' ($
HotelUserWithRequestsDto\\( @
>\\@ A
>\\A B
(\\B C
guests\\C I
)\\I J
}]] 
;]] 
}^^ 	
public`` 
async`` 
Task`` 
<`` 
ServiceResponse`` )
<``) *
CreatedHotelUserDto``* =
>``= >
>``> ?
CreateHotelUser``@ O
(``O P
CreateHotelUserDto``P b
createHotelUserDto``c u
)``u v
{aa 	
ServiceResponsebb 
<bb 
CreatedHotelUserDtobb /
>bb/ 0
responsebb1 9
=bb: ;
newbb< ?
(bb? @
)bb@ A
;bbA B
ifdd 
(dd 
awaitdd 

UserExistsdd  
(dd  !
createHotelUserDtodd! 3
.dd3 4

RoomNumberdd4 >
)dd> ?
)dd? @
{ee 
responseff 
.ff 
Errorsff 
.ff  
Addff  #
(ff# $!
HotelUserServiceErrorff$ 9
.ff9 :
UserAlreadyExistsff: K
)ffK L
;ffL M
returngg 
responsegg 
;gg  
}hh 
createHotelUserDtojj 
.jj 

RoomNumberjj )
=jj* +
createHotelUserDtojj, >
.jj> ?

RoomNumberjj? I
.jjI J
ToUpperjjJ Q
(jjQ R
)jjR S
;jjS T
createHotelUserDtokk 
.kk 
	GuestNamekk (
=kk) *
createHotelUserDtokk+ =
.kk= >
	GuestNamekk> G
.kkG H
ToUpperkkH O
(kkO P
)kkP Q
;kkQ R
	HotelUsernn 
	hotelUsernn 
=nn  !
_mappernn" )
.nn) *
Mapnn* -
<nn- .
	HotelUsernn. 7
>nn7 8
(nn8 9
createHotelUserDtonn9 K
)nnK L
;nnL M
IdentityResultpp 
createUserResultpp +
=pp, -
awaitpp. 3
_userManagerpp4 @
.pp@ A
CreateAsyncppA L
(ppL M
	hotelUserppM V
,ppV W
createHotelUserDtoppX j
.ppj k
Passwordppk s
)pps t
;ppt u
ifrr 
(rr 
!rr 
createUserResultrr !
.rr! "
	Succeededrr" +
)rr+ ,
{ss 
responsett 
.tt 
Errorstt 
=tt  !
createUserResulttt" 2
.tt2 3
Errorstt3 9
.tt9 :
Selecttt: @
(tt@ A
xttA B
=>ttC E
xttF G
.ttG H
DescriptionttH S
)ttS T
.ttT U
ToListttU [
(tt[ \
)tt\ ]
;tt] ^
returnuu 
responseuu 
;uu  
}vv 
foreachxx 
(xx 
varxx 
rolexx 
inxx  
createHotelUserDtoxx! 3
.xx3 4
Rolesxx4 9
)xx9 :
{yy 
IdentityResultzz 

roleResultzz )
=zz* +
awaitzz, 1
_userManagerzz2 >
.zz> ?
AddToRoleAsynczz? M
(zzM N
	hotelUserzzN W
,zzW X
rolezzY ]
)zz] ^
;zz^ _
if|| 
(|| 
!|| 

roleResult|| 
.||  
	Succeeded||  )
)||) *
{}} 
response~~ 
.~~ 
Errors~~ #
=~~$ %
createUserResult~~& 6
.~~6 7
Errors~~7 =
.~~= >
Select~~> D
(~~D E
x~~E F
=>~~G I
x~~J K
.~~K L
Description~~L W
)~~W X
.~~X Y
ToList~~Y _
(~~_ `
)~~` a
;~~a b
return 
response #
;# $
}
ÄÄ 
}
ÅÅ 
ServiceResponse
ÉÉ 
<
ÉÉ 
bool
ÉÉ  
>
ÉÉ  !
userAddedToRoom
ÉÉ" 1
=
ÉÉ2 3
await
ÉÉ4 9
_roomService
ÉÉ: F
.
ÉÉF G
AddUserToRoom
ÉÉG T
(
ÉÉT U
	hotelUser
ÉÉU ^
,
ÉÉ^ _ 
createHotelUserDto
ÉÉ` r
)
ÉÉr s
;
ÉÉs t
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 
userAddedToRoom
ÖÖ  
.
ÖÖ  !
IsValid
ÖÖ! (
)
ÖÖ( )
{
ÜÜ 
response
áá 
.
áá 
Errors
áá 
.
áá  
Add
áá  #
(
áá# $
userAddedToRoom
áá$ 3
.
áá3 4
Errors
áá4 :
.
áá: ;
First
áá; @
(
áá@ A
)
ááA B
+
ááC D#
HotelUserServiceError
ááE Z
.
ááZ [
UserCreated
áá[ f
)
ááf g
;
áág h
}
àà 
Room
ää 
userRoom
ää 
=
ää 
await
ää !
_roomRepository
ää" 1
.
ää1 2!
GetRoomByRoomNumber
ää2 E
(
ääE F 
createHotelUserDto
ääF X
.
ääX Y

RoomNumber
ääY c
)
ääc d
;
ääd e
	hotelUser
ãã 
.
ãã 
RoomId
ãã 
=
ãã 
userRoom
ãã '
.
ãã' (
Id
ãã( *
;
ãã* +
await
åå 
_userManager
åå 
.
åå 
UpdateAsync
åå *
(
åå* +
	hotelUser
åå+ 4
)
åå4 5
;
åå5 6!
CreatedHotelUserDto
èè !
createdHotelUserDto
èè  3
=
èè4 5
_mapper
èè6 =
.
èè= >
Map
èè> A
<
èèA B!
CreatedHotelUserDto
èèB U
>
èèU V
(
èèV W
	hotelUser
èèW `
)
èè` a
;
èèa b!
createdHotelUserDto
êê 
.
êê  
	UserRoles
êê  )
=
êê* +
await
êê, 1
_userManager
êê2 >
.
êê> ?
GetRolesAsync
êê? L
(
êêL M
	hotelUser
êêM V
)
êêV W
;
êêW X
response
íí 
.
íí 
IsValid
íí 
=
íí 
true
íí #
;
íí# $
response
ìì 
.
ìì 
Data
ìì 
=
ìì !
createdHotelUserDto
ìì /
;
ìì/ 0
return
ïï 
response
ïï 
;
ïï 
}
ññ 	
public
òò 
async
òò 
Task
òò 
<
òò 
ServiceResponse
òò )
<
òò) *
LoggedUserDto
òò* 7
>
òò7 8
>
òò8 9
LoginHotelUser
òò: H
(
òòH I
LoginHotelUserDto
òòI Z
loginHotelUserDto
òò[ l
)
òòl m
{
ôô 	
ServiceResponse
öö 
<
öö 
LoggedUserDto
öö )
>
öö) *
response
öö+ 3
=
öö4 5
new
öö6 9
(
öö9 :
)
öö: ;
;
öö; <
if
úú 
(
úú 
loginHotelUserDto
úú !
is
úú" $
null
úú% )
)
úú) *
{
ùù 
response
ûû 
.
ûû 
Errors
ûû 
.
ûû  
Add
ûû  #
(
ûû# $#
HotelUserServiceError
ûû$ 9
.
ûû9 :%
NullPasswordAndUserName
ûû: Q
)
ûûQ R
;
ûûR S
return
üü 
response
üü 
;
üü  
}
†† 
	HotelUser
¢¢ 
user
¢¢ 
=
¢¢ 
await
¢¢ "
_userManager
¢¢# /
.
¢¢/ 0
Users
¢¢0 5
.
¢¢5 6
Include
¢¢6 =
(
¢¢= >
r
¢¢> ?
=>
¢¢@ B
r
¢¢C D
.
¢¢D E
Room
¢¢E I
)
¢¢I J
.
££ "
SingleOrDefaultAsync
££ %
(
££% &
x
££& '
=>
££( *
x
££+ ,
.
££, -
Room
££- 1
.
££1 2

RoomNumber
££2 <
==
££= ?
loginHotelUserDto
££@ Q
.
££Q R

RoomNumber
££R \
.
££\ ]
ToUpper
££] d
(
££d e
)
££e f
)
££f g
;
££g h
if
•• 
(
•• 
user
•• 
is
•• 
null
•• 
)
•• 
{
¶¶ 
response
ßß 
.
ßß 
Errors
ßß 
.
ßß  
Add
ßß  #
(
ßß# $#
HotelUserServiceError
ßß$ 9
.
ßß9 :
InvalidUserName
ßß: I
)
ßßI J
;
ßßJ K
return
®® 
response
®® 
;
®®  
}
©© 
SignInResult
´´ 
result
´´ 
=
´´  !
await
´´" '
_signInManager
´´( 6
.
´´6 7&
CheckPasswordSignInAsync
´´7 O
(
´´O P
user
´´P T
,
´´T U
loginHotelUserDto
´´V g
.
´´g h
Password
´´h p
,
´´p q
false
´´r w
)
´´w x
;
´´x y
if
≠≠ 
(
≠≠ 
!
≠≠ 
result
≠≠ 
.
≠≠ 
	Succeeded
≠≠ !
)
≠≠! "
{
ÆÆ 
response
ØØ 
.
ØØ 
Errors
ØØ 
.
ØØ  
Add
ØØ  #
(
ØØ# $#
HotelUserServiceError
ØØ$ 9
.
ØØ9 :
InvalidPassword
ØØ: I
)
ØØI J
;
ØØJ K
return
∞∞ 
response
∞∞ 
;
∞∞  
}
±± 
response
≥≥ 
.
≥≥ 
IsValid
≥≥ 
=
≥≥ 
true
≥≥ #
;
≥≥# $
response
¥¥ 
.
¥¥ 
Data
¥¥ 
=
¥¥ 
new
¥¥ 
LoggedUserDto
¥¥  -
{
µµ 

RoomNumber
∂∂ 
=
∂∂ 
user
∂∂ !
.
∂∂! "
Room
∂∂" &
.
∂∂& '

RoomNumber
∂∂' 1
,
∂∂1 2
	GuestName
∑∑ 
=
∑∑ 
user
∑∑  
.
∑∑  !
	GuestName
∑∑! *
,
∑∑* +
Token
∏∏ 
=
∏∏ 
await
∏∏ 
_tokenService
∏∏ +
.
∏∏+ ,
CreateToken
∏∏, 7
(
∏∏7 8
user
∏∏8 <
)
∏∏< =
}
ππ 
;
ππ 
return
ªª 
response
ªª 
;
ªª 
}
ºº 	
public
ææ 
async
ææ 
Task
ææ 
<
ææ 
ServiceResponse
ææ )
<
ææ) *!
CreatedHotelUserDto
ææ* =
>
ææ= >
>
ææ> ?
EditUser
ææ@ H
(
ææH I 
CreateHotelUserDto
ææI [
editUser
ææ\ d
)
ææd e
{
øø 	
ServiceResponse
¿¿ 
<
¿¿ !
CreatedHotelUserDto
¿¿ /
>
¿¿/ 0
response
¿¿1 9
=
¿¿: ;
new
¿¿< ?
(
¿¿? @
)
¿¿@ A
;
¿¿A B
	HotelUser
¬¬ 
user
¬¬ 
=
¬¬ 
await
¬¬ "
_userManager
¬¬# /
.
¬¬/ 0
Users
¬¬0 5
.
¬¬5 6
Include
¬¬6 =
(
¬¬= >
r
¬¬> ?
=>
¬¬@ B
r
¬¬C D
.
¬¬D E
Room
¬¬E I
)
¬¬I J
.
¬¬J K"
SingleOrDefaultAsync
¬¬K _
(
¬¬_ `
x
¬¬` a
=>
¬¬b d
x
¬¬e f
.
¬¬f g
Room
¬¬g k
.
¬¬k l

RoomNumber
¬¬l v
==
¬¬w y
editUser¬¬z Ç
.¬¬Ç É

RoomNumber¬¬É ç
)¬¬ç é
;¬¬é è
if
ƒƒ 
(
ƒƒ 
user
ƒƒ 
is
ƒƒ 
null
ƒƒ 
)
ƒƒ 
{
≈≈ 
response
∆∆ 
.
∆∆ 
Errors
∆∆ 
.
∆∆  
Add
∆∆  #
(
∆∆# $#
HotelUserServiceError
∆∆$ 9
.
∆∆9 :
UserNotFound
∆∆: F
)
∆∆F G
;
∆∆G H
return
«« 
response
«« 
;
««  
}
»» 
editUser
   
.
   
	GuestName
   
=
    
editUser
  ! )
.
  ) *
	GuestName
  * 3
.
  3 4
ToUpper
  4 ;
(
  ; <
)
  < =
;
  = >
ServiceResponse
ÃÃ 
<
ÃÃ 
bool
ÃÃ  
>
ÃÃ  !
editRolesResponse
ÃÃ" 3
=
ÃÃ4 5
await
ÃÃ6 ;
EditUserRoles
ÃÃ< I
(
ÃÃI J
user
ÃÃJ N
,
ÃÃN O
editUser
ÃÃP X
.
ÃÃX Y
Roles
ÃÃY ^
)
ÃÃ^ _
;
ÃÃ_ `
if
ŒŒ 
(
ŒŒ 
!
ŒŒ 
editRolesResponse
ŒŒ "
.
ŒŒ" #
IsValid
ŒŒ# *
)
ŒŒ* +
{
œœ 
response
–– 
.
–– 
Errors
–– 
=
––  !
editRolesResponse
––" 3
.
––3 4
Errors
––4 :
;
––: ;
return
—— 
response
—— 
;
——  
}
““ 
_mapper
‘‘ 
.
‘‘ 
Map
‘‘ 
(
‘‘ 
editUser
‘‘  
,
‘‘  !
user
‘‘" &
)
‘‘& '
;
‘‘' (
_userRepository
÷÷ 
.
÷÷ 
Update
÷÷ "
(
÷÷" #
user
÷÷# '
)
÷÷' (
;
÷÷( )
if
ÿÿ 
(
ÿÿ 
!
ÿÿ 
await
ÿÿ 
_userRepository
ÿÿ &
.
ÿÿ& '
SaveAllAsync
ÿÿ' 3
(
ÿÿ3 4
)
ÿÿ4 5
)
ÿÿ5 6
{
ŸŸ 
response
⁄⁄ 
.
⁄⁄ 
Errors
⁄⁄ 
.
⁄⁄  
Add
⁄⁄  #
(
⁄⁄# $#
HotelUserServiceError
⁄⁄$ 9
.
⁄⁄9 :
ChangesUnsaved
⁄⁄: H
)
⁄⁄H I
;
⁄⁄I J
return
€€ 
response
€€ 
;
€€  
}
‹‹ 
if
ﬁﬁ 
(
ﬁﬁ 
!
ﬁﬁ 
String
ﬁﬁ 
.
ﬁﬁ 
IsNullOrEmpty
ﬁﬁ %
(
ﬁﬁ% &
editUser
ﬁﬁ& .
.
ﬁﬁ. /
Password
ﬁﬁ/ 7
)
ﬁﬁ7 8
)
ﬁﬁ8 9
{
ﬂﬂ 
string
‡‡  
passwordResetToken
‡‡ )
=
‡‡* +
await
‡‡, 1
_userManager
‡‡2 >
.
‡‡> ?-
GeneratePasswordResetTokenAsync
‡‡? ^
(
‡‡^ _
user
‡‡_ c
)
‡‡c d
;
‡‡d e
IdentityResult
·· 
result
·· %
=
··& '
await
··( -
_userManager
··. :
.
··: ; 
ResetPasswordAsync
··; M
(
··M N
user
··N R
,
··R S 
passwordResetToken
··T f
,
··f g
editUser
··h p
.
··p q
Password
··q y
)
··y z
;
··z {
if
„„ 
(
„„ 
!
„„ 
result
„„ 
.
„„ 
	Succeeded
„„ %
)
„„% &
{
‰‰ 
response
ÂÂ 
.
ÂÂ 
Errors
ÂÂ #
.
ÂÂ# $
Add
ÂÂ$ '
(
ÂÂ' (#
HotelUserServiceError
ÂÂ( =
.
ÂÂ= >#
UserEditedButPassword
ÂÂ> S
)
ÂÂS T
;
ÂÂT U
return
ÊÊ 
response
ÊÊ #
;
ÊÊ# $
}
ÁÁ 
}
ËË 
if
ÍÍ 
(
ÍÍ 
!
ÍÍ 
await
ÍÍ 
IsTheRoomUpdated
ÍÍ (
(
ÍÍ( )
editUser
ÍÍ) 1
)
ÍÍ1 2
)
ÍÍ2 3
{
ÎÎ 
response
ÏÏ 
.
ÏÏ 
Errors
ÏÏ 
.
ÏÏ  
Add
ÏÏ  #
(
ÏÏ# $#
HotelUserServiceError
ÏÏ$ 9
.
ÏÏ9 :
RoomDatesUnsaved
ÏÏ: J
+
ÏÏK L
editUser
ÏÏM U
.
ÏÏU V

RoomNumber
ÏÏV `
)
ÏÏ` a
;
ÏÏa b
return
ÌÌ 
response
ÌÌ 
;
ÌÌ  
}
ÓÓ !
CreatedHotelUserDto
 
updatedUser
  +
=
, -
_mapper
. 5
.
5 6
Map
6 9
<
9 :!
CreatedHotelUserDto
: M
>
M N
(
N O
user
O S
)
S T
;
T U
updatedUser
ÒÒ 
.
ÒÒ 
	UserRoles
ÒÒ !
=
ÒÒ" #
await
ÒÒ$ )
_userManager
ÒÒ* 6
.
ÒÒ6 7
GetRolesAsync
ÒÒ7 D
(
ÒÒD E
user
ÒÒE I
)
ÒÒI J
;
ÒÒJ K
response
ÛÛ 
.
ÛÛ 
IsValid
ÛÛ 
=
ÛÛ 
true
ÛÛ #
;
ÛÛ# $
response
ÙÙ 
.
ÙÙ 
Data
ÙÙ 
=
ÙÙ 
updatedUser
ÙÙ '
;
ÙÙ' (
return
ıı 
response
ıı 
;
ıı 
}
ˆˆ 	
public
¯¯ 
async
¯¯ 
Task
¯¯ 
<
¯¯ 
ServiceResponse
¯¯ )
<
¯¯) *
HotelUserDto
¯¯* 6
>
¯¯6 7
>
¯¯7 8
EditGuestUser
¯¯9 F
(
¯¯F G
HotelUserDto
¯¯G S
editUser
¯¯T \
)
¯¯\ ]
{
˘˘ 	
ServiceResponse
˙˙ 
<
˙˙ 
HotelUserDto
˙˙ (
>
˙˙( )
response
˙˙* 2
=
˙˙3 4
new
˙˙5 8
(
˙˙8 9
)
˙˙9 :
;
˙˙: ;
	HotelUser
¸¸ 
user
¸¸ 
=
¸¸ 
await
¸¸ "
_userManager
¸¸# /
.
¸¸/ 0
Users
¸¸0 5
.
¸¸5 6
Include
¸¸6 =
(
¸¸= >
r
¸¸> ?
=>
¸¸@ B
r
¸¸C D
.
¸¸D E
Room
¸¸E I
)
¸¸I J
.
¸¸J K"
SingleOrDefaultAsync
¸¸K _
(
¸¸_ `
x
¸¸` a
=>
¸¸b d
x
¸¸e f
.
¸¸f g
Room
¸¸g k
.
¸¸k l

RoomNumber
¸¸l v
==
¸¸w y
editUser¸¸z Ç
.¸¸Ç É

RoomNumber¸¸É ç
)¸¸ç é
;¸¸é è
if
˛˛ 
(
˛˛ 
user
˛˛ 
is
˛˛ 
null
˛˛ 
)
˛˛ 
{
ˇˇ 
response
ÄÄ 
.
ÄÄ 
Errors
ÄÄ 
.
ÄÄ  
Add
ÄÄ  #
(
ÄÄ# $#
HotelUserServiceError
ÄÄ$ 9
.
ÄÄ9 :
UserNotFound
ÄÄ: F
)
ÄÄF G
;
ÄÄG H
return
ÅÅ 
response
ÅÅ 
;
ÅÅ  
}
ÇÇ 
IList
ÑÑ 
<
ÑÑ 
string
ÑÑ 
>
ÑÑ 
	userRoles
ÑÑ #
=
ÑÑ$ %
await
ÑÑ& +
_userManager
ÑÑ, 8
.
ÑÑ8 9
GetRolesAsync
ÑÑ9 F
(
ÑÑF G
user
ÑÑG K
)
ÑÑK L
;
ÑÑL M
if
ÖÖ 
(
ÖÖ 
	userRoles
ÖÖ 
.
ÖÖ 
Any
ÖÖ 
(
ÖÖ 
x
ÖÖ 
=>
ÖÖ  "
x
ÖÖ# $
!=
ÖÖ% '
Roles
ÖÖ( -
.
ÖÖ- .
Guest
ÖÖ. 3
)
ÖÖ3 4
)
ÖÖ4 5
{
ÜÜ 
response
áá 
.
áá 
Errors
áá 
.
áá  
Add
áá  #
(
áá# $#
HotelUserServiceError
áá$ 9
.
áá9 :%
ForbiddenEditPermission
áá: Q
)
ááQ R
;
ááR S
return
àà 
response
àà 
;
àà  
}
ââ 
user
ãã 
.
ãã 
	GuestName
ãã 
=
ãã 
editUser
ãã %
.
ãã% &
	GuestName
ãã& /
.
ãã/ 0
ToUpper
ãã0 7
(
ãã7 8
)
ãã8 9
;
ãã9 :
_userRepository
çç 
.
çç 
Update
çç "
(
çç" #
user
çç# '
)
çç' (
;
çç( )
if
èè 
(
èè 
!
èè 
await
èè 
_userRepository
èè &
.
èè& '
SaveAllAsync
èè' 3
(
èè3 4
)
èè4 5
)
èè5 6
{
êê 
response
ëë 
.
ëë 
Errors
ëë 
.
ëë  
Add
ëë  #
(
ëë# $#
HotelUserServiceError
ëë$ 9
.
ëë9 :
ChangesUnsaved
ëë: H
)
ëëH I
;
ëëI J
return
íí 
response
íí 
;
íí  
}
ìì 
if
ïï 
(
ïï 
!
ïï 
await
ïï 
IsTheRoomUpdated
ïï '
(
ïï' (
_mapper
ïï( /
.
ïï/ 0
Map
ïï0 3
<
ïï3 4 
CreateHotelUserDto
ïï4 F
>
ïïF G
(
ïïG H
editUser
ïïH P
)
ïïP Q
)
ïïQ R
)
ïïR S
{
ññ 
response
óó 
.
óó 
Errors
óó 
.
óó  
Add
óó  #
(
óó# $#
HotelUserServiceError
óó$ 9
.
óó9 :
RoomDatesUnsaved
óó: J
+
óóK L
editUser
óóM U
.
óóU V

RoomNumber
óóV `
)
óó` a
;
óóa b
return
òò 
response
òò 
;
òò  
}
ôô 
response
õõ 
.
õõ 
IsValid
õõ 
=
õõ 
true
õõ #
;
õõ# $
response
úú 
.
úú 
Data
úú 
=
úú 
_mapper
úú #
.
úú# $
Map
úú$ '
<
úú' (
HotelUserDto
úú( 4
>
úú4 5
(
úú5 6
user
úú6 :
)
úú: ;
;
úú; <
return
ùù 
response
ùù 
;
ùù 
}
ûû 	
public
†† 
async
†† 
Task
†† 
<
†† 
ServiceResponse
†† )
<
††) *
LoggedUserDto
††* 7
>
††7 8
>
††8 9
ForgotPassword
††: H
(
††H I)
HotelUserPasswordUpdatesDto
††I d#
userPasswordForgotDto
††e z
,
††z {
string††| Ç
userRoomNumber††É ë
)††ë í
{
°° 	
ServiceResponse
¢¢ 
<
¢¢ 
LoggedUserDto
¢¢ )
>
¢¢) *
response
¢¢+ 3
=
¢¢4 5
new
¢¢6 9
(
¢¢9 :
)
¢¢: ;
;
¢¢; <
	HotelUser
§§ 
user
§§ 
=
§§ 
await
§§ "
_userManager
§§# /
.
§§/ 0
Users
§§0 5
.
§§5 6
Include
§§6 =
(
§§= >
r
§§> ?
=>
§§@ B
r
§§C D
.
§§D E
Room
§§E I
)
§§I J
.
§§J K!
FirstOrDefaultAsync
§§K ^
(
§§^ _
x
§§_ `
=>
§§a c
x
§§d e
.
§§e f
Room
§§f j
.
§§j k

RoomNumber
§§k u
==
§§v x$
userPasswordForgotDto§§y é
.§§é è

RoomNumber§§è ô
)§§ô ö
;§§ö õ
if
¶¶ 
(
¶¶ 
user
¶¶ 
is
¶¶ 
null
¶¶ 
)
¶¶ 
{
ßß 
response
®® 
.
®® 
Errors
®® 
.
®®  
Add
®®  #
(
®®# $#
HotelUserServiceError
®®$ 9
.
®®9 :
UserNotFound
®®: F
)
®®F G
;
®®G H
return
©© 
response
©© 
;
©©  
}
™™ 
IList
¨¨ 
<
¨¨ 
string
¨¨ 
>
¨¨ 
roles
¨¨ 
=
¨¨  !
await
¨¨" '
_userManager
¨¨( 4
.
¨¨4 5
GetRolesAsync
¨¨5 B
(
¨¨B C
user
¨¨C G
)
¨¨G H
;
¨¨H I
if
ÆÆ 
(
ÆÆ 
!
ÆÆ 
roles
ÆÆ 
.
ÆÆ 
Contains
ÆÆ 
(
ÆÆ  
Roles
ÆÆ  %
.
ÆÆ% &
Guest
ÆÆ& +
)
ÆÆ+ ,
)
ÆÆ, -
{
ØØ 
response
∞∞ 
.
∞∞ 
Errors
∞∞ 
.
∞∞  
Add
∞∞  #
(
∞∞# $#
HotelUserServiceError
∞∞$ 9
.
∞∞9 :)
ForbiddenPasswordChangeRole
∞∞: U
)
∞∞U V
;
∞∞V W
return
±± 
response
±± 
;
±±  
}
≤≤ 
if
¥¥ 
(
¥¥ #
userPasswordForgotDto
¥¥ %
.
¥¥% &

RoomNumber
¥¥& 0
!=
¥¥1 3
userRoomNumber
¥¥4 B
)
¥¥B C
{
µµ 
response
∂∂ 
.
∂∂ 
Errors
∂∂ 
.
∂∂  
Add
∂∂  #
(
∂∂# $#
HotelUserServiceError
∂∂$ 9
.
∂∂9 :.
 ForbiddenPasswordChangeWrongRoom
∂∂: Z
)
∂∂Z [
;
∂∂[ \
return
∑∑ 
response
∑∑ 
;
∑∑  
}
∏∏ 
if
ªª 
(
ªª 
user
ªª 
.
ªª 
	GuestName
ªª 
!=
ªª !#
userPasswordForgotDto
ªª" 7
.
ªª7 8
	GuestName
ªª8 A
.
ªªA B
ToUpper
ªªB I
(
ªªI J
)
ªªJ K
)
ªªK L
{
ºº 
response
ΩΩ 
.
ΩΩ 
Errors
ΩΩ 
.
ΩΩ  
Add
ΩΩ  #
(
ΩΩ# $#
HotelUserServiceError
ΩΩ$ 9
.
ΩΩ9 :
WrongGuestName
ΩΩ: H
)
ΩΩH I
;
ΩΩI J
return
ææ 
response
ææ 
;
ææ  
}
øø 
string
¡¡  
passwordResetToken
¡¡ %
=
¡¡& '
await
¡¡( -
_userManager
¡¡. :
.
¡¡: ;-
GeneratePasswordResetTokenAsync
¡¡; Z
(
¡¡Z [
user
¡¡[ _
)
¡¡_ `
;
¡¡` a
IdentityResult
¬¬ 
result
¬¬ !
=
¬¬" #
await
¬¬$ )
_userManager
¬¬* 6
.
¬¬6 7 
ResetPasswordAsync
¬¬7 I
(
¬¬I J
user
¬¬J N
,
¬¬N O 
passwordResetToken
¬¬P b
,
¬¬b c#
userPasswordForgotDto
¬¬d y
.
¬¬y z
Password¬¬z Ç
)¬¬Ç É
;¬¬É Ñ
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 
result
ƒƒ 
.
ƒƒ 
	Succeeded
ƒƒ !
)
ƒƒ! "
{
≈≈ 
response
∆∆ 
.
∆∆ 
Errors
∆∆ 
=
∆∆  !
result
∆∆" (
.
∆∆( )
Errors
∆∆) /
.
∆∆/ 0
Select
∆∆0 6
(
∆∆6 7
x
∆∆7 8
=>
∆∆9 ;
x
∆∆< =
.
∆∆= >
Description
∆∆> I
)
∆∆I J
.
∆∆J K
ToList
∆∆K Q
(
∆∆Q R
)
∆∆R S
;
∆∆S T
return
«« 
response
«« 
;
««  
}
»» 
response
ÀÀ 
.
ÀÀ 
IsValid
ÀÀ 
=
ÀÀ 
true
ÀÀ #
;
ÀÀ# $
response
ÃÃ 
.
ÃÃ 
Data
ÃÃ 
=
ÃÃ 
new
ÃÃ 
LoggedUserDto
ÃÃ  -
{
ÕÕ 

RoomNumber
ŒŒ 
=
ŒŒ 
user
ŒŒ !
.
ŒŒ! "
Room
ŒŒ" &
.
ŒŒ& '

RoomNumber
ŒŒ' 1
,
ŒŒ1 2
	GuestName
œœ 
=
œœ 
user
œœ  
.
œœ  !
	GuestName
œœ! *
,
œœ* +
Token
–– 
=
–– 
await
–– 
_tokenService
–– +
.
––+ ,
CreateToken
––, 7
(
––7 8
user
––8 <
)
––< =
}
—— 
;
—— 
return
““ 
response
““ 
;
““ 
}
”” 	
public
’’ 
async
’’ 
Task
’’ 
<
’’ 
ServiceResponse
’’ )
<
’’) **
GenerateHotelUserPasswordDto
’’* F
>
’’F G
>
’’G H"
GenerateUserPassword
’’I ]
(
’’] ^
string
’’^ d

roomNumber
’’e o
)
’’o p
{
÷÷ 	
ServiceResponse
◊◊ 
<
◊◊ *
GenerateHotelUserPasswordDto
◊◊ 8
>
◊◊8 9
response
◊◊: B
=
◊◊C D
new
◊◊E H
(
◊◊H I
)
◊◊I J
;
◊◊J K
	HotelUser
ŸŸ 
user
ŸŸ 
=
ŸŸ 
await
ŸŸ "
_userManager
ŸŸ# /
.
ŸŸ/ 0
Users
ŸŸ0 5
.
ŸŸ5 6
Include
ŸŸ6 =
(
ŸŸ= >
r
ŸŸ> ?
=>
ŸŸ@ B
r
ŸŸC D
.
ŸŸD E
Room
ŸŸE I
)
ŸŸI J
.
ŸŸJ K!
FirstOrDefaultAsync
ŸŸK ^
(
ŸŸ^ _
x
ŸŸ_ `
=>
ŸŸa c
x
ŸŸd e
.
ŸŸe f
Room
ŸŸf j
.
ŸŸj k

RoomNumber
ŸŸk u
==
ŸŸv x

roomNumberŸŸy É
)ŸŸÉ Ñ
;ŸŸÑ Ö
if
€€ 
(
€€ 
user
€€ 
is
€€ 
null
€€ 
)
€€ 
{
‹‹ 
response
›› 
.
›› 
Errors
›› 
.
››  
Add
››  #
(
››# $#
HotelUserServiceError
››$ 9
.
››9 :
UserNotFound
››: F
)
››F G
;
››G H
return
ﬁﬁ 
response
ﬁﬁ 
;
ﬁﬁ  
}
ﬂﬂ 
IList
·· 
<
·· 
string
·· 
>
·· 
	userRoles
·· #
=
··$ %
await
··& +
_userManager
··, 8
.
··8 9
GetRolesAsync
··9 F
(
··F G
user
··G K
)
··K L
;
··L M
if
‚‚ 
(
‚‚ 
	userRoles
‚‚ 
.
‚‚ 
Any
‚‚ 
(
‚‚ 
x
‚‚ 
=>
‚‚  "
x
‚‚# $
!=
‚‚% '
Roles
‚‚( -
.
‚‚- .
Guest
‚‚. 3
)
‚‚3 4
)
‚‚4 5
{
„„ 
response
‰‰ 
.
‰‰ 
Errors
‰‰ 
.
‰‰  
Add
‰‰  #
(
‰‰# $#
HotelUserServiceError
‰‰$ 9
.
‰‰9 :%
ForbiddenEditPermission
‰‰: Q
)
‰‰Q R
;
‰‰R S
return
ÂÂ 
response
ÂÂ 
;
ÂÂ  
}
ÊÊ 
string
ËË 
generatedPassword
ËË $
=
ËË% &
PasswordGenerator
ËË' 8
.
ËË8 9
GeneratePassword
ËË9 I
(
ËËI J
)
ËËJ K
;
ËËK L
string
ÍÍ  
passwordResetToken
ÍÍ %
=
ÍÍ& '
await
ÍÍ( -
_userManager
ÍÍ. :
.
ÍÍ: ;-
GeneratePasswordResetTokenAsync
ÍÍ; Z
(
ÍÍZ [
user
ÍÍ[ _
)
ÍÍ_ `
;
ÍÍ` a
IdentityResult
ÎÎ 
result
ÎÎ !
=
ÎÎ" #
await
ÎÎ$ )
_userManager
ÎÎ* 6
.
ÎÎ6 7 
ResetPasswordAsync
ÎÎ7 I
(
ÎÎI J
user
ÎÎJ N
,
ÎÎN O 
passwordResetToken
ÎÎP b
,
ÎÎb c
generatedPassword
ÎÎd u
)
ÎÎu v
;
ÎÎv w
if
ÌÌ 
(
ÌÌ 
!
ÌÌ 
result
ÌÌ 
.
ÌÌ 
	Succeeded
ÌÌ !
)
ÌÌ! "
{
ÓÓ 
response
ÔÔ 
.
ÔÔ 
Errors
ÔÔ 
=
ÔÔ  !
result
ÔÔ" (
.
ÔÔ( )
Errors
ÔÔ) /
.
ÔÔ/ 0
Select
ÔÔ0 6
(
ÔÔ6 7
x
ÔÔ7 8
=>
ÔÔ9 ;
x
ÔÔ< =
.
ÔÔ= >
Description
ÔÔ> I
)
ÔÔI J
.
ÔÔJ K
ToList
ÔÔK Q
(
ÔÔQ R
)
ÔÔR S
;
ÔÔS T
return
 
response
 
;
  
}
ÒÒ *
GenerateHotelUserPasswordDto
ÛÛ (#
generatedPasswordUser
ÛÛ) >
=
ÛÛ? @
_mapper
ÛÛA H
.
ÛÛH I
Map
ÛÛI L
<
ÛÛL M*
GenerateHotelUserPasswordDto
ÛÛM i
>
ÛÛi j
(
ÛÛj k
user
ÛÛk o
)
ÛÛo p
;
ÛÛp q#
generatedPasswordUser
ÙÙ !
.
ÙÙ! "
Password
ÙÙ" *
=
ÙÙ+ ,
generatedPassword
ÙÙ- >
;
ÙÙ> ?
response
ˆˆ 
.
ˆˆ 
IsValid
ˆˆ 
=
ˆˆ 
true
ˆˆ #
;
ˆˆ# $
response
˜˜ 
.
˜˜ 
Data
˜˜ 
=
˜˜ #
generatedPasswordUser
˜˜ 1
;
˜˜1 2
return
¯¯ 
response
¯¯ 
;
¯¯ 
}
˘˘ 	
public
˚˚ 
async
˚˚ 
Task
˚˚ 
<
˚˚ 
ServiceResponse
˚˚ )
<
˚˚) *
bool
˚˚* .
>
˚˚. /
>
˚˚/ 0"
ResetGuestsPasswords
˚˚1 E
(
˚˚E F
string
˚˚F L
password
˚˚M U
)
˚˚U V
{
¸¸ 	
ServiceResponse
˝˝ 
<
˝˝ 
bool
˝˝  
>
˝˝  !
response
˝˝" *
=
˝˝+ ,
new
˝˝- 0
(
˝˝0 1
)
˝˝1 2
;
˝˝2 3
List
˛˛ 
<
˛˛ 
string
˛˛ 
>
˛˛ 
failedUserChanges
˛˛ *
=
˛˛+ ,
new
˛˛- 0
(
˛˛0 1
)
˛˛1 2
;
˛˛2 3
List
ÄÄ 
<
ÄÄ 
	HotelUser
ÄÄ 
>
ÄÄ 
users
ÄÄ !
=
ÄÄ" #
await
ÄÄ$ )
_userRepository
ÄÄ* 9
.
ÄÄ9 :
GetAllGuests
ÄÄ: F
(
ÄÄF G
)
ÄÄG H
;
ÄÄH I
foreach
ÇÇ 
(
ÇÇ 
var
ÇÇ 
user
ÇÇ 
in
ÇÇ  
users
ÇÇ! &
)
ÇÇ& '
{
ÉÉ 
string
ÑÑ  
passwordResetToken
ÑÑ )
=
ÑÑ* +
await
ÑÑ, 1
_userManager
ÑÑ2 >
.
ÑÑ> ?-
GeneratePasswordResetTokenAsync
ÑÑ? ^
(
ÑÑ^ _
user
ÑÑ_ c
)
ÑÑc d
;
ÑÑd e
IdentityResult
ÖÖ 
result
ÖÖ %
=
ÖÖ& '
await
ÖÖ( -
_userManager
ÖÖ. :
.
ÖÖ: ; 
ResetPasswordAsync
ÖÖ; M
(
ÖÖM N
user
ÖÖN R
,
ÖÖR S 
passwordResetToken
ÖÖT f
,
ÖÖf g
password
ÖÖh p
)
ÖÖp q
;
ÖÖq r
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
result
ÜÜ 
.
ÜÜ 
	Succeeded
ÜÜ %
)
ÜÜ% &
{
áá 
failedUserChanges
àà %
.
àà% &
Add
àà& )
(
àà) *
user
àà* .
.
àà. /
Room
àà/ 3
.
àà3 4

RoomNumber
àà4 >
)
àà> ?
;
àà? @
}
ââ 
}
ää 
if
åå 
(
åå 
failedUserChanges
åå !
.
åå! "
Count
åå" '
>
åå( )
$num
åå* +
)
åå+ ,
{
çç 
response
éé 
.
éé 
Errors
éé 
.
éé  
AddRange
éé  (
(
éé( )
failedUserChanges
éé) :
)
éé: ;
;
éé; <
}
èè 
response
ëë 
.
ëë 
IsValid
ëë 
=
ëë 
true
ëë #
;
ëë# $
return
íí 
response
íí 
;
íí 
}
ìì 	
public
ïï 
async
ïï 
Task
ïï 
<
ïï 
ServiceResponse
ïï )
<
ïï) *
List
ïï* .
<
ïï. /
HotelRoleDto
ïï/ ;
>
ïï; <
>
ïï< =
>
ïï= >$
GetUsersWithRolesAsync
ïï? U
(
ïïU V
)
ïïV W
{
ññ 	
ServiceResponse
óó 
<
óó 
List
óó  
<
óó  !
HotelRoleDto
óó! -
>
óó- .
>
óó. /
response
óó0 8
=
óó9 :
new
óó; >
(
óó> ?
)
óó? @
;
óó@ A
var
ôô 
users
ôô 
=
ôô 
await
ôô 
_userManager
ôô *
.
ôô* +
Users
ôô+ 0
.
öö 
Include
öö 
(
öö 
r
öö 
=>
öö 
r
öö 
.
öö 
	UserRoles
öö (
)
öö( )
.
õõ 
ThenInclude
õõ 
(
õõ 
r
õõ 
=>
õõ  
r
õõ! "
.
õõ" #
Role
õõ# '
)
õõ' (
.
úú 
OrderBy
úú 
(
úú 
u
úú 
=>
úú 
u
úú 
.
úú 
Room
úú #
)
úú# $
.
ùù 
Select
ùù 
(
ùù 
u
ùù 
=>
ùù 
new
ùù 
HotelRoleDto
ùù  ,
{
ûû 
Id
üü 
=
üü 
u
üü 
.
üü 
Id
üü 
,
üü 

RoomNumber
†† 
=
†† 
u
††  !
.
††! "
Room
††" &
.
††& '

RoomNumber
††' 1
,
††1 2
Roles
°° 
=
°° 
u
°° 
.
°° 
	UserRoles
°° &
.
°°& '
Select
°°' -
(
°°- .
r
°°. /
=>
°°0 2
r
°°3 4
.
°°4 5
Role
°°5 9
.
°°9 :
Name
°°: >
)
°°> ?
.
°°? @
ToList
°°@ F
(
°°F G
)
°°G H
}
¢¢ 
)
¢¢ 
.
££ 
ToListAsync
££ 
(
££ 
)
££ 
;
££ 
response
•• 
.
•• 
IsValid
•• 
=
•• 
true
•• #
;
••# $
response
¶¶ 
.
¶¶ 
Data
¶¶ 
=
¶¶ 
users
¶¶ !
;
¶¶! "
return
®® 
response
®® 
;
®® 
}
©© 	
public
´´ 
async
´´ 
Task
´´ 
<
´´ 
ServiceResponse
´´ )
<
´´) *
bool
´´* .
>
´´. /
>
´´/ 0
DeleteHotelUser
´´1 @
(
´´@ A
string
´´A G

roomNumber
´´H R
)
´´R S
{
¨¨ 	
ServiceResponse
≠≠ 
<
≠≠ 
bool
≠≠  
>
≠≠  !
response
≠≠" *
=
≠≠+ ,
new
≠≠- 0
(
≠≠0 1
)
≠≠1 2
;
≠≠2 3
	HotelUser
ØØ 
user
ØØ 
=
ØØ 
_userManager
ØØ )
.
ØØ) *
Users
ØØ* /
.
ØØ/ 0
FirstOrDefault
ØØ0 >
(
ØØ> ?
x
ØØ? @
=>
ØØA C
x
ØØD E
.
ØØE F
Room
ØØF J
.
ØØJ K

RoomNumber
ØØK U
==
ØØV X

roomNumber
ØØY c
)
ØØc d
;
ØØd e
if
±± 
(
±± 
user
±± 
is
±± 
null
±± 
)
±± 
{
≤≤ 
response
≥≥ 
.
≥≥ 
Errors
≥≥ 
.
≥≥  
Add
≥≥  #
(
≥≥# $#
HotelUserServiceError
≥≥$ 9
.
≥≥9 :
UserNotFound
≥≥: F
)
≥≥F G
;
≥≥G H
return
¥¥ 
response
¥¥ 
;
¥¥  
}
µµ 
if
∑∑ 
(
∑∑ 
await
∑∑ 
IsLastAdmin
∑∑ !
(
∑∑! "
user
∑∑" &
)
∑∑& '
)
∑∑' (
{
∏∏ 
response
ππ 
.
ππ 
Errors
ππ 
.
ππ  
Add
ππ  #
(
ππ# $#
HotelUserServiceError
ππ$ 9
.
ππ9 :
	LastAdmin
ππ: C
)
ππC D
;
ππD E
return
∫∫ 
response
∫∫ 
;
∫∫  
}
ªª 
IdentityResult
ΩΩ 
result
ΩΩ !
=
ΩΩ" #
await
ΩΩ$ )
_userManager
ΩΩ* 6
.
ΩΩ6 7
DeleteAsync
ΩΩ7 B
(
ΩΩB C
user
ΩΩC G
)
ΩΩG H
;
ΩΩH I
if
ææ 
(
ææ 
!
ææ 
result
ææ 
.
ææ 
	Succeeded
ææ !
)
ææ! "
{
øø 
response
¿¿ 
.
¿¿ 
Errors
¿¿ 
=
¿¿  !
result
¿¿" (
.
¿¿( )
Errors
¿¿) /
.
¿¿/ 0
Select
¿¿0 6
(
¿¿6 7
x
¿¿7 8
=>
¿¿9 ;
x
¿¿< =
.
¿¿= >
Description
¿¿> I
)
¿¿I J
.
¿¿J K
ToList
¿¿K Q
(
¿¿Q R
)
¿¿R S
;
¿¿S T
return
¡¡ 
response
¡¡ 
;
¡¡  
}
¬¬ 
response
ƒƒ 
.
ƒƒ 
IsValid
ƒƒ 
=
ƒƒ 
true
ƒƒ #
;
ƒƒ# $
response
≈≈ 
.
≈≈ 
Data
≈≈ 
=
≈≈ 
true
≈≈  
;
≈≈  !
return
∆∆ 
response
∆∆ 
;
∆∆ 
}
«« 	
private
ÀÀ 
async
ÀÀ 
Task
ÀÀ 
<
ÀÀ 
bool
ÀÀ 
>
ÀÀ  

UserExists
ÀÀ! +
(
ÀÀ+ ,
string
ÀÀ, 2

roomNumber
ÀÀ3 =
)
ÀÀ= >
{
ÃÃ 	
return
ÕÕ 
await
ÕÕ 
_userManager
ÕÕ %
.
ÕÕ% &
Users
ÕÕ& +
.
ÕÕ+ ,
AnyAsync
ÕÕ, 4
(
ÕÕ4 5
x
ÕÕ5 6
=>
ÕÕ7 9
x
ÕÕ: ;
.
ÕÕ; <
Room
ÕÕ< @
.
ÕÕ@ A

RoomNumber
ÕÕA K
==
ÕÕL N

roomNumber
ÕÕO Y
.
ÕÕY Z
ToUpper
ÕÕZ a
(
ÕÕa b
)
ÕÕb c
)
ÕÕc d
;
ÕÕd e
}
ŒŒ 	
private
–– 
async
–– 
Task
–– 
<
–– 
ServiceResponse
–– *
<
––* +
bool
––+ /
>
––/ 0
>
––0 1
EditUserRoles
––2 ?
(
––? @
	HotelUser
––@ I
user
––J N
,
––N O
List
––P T
<
––T U
string
––U [
>
––[ \
selectedRoles
––] j
)
––j k
{
—— 	
ServiceResponse
““ 
<
““ 
bool
““  
>
““  !
response
““" *
=
““+ ,
new
““- 0
(
““0 1
)
““1 2
;
““2 3
IList
‘‘ 
<
‘‘ 
string
‘‘ 
>
‘‘ 
	userRoles
‘‘ #
=
‘‘$ %
await
‘‘& +
_userManager
‘‘, 8
.
‘‘8 9
GetRolesAsync
‘‘9 F
(
‘‘F G
user
‘‘G K
)
‘‘K L
;
‘‘L M
IdentityResult
÷÷ 
result
÷÷ !
=
÷÷" #
await
÷÷$ )
_userManager
÷÷* 6
.
÷÷6 7
AddToRolesAsync
÷÷7 F
(
÷÷F G
user
÷÷G K
,
÷÷K L
selectedRoles
÷÷M Z
.
÷÷Z [
Except
÷÷[ a
(
÷÷a b
	userRoles
÷÷b k
)
÷÷k l
)
÷÷l m
;
÷÷m n
if
ÿÿ 
(
ÿÿ 
!
ÿÿ 
result
ÿÿ 
.
ÿÿ 
	Succeeded
ÿÿ !
)
ÿÿ! "
{
ŸŸ 
response
⁄⁄ 
.
⁄⁄ 
Errors
⁄⁄ 
.
⁄⁄  
Add
⁄⁄  #
(
⁄⁄# $
$str
⁄⁄$ <
)
⁄⁄< =
;
⁄⁄= >
return
€€ 
response
€€ 
;
€€  
}
‹‹ 
result
ﬁﬁ 
=
ﬁﬁ 
await
ﬁﬁ 
_userManager
ﬁﬁ '
.
ﬁﬁ' ("
RemoveFromRolesAsync
ﬁﬁ( <
(
ﬁﬁ< =
user
ﬁﬁ= A
,
ﬁﬁA B
	userRoles
ﬁﬁC L
.
ﬁﬁL M
Except
ﬁﬁM S
(
ﬁﬁS T
selectedRoles
ﬁﬁT a
)
ﬁﬁa b
)
ﬁﬁb c
;
ﬁﬁc d
if
‡‡ 
(
‡‡ 
!
‡‡ 
result
‡‡ 
.
‡‡ 
	Succeeded
‡‡ !
)
‡‡! "
{
·· 
response
‚‚ 
.
‚‚ 
Errors
‚‚ 
.
‚‚  
Add
‚‚  #
(
‚‚# $
$str
‚‚$ <
)
‚‚< =
;
‚‚= >
}
„„ 
response
ÂÂ 
.
ÂÂ 
IsValid
ÂÂ 
=
ÂÂ 
true
ÂÂ #
;
ÂÂ# $
response
ÊÊ 
.
ÊÊ 
Data
ÊÊ 
=
ÊÊ 
true
ÊÊ  
;
ÊÊ  !
return
ÁÁ 
response
ÁÁ 
;
ÁÁ 
}
ËË 	
private
ÍÍ 
async
ÍÍ 
Task
ÍÍ 
<
ÍÍ 
bool
ÍÍ 
>
ÍÍ  
IsTheRoomUpdated
ÍÍ! 1
(
ÍÍ1 2 
CreateHotelUserDto
ÍÍ2 D
editUser
ÍÍE M
)
ÍÍM N
{
ÎÎ 	
ServiceResponse
ÏÏ 
<
ÏÏ 
bool
ÏÏ  
>
ÏÏ  !
IsTheRoomUpdated
ÏÏ" 2
=
ÏÏ3 4
await
ÏÏ5 :
_roomService
ÏÏ; G
.
ÏÏG H

UpdateRoom
ÏÏH R
(
ÏÏR S
editUser
ÏÏS [
)
ÏÏ[ \
;
ÏÏ\ ]
if
ÓÓ 
(
ÓÓ 
!
ÓÓ 
IsTheRoomUpdated
ÓÓ !
.
ÓÓ! "
IsValid
ÓÓ" )
)
ÓÓ) *
{
ÔÔ 
return
 
false
 
;
 
}
ÒÒ 
return
ÛÛ 
true
ÛÛ 
;
ÛÛ 
}
ÙÙ 	
private
ˆˆ 
async
ˆˆ 
Task
ˆˆ 
<
ˆˆ 
bool
ˆˆ 
>
ˆˆ  
IsLastAdmin
ˆˆ! ,
(
ˆˆ, -
	HotelUser
ˆˆ- 6
user
ˆˆ7 ;
)
ˆˆ; <
{
˜˜ 	
IList
¯¯ 
<
¯¯ 
string
¯¯ 
>
¯¯ 
roles
¯¯ 
=
¯¯  !
await
¯¯" '
_userManager
¯¯( 4
.
¯¯4 5
GetRolesAsync
¯¯5 B
(
¯¯B C
user
¯¯C G
)
¯¯G H
;
¯¯H I
if
˙˙ 
(
˙˙ 
!
˙˙ 
roles
˙˙ 
.
˙˙ 
Contains
˙˙ 
(
˙˙  
Roles
˙˙  %
.
˙˙% &
Admin
˙˙& +
)
˙˙+ ,
)
˙˙, -
{
˚˚ 
return
¸¸ 
false
¸¸ 
;
¸¸ 
}
˝˝ 
IList
ˇˇ 
<
ˇˇ 
	HotelUser
ˇˇ 
>
ˇˇ 

adminUsers
ˇˇ '
=
ˇˇ( )
await
ˇˇ* /
_userManager
ˇˇ0 <
.
ˇˇ< =!
GetUsersInRoleAsync
ˇˇ= P
(
ˇˇP Q
Roles
ˇˇQ V
.
ˇˇV W
Admin
ˇˇW \
)
ˇˇ\ ]
;
ˇˇ] ^
if
ÅÅ 
(
ÅÅ 

adminUsers
ÅÅ 
.
ÅÅ 
Count
ÅÅ  
>
ÅÅ! "
$num
ÅÅ# $
)
ÅÅ$ %
{
ÇÇ 
return
ÉÉ 
false
ÉÉ 
;
ÉÉ 
}
ÑÑ 
return
ÜÜ 
true
ÜÜ 
;
ÜÜ 
}
áá 	
}
ââ 
}ää ç≈
dC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\RoomRequestService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
{ 
public 

class 
RoomRequestService #
:$ %
IRoomRequestService& 9
{ 
private 
readonly  
IHotelUserRepository - 
_hotelUserRepository. B
;B C
private 
readonly "
IRoomRequestRepository /"
_roomRequestRepository0 F
;F G
private 
readonly 
IMapper  
_mapper! (
;( )
public 
RoomRequestService !
(! " 
IHotelUserRepository" 6
hotelUserRepository7 J
,J K"
IRoomRequestRepositoryL b!
roomRequestRepositoryc x
,x y
IMapper	z Å
mapper
Ç à
)
à â
{ 	 
_hotelUserRepository  
=! "
hotelUserRepository# 6
;6 7"
_roomRequestRepository "
=# $!
roomRequestRepository% :
;: ;
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
ServiceResponse )
<) *
bool* .
>. /
>/ 0
CreateRoomRequest1 B
(B C 
CreateRoomRequestDtoC W 
createRoomRequestDtoX l
,l m
stringn t
userRoomNumber	u É
)
É Ñ
{ 	
ServiceResponse 
< 
bool  
>  !
response" *
=+ ,
new- 0
(0 1
)1 2
;2 3
	HotelUser   
user   
=   
await   " 
_hotelUserRepository  # 7
.  7 8,
 GetHotelUserWithRoomByRoomNumber  8 X
(  X Y
userRoomNumber  Y g
)  g h
;  h i
if"" 
("" 
user"" 
is"" 
null"" 
)"" 
{## 
response$$ 
.$$ 
Errors$$ 
.$$  
Add$$  #
($$# $#
RoomRequestServiceError$$$ ;
.$$; <
UserNotFound$$< H
)$$H I
;$$I J
return%% 
response%% 
;%%  
}&& 
RoomRequest(( 
request(( 
=((  !
_mapper((" )
.(() *
Map((* -
<((- .
RoomRequest((. 9
>((9 :
(((: ; 
createRoomRequestDto((; O
)((O P
;((P Q
request** 
.** 
RequestStatus** !
=**" #
Enums**$ )
.**) *
RoomRequestStatus*** ;
.**; <
New**< ?
;**? @
request++ 
.++ 
Room++ 
=++ 
user++ 
.++  
Room++  $
;++$ %
await-- "
_roomRequestRepository-- (
.--( )
AddRoomRequest--) 7
(--7 8
request--8 ?
)--? @
;--@ A
if// 
(// 
!// 
await// "
_roomRequestRepository// -
.//- .
SaveAllAsync//. :
(//: ;
)//; <
)//< =
{00 
response11 
.11 
Errors11 
.11  
Add11  #
(11# $#
RoomRequestServiceError11$ ;
.11; <
UnableToSaveRequest11< O
)11O P
;11P Q
return22 
response22 
;22  
}33 
response55 
.55 
IsValid55 
=55 
true55 #
;55# $
return66 
response66 
;66 
}77 	
public99 
async99 
Task99 
<99 
ServiceResponse99 )
<99) *
List99* .
<99. /
BaseRoomRequestDto99/ A
>99A B
>99B C
>99C D 
GetGuestRoomRequests99E Y
(99Y Z
string99Z `
userRoomNumber99a o
)99o p
{:: 	
ServiceResponse;; 
<;; 
List;;  
<;;  !
BaseRoomRequestDto;;! 3
>;;3 4
>;;4 5
response;;6 >
=;;? @
new;;A D
(;;D E
);;E F
;;;F G
	HotelUser<< 
user<< 
=<< 
await<< " 
_hotelUserRepository<<# 7
.<<7 8,
 GetHotelUserWithRoomByRoomNumber<<8 X
(<<X Y
userRoomNumber<<Y g
)<<g h
;<<h i
if>> 
(>> 
user>> 
is>> 
null>> 
)>> 
{?? 
response@@ 
.@@ 
Errors@@ 
.@@  
Add@@  #
(@@# $#
RoomRequestServiceError@@$ ;
.@@; <
UserNotFound@@< H
)@@H I
;@@I J
returnAA 
responseAA 
;AA  
}BB 
responseDD 
.DD 
IsValidDD 
=DD 
trueDD #
;DD# $
responseEE 
.EE 
DataEE 
=EE 
awaitEE !"
_roomRequestRepositoryEE" 8
.EE8 9/
#GetGuestRoomRequestsDtoByRoomNumberEE9 \
(EE\ ]
userEE] a
.EEa b
RoomEEb f
.EEf g

RoomNumberEEg q
)EEq r
;EEr s
returnFF 
responseFF 
;FF 
}GG 	
publicII 
asyncII 
TaskII 
<II 
ServiceResponseII )
<II) *
RoomRequestDtoII* 8
>II8 9
>II9 :
GetRoomRequestII; I
(III J
intIIJ M
roomRequestIdIIN [
,II[ \
stringII] c
userRoomNumberIId r
,IIr s
ListIIt x
<IIx y
stringIIy 
>	II Ä
	userRoles
IIÅ ä
)
IIä ã
{JJ 	
ServiceResponseKK 
<KK 
RoomRequestDtoKK *
>KK* +
responseKK, 4
=KK5 6
newKK7 :
(KK: ;
)KK; <
;KK< =
RoomRequestMM 
roomRequestMM #
=MM$ %
awaitMM& +"
_roomRequestRepositoryMM, B
.MMB C
GetRoomRequestByIdMMC U
(MMU V
roomRequestIdMMV c
)MMc d
;MMd e
ifOO 
(OO 
roomRequestOO 
isOO 
nullOO #
)OO# $
{PP 
responseQQ 
.QQ 
ErrorsQQ 
.QQ  
AddQQ  #
(QQ# $#
RoomRequestServiceErrorQQ$ ;
.QQ; <
RoomRequestNotFoundQQ< O
)QQO P
;QQP Q
returnRR 
responseRR 
;RR  
}SS 
	HotelUserUU 
userUU 
=UU 
awaitUU " 
_hotelUserRepositoryUU# 7
.UU7 8,
 GetHotelUserWithRoomByRoomNumberUU8 X
(UUX Y
userRoomNumberUUY g
)UUg h
;UUh i
ifWW 
(WW 
userWW 
isWW 
nullWW 
)WW 
{XX 
responseYY 
.YY 
ErrorsYY 
.YY  
AddYY  #
(YY# $#
RoomRequestServiceErrorYY$ ;
.YY; <
UserNotFoundYY< H
)YYH I
;YYI J
returnZZ 
responseZZ 
;ZZ  
}[[ 
if]] 
(]] 
roomRequest]] 
.]] 
Room]]  
.]]  !

RoomNumber]]! +
!=]], .
user]]/ 3
.]]3 4
Room]]4 8
.]]8 9

RoomNumber]]9 C
&&]]D F
!]]G H

IsEmployee]]H R
(]]R S
	userRoles]]S \
)]]\ ]
)]]] ^
{^^ 
response__ 
.__ 
Errors__ 
.__  
Add__  #
(__# $#
RoomRequestServiceError__$ ;
.__; <
RoomRequestNotFound__< O
)__O P
;__P Q
return`` 
response`` 
;``  
}aa 
responsecc 
.cc 
IsValidcc 
=cc 
truecc #
;cc# $
responsedd 
.dd 
Datadd 
=dd 
_mapperdd #
.dd# $
Mapdd$ '
<dd' (
RoomRequestDtodd( 6
>dd6 7
(dd7 8
roomRequestdd8 C
)ddC D
;ddD E
returnee 
responseee 
;ee 
}ff 	
publichh 
asynchh 
Taskhh 
<hh 
ServiceResponsehh )
<hh) *
boolhh* .
>hh. /
>hh/ 0
StartRoomRequesthh1 A
(hhA B
inthhB E
roomRequestIdhhF S
,hhS T
stringhhU [
userRoomNumberhh\ j
,hhj k
Listhhl p
<hhp q
stringhhq w
>hhw x
	userRoles	hhy Ç
)
hhÇ É
{ii 	
ServiceResponsejj 
<jj 
booljj  
>jj  !
responsejj" *
=jj+ ,
newjj- 0
(jj0 1
)jj1 2
;jj2 3
RoomRequestll 
roomRequestll #
=ll$ %
awaitll& +"
_roomRequestRepositoryll, B
.llB C
GetRoomRequestByIdllC U
(llU V
roomRequestIdllV c
)llc d
;lld e
ifnn 
(nn 
roomRequestnn 
isnn 
nullnn #
)nn# $
{oo 
responsepp 
.pp 
Errorspp 
.pp  
Addpp  #
(pp# $#
RoomRequestServiceErrorpp$ ;
.pp; <
RoomRequestNotFoundpp< O
)ppO P
;ppP Q
returnqq 
responseqq 
;qq  
}rr 
	HotelUsertt 
usertt 
=tt 
awaittt " 
_hotelUserRepositorytt# 7
.tt7 8,
 GetHotelUserWithRoomByRoomNumbertt8 X
(ttX Y
userRoomNumberttY g
)ttg h
;tth i
ifvv 
(vv 
uservv 
isvv 
nullvv 
)vv 
{ww 
responsexx 
.xx 
Errorsxx 
.xx  
Addxx  #
(xx# $#
RoomRequestServiceErrorxx$ ;
.xx; <
UserNotFoundxx< H
)xxH I
;xxI J
returnyy 
responseyy 
;yy  
}zz 
if|| 
(|| 
!|| 
IsCorrectRole|| 
(|| 
	userRoles|| (
,||( )
roomRequest||* 5
.||5 6

Department||6 @
)||@ A
)||A B
{}} 
response~~ 
.~~ 
Errors~~ 
.~~  
Add~~  #
(~~# $#
RoomRequestServiceError~~$ ;
.~~; <+
StartDifferentDepartmentRequest~~< [
)~~[ \
;~~\ ]
return 
response 
;  
}
ÄÄ 
if
ÇÇ 
(
ÇÇ 
roomRequest
ÇÇ 
.
ÇÇ 
RequestStatus
ÇÇ )
!=
ÇÇ* ,
RoomRequestStatus
ÇÇ- >
.
ÇÇ> ?
Paused
ÇÇ? E
&&
ÇÇF H
roomRequest
ÇÇI T
.
ÇÇT U
RequestStatus
ÇÇU b
!=
ÇÇc e
RoomRequestStatus
ÇÇf w
.
ÇÇw x
New
ÇÇx {
)
ÇÇ{ |
{
ÉÉ 
response
ÑÑ 
.
ÑÑ 
Errors
ÑÑ 
.
ÑÑ  
Add
ÑÑ  #
(
ÑÑ# $%
RoomRequestServiceError
ÑÑ$ ;
.
ÑÑ; <
UnableToInitiate
ÑÑ< L
)
ÑÑL M
;
ÑÑM N
return
ÖÖ 
response
ÖÖ 
;
ÖÖ  
}
ÜÜ 
roomRequest
àà 
.
àà 

AssignedTo
àà "
=
àà# $
user
àà% )
;
àà) *
roomRequest
ââ 
.
ââ 
RequestStatus
ââ %
=
ââ& '
RoomRequestStatus
ââ( 9
.
ââ9 :

InProgress
ââ: D
;
ââD E
roomRequest
ää 
.
ää 
	DateStart
ää !
=
ää" #
DateTime
ää$ ,
.
ää, -
Now
ää- 0
;
ää0 1$
_roomRequestRepository
åå "
.
åå" #
Update
åå# )
(
åå) *
roomRequest
åå* 5
)
åå5 6
;
åå6 7
if
éé 
(
éé 
!
éé 
await
éé $
_roomRequestRepository
éé -
.
éé- .
SaveAllAsync
éé. :
(
éé: ;
)
éé; <
)
éé< =
{
èè 
response
êê 
.
êê 
Errors
êê 
.
êê  
Add
êê  #
(
êê# $%
RoomRequestServiceError
êê$ ;
.
êê; <
UnableToInitiate
êê< L
)
êêL M
;
êêM N
return
ëë 
response
ëë 
;
ëë  
}
íí 
response
îî 
.
îî 
IsValid
îî 
=
îî 
response
îî '
.
îî' (
Data
îî( ,
=
îî- .
true
îî/ 3
;
îî3 4
return
ññ 
response
ññ 
;
ññ 
}
óó 	
public
ôô 
async
ôô 
Task
ôô 
<
ôô 
ServiceResponse
ôô )
<
ôô) *
bool
ôô* .
>
ôô. /
>
ôô/ 0
EndRoomRequest
ôô1 ?
(
ôô? @
int
ôô@ C
roomRequestId
ôôD Q
,
ôôQ R
string
ôôS Y
userRoomNumber
ôôZ h
,
ôôh i
List
ôôj n
<
ôôn o
string
ôôo u
>
ôôu v
	userRolesôôw Ä
)ôôÄ Å
{
öö 	
ServiceResponse
õõ 
<
õõ 
bool
õõ  
>
õõ  !
response
õõ" *
=
õõ+ ,
new
õõ- 0
(
õõ0 1
)
õõ1 2
;
õõ2 3
RoomRequest
ùù 
roomRequest
ùù #
=
ùù$ %
await
ùù& +$
_roomRequestRepository
ùù, B
.
ùùB C 
GetRoomRequestById
ùùC U
(
ùùU V
roomRequestId
ùùV c
)
ùùc d
;
ùùd e
if
üü 
(
üü 
roomRequest
üü 
is
üü 
null
üü #
)
üü# $
{
†† 
response
°° 
.
°° 
Errors
°° 
.
°°  
Add
°°  #
(
°°# $%
RoomRequestServiceError
°°$ ;
.
°°; <!
RoomRequestNotFound
°°< O
)
°°O P
;
°°P Q
return
¢¢ 
response
¢¢ 
;
¢¢  
}
££ 
	HotelUser
•• 
user
•• 
=
•• 
await
•• ""
_hotelUserRepository
••# 7
.
••7 8.
 GetHotelUserWithRoomByRoomNumber
••8 X
(
••X Y
userRoomNumber
••Y g
)
••g h
;
••h i
if
ßß 
(
ßß 
user
ßß 
is
ßß 
null
ßß 
)
ßß 
{
®® 
response
©© 
.
©© 
Errors
©© 
.
©©  
Add
©©  #
(
©©# $%
RoomRequestServiceError
©©$ ;
.
©©; <
UserNotFound
©©< H
)
©©H I
;
©©I J
return
™™ 
response
™™ 
;
™™  
}
´´ 
if
≠≠ 
(
≠≠ 
user
≠≠ 
.
≠≠ 
Id
≠≠ 
!=
≠≠ 
roomRequest
≠≠ &
.
≠≠& '

AssignedTo
≠≠' 1
.
≠≠1 2
Id
≠≠2 4
&&
≠≠5 7
!
≠≠8 9
	userRoles
≠≠9 B
.
≠≠B C
Contains
≠≠C K
(
≠≠K L
Roles
≠≠L Q
.
≠≠Q R
Admin
≠≠R W
)
≠≠W X
)
≠≠X Y
{
ÆÆ 
response
ØØ 
.
ØØ 
Errors
ØØ 
.
ØØ  
Add
ØØ  #
(
ØØ# $%
RoomRequestServiceError
ØØ$ ;
.
ØØ; <+
EndDifferentDepartmentRequest
ØØ< Y
)
ØØY Z
;
ØØZ [
return
∞∞ 
response
∞∞ 
;
∞∞  
}
±± 
if
≥≥ 
(
≥≥ 
roomRequest
≥≥ 
.
≥≥ 
RequestStatus
≥≥ )
!=
≥≥* ,
RoomRequestStatus
≥≥- >
.
≥≥> ?

InProgress
≥≥? I
)
≥≥I J
{
¥¥ 
response
µµ 
.
µµ 
Errors
µµ 
.
µµ  
Add
µµ  #
(
µµ# $%
RoomRequestServiceError
µµ$ ;
.
µµ; <
UnableToEnd
µµ< G
)
µµG H
;
µµH I
return
∂∂ 
response
∂∂ 
;
∂∂  
}
∑∑ 
roomRequest
ππ 
.
ππ 
RequestStatus
ππ %
=
ππ& '
RoomRequestStatus
ππ( 9
.
ππ9 :
Ended
ππ: ?
;
ππ? @
roomRequest
∫∫ 
.
∫∫ 
DateEnd
∫∫ 
=
∫∫  !
DateTime
∫∫" *
.
∫∫* +
Now
∫∫+ .
;
∫∫. /
roomRequest
ªª 
.
ªª 
Duration
ªª  
=
ªª! "
roomRequest
ªª# .
.
ªª. /
DateEnd
ªª/ 6
-
ªª7 8
roomRequest
ªª9 D
.
ªªD E
	DateStart
ªªE N
;
ªªN O$
_roomRequestRepository
ΩΩ "
.
ΩΩ" #
Update
ΩΩ# )
(
ΩΩ) *
roomRequest
ΩΩ* 5
)
ΩΩ5 6
;
ΩΩ6 7
if
øø 
(
øø 
!
øø 
await
øø $
_roomRequestRepository
øø -
.
øø- .
SaveAllAsync
øø. :
(
øø: ;
)
øø; <
)
øø< =
{
¿¿ 
response
¡¡ 
.
¡¡ 
Errors
¡¡ 
.
¡¡  
Add
¡¡  #
(
¡¡# $%
RoomRequestServiceError
¡¡$ ;
.
¡¡; <
UnableToEnd
¡¡< G
)
¡¡G H
;
¡¡H I
return
¬¬ 
response
¬¬ 
;
¬¬  
}
√√ 
response
≈≈ 
.
≈≈ 
IsValid
≈≈ 
=
≈≈ 
response
≈≈ '
.
≈≈' (
Data
≈≈( ,
=
≈≈- .
true
≈≈/ 3
;
≈≈3 4
return
«« 
response
«« 
;
«« 
}
»» 	
public
   
async
   
Task
   
<
   
ServiceResponse
   )
<
  ) *
bool
  * .
>
  . /
>
  / 0#
SafeDeleteRoomRequest
  1 F
(
  F G
int
  G J
roomRequestId
  K X
,
  X Y
string
  Z `
userRoomNumber
  a o
,
  o p
List
  q u
<
  u v
string
  v |
>
  | }
	userRoles  ~ á
)  á à
{
ÀÀ 	
ServiceResponse
ÃÃ 
<
ÃÃ 
bool
ÃÃ  
>
ÃÃ  !
response
ÃÃ" *
=
ÃÃ+ ,
new
ÃÃ- 0
(
ÃÃ0 1
)
ÃÃ1 2
;
ÃÃ2 3
RoomRequest
ŒŒ 
roomRequest
ŒŒ #
=
ŒŒ$ %
await
ŒŒ& +$
_roomRequestRepository
ŒŒ, B
.
ŒŒB C 
GetRoomRequestById
ŒŒC U
(
ŒŒU V
roomRequestId
ŒŒV c
)
ŒŒc d
;
ŒŒd e
if
–– 
(
–– 
roomRequest
–– 
is
–– 
null
–– #
)
––# $
{
—— 
response
““ 
.
““ 
Errors
““ 
.
““  
Add
““  #
(
““# $%
RoomRequestServiceError
““$ ;
.
““; <!
RoomRequestNotFound
““< O
)
““O P
;
““P Q
return
”” 
response
”” 
;
””  
}
‘‘ 
	HotelUser
÷÷ 
user
÷÷ 
=
÷÷ 
await
÷÷ ""
_hotelUserRepository
÷÷# 7
.
÷÷7 8.
 GetHotelUserWithRoomByRoomNumber
÷÷8 X
(
÷÷X Y
userRoomNumber
÷÷Y g
)
÷÷g h
;
÷÷h i
if
ÿÿ 
(
ÿÿ 
user
ÿÿ 
is
ÿÿ 
null
ÿÿ 
)
ÿÿ 
{
ŸŸ 
response
⁄⁄ 
.
⁄⁄ 
Errors
⁄⁄ 
.
⁄⁄  
Add
⁄⁄  #
(
⁄⁄# $%
RoomRequestServiceError
⁄⁄$ ;
.
⁄⁄; <
UserNotFound
⁄⁄< H
)
⁄⁄H I
;
⁄⁄I J
return
€€ 
response
€€ 
;
€€  
}
‹‹ 
if
ﬁﬁ 
(
ﬁﬁ 
roomRequest
ﬁﬁ 
.
ﬁﬁ 
Room
ﬁﬁ  
.
ﬁﬁ  !

RoomNumber
ﬁﬁ! +
!=
ﬁﬁ, .
user
ﬁﬁ/ 3
.
ﬁﬁ3 4
Room
ﬁﬁ4 8
.
ﬁﬁ8 9

RoomNumber
ﬁﬁ9 C
&&
ﬁﬁD F
!
ﬁﬁG H

IsEmployee
ﬁﬁH R
(
ﬁﬁR S
	userRoles
ﬁﬁS \
)
ﬁﬁ\ ]
)
ﬁﬁ] ^
{
ﬂﬂ 
response
‡‡ 
.
‡‡ 
Errors
‡‡ 
.
‡‡  
Add
‡‡  #
(
‡‡# $%
RoomRequestServiceError
‡‡$ ;
.
‡‡; <#
UnableToDeleteRequest
‡‡< Q
)
‡‡Q R
;
‡‡R S
return
·· 
response
·· 
;
··  
}
‚‚ 
if
‰‰ 
(
‰‰ 
roomRequest
‰‰ 
.
‰‰ 
RequestStatus
‰‰ )
!=
‰‰* ,
RoomRequestStatus
‰‰- >
.
‰‰> ?
New
‰‰? B
&&
‰‰C E
!
‰‰F G
IsAdmin
‰‰G N
(
‰‰N O
	userRoles
‰‰O X
)
‰‰X Y
)
‰‰Y Z
{
ÂÂ 
response
ÊÊ 
.
ÊÊ 
Errors
ÊÊ 
.
ÊÊ  
Add
ÊÊ  #
(
ÊÊ# $%
RoomRequestServiceError
ÊÊ$ ;
.
ÊÊ; <)
UnableToDeleteRequestStatus
ÊÊ< W
+
ÊÊX Y
roomRequest
ÊÊZ e
.
ÊÊe f
RequestStatus
ÊÊf s
.
ÊÊs t
ToString
ÊÊt |
(
ÊÊ| }
)
ÊÊ} ~
)
ÊÊ~ 
;ÊÊ Ä
return
ÁÁ 
response
ÁÁ 
;
ÁÁ  
}
ËË 
roomRequest
ÍÍ 
.
ÍÍ 
RequestStatus
ÍÍ %
=
ÍÍ& '
RoomRequestStatus
ÍÍ( 9
.
ÍÍ9 :
Deleted
ÍÍ: A
;
ÍÍA B$
_roomRequestRepository
ÎÎ "
.
ÎÎ" #
Update
ÎÎ# )
(
ÎÎ) *
roomRequest
ÎÎ* 5
)
ÎÎ5 6
;
ÎÎ6 7
if
ÌÌ 
(
ÌÌ 
!
ÌÌ 
await
ÌÌ $
_roomRequestRepository
ÌÌ -
.
ÌÌ- .
SaveAllAsync
ÌÌ. :
(
ÌÌ: ;
)
ÌÌ; <
)
ÌÌ< =
{
ÓÓ 
response
ÔÔ 
.
ÔÔ 
Errors
ÔÔ 
.
ÔÔ  
Add
ÔÔ  #
(
ÔÔ# $%
RoomRequestServiceError
ÔÔ$ ;
.
ÔÔ; <#
UnableToDeleteRequest
ÔÔ< Q
)
ÔÔQ R
;
ÔÔR S
return
 
response
 
;
  
}
ÒÒ 
response
ÛÛ 
.
ÛÛ 
IsValid
ÛÛ 
=
ÛÛ 
response
ÛÛ '
.
ÛÛ' (
Data
ÛÛ( ,
=
ÛÛ- .
true
ÛÛ/ 3
;
ÛÛ3 4
return
ÙÙ 
response
ÙÙ 
;
ÙÙ 
}
ıı 	
private
˘˘ 
static
˘˘ 
bool
˘˘ 
IsCorrectRole
˘˘ )
(
˘˘) *
List
˘˘* .
<
˘˘. /
string
˘˘/ 5
>
˘˘5 6
	userRoles
˘˘7 @
,
˘˘@ A
string
˘˘B H

department
˘˘I S
)
˘˘S T
{
˙˙ 	
if
˚˚ 
(
˚˚ 
	userRoles
˚˚ 
.
˚˚ 
Contains
˚˚ "
(
˚˚" #

department
˚˚# -
)
˚˚- .
||
˚˚/ 1
	userRoles
˚˚2 ;
.
˚˚; <
Contains
˚˚< D
(
˚˚D E
Roles
˚˚E J
.
˚˚J K
Admin
˚˚K P
)
˚˚P Q
)
˚˚Q R
{
¸¸ 
return
˝˝ 
true
˝˝ 
;
˝˝ 
}
˛˛ 
return
ÄÄ 
false
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
static
ÉÉ 
bool
ÉÉ 

IsEmployee
ÉÉ &
(
ÉÉ& '
List
ÉÉ' +
<
ÉÉ+ ,
string
ÉÉ, 2
>
ÉÉ2 3
	userRoles
ÉÉ4 =
)
ÉÉ= >
{
ÑÑ 	
return
ÖÖ 
	userRoles
ÖÖ 
.
ÖÖ 
Any
ÖÖ  
(
ÖÖ  !
role
ÖÖ! %
=>
ÖÖ& (
Roles
ÖÖ) .
.
ÖÖ. /
Employee
ÖÖ/ 7
.
ÖÖ7 8
Contains
ÖÖ8 @
(
ÖÖ@ A
role
ÖÖA E
)
ÖÖE F
)
ÖÖF G
;
ÖÖG H
}
ÜÜ 	
private
àà 
static
àà 
bool
àà 
IsAdmin
àà #
(
àà# $
List
àà$ (
<
àà( )
string
àà) /
>
àà/ 0
	userRoles
àà1 :
)
àà: ;
{
ââ 	
return
ää 
	userRoles
ää 
.
ää 
FirstOrDefault
ää +
(
ää+ ,
r
ää, -
=>
ää. 0
r
ää1 2
.
ää2 3
Contains
ää3 ;
(
ää; <
Roles
ää< A
.
ääA B
Admin
ääB G
)
ääG H
)
ääH I
!=
ääJ L
null
ääM Q
;
ääQ R
}
ãã 	
}
çç 
}éé ÿ+
]C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\RoomService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
{		 
public

 

class

 
RoomService

 
:

 
IRoomService

 +
{ 
private 
readonly 
IRoomRepository (
_roomRepository) 8
;8 9
public 
RoomService 
( 
IRoomRepository *
roomRepository+ 9
)9 :
{ 	
_roomRepository 
= 
roomRepository ,
;, -
} 	
public 
async 
Task 
< 
ServiceResponse )
<) *
bool* .
>. /
>/ 0

UpdateRoom1 ;
(; <
CreateHotelUserDto< N
createHotelUserDtoO a
)a b
{ 	
ServiceResponse 
< 
bool  
>  !
response" *
=+ ,
new- 0
(0 1
)1 2
;2 3
Room 
room 
= 
await 
_roomRepository -
.- .
GetRoomByRoomNumber. A
(A B
createHotelUserDtoB T
.T U

RoomNumberU _
)_ `
;` a
if 
( 
room 
is 
null 
) 
{ 
response 
. 
Errors 
.  
Add  #
(# $
RoomServiceError$ 4
.4 5
RoomNotFound5 A
)A B
;B C
return 
response 
;  
} 
room 
. 
CheckInDate 
= 
createHotelUserDto 1
.1 2
CheckInDate2 =
;= >
room 
. 
CheckOutDate 
= 
createHotelUserDto  2
.2 3
CheckOutDate3 ?
;? @
_roomRepository!! 
.!! 
Update!! "
(!!" #
room!!# '
)!!' (
;!!( )
if## 
(## 
!## 
await## 
_roomRepository## &
.##& '
SaveAllAsync##' 3
(##3 4
)##4 5
)##5 6
{$$ 
response%% 
.%% 
Errors%% 
.%%  
Add%%  #
(%%# $
RoomServiceError%%$ 4
.%%4 5
UnableToChangeDates%%5 H
+%%I J
room%%K O
.%%O P

RoomNumber%%P Z
)%%Z [
;%%[ \
return&& 
response&& 
;&&  
}'' 
response)) 
.)) 
IsValid)) 
=)) 
response)) '
.))' (
Data))( ,
=))- .
true))/ 3
;))3 4
return** 
response** 
;** 
}++ 	
public-- 
async-- 
Task-- 
<-- 
ServiceResponse-- )
<--) *
bool--* .
>--. /
>--/ 0
AddUserToRoom--1 >
(--> ?
	HotelUser--? H
user--I M
,--M N
CreateHotelUserDto--O a
createdHotelUserDto--b u
)--u v
{.. 	
ServiceResponse// 
<// 
bool//  
>//  !
response//" *
=//+ ,
new//- 0
(//0 1
)//1 2
;//2 3
Room11 
room11 
=11 
await11 
_roomRepository11 -
.11- .
GetRoomByRoomNumber11. A
(11A B
createdHotelUserDto11B U
.11U V

RoomNumber11V `
)11` a
;11a b
if33 
(33 
room33 
is33 
null33 
)33 
{44 
room55 
=55 
new55 
Room55 
(55  
)55  !
{66 

RoomNumber77 
=77  
createdHotelUserDto77! 4
.774 5

RoomNumber775 ?
,77? @
CheckInDate88 
=88  !
createdHotelUserDto88" 5
.885 6
CheckInDate886 A
,88A B
CheckOutDate99  
=99! "
createdHotelUserDto99# 6
.996 7
CheckOutDate997 C
}:: 
;:: 
await;; 
_roomRepository;; %
.;;% &
AddRoom;;& -
(;;- .
room;;. 2
);;2 3
;;;3 4
}<< 
room>> 
.>> 
UserId>> 
=>> 
user>> 
.>> 
Id>> !
;>>! "
if@@ 
(@@ 
!@@ 
await@@ 
_roomRepository@@ &
.@@& '
SaveAllAsync@@' 3
(@@3 4
)@@4 5
)@@5 6
{AA 
responseBB 
.BB 
ErrorsBB 
.BB  
AddBB  #
(BB# $
RoomServiceErrorBB$ 4
.BB4 5
UnableToAddUserBB5 D
+BBE F
roomBBG K
.BBK L

RoomNumberBBL V
)BBV W
;BBW X
returnCC 
responseCC 
;CC  
}DD 
responseFF 
.FF 
IsValidFF 
=FF 
responseFF '
.FF' (
DataFF( ,
=FF- .
trueFF/ 3
;FF3 4
returnGG 
responseGG 
;GG 
}HH 	
}II 
}JJ ¢ 
^C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\TokenService.cs
	namespace		 	
SoleusHotelApi		
 
.		 
Services		 !
{

 
public 

class 
TokenService 
: 
ITokenService  -
{ 
private 
readonly  
SymmetricSecurityKey -
_key. 2
;2 3
private 
readonly 
UserManager $
<$ %
	HotelUser% .
>. /
_userManager0 <
;< =
public 
TokenService 
( 
IConfiguration *
config+ 1
,1 2
UserManager3 >
<> ?
	HotelUser? H
>H I
userManagerJ U
)U V
{ 	
_key 
= 
new  
SymmetricSecurityKey +
(+ ,
Encoding, 4
.4 5
UTF85 9
.9 :
GetBytes: B
(B C
configC I
[I J
$strJ T
]T U
)U V
)V W
;W X
_userManager 
= 
userManager &
;& '
} 	
public 
async 
Task 
< 
string  
>  !
CreateToken" -
(- .
	HotelUser. 7
user8 <
)< =
{ 	
var 
claims 
= 
new 
List !
<! "
Claim" '
>' (
{ 
new 
Claim 
( #
JwtRegisteredClaimNames 1
.1 2
NameId2 8
,8 9
user: >
.> ?
Id? A
.A B
ToStringB J
(J K
)K L
)L M
,M N
new 
Claim 
( #
JwtRegisteredClaimNames 1
.1 2

UniqueName2 <
,< =
user> B
.B C
RoomC G
.G H

RoomNumberH R
)R S
} 
; 
var 
roles 
= 
await 
_userManager *
.* +
GetRolesAsync+ 8
(8 9
user9 =
)= >
;> ?
claims   
.   
AddRange   
(   
roles   !
.  ! "
Select  " (
(  ( )
role  ) -
=>  . 0
new  1 4
Claim  5 :
(  : ;

ClaimTypes  ; E
.  E F
Role  F J
,  J K
role  L P
)  P Q
)  Q R
)  R S
;  S T
var"" 
creds"" 
="" 
new"" 
SigningCredentials"" .
("". /
_key""/ 3
,""3 4
SecurityAlgorithms""5 G
.""G H
HmacSha512Signature""H [
)""[ \
;""\ ]
var$$ 
tokenDescriptor$$ 
=$$  !
new$$" %#
SecurityTokenDescriptor$$& =
{%% 
Subject&& 
=&& 
new&& 
ClaimsIdentity&& ,
(&&, -
claims&&- 3
)&&3 4
,&&4 5
Expires'' 
='' 
DateTime'' "
.''" #
Now''# &
.''& '

AddMinutes''' 1
(''1 2
$num''2 4
)''4 5
,''5 6
SigningCredentials(( "
=((# $
creds((% *
})) 
;)) 
var++ 
tokenHandler++ 
=++ 
new++ "#
JwtSecurityTokenHandler++# :
(++: ;
)++; <
;++< =
var,, 
token,, 
=,, 
tokenHandler,, $
.,,$ %
CreateToken,,% 0
(,,0 1
tokenDescriptor,,1 @
),,@ A
;,,A B
return.. 
tokenHandler.. 
...  

WriteToken..  *
(..* +
token..+ 0
)..0 1
;..1 2
}// 	
}00 
}11 ¯
PC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Startup.cs
	namespace 	
SoleusHotelApi
 
{ 
public 

class 
Startup 
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public		 
Startup		 
(		 
IConfiguration		 %
configuration		& 3
)		3 4
{

 	
_configuration 
= 
configuration *
;* +
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. "
AddApplicationServices +
(+ ,
_configuration, :
): ;
;; <
services 
. 
AddControllers #
(# $
)$ %
;% &
services 
. #
AddEndpointsApiExplorer ,
(, -
)- .
;. /
services 
. "
AddSwagerConfiguration +
(+ ,
), -
;- .
services 
. 
AddCors 
( 
) 
; 
services 
. 
AddIdentityServices (
(( )
_configuration) 7
)7 8
;8 9
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IWebHostEnvironment7 J
envK N
)N O
{   	
if!! 
(!! 
env!! 
.!! 
IsDevelopment!! !
(!!! "
)!!" #
)!!# $
{"" 
app## 
.## 

UseSwagger## 
(## 
)##  
;##  !
app$$ 
.$$ 
UseSwaggerUI$$  
($$  !
c$$! "
=>$$# %
c$$& '
.$$' (
SwaggerEndpoint$$( 7
($$7 8
$str$$8 R
,$$R S
$str$$T a
)$$a b
)$$b c
;$$c d
}%% 
app'' 
.'' 
UseHttpsRedirection'' #
(''# $
)''$ %
;''% &
app)) 
.)) 

UseRouting)) 
()) 
))) 
;)) 
app++ 
.++ 
UseCors++ 
(++ 
x++ 
=>++ 
x++ 
.++ 
AllowAnyHeader++ -
(++- .
)++. /
.,, 
AllowAnyMethod,, "
(,," #
),,# $
.-- 
AllowCredentials-- $
(--$ %
)--% &
... 
WithOrigins.. 
(..  
$str..  8
)..8 9
)..9 :
;..: ;
app11 
.11 
UseAuthentication11 !
(11! "
)11" #
;11# $
app33 
.33 
UseAuthorization33  
(33  !
)33! "
;33" #
app55 
.55 
UseStaticFiles55 
(55 
)55  
;55  !
app77 
.77 
UseEndpoints77 
(77 
	endpoints77 &
=>77' )
{88 
	endpoints99 
.99 
MapControllers99 (
(99( )
)99) *
;99* +
}:: 
):: 
;:: 
};; 	
}== 
}>> 