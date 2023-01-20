�
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
} �
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
$str	: �
;
� �
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
} �
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
;S T
public 
const 
string 
NoEndedRequests +
=, -
$str. O
;O P
} 
} �
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
}		 �
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
} �L
dC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Controllers\AdminController.cs
	namespace		 	
SoleusHotelApi		
 
.		 
Controllers		 $
{

 
[ 
	Authorize 
( 
Policy 
= 
$str $
)$ %
]% &
public 

class 
AdminController  
:! "
BaseApiController# 4
{ 
private 
readonly 
IHotelUserService *
_hotelUserService+ <
;< =
private 
readonly 
IAdminService &
_adminService' 4
;4 5
public 
AdminController 
( 
IHotelUserService 0
hotelUserService1 A
,A B
IAdminServiceC P
adminServiceQ ]
)] ^
{ 	
_hotelUserService 
= 
hotelUserService  0
;0 1
_adminService 
= 
adminService (
;( )
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
CreatedHotelUserDto' :
>: ;
>; <

CreateUser= G
(G H
[H I
FromBodyI Q
]Q R
CreateHotelUserDtoS e
createHotelUserDtof x
)x y
{ 	
ServiceResponse 
< 
CreatedHotelUserDto /
>/ 0
response1 9
=: ;
await< A
_hotelUserServiceB S
.S T
CreateHotelUserT c
(c d
createHotelUserDtod v
)v w
;w x
if 
( 
! 
response 
. 
IsValid !
)! "
{ 
return 

BadRequest !
(! "
response" *
.* +
Errors+ 1
)1 2
;2 3
} 
return!! 
Ok!! 
(!! 
response!! 
.!! 
Data!! #
)!!# $
;!!$ %
}"" 	
[$$ 	
HttpGet$$	 
($$ 
$str$$ 
)$$ 
]$$ 
public%% 
async%% 
Task%% 
<%% 
ActionResult%% &
<%%& '
	PagedList%%' 0
<%%0 1!
HotelUserWithRolesDto%%1 F
>%%F G
>%%G H
>%%H I
GetHotelUsers%%J W
(%%W X
[%%X Y
	FromQuery%%Y b
]%%b c
HotelUserParams%%d s
hotelUserParams1	%%t �
)
%%� �
{&& 	
ServiceResponse'' 
<'' 
	PagedList'' %
<''% &!
HotelUserWithRolesDto''& ;
>''; <
>''< =
serviceResponse''> M
=''N O
await''P U
_hotelUserService''V g
.''g h
GetHotelUsers''h u
(''u v
hotelUserParams1	''v �
)
''� �
;
''� �
if)) 
()) 
!)) 
serviceResponse))  
.))  !
IsValid))! (
)))( )
{** 
return++ 

BadRequest++ !
(++! "
serviceResponse++" 1
.++1 2
Errors++2 8
)++8 9
;++9 :
},, 
Response.. 
... 
AddPaginationHeader.. (
(..( )
serviceResponse..) 8
...8 9
Data..9 =
...= >
CurrentPage..> I
,..I J
serviceResponse..K Z
...Z [
Data..[ _
..._ `
PageSize..` h
,..h i
serviceResponse// 
.//  
Data//  $
.//$ %

TotalCount//% /
,/// 0
serviceResponse//1 @
.//@ A
Data//A E
.//E F

TotalPages//F P
)//P Q
;//Q R
return11 
Ok11 
(11 
serviceResponse11 %
.11% &
Data11& *
)11* +
;11+ ,
}22 	
[44 	
HttpGet44	 
(44 
$str44 %
)44% &
]44& '
public55 
async55 
Task55 
<55 
ActionResult55 &
<55& '!
HotelUserWithRolesDto55' <
>55< =
>55= >
GetHotelUsers55? L
(55L M
string55M S

roomNumber55T ^
)55^ _
{66 	
ServiceResponse77 
<77 !
HotelUserWithRolesDto77 1
>771 2
response773 ;
=77< =
await77> C
_hotelUserService77D U
.77U V!
GetHotelUserWithRoles77V k
(77k l

roomNumber77l v
)77v w
;77w x
if99 
(99 
!99 
response99 
.99 
IsValid99 !
)99! "
{:: 
return;; 

BadRequest;; !
(;;! "
response;;" *
.;;* +
Errors;;+ 1
);;1 2
;;;2 3
}<< 
return>> 
Ok>> 
(>> 
response>> 
.>> 
Data>> #
)>># $
;>>$ %
}?? 	
[AA 	
HttpPutAA	 
(AA 
$strAA 
)AA 
]AA 
publicBB 
asyncBB 
TaskBB 
<BB 
ActionResultBB &
<BB& '
CreatedHotelUserDtoBB' :
>BB: ;
>BB; <
EditUserBB= E
(BBE F
[BBF G
FromBodyBBG O
]BBO P
CreateHotelUserDtoBBQ c
editHotelUserBBd q
)BBq r
{CC 	
ServiceResponseDD 
<DD 
CreatedHotelUserDtoDD /
>DD/ 0
responseDD1 9
=DD: ;
awaitDD< A
_hotelUserServiceDDB S
.DDS T
EditUserDDT \
(DD\ ]
editHotelUserDD] j
)DDj k
;DDk l
ifFF 
(FF 
!FF 
responseFF 
.FF 
IsValidFF !
)FF! "
{GG 
returnHH 

BadRequestHH !
(HH! "
responseHH" *
.HH* +
ErrorsHH+ 1
)HH1 2
;HH2 3
}II 
returnKK 
OkKK 
(KK 
responseKK 
.KK 
DataKK #
)KK# $
;KK$ %
}LL 	
[NN 	
HttpPostNN	 
(NN 
$strNN 
)NN 
]NN 
publicOO 
asyncOO 
TaskOO 
<OO 
ActionResultOO &
>OO& '
ResetGuestPasswordsOO( ;
(OO; <
[OO< =
FromBodyOO= E
]OOE F
stringOOG M
passwordOON V
)OOV W
{PP 	
ServiceResponseQQ 
<QQ 
boolQQ  
>QQ  !
responseQQ" *
=QQ+ ,
awaitQQ- 2
_hotelUserServiceQQ3 D
.QQD E 
ResetGuestsPasswordsQQE Y
(QQY Z
passwordQQZ b
)QQb c
;QQc d
ifSS 
(SS 
!SS 
responseSS 
.SS 
IsValidSS !
)SS! "
{TT 
returnUU 

BadRequestUU !
(UU! "
responseUU" *
.UU* +
ErrorsUU+ 1
)UU1 2
;UU2 3
}VV 
returnXX 
	NoContentXX 
(XX 
)XX 
;XX 
}YY 	
[[[ 	

HttpDelete[[	 
([[ 
$str[[ (
)[[( )
][[) *
public\\ 
async\\ 
Task\\ 
<\\ 
ActionResult\\ &
>\\& '

DeleteUser\\( 2
(\\2 3
string\\3 9

roomNumber\\: D
)\\D E
{]] 	
ServiceResponse^^ 
<^^ 
bool^^  
>^^  !
response^^" *
=^^+ ,
await^^- 2
_hotelUserService^^3 D
.^^D E
DeleteHotelUser^^E T
(^^T U

roomNumber^^U _
)^^_ `
;^^` a
if`` 
(`` 
!`` 
response`` 
.`` 
IsValid`` !
)``! "
{aa 
returnbb 

BadRequestbb !
(bb! "
responsebb" *
.bb* +
Errorsbb+ 1
)bb1 2
;bb2 3
}cc 
returnee 
Okee 
(ee 
)ee 
;ee 
}ff 	
[hh 	
AllowAnonymoushh	 
]hh 
[ii 	
HttpGetii	 
(ii 
$strii  
)ii  !
]ii! "
publicjj 
asyncjj 
Taskjj 
<jj 
ActionResultjj &
<jj& '
stringjj' -
>jj- .
>jj. /
InitialSetupjj0 <
(jj< =
)jj= >
{kk 	
ServiceResponsell 
<ll 
stringll "
>ll" #
responsell$ ,
=ll- .
awaitll/ 4
_adminServicell5 B
.llB C
InitialSetupllC O
(llO P
)llP Q
;llQ R
ifnn 
(nn 
!nn 
responsenn 
.nn 
IsValidnn !
)nn! "
{oo 
returnpp 

BadRequestpp !
(pp! "
responsepp" *
.pp* +
Errorspp+ 1
)pp1 2
;pp2 3
}qq 
returnss 
Okss 
(ss 
responsess 
.ss 
Datass #
)ss# $
;ss$ %
}tt 	
}uu 
}xx �
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
} �I
hC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Controllers\HotelUserController.cs
	namespace		 	
SoleusHotelApi		
 
.		 
Controllers		 $
{

 
public 

class 
HotelUserController $
:% &
BaseApiController' 8
{ 
private 
readonly 
IHotelUserService *
_hotelUserService+ <
;< =
public 
HotelUserController "
(" #
IHotelUserService# 4
hotelUserService5 E
)E F
{ 	
_hotelUserService 
= 
hotelUserService  0
;0 1
} 	
[ 	
AllowAnonymous	 
] 
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
LoggedUserDto' 4
>4 5
>5 6
Login7 <
(< =
[= >
FromBody> F
]F G
LoginHotelUserDtoH Y
loginHotelUserDtoZ k
)k l
{ 	
ServiceResponse 
< 
LoggedUserDto )
>) *
response+ 3
=4 5
await6 ;
_hotelUserService< M
.M N
LoginHotelUserN \
(\ ]
loginHotelUserDto] n
)n o
;o p
if 
( 
! 
response 
. 
IsValid !
)! "
{ 
return 
Unauthorized #
(# $
response$ ,
., -
Errors- 3
)3 4
;4 5
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
["" 	
	Authorize""	 
("" 
Policy"" 
="" 
$str"" +
)""+ ,
]"", -
[## 	
HttpGet##	 
(## 
$str## 
)## 
]## 
public$$ 
async$$ 
Task$$ 
<$$ 
ActionResult$$ &
<$$& '
List$$' +
<$$+ ,$
HotelUserWithRequestsDto$$, D
>$$D E
>$$E F
>$$F G+
GetHotelUsersWithRequestsNumber$$H g
($$g h
[$$h i
	FromQuery$$i r
]$$r s
HotelUserParams	$$t �
hotelUserParams
$$� �
)
$$� �
{%% 	
ServiceResponse&& 
<&& 
	PagedList&& %
<&&% &$
HotelUserWithRequestsDto&&& >
>&&> ?
>&&? @
serviceResponse&&A P
=&&Q R
await&&S X
_hotelUserService&&Y j
.&&j k1
$GetHotelUsersWithCreatedRoomRequests	&&k �
(
&&� �
hotelUserParams
&&� �
)
&&� �
;
&&� �
if(( 
((( 
!(( 
serviceResponse((  
.((  !
IsValid((! (
)((( )
{)) 
return** 

BadRequest** !
(**! "
serviceResponse**" 1
.**1 2
Errors**2 8
)**8 9
;**9 :
}++ 
Response-- 
.-- 
AddPaginationHeader-- (
(--( )
serviceResponse--) 8
.--8 9
Data--9 =
.--= >
CurrentPage--> I
,--I J
serviceResponse--K Z
.--Z [
Data--[ _
.--_ `
PageSize--` h
,--h i
serviceResponse.. 
...  
Data..  $
...$ %

TotalCount..% /
,../ 0
serviceResponse..1 @
...@ A
Data..A E
...E F

TotalPages..F P
)..P Q
;..Q R
return00 
Ok00 
(00 
serviceResponse00 %
.00% &
Data00& *
)00* +
;00+ ,
}11 	
[33 	
	Authorize33	 
(33 
Policy33 
=33 
$str33 +
)33+ ,
]33, -
[44 	
HttpGet44	 
(44 
$str44 
)44  
]44  !
public55 
async55 
Task55 
<55 
ActionResult55 &
<55& '
HotelUserDto55' 3
>553 4
>554 5
GetHotelUser556 B
(55B C
string55C I

roomNumber55J T
)55T U
{66 	
ServiceResponse77 
<77 
HotelUserDto77 (
>77( )
response77* 2
=773 4
await775 :
_hotelUserService77; L
.77L M
GetHotelUser77M Y
(77Y Z

roomNumber77Z d
)77d e
;77e f
if99 
(99 
!99 
response99 
.99 
IsValid99 !
)99! "
{:: 
return;; 

BadRequest;; !
(;;! "
response;;" *
.;;* +
Errors;;+ 1
);;1 2
;;;2 3
}<< 
return>> 
Ok>> 
(>> 
response>> 
.>> 
Data>> #
)>># $
;>>$ %
}?? 	
[AA 	
	AuthorizeAA	 
(AA 
PolicyAA 
=AA 
$strAA ,
)AA, -
]AA- .
[BB 	
	HttpPatchBB	 
(BB 
$strBB 
)BB 
]BB 
publicCC 
asyncCC 
TaskCC 
<CC 
ActionResultCC &
<CC& '
HotelUserDtoCC' 3
>CC3 4
>CC4 5

EditGuestsCC6 @
(CC@ A
[CCA B
FromBodyCCB J
]CCJ K
HotelUserDtoCCL X
editUserCCY a
)CCa b
{DD 	
ServiceResponseEE 
<EE 
HotelUserDtoEE (
>EE( )
responseEE* 2
=EE3 4
awaitEE5 :
_hotelUserServiceEE; L
.EEL M
EditGuestUserEEM Z
(EEZ [
editUserEE[ c
)EEc d
;EEd e
ifGG 
(GG 
!GG 
responseGG 
.GG 
IsValidGG !
)GG! "
{HH 
returnII 

BadRequestII !
(II! "
responseII" *
.II* +
ErrorsII+ 1
)II1 2
;II2 3
}JJ 
returnLL 
OkLL 
(LL 
responseLL 
.LL 
DataLL #
)LL# $
;LL$ %
}MM 	
[OO 	
AllowAnonymousOO	 
]OO 
[PP 	
	HttpPatchPP	 
(PP 
$strPP 
)PP 
]PP  
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
ActionResultQQ &
<QQ& '
LoggedUserDtoQQ' 4
>QQ4 5
>QQ5 6
ForgotPasswordQQ7 E
(QQE F
[QQF G
FromBodyQQG O
]QQO P'
HotelUserPasswordUpdatesDtoQQQ l
passwordUpdateQQm {
)QQ{ |
{RR 	
ifSS 
(SS 
passwordUpdateSS 
isSS !
nullSS" &
)SS& '
{TT 
returnUU 

BadRequestUU !
(UU! "
)UU" #
;UU# $
}VV 
ServiceResponseXX 
<XX 
LoggedUserDtoXX )
>XX) *
responseXX+ 3
=XX4 5
awaitXX6 ;
_hotelUserServiceXX< M
.XXM N
ForgotPasswordXXN \
(XX\ ]
passwordUpdateXX] k
)XXk l
;XXl m
ifZZ 
(ZZ 
!ZZ 
responseZZ 
.ZZ 
IsValidZZ !
)ZZ! "
{[[ 
return\\ 

BadRequest\\ !
(\\! "
response\\" *
.\\* +
Errors\\+ 1
)\\1 2
;\\2 3
}]] 
return__ 
Ok__ 
(__ 
response__ 
.__ 
Data__ #
)__# $
;__$ %
}`` 	
[bb 	
	Authorizebb	 
(bb 
Policybb 
=bb 
$strbb ,
)bb, -
]bb- .
[cc 	
	HttpPatchcc	 
(cc 
$strcc +
)cc+ ,
]cc, -
publicdd 
asyncdd 
Taskdd 
<dd 
ActionResultdd &
<dd& '(
GenerateHotelUserPasswordDtodd' C
>ddC D
>ddD E 
GenerateUserPasswordddF Z
(ddZ [
stringdd[ a

roomNumberddb l
)ddl m
{ee 	
ServiceResponseff 
<ff (
GenerateHotelUserPasswordDtoff 8
>ff8 9
responseff: B
=ffC D
awaitffE J
_hotelUserServiceffK \
.ff\ ] 
GenerateUserPasswordff] q
(ffq r

roomNumberffr |
)ff| }
;ff} ~
ifhh 
(hh 
!hh 
responsehh 
.hh 
IsValidhh !
)hh! "
{ii 
returnjj 

BadRequestjj !
(jj! "
responsejj" *
.jj* +
Errorsjj+ 1
)jj1 2
;jj2 3
}kk 
returnmm 
Okmm 
(mm 
responsemm 
.mm 
Datamm #
)mm# $
;mm$ %
}nn 	
}oo 
}pp �c
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
GetRoomNumber	x �
(
� �
)
� �
)
� �
;
� �
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
[   	
	Authorize  	 
(   
Policy   
=   
$str   +
)  + ,
]  , -
[!! 	
HttpGet!!	 
(!! 
$str!! !
)!!! "
]!!" #
public"" 
async"" 
Task"" 
<"" 
ActionResult"" &
<""& '
BaseRoomRequestDto""' 9
>""9 :
>"": ; 
GetTodayRoomRequests""< P
(""P Q
)""Q R
{## 	
ServiceResponse$$ 
<$$ 
List$$  
<$$  !
BaseRoomRequestDto$$! 3
>$$3 4
>$$4 5
serviceResponse$$6 E
=$$F G
await$$H M
_roomRequestService$$N a
.$$a b 
GetTodayRoomRequests$$b v
($$v w
)$$w x
;$$x y
if&& 
(&& 
!&& 
serviceResponse&&  
.&&  !
IsValid&&! (
)&&( )
{'' 
return(( 

BadRequest(( !
(((! "
serviceResponse((" 1
.((1 2
Errors((2 8
)((8 9
;((9 :
})) 
return++ 
Ok++ 
(++ 
serviceResponse++ %
.++% &
Data++& *
)++* +
;+++ ,
},, 	
[.. 	
HttpGet..	 
(.. 
$str.. 
)..  
]..  !
public// 
async// 
Task// 
<// 
ActionResult// &
<//& '
BaseRoomRequestDto//' 9
>//9 :
>//: ;
GetMyRoomRequests//< M
(//M N
)//N O
{00 	
ServiceResponse11 
<11 
List11  
<11  !
BaseRoomRequestDto11! 3
>113 4
>114 5
serviceResponse116 E
=11F G
await11H M
_roomRequestService11N a
.11a b
GetMyRoomRequests11b s
(11s t
User11t x
.11x y
GetRoomNumber	11y �
(
11� �
)
11� �
)
11� �
;
11� �
if33 
(33 
!33 
serviceResponse33  
.33  !
IsValid33! (
)33( )
{44 
return55 

BadRequest55 !
(55! "
serviceResponse55" 1
.551 2
Errors552 8
)558 9
;559 :
}66 
return88 
Ok88 
(88 
serviceResponse88 %
.88% &
Data88& *
)88* +
;88+ ,
}99 	
[;; 	
	Authorize;;	 
(;; 
Policy;; 
=;; 
$str;; +
);;+ ,
];;, -
[<< 	
HttpGet<<	 
(<< 
$str<< $
)<<$ %
]<<% &
public== 
async== 
Task== 
<== 
ActionResult== &
<==& '
BaseRoomRequestDto==' 9
>==9 :
>==: ;#
GetAssignedRoomRequests==< S
(==S T
)==T U
{>> 	
ServiceResponse?? 
<?? 
List??  
<??  !
BaseRoomRequestDto??! 3
>??3 4
>??4 5
serviceResponse??6 E
=??F G
await??H M
_roomRequestService??N a
.??a b!
GetMyAssignedRequests??b w
(??w x
User??x |
.??| }
GetRoomNumber	??} �
(
??� �
)
??� �
)
??� �
;
??� �
ifAA 
(AA 
!AA 
serviceResponseAA  
.AA  !
IsValidAA! (
)AA( )
{BB 
returnCC 

BadRequestCC !
(CC! "
serviceResponseCC" 1
.CC1 2
ErrorsCC2 8
)CC8 9
;CC9 :
}DD 
returnFF 
OkFF 
(FF 
serviceResponseFF %
.FF% &
DataFF& *
)FF* +
;FF+ ,
}GG 	
[II 	
HttpGetII	 
(II 
$strII "
)II" #
]II# $
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
ActionResultJJ &
<JJ& '
RoomRequestDtoJJ' 5
>JJ5 6
>JJ6 7
GetRoomRequestJJ8 F
(JJF G
intJJG J
roomRequestIdJJK X
)JJX Y
{KK 	
ServiceResponseLL 
<LL 
RoomRequestDtoLL *
>LL* +
serviceResponseLL, ;
=LL< =
awaitLL> C
_roomRequestServiceLLD W
.LLW X
GetRoomRequestLLX f
(LLf g
roomRequestIdLLg t
,LLt u
UserLLv z
.LLz {
GetRoomNumber	LL{ �
(
LL� �
)
LL� �
,
LL� �
User
LL� �
.
LL� �
GetRoles
LL� �
(
LL� �
)
LL� �
)
LL� �
;
LL� �
ifNN 
(NN 
!NN 
serviceResponseNN  
.NN  !
IsValidNN! (
)NN( )
{OO 
returnPP 
NotFoundPP 
(PP  
serviceResponsePP  /
.PP/ 0
ErrorsPP0 6
)PP6 7
;PP7 8
}QQ 
returnSS 
OkSS 
(SS 
serviceResponseSS %
.SS% &
DataSS& *
)SS* +
;SS+ ,
}TT 	
[VV 	
	AuthorizeVV	 
(VV 
PolicyVV 
=VV 
$strVV +
)VV+ ,
]VV, -
[WW 	
HttpGetWW	 
(WW 
$strWW 
)WW 
]WW 
publicXX 
asyncXX 
TaskXX 
<XX 
ActionResultXX &
>XX& ',
 EndedRoomRequestsAverageDurationXX( H
(XXH I
)XXI J
{YY 	
ServiceResponseZZ 
<ZZ 
TimeSpanZZ $
>ZZ$ %
responseZZ& .
=ZZ/ 0
awaitZZ1 6
_roomRequestServiceZZ7 J
.ZZJ K+
AverageTimeAssignedRoomRequestsZZK j
(ZZj k
UserZZk o
.ZZo p
GetRoomNumberZZp }
(ZZ} ~
)ZZ~ 
)	ZZ �
;
ZZ� �
if\\ 
(\\ 
!\\ 
response\\ 
.\\ 
IsValid\\ !
)\\! "
{]] 
return^^ 

BadRequest^^ !
(^^! "
response^^" *
.^^* +
Errors^^+ 1
)^^1 2
;^^2 3
}__ 
returnaa 
Okaa 
(aa 
responseaa 
.aa 
Dataaa #
)aa# $
;aa$ %
}bb 	
[dd 	
	Authorizedd	 
(dd 
Policydd 
=dd 
$strdd +
)dd+ ,
]dd, -
[ee 	
	HttpPatchee	 
(ee 
$stree *
)ee* +
]ee+ ,
publicff 
asyncff 
Taskff 
<ff 
ActionResultff &
>ff& '
StartRoomRequestff( 8
(ff8 9
intff9 <
roomRequestIdff= J
)ffJ K
{gg 	
ServiceResponsehh 
<hh 
boolhh  
>hh  !
responsehh" *
=hh+ ,
awaithh- 2
_roomRequestServicehh3 F
.hhF G
StartRoomRequesthhG W
(hhW X
roomRequestIdhhX e
,hhe f
Userhhg k
.hhk l
GetRoomNumberhhl y
(hhy z
)hhz {
,hh{ |
User	hh} �
.
hh� �
GetRoles
hh� �
(
hh� �
)
hh� �
)
hh� �
;
hh� �
ifjj 
(jj 
!jj 
responsejj 
.jj 
IsValidjj !
)jj! "
{kk 
returnll 

BadRequestll !
(ll! "
responsell" *
.ll* +
Errorsll+ 1
)ll1 2
;ll2 3
}mm 
returnoo 
	NoContentoo 
(oo 
)oo 
;oo 
}pp 	
[rr 	
	Authorizerr	 
(rr 
Policyrr 
=rr 
$strrr +
)rr+ ,
]rr, -
[ss 	
	HttpPatchss	 
(ss 
$strss (
)ss( )
]ss) *
publictt 
asynctt 
Tasktt 
<tt 
ActionResulttt &
>tt& '
EndRoomRequesttt( 6
(tt6 7
inttt7 :
roomRequestIdtt; H
)ttH I
{uu 	
ServiceResponsevv 
<vv 
boolvv  
>vv  !
responsevv" *
=vv+ ,
awaitvv- 2
_roomRequestServicevv3 F
.vvF G
EndRoomRequestvvG U
(vvU V
roomRequestIdvvV c
,vvc d
Uservve i
.vvi j
GetRoomNumbervvj w
(vvw x
)vvx y
,vvy z
Uservv{ 
.	vv �
GetRoles
vv� �
(
vv� �
)
vv� �
)
vv� �
;
vv� �
ifxx 
(xx 
!xx 
responsexx 
.xx 
IsValidxx !
)xx! "
{yy 
returnzz 

BadRequestzz !
(zz! "
responsezz" *
.zz* +
Errorszz+ 1
)zz1 2
;zz2 3
}{{ 
return}} 
	NoContent}} 
(}} 
)}} 
;}} 
}~~ 	
[
�� 	

HttpDelete
��	 
(
�� 
$str
�� %
)
��% &
]
��& '
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
>
��& '
DeleteRoomRequest
��( 9
(
��9 :
int
��: =
roomRequestId
��> K
)
��K L
{
�� 	
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
serviceResponse
��" 1
=
��2 3
await
��4 9!
_roomRequestService
��: M
.
��M N#
SafeDeleteRoomRequest
��N c
(
��c d
roomRequestId
��d q
,
��q r
User
��s w
.
��w x
GetRoomNumber��x �
(��� �
)��� �
,��� �
User��� �
.��� �
GetRoles��� �
(��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
serviceResponse
��  
.
��  !
IsValid
��! (
)
��( )
{
�� 
return
�� 

BadRequest
�� !
(
��! "
serviceResponse
��" 1
.
��1 2
Errors
��2 8
)
��8 9
;
��9 :
}
�� 
return
�� 
	NoContent
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �3
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
}>> �
yC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Data\Repositories\Contracts\IHotelUserRepository.cs
	namespace 	
SoleusHotelApi
 
. 
Data 
. 
Repositories *
.* +
	Contracts+ 4
{ 
public 

	interface  
IHotelUserRepository )
{ 
Task		 
<		 
	PagedList		 
<		 !
HotelUserWithRolesDto		 ,
>		, -
>		- .
GetAllHotelUsers		/ ?
(		? @
HotelUserParams		@ O
hotelUserParams		P _
)		_ `
;		` a
Task

 
<

 
	PagedList

 
<

 $
HotelUserWithRequestsDto

 /
>

/ 0
>

0 1(
GetAllGuestsWithRoomRequests

2 N
(

N O
HotelUserParams

O ^
hotelUserParams

_ n
)

n o
;

o p
Task 
< 
List 
< 
	HotelUser 
> 
> 
GetHotelUsersByRole 1
(1 2
string2 8
role9 =
)= >
;> ?
Task 
< 
HotelUserDto 
>  
GetHotelUserDtoAsync /
(/ 0
string0 6

roomNumber7 A
)A B
;B C
Task 
< 
	HotelUser 
> ,
 GetHotelUserWithRoomByRoomNumber 8
(8 9
string9 ?

roomNumber@ J
)J K
;K L
void 
Update 
( 
	HotelUser 
user "
)" #
;# $
Task 
< 
bool 
> 
SaveAllAsync 
(  
)  !
;! "
} 
} �
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
} �
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
% &#
GetTodayRoomRequestsDto

' >
(

> ?
)

? @
;

@ A
Task 
< 
List 
< 
BaseRoomRequestDto $
>$ %
>% &/
#GetGuestRoomRequestsDtoByRoomNumber' J
(J K
stringK Q

roomNumberR \
)\ ]
;] ^
Task 
< 
List 
< 
BaseRoomRequestDto $
>$ %
>% &%
GetRoomRequestsByAssigned' @
(@ A
	HotelUserA J
assignedUserK W
)W X
;X Y
Task 
< 
RoomRequest 
> 
GetRoomRequestById ,
(, -
int- 0
id1 3
)3 4
;4 5
Task 
< 
RoomRequestDto 
> !
GetRoomRequestDtoById 2
(2 3
int3 6
id7 9
)9 :
;: ;
Task 
< 
List 
< 
TimeSpan 
> 
> #
GetRoomRequestsDuration 4
(4 5
	HotelUser5 >
assignedUser? K
)K L
;L M
void !
DeleteRoomRequestById "
(" #
RoomRequest# .
roomRequest/ :
): ;
;; <
Task 
< 
bool 
> 
SaveAllAsync 
(  
)  !
;! "
} 
} �T
nC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Data\Repositories\HotelUserRepository.cs
	namespace

 	
SoleusHotelApi


 
.

 
Data

 
.

 
Repositories

 *
{ 
public 

class 
HotelUserRepository $
:% & 
IHotelUserRepository' ;
{ 
private 
readonly 
DataContext $
_dataContext% 1
;1 2
private 
readonly 
IMapper  
_mapper! (
;( )
public 
HotelUserRepository "
(" #
DataContext# .
dataContext/ :
,: ;
IMapper< C
mapperD J
)J K
{ 	
_dataContext 
= 
dataContext &
;& '
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
	PagedList #
<# $!
HotelUserWithRolesDto$ 9
>9 :
>: ;
GetAllHotelUsers< L
(L M
HotelUserParamsM \
hotelUserParams] l
)l m
{ 	
var 
query 
= 
_dataContext $
.$ %
Users% *
.* +
Include+ 2
(2 3
r3 4
=>5 7
r8 9
.9 :
Room: >
)> ?
.? @
AsQueryable@ K
(K L
)L M
;M N
query 
= 
hotelUserParams #
.# $
OrderBy$ +
switch, 2
{ 
$str 
=> 
query "
." #
OrderByDescending# 4
(4 5
x5 6
=>7 9
x: ;
.; <
Room< @
.@ A
CheckInDateA L
)L M
,M N
$str 
=> 
query #
.# $
OrderByDescending$ 5
(5 6
x6 7
=>8 :
x; <
.< =
Room= A
.A B
CheckOutDateB N
)N O
,O P
$str 
=> 
query 
.  
OrderBy  '
(' (
x( )
=>* ,
x- .
.. /
	GuestName/ 8
)8 9
,9 :
_   
=>   
query   
.   
OrderByDescending   ,
(  , -
x  - .
=>  / 1
x  2 3
.  3 4
Room  4 8
.  8 9

RoomNumber  9 C
.  C D
Length  D J
)  J K
.  K L
ThenBy  L R
(  R S
x  S T
=>  U W
x  X Y
.  Y Z
Room  Z ^
.  ^ _

RoomNumber  _ i
)  i j
}!! 
;!! 
return## 
await## 
	PagedList## "
<##" #!
HotelUserWithRolesDto### 8
>##8 9
.##9 :
CreateAsync##: E
(##E F
query##F K
.##K L
	ProjectTo##L U
<##U V!
HotelUserWithRolesDto##V k
>##k l
(##l m
_mapper##m t
.##t u"
ConfigurationProvider	##u �
)
##� �
.
##� �
AsNoTracking
##� �
(
##� �
)
##� �
,
##� �
hotelUserParams$$ 
.$$  

PageNumber$$  *
,$$* +
hotelUserParams$$, ;
.$$; <
PageSize$$< D
)$$D E
;$$E F
}%% 	
public'' 
async'' 
Task'' 
<'' 
	PagedList'' #
<''# $$
HotelUserWithRequestsDto''$ <
>''< =
>''= >(
GetAllGuestsWithRoomRequests''? [
(''[ \
HotelUserParams''\ k
hotelUserParams''l {
)''{ |
{(( 	
var)) 
query)) 
=)) 
_dataContext)) $
.))$ %
Users))% *
.))* +
Include))+ 2
())2 3
r))3 4
=>))5 7
r))8 9
.))9 :
Room)): >
)))> ?
.))? @
Where))@ E
())E F
x))F G
=>))H J
x))K L
.))L M
	UserRoles))M V
.))V W
Any))W Z
())Z [
x))[ \
=>))] _
x))` a
.))a b
Role))b f
.))f g
Name))g k
==))l n
Roles))o t
.))t u
Guest))u z
)))z {
))){ |
.))| }
AsQueryable	))} �
(
))� �
)
))� �
;
))� �
query++ 
=++ 
hotelUserParams++ #
.++# $
OrderBy++$ +
switch++, 2
{,, 
$str-- 
=>-- 
query-- "
.--" #
OrderByDescending--# 4
(--4 5
x--5 6
=>--7 9
x--: ;
.--; <
Room--< @
.--@ A
CheckInDate--A L
)--L M
,--M N
$str.. 
=>.. 
query.. #
...# $
OrderByDescending..$ 5
(..5 6
x..6 7
=>..8 :
x..; <
...< =
Room..= A
...A B
CheckOutDate..B N
)..N O
,..O P
$str// 
=>// 
query// #
.//# $
OrderByDescending//$ 5
(//5 6
x//6 7
=>//8 :
x//; <
.//< =
Room//= A
.//A B
RoomRequests//B N
.//N O
Count//O T
)//T U
,//U V
$str00 
=>00 
query00 
.00  
OrderBy00  '
(00' (
x00( )
=>00* ,
x00- .
.00. /
	GuestName00/ 8
)008 9
,009 :
_11 
=>11 
query11 
.11 
OrderByDescending11 ,
(11, -
x11- .
=>11/ 1
x112 3
.113 4
Room114 8
.118 9

RoomNumber119 C
.11C D
Length11D J
)11J K
.11K L
ThenBy11L R
(11R S
x11S T
=>11U W
x11X Y
.11Y Z
Room11Z ^
.11^ _

RoomNumber11_ i
)11i j
}22 
;22 
return44 
await44 
	PagedList44 "
<44" #$
HotelUserWithRequestsDto44# ;
>44; <
.44< =
CreateAsync44= H
(44H I
query44I N
.44N O
	ProjectTo44O X
<44X Y$
HotelUserWithRequestsDto44Y q
>44q r
(44r s
_mapper44s z
.44z {"
ConfigurationProvider	44{ �
)
44� �
.
44� �
AsNoTracking
44� �
(
44� �
)
44� �
,
44� �
hotelUserParams55 
.55  

PageNumber55  *
,55* +
hotelUserParams55, ;
.55; <
PageSize55< D
)55D E
;55E F
}66 	
public88 
async88 
Task88 
<88 
HotelUserDto88 &
>88& ' 
GetHotelUserDtoAsync88( <
(88< =
string88= C

roomNumber88D N
)88N O
{99 	
return:: 
await:: 
_dataContext:: %
.::% &
Users::& +
.;; 
Include;; 
(;; 
r;; 
=>;; 
r;; 
.;;  
Room;;  $
);;$ %
.<< 
Where<< 
(<< 
x<< 
=><< 
x<< 
.<< 
Room<< "
.<<" #

RoomNumber<<# -
==<<. 0

roomNumber<<1 ;
)<<; <
.== 
OrderBy== 
(== 
x== 
=>== 
x== 
.==  
Room==  $
.==$ %

RoomNumber==% /
)==/ 0
.>> 
	ProjectTo>> 
<>> 
HotelUserDto>> '
>>>' (
(>>( )
_mapper>>) 0
.>>0 1!
ConfigurationProvider>>1 F
)>>F G
.??  
SingleOrDefaultAsync?? %
(??% &
)??& '
;??' (
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
ListBB 
<BB 
	HotelUserBB (
>BB( )
>BB) *
GetHotelUsersByRoleBB+ >
(BB> ?
stringBB? E
roleBBF J
)BBJ K
{CC 	
returnDD 
awaitDD 
_dataContextDD %
.DD% &
UsersDD& +
.DD+ ,
IncludeDD, 3
(DD3 4
rDD4 5
=>DD6 8
rDD9 :
.DD: ;
RoomDD; ?
)DD? @
.DD@ A
WhereDDA F
(DDF G
xDDG H
=>DDI K
xDDL M
.DDM N
	UserRolesDDN W
.DDW X
AnyDDX [
(DD[ \
xDD\ ]
=>DD^ `
xDDa b
.DDb c
RoleDDc g
.DDg h
NameDDh l
==DDm o
roleDDp t
)DDt u
)DDu v
.DDv w
ToListAsync	DDw �
(
DD� �
)
DD� �
;
DD� �
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
	HotelUserGG #
>GG# $,
 GetHotelUserWithRoomByRoomNumberGG% E
(GGE F
stringGGF L

roomNumberGGM W
)GGW X
{HH 	
returnII 
awaitII 
_dataContextII %
.II% &
UsersII& +
.II+ ,
IncludeII, 3
(II3 4
rII4 5
=>II6 8
rII9 :
.II: ;
RoomII; ?
)II? @
.II@ A 
SingleOrDefaultAsyncIIA U
(IIU V
xIIV W
=>IIX Z
xII[ \
.II\ ]
RoomII] a
.IIa b

RoomNumberIIb l
==IIm o

roomNumberIIp z
)IIz {
;II{ |
}JJ 	
publicLL 
voidLL 
UpdateLL 
(LL 
	HotelUserLL $
userLL% )
)LL) *
{MM 	
_dataContextNN 
.NN 
EntryNN 
(NN 
userNN #
)NN# $
.NN$ %
StateNN% *
=NN+ ,
EntityStateNN- 8
.NN8 9
ModifiedNN9 A
;NNA B
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
boolQQ 
>QQ 
SaveAllAsyncQQ  ,
(QQ, -
)QQ- .
{RR 	
returnSS 
awaitSS 
_dataContextSS %
.SS% &
SaveChangesAsyncSS& 6
(SS6 7
)SS7 8
>SS9 :
$numSS; <
;SS< =
}TT 	
}UU 
}VV �
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
})) �C
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
>2 3#
GetTodayRoomRequestsDto4 K
(K L
)L M
{   	
return!! 
await!! 
_dataContext!! %
.!!% &
RoomRequests!!& 2
."" 
Where"" 
("" 
d"" 
=>"" 
d"" 
."" 
RequestDate"" (
.""( )
Day"") ,
==""- /
DateTime""0 8
.""8 9
Today""9 >
.""> ?
Day""? B
)""B C
.## 
	ProjectTo## 
<## 
BaseRoomRequestDto## ,
>##, -
(##- .
_mapper##. 5
.##5 6!
ConfigurationProvider##6 K
)##K L
.##L M
ToListAsync##M X
(##X Y
)##Y Z
;##Z [
}$$ 	
public&& 
async&& 
Task&& 
<&& 
List&& 
<&& 
BaseRoomRequestDto&& 1
>&&1 2
>&&2 3/
#GetGuestRoomRequestsDtoByRoomNumber&&4 W
(&&W X
string&&X ^

roomNumber&&_ i
)&&i j
{'' 	
return(( 
await(( 
_dataContext(( %
.((% &
RoomRequests((& 2
.)) 
Where)) 
()) 
r)) 
=>)) 
r)) 
.)) 
Room)) !
.))! "

RoomNumber))" ,
.)), -
Equals))- 3
())3 4

roomNumber))4 >
)))> ?
)))? @
.** 
Where** 
(** 
d** 
=>** 
d** 
.** 
RequestDate** (
>=**) +
d**, -
.**- .
Room**. 2
.**2 3
CheckInDate**3 >
&&**? A
d**B C
.**C D
RequestDate**D O
<=**P R
d**S T
.**T U
Room**U Y
.**Y Z
CheckOutDate**Z f
)**f g
.++ 
	ProjectTo++ 
<++ 
BaseRoomRequestDto++ ,
>++, -
(++- .
_mapper++. 5
.++5 6!
ConfigurationProvider++6 K
)++K L
.++L M
ToListAsync++M X
(++X Y
)++Y Z
;++Z [
},, 	
public.. 
async.. 
Task.. 
<.. 
List.. 
<.. 
BaseRoomRequestDto.. 1
>..1 2
>..2 3%
GetRoomRequestsByAssigned..4 M
(..M N
	HotelUser..N W
assignedUser..X d
)..d e
{// 	
return00 
await00 
_dataContext00 %
.00% &
RoomRequests00& 2
.11 
Where11 
(11 
u11 
=>11 
u11 
.11 

AssignedTo11 '
==11( *
assignedUser11+ 7
)117 8
.22 
	ProjectTo22 
<22 
BaseRoomRequestDto22 ,
>22, -
(22- .
_mapper22. 5
.225 6!
ConfigurationProvider226 K
)22K L
.22L M
ToListAsync22M X
(22X Y
)22Y Z
;22Z [
}33 	
public55 
async55 
Task55 
<55 
RoomRequest55 %
>55% &
GetRoomRequestById55' 9
(559 :
int55: =
id55> @
)55@ A
{66 	
return77 
await77 
_dataContext77 %
.77% &
RoomRequests77& 2
.772 3
Include773 :
(77: ;
r77; <
=>77= ?
r77@ A
.77A B
Room77B F
)77F G
.77G H
Include77H O
(77O P
u77P Q
=>77R T
u77U V
.77V W

AssignedTo77W a
)77a b
.77b c 
SingleOrDefaultAsync77c w
(77w x
r77x y
=>77z |
r77} ~
.77~ 
Id	77 �
==
77� �
id
77� �
)
77� �
;
77� �
}88 	
public:: 
async:: 
Task:: 
<:: 
RoomRequestDto:: (
>::( )!
GetRoomRequestDtoById::* ?
(::? @
int::@ C
id::D F
)::F G
{;; 	
return<< 
_mapper<< 
.<< 
Map<< 
<<< 
RoomRequestDto<< -
><<- .
(<<. /
await<</ 4
_dataContext<<5 A
.<<A B
RoomRequests<<B N
.<<N O
Include<<O V
(<<V W
r<<W X
=><<Y [
r<<\ ]
.<<] ^
Room<<^ b
)<<b c
.<<c d 
SingleOrDefaultAsync<<d x
(<<x y
r<<y z
=><<{ }
r<<~ 
.	<< �
Id
<<� �
==
<<� �
id
<<� �
)
<<� �
)
<<� �
;
<<� �
}== 	
public?? 
async?? 
Task?? 
<?? 
List?? 
<?? 
TimeSpan?? '
>??' (
>??( )#
GetRoomRequestsDuration??* A
(??A B
	HotelUser??B K
assignedUser??L X
)??X Y
{@@ 	
returnAA 
awaitAA 
_dataContextAA %
.AA% &
RoomRequestsAA& 2
.BB 
WhereBB 
(BB 
uBB 
=>BB 
uBB 
.BB 

AssignedToBB (
==BB) +
assignedUserBB, 8
)BB8 9
.CC 
WhereCC 
(CC 
sCC 
=>CC 
sCC 
.CC 
RequestStatusCC +
==CC, .
EnumsCC/ 4
.CC4 5
RoomRequestStatusCC5 F
.CCF G
EndedCCG L
)CCL M
.DD 
SelectDD 
(DD 
dDD 
=>DD 
dDD 
.DD 
DurationDD '
.DD' (
ValueDD( -
)DD- .
.DD. /
ToListAsyncDD/ :
(DD: ;
)DD; <
;DD< =
}EE 	
publicGG 
voidGG !
DeleteRoomRequestByIdGG )
(GG) *
RoomRequestGG* 5
roomRequestGG6 A
)GGA B
{HH 	
_dataContextII 
.II 
RoomRequestsII %
.II% &
RemoveII& ,
(II, -
roomRequestII- 8
)II8 9
;II9 :
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
boolLL 
>LL 
SaveAllAsyncLL  ,
(LL, -
)LL- .
{MM 	
returnNN 
awaitNN 
_dataContextNN %
.NN% &
SaveChangesAsyncNN& 6
(NN6 7
)NN7 8
>NN9 :
$numNN; <
;NN< =
}OO 	
}PP 
}QQ �
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
}		 �
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
} �
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
} �
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
} �
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
} �
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
 �	
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
} �	
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
} �
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
}		 �
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
} �
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
} �
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
} �
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
} �
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
} �
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
}		 �

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
} �
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
 �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �/
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
Roles	++| �
.
++� �
Guest
++� �
)
++� �
)
++� �
;
++� �
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
--� �
.
--� �
	Reception
--� �
)
--� �
)
--� �
;
--� �
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
Housekeeping	//t �
)
//� �
)
//� �
;
//� �
}00 
)00 
;00 
return22 
services22 
;22 
}33 	
}44 
}55 �
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
} �
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
}(( �
fC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Extensions\TimeSpanExtensions.cs
	namespace 	
SoleusHotelApi
 
. 

Extensions #
{ 
public 

static 
class 
TimeSpanExtensions *
{ 
public 
static 
TimeSpan 
Mean #
(# $
this$ (
ICollection) 4
<4 5
TimeSpan5 =
>= >
source? E
)E F
{ 	
if 
( 
source 
== 
null 
) 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
source7 =
)= >
)> ?
;? @
long

 
mean

 
=

 
$num

 
;

 
long 
	remainder 
= 
$num 
;  
int 
n 
= 
source 
. 
Count  
;  !
foreach 
( 
var 
item 
in  
source! '
)' (
{ 
long 
ticks 
= 
item !
.! "
Ticks" '
;' (
mean 
+= 
ticks 
/ 
n  !
;! "
	remainder 
+= 
ticks "
%# $
n% &
;& '
mean 
+= 
	remainder !
/" #
n$ %
;% &
	remainder 
%= 
n 
; 
} 
return 
TimeSpan 
. 
	FromTicks %
(% &
mean& *
)* +
;+ ,
} 	
} 
} �S
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
}== �
`C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Helpers\HotelUserParams.cs
	namespace 	
SoleusHotelApi
 
. 
Helpers  
{ 
public 

class 
HotelUserParams  
:! "
PaginationParams# 3
{ 
public 
string 
OrderBy 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. 4
;4 5
} 
} �
ZC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Helpers\PagedList.cs
	namespace 	
SoleusHotelApi
 
. 
Helpers  
{ 
public 

class 
	PagedList 
< 
T 
> 
: 
List  $
<$ %
T% &
>& '
{ 
public 
	PagedList 
( 
IEnumerable $
<$ %
T% &
>& '
items( -
,- .
int/ 2
count3 8
,8 9
int: =

pageNumber> H
,H I
intJ M
pageSizeN V
)V W
{ 	
CurrentPage		 
=		 

pageNumber		 $
;		$ %

TotalPages

 
=

 
(

 
int

 
)

 
Math

 "
.

" #
Ceiling

# *
(

* +
count

+ 0
/

1 2
(

3 4
double

4 :
)

: ;
pageSize

; C
)

C D
;

D E
PageSize 
= 
pageSize 
;  

TotalCount 
= 
count 
; 
AddRange 
( 
items 
) 
; 
} 	
public 
int 
CurrentPage 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 

TotalPages 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 

TotalCount 
{ 
get  #
;# $
set% (
;( )
}* +
public 
static 
async 
Task  
<  !
	PagedList! *
<* +
T+ ,
>, -
>- .
CreateAsync/ :
(: ;

IQueryable; E
<E F
TF G
>G H
sourceI O
,O P
intQ T

pageNumberU _
,_ `
inta d
pageSizee m
)m n
{ 	
var 
count 
= 
await 
source $
.$ %

CountAsync% /
(/ 0
)0 1
;1 2
var 
items 
= 
await 
source $
.$ %
Skip% )
() *
(* +

pageNumber+ 5
-6 7
$num8 9
)9 :
*; <
pageSize= E
)E F
.F G
TakeG K
(K L
pageSizeL T
)T U
.U V
ToListAsyncV a
(a b
)b c
;c d
return 
new 
	PagedList  
<  !
T! "
>" #
(# $
items$ )
,) *
count+ 0
,0 1

pageNumber2 <
,< =
pageSize> F
)F G
;G H
} 	
} 
} �
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
} �
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
} �!
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
}11 �
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
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� '
,
��' (
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
int
��* -
>
��- .
(
��. /
type
��/ 3
:
��3 4
$str
��5 :
,
��: ;
nullable
��< D
:
��D E
false
��F K
)
��K L
,
��L M
RoleId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
int
��* -
>
��- .
(
��. /
type
��/ 3
:
��3 4
$str
��5 :
,
��: ;
nullable
��< D
:
��D E
false
��F K
)
��K L
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 9
,
��9 :
x
��; <
=>
��= ?
new
��@ C
{
��D E
x
��F G
.
��G H
UserId
��H N
,
��N O
x
��P Q
.
��Q R
RoleId
��R X
}
��Y Z
)
��Z [
;
��[ \
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RoleId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� D
,
��D E
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 4
,
��4 5
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
int
��* -
>
��- .
(
��. /
type
��/ 3
:
��3 4
$str
��5 :
,
��: ;
nullable
��< D
:
��D E
false
��F K
)
��K L
,
��L M
LoginProvider
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
type
��9 =
:
��= >
$str
��? N
,
��N O
nullable
��P X
:
��X Y
false
��Z _
)
��_ `
,
��` a
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 E
,
��E F
nullable
��G O
:
��O P
false
��Q V
)
��V W
,
��W X
Value
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 F
,
��F G
nullable
��H P
:
��P Q
true
��R V
)
��V W
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
new
��A D
{
��E F
x
��G H
.
��H I
UserId
��I O
,
��O P
x
��Q R
.
��R S
LoginProvider
��S `
,
��` a
x
��b c
.
��c d
Name
��d h
}
��i j
)
��j k
;
��k l
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 4
,
��4 5
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� $
,
��$ %
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
int
��& )
>
��) *
(
��* +
type
��+ /
:
��/ 0
$str
��1 6
,
��6 7
nullable
��8 @
:
��@ A
false
��B G
)
��G H
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
RoomId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
int
��* -
>
��- .
(
��. /
type
��/ 3
:
��3 4
$str
��5 :
,
��: ;
nullable
��< D
:
��D E
false
��F K
)
��K L
,
��L M

Department
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
string
��. 4
>
��4 5
(
��5 6
type
��6 :
:
��: ;
$str
��< K
,
��K L
nullable
��M U
:
��U V
false
��W \
)
��\ ]
,
��] ^
Topic
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 F
,
��F G
nullable
��H P
:
��P Q
false
��R W
)
��W X
,
��X Y
Subject
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
string
��+ 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 G
,
��G H
	maxLength
��I R
:
��R S
$num
��T V
,
��V W
nullable
��X `
:
��` a
false
��b g
)
��g h
,
��h i
Description
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= L
,
��L M
	maxLength
��N W
:
��W X
$num
��Y \
,
��\ ]
nullable
��^ f
:
��f g
true
��h l
)
��l m
,
��m n
RequestDate
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
DateTime
��/ 7
>
��7 8
(
��8 9
type
��9 =
:
��= >
$str
��? J
,
��J K
nullable
��L T
:
��T U
false
��V [
)
��[ \
,
��\ ]
RequestStatus
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
int
��1 4
>
��4 5
(
��5 6
type
��6 :
:
��: ;
$str
��< A
,
��A B
nullable
��C K
:
��K L
false
��M R
)
��R S
,
��S T
	DateStart
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
DateTime
��- 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= H
,
��H I
nullable
��J R
:
��R S
true
��T X
)
��X Y
,
��Y Z
DateEnd
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
DateTime
��+ 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; F
,
��F G
nullable
��H P
:
��P Q
true
��R V
)
��V W
,
��W X
Duration
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
TimeSpan
��, 4
>
��4 5
(
��5 6
type
��6 :
:
��: ;
$str
��< B
,
��B C
nullable
��D L
:
��L M
true
��N R
)
��R S
,
��S T
AssignedToId
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
int
��0 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; @
,
��@ A
nullable
��B J
:
��J K
true
��L P
)
��P Q
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 6
,
��6 7
x
��8 9
=>
��: <
x
��= >
.
��> ?
Id
��? A
)
��A B
;
��B C
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� G
,
��G H
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
AssignedToId
��' 3
,
��3 4
principalTable
�� &
:
��& '
$str
��( 4
,
��4 5
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� <
,
��< =
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RoomId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� 
,
�� 
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
int
��& )
>
��) *
(
��* +
type
��+ /
:
��/ 0
$str
��1 6
,
��6 7
nullable
��8 @
:
��@ A
false
��B G
)
��G H
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
Url
�� 
=
�� 
table
�� 
.
��  
Column
��  &
<
��& '
string
��' -
>
��- .
(
��. /
type
��/ 3
:
��3 4
$str
��5 D
,
��D E
nullable
��F N
:
��N O
true
��P T
)
��T U
,
��U V
PublicId
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
string
��, 2
>
��2 3
(
��3 4
type
��4 8
:
��8 9
$str
��: I
,
��I J
nullable
��K S
:
��S T
true
��U Y
)
��Y Z
,
��Z [
RoomRequestId
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
int
��1 4
>
��4 5
(
��5 6
type
��6 :
:
��: ;
$str
��< A
,
��A B
nullable
��C K
:
��K L
true
��M Q
)
��Q R
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 0
,
��0 1
x
��2 3
=>
��4 6
x
��7 8
.
��8 9
Id
��9 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� D
,
��D E
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RoomRequestId
��' 4
,
��4 5
principalTable
�� &
:
��& '
$str
��( 6
,
��6 7
principalColumn
�� '
:
��' (
$str
��) -
)
��- .
;
��. /
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� (
,
��( )
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� ,
,
��, -
table
�� 
:
�� 
$str
�� #
,
��# $
column
�� 
:
�� 
$str
��  
,
��  !
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� .
)
��. /
;
��/ 0
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� #
,
��# $
column
�� 
:
�� 
$str
�� ,
,
��, -
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� :
)
��: ;
;
��; <
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� /
,
��/ 0
table
�� 
:
�� 
$str
�� 
,
��  
column
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 4
,
��4 5
table
�� 
:
�� 
$str
�� %
,
��% &
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� .
,
��. /
table
�� 
:
�� 
$str
�� %
,
��% &
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� $
,
��$ %
unique
�� 
:
�� 
true
�� 
)
�� 
;
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
��  
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
}		 �
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
�4
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
roomRepository	t �
,
� �
IConfiguration
� �
configuration
� �
)
� �
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
;	%% �
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
}SS �
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
}		 �
mC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\Contracts\IHotelUserService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
.! "
	Contracts" +
{ 
public 

	interface 
IHotelUserService &
{		 
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
 
	PagedList

 &
<

& '!
HotelUserWithRolesDto

' <
>

< =
>

= >
>

> ?
GetHotelUsers

@ M
(

M N
HotelUserParams

N ]
hotelUserParams

^ m
)

m n
;

n o
Task 
< 
ServiceResponse 
< 
	PagedList &
<& '$
HotelUserWithRequestsDto' ?
>? @
>@ A
>A B0
$GetHotelUsersWithCreatedRoomRequestsC g
(g h
HotelUserParamsh w
hotelUserParams	x �
)
� �
;
� �
Task 
< 
ServiceResponse 
< 
HotelUserDto )
>) *
>* +
GetHotelUser, 8
(8 9
string9 ?

roomNumber@ J
)J K
;K L
Task 
< 
ServiceResponse 
< !
HotelUserWithRolesDto 2
>2 3
>3 4!
GetHotelUserWithRoles5 J
(J K
stringK Q

roomNumberR \
)\ ]
;] ^
Task 
< 
ServiceResponse 
< 
CreatedHotelUserDto 0
>0 1
>1 2
CreateHotelUser3 B
(B C
CreateHotelUserDtoC U
createHotelUserDtoV h
)h i
;i j
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
LoginHotelUser- ;
(; <
LoginHotelUserDto< M
loginHotelUserDtoN _
)_ `
;` a
Task 
< 
ServiceResponse 
< 
LoggedUserDto *
>* +
>+ ,
ForgotPassword- ;
(; <'
HotelUserPasswordUpdatesDto< W!
userPasswordForgotDtoX m
)m n
;n o
Task 
< 
ServiceResponse 
< (
GenerateHotelUserPasswordDto 9
>9 :
>: ; 
GenerateUserPassword< P
(P Q
stringQ W

roomNumberX b
)b c
;c d
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" # 
ResetGuestsPasswords$ 8
(8 9
string9 ?
password@ H
)H I
;I J
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
} �
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
GetTodayRoomRequests		8 L
(		L M
)		M N
;		N O
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
List

 !
<

! "
BaseRoomRequestDto

" 4
>

4 5
>

5 6
>

6 7
GetMyRoomRequests

8 I
(

I J
string

J P
userRoomNumber

Q _
)

_ `
;

` a
Task 
< 
ServiceResponse 
< 
List !
<! "
BaseRoomRequestDto" 4
>4 5
>5 6
>6 7!
GetMyAssignedRequests8 M
(M N
stringN T
userRoomNumberU c
)c d
;d e
Task 
< 
ServiceResponse 
< 
RoomRequestDto +
>+ ,
>, -
GetRoomRequest. <
(< =
int= @
roomRequestIdA N
,N O
stringP V
userRoomNumberW e
,e f
Listg k
<k l
stringl r
>r s
	userRolest }
)} ~
;~ 
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" #
StartRoomRequest$ 4
(4 5
int5 8
roomRequestId9 F
,F G
stringH N
userRoomNumberO ]
,] ^
List_ c
<c d
stringd j
>j k
	userRolesl u
)u v
;v w
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" #
EndRoomRequest$ 2
(2 3
int3 6
roomRequestId7 D
,D E
stringF L
userRoomNumberM [
,[ \
List] a
<a b
stringb h
>h i
	userRolesj s
)s t
;t u
Task 
< 
ServiceResponse 
< 
TimeSpan %
>% &
>& '+
AverageTimeAssignedRoomRequests( G
(G H
stringH N
userRoomNumberO ]
)] ^
;^ _
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" #!
SafeDeleteRoomRequest$ 9
(9 :
int: =
roomRequestId> K
,K L
stringM S
userRoomNumberT b
,b c
Listd h
<h i
stringi o
>o p
	userRolesq z
)z {
;{ |
} 
} �
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
} �
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
}		 ��
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
signInManager	w �
,
� �"
IHotelUserRepository
� �
userRepository
� �
,
� �
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
<&&) *
	PagedList&&* 3
<&&3 4!
HotelUserWithRolesDto&&4 I
>&&I J
>&&J K
>&&K L
GetHotelUsers&&M Z
(&&Z [
HotelUserParams&&[ j
hotelUserParams&&k z
)&&z {
{'' 	
ServiceResponse(( 
<(( 
	PagedList(( %
<((% &!
HotelUserWithRolesDto((& ;
>((; <
>((< =
response((> F
=((G H
new((I L
(((L M
)((M N
;((N O
	PagedList** 
<** !
HotelUserWithRolesDto** +
>**+ ,
userList**- 5
=**6 7
await**8 =
_userRepository**> M
.**M N
GetAllHotelUsers**N ^
(**^ _
hotelUserParams**_ n
)**n o
;**o p
foreach++ 
(++ 
var++ 
user++ 
in++  
userList++! )
)++) *
{,, 
	HotelUser-- 
userInDb-- "
=--# $
await--% *
_userRepository--+ :
.--: ;,
 GetHotelUserWithRoomByRoomNumber--; [
(--[ \
user--\ `
.--` a

RoomNumber--a k
)--k l
;--l m
user.. 
... 
	UserRoles.. 
=..  
await..! &
_userManager..' 3
...3 4
GetRolesAsync..4 A
(..A B
userInDb..B J
)..J K
;..K L
}// 
response11 
.11 
IsValid11 
=11 
true11 #
;11# $
response22 
.22 
Data22 
=22 
userList22 $
;22$ %
return33 
response33 
;33 
}44 	
public66 
async66 
Task66 
<66 
ServiceResponse66 )
<66) *
	PagedList66* 3
<663 4$
HotelUserWithRequestsDto664 L
>66L M
>66M N
>66N O0
$GetHotelUsersWithCreatedRoomRequests66P t
(66t u
HotelUserParams	66u �
hotelUserParams
66� �
)
66� �
{77 	
return88 
new88 
ServiceResponse88 &
<88& '
	PagedList88' 0
<880 1$
HotelUserWithRequestsDto881 I
>88I J
>88J K
{99 
IsValid:: 
=:: 
true:: 
,:: 
Data;; 
=;; 
await;; 
_userRepository;; ,
.;;, -(
GetAllGuestsWithRoomRequests;;- I
(;;I J
hotelUserParams;;J Y
);;Y Z
}<< 
;<< 
}== 	
public?? 
async?? 
Task?? 
<?? 
ServiceResponse?? )
<??) *
HotelUserDto??* 6
>??6 7
>??7 8
GetHotelUser??9 E
(??E F
string??F L

roomNumber??M W
)??W X
{@@ 	
returnAA 
newAA 
ServiceResponseAA &
<AA& '
HotelUserDtoAA' 3
>AA3 4
{BB 
IsValidCC 
=CC 
trueCC 
,CC 
DataDD 
=DD 
awaitDD 
_userRepositoryDD ,
.DD, - 
GetHotelUserDtoAsyncDD- A
(DDA B

roomNumberDDB L
)DDL M
}EE 
;EE 
}FF 	
publicHH 
asyncHH 
TaskHH 
<HH 
ServiceResponseHH )
<HH) *!
HotelUserWithRolesDtoHH* ?
>HH? @
>HH@ A!
GetHotelUserWithRolesHHB W
(HHW X
stringHHX ^

roomNumberHH_ i
)HHi j
{II 	
ServiceResponseJJ 
<JJ !
HotelUserWithRolesDtoJJ 1
>JJ1 2
responseJJ3 ;
=JJ< =
newJJ> A
(JJA B
)JJB C
;JJC D
varLL 
userLL 
=LL 
awaitLL 
_userManagerLL )
.LL) *
UsersLL* /
.LL/ 0
IncludeLL0 7
(LL7 8
rLL8 9
=>LL: <
rLL= >
.LL> ?
RoomLL? C
)LLC D
.LLD E
FirstOrDefaultAsyncLLE X
(LLX Y
xLLY Z
=>LL[ ]
xLL^ _
.LL_ `
RoomLL` d
.LLd e

RoomNumberLLe o
==LLp r

roomNumberLLs }
)LL} ~
;LL~ 
ifNN 
(NN 
userNN 
isNN 
nullNN 
)NN 
{OO 
responsePP 
.PP 
ErrorsPP 
.PP  
AddPP  #
(PP# $!
HotelUserServiceErrorPP$ 9
.PP9 :
UserNotFoundPP: F
)PPF G
;PPG H
returnQQ 
responseQQ 
;QQ  
}RR !
HotelUserWithRolesDtoTT !
userWithRolesDtoTT" 2
=TT3 4
_mapperTT5 <
.TT< =
MapTT= @
<TT@ A!
HotelUserWithRolesDtoTTA V
>TTV W
(TTW X
userTTX \
)TT\ ]
;TT] ^
userWithRolesDtoUU 
.UU 
	UserRolesUU &
=UU' (
awaitUU) .
_userManagerUU/ ;
.UU; <
GetRolesAsyncUU< I
(UUI J
userUUJ N
)UUN O
;UUO P
responseWW 
.WW 
IsValidWW 
=WW 
trueWW #
;WW# $
responseXX 
.XX 
DataXX 
=XX 
userWithRolesDtoXX ,
;XX, -
returnZZ 
responseZZ 
;ZZ 
}[[ 	
public]] 
async]] 
Task]] 
<]] 
ServiceResponse]] )
<]]) *
CreatedHotelUserDto]]* =
>]]= >
>]]> ?
CreateHotelUser]]@ O
(]]O P
CreateHotelUserDto]]P b
createHotelUserDto]]c u
)]]u v
{^^ 	
ServiceResponse__ 
<__ 
CreatedHotelUserDto__ /
>__/ 0
response__1 9
=__: ;
new__< ?
(__? @
)__@ A
;__A B
ifaa 
(aa 
awaitaa 

UserExistsaa  
(aa  !
createHotelUserDtoaa! 3
.aa3 4

RoomNumberaa4 >
)aa> ?
)aa? @
{bb 
responsecc 
.cc 
Errorscc 
.cc  
Addcc  #
(cc# $!
HotelUserServiceErrorcc$ 9
.cc9 :
UserAlreadyExistscc: K
)ccK L
;ccL M
returndd 
responsedd 
;dd  
}ee 
createHotelUserDtogg 
.gg 

RoomNumbergg )
=gg* +
createHotelUserDtogg, >
.gg> ?

RoomNumbergg? I
.ggI J
ToUpperggJ Q
(ggQ R
)ggR S
;ggS T
createHotelUserDtohh 
.hh 
	GuestNamehh (
=hh) *
createHotelUserDtohh+ =
.hh= >
	GuestNamehh> G
.hhG H
ToUpperhhH O
(hhO P
)hhP Q
;hhQ R
	HotelUserkk 
	hotelUserkk 
=kk  !
_mapperkk" )
.kk) *
Mapkk* -
<kk- .
	HotelUserkk. 7
>kk7 8
(kk8 9
createHotelUserDtokk9 K
)kkK L
;kkL M
IdentityResultmm 
createUserResultmm +
=mm, -
awaitmm. 3
_userManagermm4 @
.mm@ A
CreateAsyncmmA L
(mmL M
	hotelUsermmM V
,mmV W
createHotelUserDtommX j
.mmj k
Passwordmmk s
)mms t
;mmt u
ifoo 
(oo 
!oo 
createUserResultoo !
.oo! "
	Succeededoo" +
)oo+ ,
{pp 
responseqq 
.qq 
Errorsqq 
=qq  !
createUserResultqq" 2
.qq2 3
Errorsqq3 9
.qq9 :
Selectqq: @
(qq@ A
xqqA B
=>qqC E
xqqF G
.qqG H
DescriptionqqH S
)qqS T
.qqT U
ToListqqU [
(qq[ \
)qq\ ]
;qq] ^
returnrr 
responserr 
;rr  
}ss 
foreachuu 
(uu 
varuu 
roleuu 
inuu  
createHotelUserDtouu! 3
.uu3 4
Rolesuu4 9
)uu9 :
{vv 
IdentityResultww 

roleResultww )
=ww* +
awaitww, 1
_userManagerww2 >
.ww> ?
AddToRoleAsyncww? M
(wwM N
	hotelUserwwN W
,wwW X
rolewwY ]
)ww] ^
;ww^ _
ifyy 
(yy 
!yy 

roleResultyy 
.yy  
	Succeededyy  )
)yy) *
{zz 
response{{ 
.{{ 
Errors{{ #
={{$ %
createUserResult{{& 6
.{{6 7
Errors{{7 =
.{{= >
Select{{> D
({{D E
x{{E F
=>{{G I
x{{J K
.{{K L
Description{{L W
){{W X
.{{X Y
ToList{{Y _
({{_ `
){{` a
;{{a b
return|| 
response|| #
;||# $
}}} 
}~~ 
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
userAddedToRoom
��" 1
=
��2 3
await
��4 9
_roomService
��: F
.
��F G
AddUserToRoom
��G T
(
��T U
	hotelUser
��U ^
,
��^ _ 
createHotelUserDto
��` r
)
��r s
;
��s t
if
�� 
(
�� 
!
�� 
userAddedToRoom
��  
.
��  !
IsValid
��! (
)
��( )
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $
userAddedToRoom
��$ 3
.
��3 4
Errors
��4 :
.
��: ;
First
��; @
(
��@ A
)
��A B
+
��C D#
HotelUserServiceError
��E Z
.
��Z [
UserCreated
��[ f
)
��f g
;
��g h
}
�� 
Room
�� 
userRoom
�� 
=
�� 
await
�� !
_roomRepository
��" 1
.
��1 2!
GetRoomByRoomNumber
��2 E
(
��E F 
createHotelUserDto
��F X
.
��X Y

RoomNumber
��Y c
)
��c d
;
��d e
	hotelUser
�� 
.
�� 
RoomId
�� 
=
�� 
userRoom
�� '
.
��' (
Id
��( *
;
��* +
await
�� 
_userManager
�� 
.
�� 
UpdateAsync
�� *
(
��* +
	hotelUser
��+ 4
)
��4 5
;
��5 6!
CreatedHotelUserDto
�� !
createdHotelUserDto
��  3
=
��4 5
_mapper
��6 =
.
��= >
Map
��> A
<
��A B!
CreatedHotelUserDto
��B U
>
��U V
(
��V W
	hotelUser
��W `
)
��` a
;
��a b!
createdHotelUserDto
�� 
.
��  
	UserRoles
��  )
=
��* +
await
��, 1
_userManager
��2 >
.
��> ?
GetRolesAsync
��? L
(
��L M
	hotelUser
��M V
)
��V W
;
��W X
response
�� 
.
�� 
IsValid
�� 
=
�� 
true
�� #
;
��# $
response
�� 
.
�� 
Data
�� 
=
�� !
createdHotelUserDto
�� /
;
��/ 0
return
�� 
response
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� )
<
��) *!
CreatedHotelUserDto
��* =
>
��= >
>
��> ?
EditUser
��@ H
(
��H I 
CreateHotelUserDto
��I [
editUser
��\ d
)
��d e
{
�� 	
ServiceResponse
�� 
<
�� !
CreatedHotelUserDto
�� /
>
��/ 0
response
��1 9
=
��: ;
new
��< ?
(
��? @
)
��@ A
;
��A B
	HotelUser
�� 
user
�� 
=
�� 
await
�� "
_userManager
��# /
.
��/ 0
Users
��0 5
.
��5 6
Include
��6 =
(
��= >
r
��> ?
=>
��@ B
r
��C D
.
��D E
Room
��E I
)
��I J
.
��J K"
SingleOrDefaultAsync
��K _
(
��_ `
x
��` a
=>
��b d
x
��e f
.
��f g
Room
��g k
.
��k l

RoomNumber
��l v
==
��w y
editUser��z �
.��� �

RoomNumber��� �
)��� �
;��� �
if
�� 
(
�� 
user
�� 
is
�� 
null
�� 
)
�� 
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
UserNotFound
��: F
)
��F G
;
��G H
return
�� 
response
�� 
;
��  
}
�� 
editUser
�� 
.
�� 
	GuestName
�� 
=
��  
editUser
��! )
.
��) *
	GuestName
��* 3
.
��3 4
ToUpper
��4 ;
(
��; <
)
��< =
;
��= >
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
editRolesResponse
��" 3
=
��4 5
await
��6 ;
EditUserRoles
��< I
(
��I J
user
��J N
,
��N O
editUser
��P X
.
��X Y
Roles
��Y ^
)
��^ _
;
��_ `
if
�� 
(
�� 
!
�� 
editRolesResponse
�� "
.
��" #
IsValid
��# *
)
��* +
{
�� 
response
�� 
.
�� 
Errors
�� 
=
��  !
editRolesResponse
��" 3
.
��3 4
Errors
��4 :
;
��: ;
return
�� 
response
�� 
;
��  
}
�� 
_mapper
�� 
.
�� 
Map
�� 
(
�� 
editUser
��  
,
��  !
user
��" &
)
��& '
;
��' (
_userRepository
�� 
.
�� 
Update
�� "
(
��" #
user
��# '
)
��' (
;
��( )
if
�� 
(
�� 
!
�� 
await
�� 
_userRepository
�� &
.
��& '
SaveAllAsync
��' 3
(
��3 4
)
��4 5
)
��5 6
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
ChangesUnsaved
��: H
)
��H I
;
��I J
return
�� 
response
�� 
;
��  
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
editUser
��& .
.
��. /
Password
��/ 7
)
��7 8
)
��8 9
{
�� 
string
��  
passwordResetToken
�� )
=
��* +
await
��, 1
_userManager
��2 >
.
��> ?-
GeneratePasswordResetTokenAsync
��? ^
(
��^ _
user
��_ c
)
��c d
;
��d e
IdentityResult
�� 
result
�� %
=
��& '
await
��( -
_userManager
��. :
.
��: ; 
ResetPasswordAsync
��; M
(
��M N
user
��N R
,
��R S 
passwordResetToken
��T f
,
��f g
editUser
��h p
.
��p q
Password
��q y
)
��y z
;
��z {
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� %
)
��% &
{
�� 
response
�� 
.
�� 
Errors
�� #
.
��# $
Add
��$ '
(
��' (#
HotelUserServiceError
��( =
.
��= >#
UserEditedButPassword
��> S
)
��S T
;
��T U
return
�� 
response
�� #
;
��# $
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 
await
�� 
IsTheRoomUpdated
�� '
(
��' (
editUser
��( 0
)
��0 1
)
��1 2
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
RoomDatesUnsaved
��: J
+
��K L
editUser
��M U
.
��U V

RoomNumber
��V `
)
��` a
;
��a b
return
�� 
response
�� 
;
��  
}
�� !
CreatedHotelUserDto
�� 
updatedUser
��  +
=
��, -
_mapper
��. 5
.
��5 6
Map
��6 9
<
��9 :!
CreatedHotelUserDto
��: M
>
��M N
(
��N O
user
��O S
)
��S T
;
��T U
updatedUser
�� 
.
�� 
	UserRoles
�� !
=
��" #
await
��$ )
_userManager
��* 6
.
��6 7
GetRolesAsync
��7 D
(
��D E
user
��E I
)
��I J
;
��J K
response
�� 
.
�� 
IsValid
�� 
=
�� 
true
�� #
;
��# $
response
�� 
.
�� 
Data
�� 
=
�� 
updatedUser
�� '
;
��' (
return
�� 
response
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� )
<
��) *
HotelUserDto
��* 6
>
��6 7
>
��7 8
EditGuestUser
��9 F
(
��F G
HotelUserDto
��G S
editUser
��T \
)
��\ ]
{
�� 	
ServiceResponse
�� 
<
�� 
HotelUserDto
�� (
>
��( )
response
��* 2
=
��3 4
new
��5 8
(
��8 9
)
��9 :
;
��: ;
	HotelUser
�� 
user
�� 
=
�� 
await
�� "
_userManager
��# /
.
��/ 0
Users
��0 5
.
��5 6
Include
��6 =
(
��= >
r
��> ?
=>
��@ B
r
��C D
.
��D E
Room
��E I
)
��I J
.
��J K"
SingleOrDefaultAsync
��K _
(
��_ `
x
��` a
=>
��b d
x
��e f
.
��f g
Room
��g k
.
��k l

RoomNumber
��l v
==
��w y
editUser��z �
.��� �

RoomNumber��� �
)��� �
;��� �
if
�� 
(
�� 
user
�� 
is
�� 
null
�� 
)
�� 
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
UserNotFound
��: F
)
��F G
;
��G H
return
�� 
response
�� 
;
��  
}
�� 
IList
�� 
<
�� 
string
�� 
>
�� 
	userRoles
�� #
=
��$ %
await
��& +
_userManager
��, 8
.
��8 9
GetRolesAsync
��9 F
(
��F G
user
��G K
)
��K L
;
��L M
if
�� 
(
�� 
	userRoles
�� 
.
�� 
Any
�� 
(
�� 
x
�� 
=>
��  "
x
��# $
!=
��% '
Roles
��( -
.
��- .
Guest
��. 3
)
��3 4
)
��4 5
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :%
ForbiddenEditPermission
��: Q
)
��Q R
;
��R S
return
�� 
response
�� 
;
��  
}
�� 
user
�� 
.
�� 
	GuestName
�� 
=
�� 
editUser
�� %
.
��% &
	GuestName
��& /
.
��/ 0
ToUpper
��0 7
(
��7 8
)
��8 9
;
��9 :
_userRepository
�� 
.
�� 
Update
�� "
(
��" #
user
��# '
)
��' (
;
��( )
if
�� 
(
�� 
!
�� 
await
�� 
_userRepository
�� &
.
��& '
SaveAllAsync
��' 3
(
��3 4
)
��4 5
)
��5 6
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
ChangesUnsaved
��: H
)
��H I
;
��I J
return
�� 
response
�� 
;
��  
}
�� 
if
�� 
(
�� 
!
�� 
await
�� 
IsTheRoomUpdated
�� '
(
��' (
_mapper
��( /
.
��/ 0
Map
��0 3
<
��3 4 
CreateHotelUserDto
��4 F
>
��F G
(
��G H
editUser
��H P
)
��P Q
)
��Q R
)
��R S
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
RoomDatesUnsaved
��: J
+
��K L
editUser
��M U
.
��U V

RoomNumber
��V `
)
��` a
;
��a b
return
�� 
response
�� 
;
��  
}
�� 
response
�� 
.
�� 
IsValid
�� 
=
�� 
true
�� #
;
��# $
response
�� 
.
�� 
Data
�� 
=
�� 
_mapper
�� #
.
��# $
Map
��$ '
<
��' (
HotelUserDto
��( 4
>
��4 5
(
��5 6
user
��6 :
)
��: ;
;
��; <
return
�� 
response
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� )
<
��) *
LoggedUserDto
��* 7
>
��7 8
>
��8 9
LoginHotelUser
��: H
(
��H I
LoginHotelUserDto
��I Z
loginHotelUserDto
��[ l
)
��l m
{
�� 	
ServiceResponse
�� 
<
�� 
LoggedUserDto
�� )
>
��) *
response
��+ 3
=
��4 5
new
��6 9
(
��9 :
)
��: ;
;
��; <
if
�� 
(
�� 
loginHotelUserDto
�� !
is
��" $
null
��% )
)
��) *
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :%
NullPasswordAndUserName
��: Q
)
��Q R
;
��R S
return
�� 
response
�� 
;
��  
}
�� 
	HotelUser
�� 
user
�� 
=
�� 
await
�� "
_userManager
��# /
.
��/ 0
Users
��0 5
.
��5 6
Include
��6 =
(
��= >
r
��> ?
=>
��@ B
r
��C D
.
��D E
Room
��E I
)
��I J
.
�� "
SingleOrDefaultAsync
�� %
(
��% &
x
��& '
=>
��( *
x
��+ ,
.
��, -
Room
��- 1
.
��1 2

RoomNumber
��2 <
==
��= ?
loginHotelUserDto
��@ Q
.
��Q R

RoomNumber
��R \
.
��\ ]
ToUpper
��] d
(
��d e
)
��e f
)
��f g
;
��g h
if
�� 
(
�� 
user
�� 
is
�� 
null
�� 
)
�� 
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
InvalidUserName
��: I
)
��I J
;
��J K
return
�� 
response
�� 
;
��  
}
�� 
SignInResult
�� 
result
�� 
=
��  !
await
��" '
_signInManager
��( 6
.
��6 7&
CheckPasswordSignInAsync
��7 O
(
��O P
user
��P T
,
��T U
loginHotelUserDto
��V g
.
��g h
Password
��h p
,
��p q
false
��r w
)
��w x
;
��x y
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
InvalidPassword
��: I
)
��I J
;
��J K
return
�� 
response
�� 
;
��  
}
�� 
response
�� 
.
�� 
IsValid
�� 
=
�� 
true
�� #
;
��# $
response
�� 
.
�� 
Data
�� 
=
�� 
new
�� 
LoggedUserDto
��  -
{
�� 

RoomNumber
�� 
=
�� 
user
�� !
.
��! "
Room
��" &
.
��& '

RoomNumber
��' 1
,
��1 2
	GuestName
�� 
=
�� 
user
��  
.
��  !
	GuestName
��! *
,
��* +
Token
�� 
=
�� 
await
�� 
_tokenService
�� +
.
��+ ,
CreateToken
��, 7
(
��7 8
user
��8 <
)
��< =
}
�� 
;
�� 
return
�� 
response
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� )
<
��) *
LoggedUserDto
��* 7
>
��7 8
>
��8 9
ForgotPassword
��: H
(
��H I)
HotelUserPasswordUpdatesDto
��I d#
userPasswordForgotDto
��e z
)
��z {
{
�� 	
ServiceResponse
�� 
<
�� 
LoggedUserDto
�� )
>
��) *
response
��+ 3
=
��4 5
new
��6 9
(
��9 :
)
��: ;
;
��; <
	HotelUser
�� 
user
�� 
=
�� 
await
�� "
_userManager
��# /
.
��/ 0
Users
��0 5
.
��5 6
Include
��6 =
(
��= >
r
��> ?
=>
��@ B
r
��C D
.
��D E
Room
��E I
)
��I J
.
��J K!
FirstOrDefaultAsync
��K ^
(
��^ _
x
��_ `
=>
��a c
x
��d e
.
��e f
Room
��f j
.
��j k

RoomNumber
��k u
==
��v x$
userPasswordForgotDto��y �
.��� �

RoomNumber��� �
)��� �
;��� �
if
�� 
(
�� 
user
�� 
is
�� 
null
�� 
)
�� 
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
UserNotFound
��: F
)
��F G
;
��G H
return
�� 
response
�� 
;
��  
}
�� 
IList
�� 
<
�� 
string
�� 
>
�� 
roles
�� 
=
��  !
await
��" '
_userManager
��( 4
.
��4 5
GetRolesAsync
��5 B
(
��B C
user
��C G
)
��G H
;
��H I
if
�� 
(
�� 
!
�� 
roles
�� 
.
�� 
Contains
�� 
(
��  
Roles
��  %
.
��% &
Guest
��& +
)
��+ ,
)
��, -
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :)
ForbiddenPasswordChangeRole
��: U
)
��U V
;
��V W
return
�� 
response
�� 
;
��  
}
�� 
if
�� 
(
�� 
user
�� 
.
�� 
	GuestName
�� 
!=
�� !#
userPasswordForgotDto
��" 7
.
��7 8
	GuestName
��8 A
.
��A B
ToUpper
��B I
(
��I J
)
��J K
)
��K L
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
WrongGuestName
��: H
)
��H I
;
��I J
return
�� 
response
�� 
;
��  
}
�� 
string
��  
passwordResetToken
�� %
=
��& '
await
��( -
_userManager
��. :
.
��: ;-
GeneratePasswordResetTokenAsync
��; Z
(
��Z [
user
��[ _
)
��_ `
;
��` a
IdentityResult
�� 
result
�� !
=
��" #
await
��$ )
_userManager
��* 6
.
��6 7 
ResetPasswordAsync
��7 I
(
��I J
user
��J N
,
��N O 
passwordResetToken
��P b
,
��b c#
userPasswordForgotDto
��d y
.
��y z
Password��z �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
response
�� 
.
�� 
Errors
�� 
=
��  !
result
��" (
.
��( )
Errors
��) /
.
��/ 0
Select
��0 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
.
��= >
Description
��> I
)
��I J
.
��J K
ToList
��K Q
(
��Q R
)
��R S
;
��S T
return
�� 
response
�� 
;
��  
}
�� 
response
�� 
.
�� 
IsValid
�� 
=
�� 
true
�� #
;
��# $
response
�� 
.
�� 
Data
�� 
=
�� 
new
�� 
LoggedUserDto
��  -
{
�� 

RoomNumber
�� 
=
�� 
user
�� !
.
��! "
Room
��" &
.
��& '

RoomNumber
��' 1
,
��1 2
	GuestName
�� 
=
�� 
user
��  
.
��  !
	GuestName
��! *
,
��* +
Token
�� 
=
�� 
await
�� 
_tokenService
�� +
.
��+ ,
CreateToken
��, 7
(
��7 8
user
��8 <
)
��< =
}
�� 
;
�� 
return
�� 
response
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� )
<
��) **
GenerateHotelUserPasswordDto
��* F
>
��F G
>
��G H"
GenerateUserPassword
��I ]
(
��] ^
string
��^ d

roomNumber
��e o
)
��o p
{
�� 	
ServiceResponse
�� 
<
�� *
GenerateHotelUserPasswordDto
�� 8
>
��8 9
response
��: B
=
��C D
new
��E H
(
��H I
)
��I J
;
��J K
	HotelUser
�� 
user
�� 
=
�� 
await
�� "
_userManager
��# /
.
��/ 0
Users
��0 5
.
��5 6
Include
��6 =
(
��= >
r
��> ?
=>
��@ B
r
��C D
.
��D E
Room
��E I
)
��I J
.
��J K!
FirstOrDefaultAsync
��K ^
(
��^ _
x
��_ `
=>
��a c
x
��d e
.
��e f
Room
��f j
.
��j k

RoomNumber
��k u
==
��v x

roomNumber��y �
)��� �
;��� �
if
�� 
(
�� 
user
�� 
is
�� 
null
�� 
)
�� 
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
UserNotFound
��: F
)
��F G
;
��G H
return
�� 
response
�� 
;
��  
}
�� 
IList
�� 
<
�� 
string
�� 
>
�� 
	userRoles
�� #
=
��$ %
await
��& +
_userManager
��, 8
.
��8 9
GetRolesAsync
��9 F
(
��F G
user
��G K
)
��K L
;
��L M
if
�� 
(
�� 
	userRoles
�� 
.
�� 
Any
�� 
(
�� 
x
�� 
=>
��  "
x
��# $
!=
��% '
Roles
��( -
.
��- .
Guest
��. 3
)
��3 4
)
��4 5
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :%
ForbiddenEditPermission
��: Q
)
��Q R
;
��R S
return
�� 
response
�� 
;
��  
}
�� 
string
�� 
generatedPassword
�� $
=
��% &
PasswordGenerator
��' 8
.
��8 9
GeneratePassword
��9 I
(
��I J
)
��J K
;
��K L
string
��  
passwordResetToken
�� %
=
��& '
await
��( -
_userManager
��. :
.
��: ;-
GeneratePasswordResetTokenAsync
��; Z
(
��Z [
user
��[ _
)
��_ `
;
��` a
IdentityResult
�� 
result
�� !
=
��" #
await
��$ )
_userManager
��* 6
.
��6 7 
ResetPasswordAsync
��7 I
(
��I J
user
��J N
,
��N O 
passwordResetToken
��P b
,
��b c
generatedPassword
��d u
)
��u v
;
��v w
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
response
�� 
.
�� 
Errors
�� 
=
��  !
result
��" (
.
��( )
Errors
��) /
.
��/ 0
Select
��0 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
.
��= >
Description
��> I
)
��I J
.
��J K
ToList
��K Q
(
��Q R
)
��R S
;
��S T
return
�� 
response
�� 
;
��  
}
�� *
GenerateHotelUserPasswordDto
�� (#
generatedPasswordUser
��) >
=
��? @
_mapper
��A H
.
��H I
Map
��I L
<
��L M*
GenerateHotelUserPasswordDto
��M i
>
��i j
(
��j k
user
��k o
)
��o p
;
��p q#
generatedPasswordUser
�� !
.
��! "
Password
��" *
=
��+ ,
generatedPassword
��- >
;
��> ?
response
�� 
.
�� 
IsValid
�� 
=
�� 
true
�� #
;
��# $
response
�� 
.
�� 
Data
�� 
=
�� #
generatedPasswordUser
�� 1
;
��1 2
return
�� 
response
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� )
<
��) *
bool
��* .
>
��. /
>
��/ 0"
ResetGuestsPasswords
��1 E
(
��E F
string
��F L
password
��M U
)
��U V
{
�� 	
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
response
��" *
=
��+ ,
new
��- 0
(
��0 1
)
��1 2
;
��2 3
List
�� 
<
�� 
string
�� 
>
�� 
failedUserChanges
�� *
=
��+ ,
new
��- 0
(
��0 1
)
��1 2
;
��2 3
List
�� 
<
�� 
	HotelUser
�� 
>
�� 
users
�� !
=
��" #
await
��$ )
_userRepository
��* 9
.
��9 :!
GetHotelUsersByRole
��: M
(
��M N
Roles
��N S
.
��S T
Guest
��T Y
)
��Y Z
;
��Z [
foreach
�� 
(
�� 
var
�� 
user
�� 
in
��  
users
��! &
)
��& '
{
�� 
string
��  
passwordResetToken
�� )
=
��* +
await
��, 1
_userManager
��2 >
.
��> ?-
GeneratePasswordResetTokenAsync
��? ^
(
��^ _
user
��_ c
)
��c d
;
��d e
IdentityResult
�� 
result
�� %
=
��& '
await
��( -
_userManager
��. :
.
��: ; 
ResetPasswordAsync
��; M
(
��M N
user
��N R
,
��R S 
passwordResetToken
��T f
,
��f g
password
��h p
)
��p q
;
��q r
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� %
)
��% &
{
�� 
failedUserChanges
�� %
.
��% &
Add
��& )
(
��) *
user
��* .
.
��. /
Room
��/ 3
.
��3 4

RoomNumber
��4 >
)
��> ?
;
��? @
}
�� 
}
�� 
if
�� 
(
�� 
failedUserChanges
�� !
.
��! "
Count
��" '
>
��( )
$num
��* +
)
��+ ,
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
AddRange
��  (
(
��( )
failedUserChanges
��) :
)
��: ;
;
��; <
}
�� 
response
�� 
.
�� 
IsValid
�� 
=
�� 
true
�� #
;
��# $
return
�� 
response
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� )
<
��) *
bool
��* .
>
��. /
>
��/ 0
DeleteHotelUser
��1 @
(
��@ A
string
��A G

roomNumber
��H R
)
��R S
{
�� 	
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
response
��" *
=
��+ ,
new
��- 0
(
��0 1
)
��1 2
;
��2 3
	HotelUser
�� 
user
�� 
=
�� 
_userManager
�� )
.
��) *
Users
��* /
.
��/ 0
FirstOrDefault
��0 >
(
��> ?
x
��? @
=>
��A C
x
��D E
.
��E F
Room
��F J
.
��J K

RoomNumber
��K U
==
��V X

roomNumber
��Y c
)
��c d
;
��d e
if
�� 
(
�� 
user
�� 
is
�� 
null
�� 
)
�� 
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
UserNotFound
��: F
)
��F G
;
��G H
return
�� 
response
�� 
;
��  
}
�� 
if
�� 
(
�� 
await
�� 
IsLastAdmin
�� !
(
��! "
user
��" &
)
��& '
)
��' (
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $#
HotelUserServiceError
��$ 9
.
��9 :
	LastAdmin
��: C
)
��C D
;
��D E
return
�� 
response
�� 
;
��  
}
�� 
IdentityResult
�� 
result
�� !
=
��" #
await
��$ )
_userManager
��* 6
.
��6 7
DeleteAsync
��7 B
(
��B C
user
��C G
)
��G H
;
��H I
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
response
�� 
.
�� 
Errors
�� 
=
��  !
result
��" (
.
��( )
Errors
��) /
.
��/ 0
Select
��0 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
.
��= >
Description
��> I
)
��I J
.
��J K
ToList
��K Q
(
��Q R
)
��R S
;
��S T
return
�� 
response
�� 
;
��  
}
�� 
response
�� 
.
�� 
IsValid
�� 
=
�� 
true
�� #
;
��# $
response
�� 
.
�� 
Data
�� 
=
�� 
true
��  
;
��  !
return
�� 
response
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  

UserExists
��! +
(
��+ ,
string
��, 2

roomNumber
��3 =
)
��= >
{
�� 	
return
�� 
await
�� 
_userManager
�� %
.
��% &
Users
��& +
.
��+ ,
AnyAsync
��, 4
(
��4 5
x
��5 6
=>
��7 9
x
��: ;
.
��; <
Room
��< @
.
��@ A

RoomNumber
��A K
==
��L N

roomNumber
��O Y
.
��Y Z
ToUpper
��Z a
(
��a b
)
��b c
)
��c d
;
��d e
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� *
<
��* +
bool
��+ /
>
��/ 0
>
��0 1
EditUserRoles
��2 ?
(
��? @
	HotelUser
��@ I
user
��J N
,
��N O
List
��P T
<
��T U
string
��U [
>
��[ \
selectedRoles
��] j
)
��j k
{
�� 	
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
response
��" *
=
��+ ,
new
��- 0
(
��0 1
)
��1 2
;
��2 3
IList
�� 
<
�� 
string
�� 
>
�� 
	userRoles
�� #
=
��$ %
await
��& +
_userManager
��, 8
.
��8 9
GetRolesAsync
��9 F
(
��F G
user
��G K
)
��K L
;
��L M
IdentityResult
�� 
result
�� !
=
��" #
await
��$ )
_userManager
��* 6
.
��6 7
AddToRolesAsync
��7 F
(
��F G
user
��G K
,
��K L
selectedRoles
��M Z
.
��Z [
Except
��[ a
(
��a b
	userRoles
��b k
)
��k l
)
��l m
;
��m n
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $
$str
��$ <
)
��< =
;
��= >
return
�� 
response
�� 
;
��  
}
�� 
result
�� 
=
�� 
await
�� 
_userManager
�� '
.
��' ("
RemoveFromRolesAsync
��( <
(
��< =
user
��= A
,
��A B
	userRoles
��C L
.
��L M
Except
��M S
(
��S T
selectedRoles
��T a
)
��a b
)
��b c
;
��c d
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� !
)
��! "
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $
$str
��$ <
)
��< =
;
��= >
}
�� 
response
�� 
.
�� 
IsValid
�� 
=
�� 
true
�� #
;
��# $
response
�� 
.
�� 
Data
�� 
=
�� 
true
��  
;
��  !
return
�� 
response
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  
IsTheRoomUpdated
��! 1
(
��1 2 
CreateHotelUserDto
��2 D
editUser
��E M
)
��M N
{
�� 	
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
IsTheRoomUpdated
��" 2
=
��3 4
await
��5 :
_roomService
��; G
.
��G H

UpdateRoom
��H R
(
��R S
editUser
��S [
)
��[ \
;
��\ ]
if
�� 
(
�� 
!
�� 
IsTheRoomUpdated
�� !
.
��! "
IsValid
��" )
)
��) *
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  
IsLastAdmin
��! ,
(
��, -
	HotelUser
��- 6
user
��7 ;
)
��; <
{
�� 	
IList
�� 
<
�� 
string
�� 
>
�� 
roles
�� 
=
��  !
await
��" '
_userManager
��( 4
.
��4 5
GetRolesAsync
��5 B
(
��B C
user
��C G
)
��G H
;
��H I
if
�� 
(
�� 
!
�� 
roles
�� 
.
�� 
Contains
�� 
(
��  
Roles
��  %
.
��% &
Admin
��& +
)
��+ ,
)
��, -
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
IList
�� 
<
�� 
	HotelUser
�� 
>
�� 

adminUsers
�� '
=
��( )
await
��* /
_userManager
��0 <
.
��< =!
GetUsersInRoleAsync
��= P
(
��P Q
Roles
��Q V
.
��V W
Admin
��W \
)
��\ ]
;
��] ^
if
�� 
(
�� 

adminUsers
�� 
.
�� 
Count
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
dC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\RoomRequestService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
{ 
public 

class 
RoomRequestService #
:$ %
IRoomRequestService& 9
{ 
private 
readonly  
IHotelUserRepository - 
_hotelUserRepository. B
;B C
private 
readonly "
IRoomRequestRepository /"
_roomRequestRepository0 F
;F G
private 
readonly 
IMapper  
_mapper! (
;( )
public 
RoomRequestService !
(! " 
IHotelUserRepository" 6
hotelUserRepository7 J
,J K"
IRoomRequestRepositoryL b!
roomRequestRepositoryc x
,x y
IMapper	z �
mapper
� �
)
� �
{ 	 
_hotelUserRepository  
=! "
hotelUserRepository# 6
;6 7"
_roomRequestRepository "
=# $!
roomRequestRepository% :
;: ;
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
ServiceResponse )
<) *
bool* .
>. /
>/ 0
CreateRoomRequest1 B
(B C 
CreateRoomRequestDtoC W 
createRoomRequestDtoX l
,l m
stringn t
userRoomNumber	u �
)
� �
{ 	
ServiceResponse 
< 
bool  
>  !
response" *
=+ ,
new- 0
(0 1
)1 2
;2 3
	HotelUser 
user 
= 
await " 
_hotelUserRepository# 7
.7 8,
 GetHotelUserWithRoomByRoomNumber8 X
(X Y
userRoomNumberY g
)g h
;h i
if!! 
(!! 
user!! 
is!! 
null!! 
)!! 
{"" 
response## 
.## 
Errors## 
.##  
Add##  #
(### $#
RoomRequestServiceError##$ ;
.##; <
UserNotFound##< H
)##H I
;##I J
return$$ 
response$$ 
;$$  
}%% 
RoomRequest'' 
request'' 
=''  !
_mapper''" )
.'') *
Map''* -
<''- .
RoomRequest''. 9
>''9 :
('': ; 
createRoomRequestDto''; O
)''O P
;''P Q
request)) 
.)) 
RequestStatus)) !
=))" #
RoomRequestStatus))$ 5
.))5 6
New))6 9
;))9 :
request** 
.** 
Room** 
=** 
user** 
.**  
Room**  $
;**$ %
await,, "
_roomRequestRepository,, (
.,,( )
AddRoomRequest,,) 7
(,,7 8
request,,8 ?
),,? @
;,,@ A
if.. 
(.. 
!.. 
await.. "
_roomRequestRepository.. -
...- .
SaveAllAsync... :
(..: ;
)..; <
)..< =
{// 
response00 
.00 
Errors00 
.00  
Add00  #
(00# $#
RoomRequestServiceError00$ ;
.00; <
UnableToSaveRequest00< O
)00O P
;00P Q
return11 
response11 
;11  
}22 
response44 
.44 
IsValid44 
=44 
true44 #
;44# $
return55 
response55 
;55 
}66 	
public88 
async88 
Task88 
<88 
ServiceResponse88 )
<88) *
List88* .
<88. /
BaseRoomRequestDto88/ A
>88A B
>88B C
>88C D 
GetTodayRoomRequests88E Y
(88Y Z
)88Z [
{99 	
return:: 
new:: 
ServiceResponse:: &
<::& '
List::' +
<::+ ,
BaseRoomRequestDto::, >
>::> ?
>::? @
(::@ A
)::A B
{;; 
Data<< 
=<< 
await<< "
_roomRequestRepository<< 3
.<<3 4#
GetTodayRoomRequestsDto<<4 K
(<<K L
)<<L M
,<<M N
IsValid== 
=== 
true== 
}>> 
;>> 
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
ServiceResponseAA )
<AA) *
ListAA* .
<AA. /
BaseRoomRequestDtoAA/ A
>AAA B
>AAB C
>AAC D
GetMyRoomRequestsAAE V
(AAV W
stringAAW ]
userRoomNumberAA^ l
)AAl m
{BB 	
ServiceResponseCC 
<CC 
ListCC  
<CC  !
BaseRoomRequestDtoCC! 3
>CC3 4
>CC4 5
responseCC6 >
=CC? @
newCCA D
(CCD E
)CCE F
;CCF G
	HotelUserDD 
userDD 
=DD 
awaitDD " 
_hotelUserRepositoryDD# 7
.DD7 8,
 GetHotelUserWithRoomByRoomNumberDD8 X
(DDX Y
userRoomNumberDDY g
)DDg h
;DDh i
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
(HH# $#
RoomRequestServiceErrorHH$ ;
.HH; <
UserNotFoundHH< H
)HHH I
;HHI J
returnII 
responseII 
;II  
}JJ 
responseLL 
.LL 
IsValidLL 
=LL 
trueLL #
;LL# $
responseMM 
.MM 
DataMM 
=MM 
awaitMM !"
_roomRequestRepositoryMM" 8
.MM8 9/
#GetGuestRoomRequestsDtoByRoomNumberMM9 \
(MM\ ]
userMM] a
.MMa b
RoomMMb f
.MMf g

RoomNumberMMg q
)MMq r
;MMr s
returnNN 
responseNN 
;NN 
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
ServiceResponseQQ )
<QQ) *
ListQQ* .
<QQ. /
BaseRoomRequestDtoQQ/ A
>QQA B
>QQB C
>QQC D!
GetMyAssignedRequestsQQE Z
(QQZ [
stringQQ[ a
userRoomNumberQQb p
)QQp q
{RR 	
ServiceResponseSS 
<SS 
ListSS  
<SS  !
BaseRoomRequestDtoSS! 3
>SS3 4
>SS4 5
responseSS6 >
=SS? @
newSSA D
(SSD E
)SSE F
;SSF G
	HotelUserTT 
userTT 
=TT 
awaitTT " 
_hotelUserRepositoryTT# 7
.TT7 8,
 GetHotelUserWithRoomByRoomNumberTT8 X
(TTX Y
userRoomNumberTTY g
)TTg h
;TTh i
ifVV 
(VV 
userVV 
isVV 
nullVV 
)VV 
{WW 
responseXX 
.XX 
ErrorsXX 
.XX  
AddXX  #
(XX# $#
RoomRequestServiceErrorXX$ ;
.XX; <
UserNotFoundXX< H
)XXH I
;XXI J
returnYY 
responseYY 
;YY  
}ZZ 
response\\ 
.\\ 
IsValid\\ 
=\\ 
true\\ #
;\\# $
response]] 
.]] 
Data]] 
=]] 
await]] !"
_roomRequestRepository]]" 8
.]]8 9%
GetRoomRequestsByAssigned]]9 R
(]]R S
user]]S W
)]]W X
;]]X Y
return^^ 
response^^ 
;^^ 
}__ 	
publicaa 
asyncaa 
Taskaa 
<aa 
ServiceResponseaa )
<aa) *
RoomRequestDtoaa* 8
>aa8 9
>aa9 :
GetRoomRequestaa; I
(aaI J
intaaJ M
roomRequestIdaaN [
,aa[ \
stringaa] c
userRoomNumberaad r
,aar s
Listaat x
<aax y
stringaay 
>	aa �
	userRoles
aa� �
)
aa� �
{bb 	
ServiceResponsecc 
<cc 
RoomRequestDtocc *
>cc* +
responsecc, 4
=cc5 6
newcc7 :
(cc: ;
)cc; <
;cc< =
RoomRequestee 
roomRequestee #
=ee$ %
awaitee& +"
_roomRequestRepositoryee, B
.eeB C
GetRoomRequestByIdeeC U
(eeU V
roomRequestIdeeV c
)eec d
;eed e
ifgg 
(gg 
roomRequestgg 
isgg 
nullgg #
)gg# $
{hh 
responseii 
.ii 
Errorsii 
.ii  
Addii  #
(ii# $#
RoomRequestServiceErrorii$ ;
.ii; <
RoomRequestNotFoundii< O
)iiO P
;iiP Q
returnjj 
responsejj 
;jj  
}kk 
	HotelUsermm 
usermm 
=mm 
awaitmm " 
_hotelUserRepositorymm# 7
.mm7 8,
 GetHotelUserWithRoomByRoomNumbermm8 X
(mmX Y
userRoomNumbermmY g
)mmg h
;mmh i
ifoo 
(oo 
useroo 
isoo 
nulloo 
)oo 
{pp 
responseqq 
.qq 
Errorsqq 
.qq  
Addqq  #
(qq# $#
RoomRequestServiceErrorqq$ ;
.qq; <
UserNotFoundqq< H
)qqH I
;qqI J
returnrr 
responserr 
;rr  
}ss 
ifuu 
(uu 
roomRequestuu 
.uu 
Roomuu  
.uu  !

RoomNumberuu! +
!=uu, .
useruu/ 3
.uu3 4
Roomuu4 8
.uu8 9

RoomNumberuu9 C
&&uuD F
!uuG H

IsEmployeeuuH R
(uuR S
	userRolesuuS \
)uu\ ]
)uu] ^
{vv 
responseww 
.ww 
Errorsww 
.ww  
Addww  #
(ww# $#
RoomRequestServiceErrorww$ ;
.ww; <
RoomRequestNotFoundww< O
)wwO P
;wwP Q
returnxx 
responsexx 
;xx  
}yy 
response{{ 
.{{ 
IsValid{{ 
={{ 
true{{ #
;{{# $
response|| 
.|| 
Data|| 
=|| 
_mapper|| #
.||# $
Map||$ '
<||' (
RoomRequestDto||( 6
>||6 7
(||7 8
roomRequest||8 C
)||C D
;||D E
return}} 
response}} 
;}} 
}~~ 	
public
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� )
<
��) *
bool
��* .
>
��. /
>
��/ 0
StartRoomRequest
��1 A
(
��A B
int
��B E
roomRequestId
��F S
,
��S T
string
��U [
userRoomNumber
��\ j
,
��j k
List
��l p
<
��p q
string
��q w
>
��w x
	userRoles��y �
)��� �
{
�� 	
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
response
��" *
=
��+ ,
new
��- 0
(
��0 1
)
��1 2
;
��2 3
RoomRequest
�� 
roomRequest
�� #
=
��$ %
await
��& +$
_roomRequestRepository
��, B
.
��B C 
GetRoomRequestById
��C U
(
��U V
roomRequestId
��V c
)
��c d
;
��d e
if
�� 
(
�� 
roomRequest
�� 
is
�� 
null
�� #
)
��# $
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <!
RoomRequestNotFound
��< O
)
��O P
;
��P Q
return
�� 
response
�� 
;
��  
}
�� 
	HotelUser
�� 
user
�� 
=
�� 
await
�� ""
_hotelUserRepository
��# 7
.
��7 8.
 GetHotelUserWithRoomByRoomNumber
��8 X
(
��X Y
userRoomNumber
��Y g
)
��g h
;
��h i
if
�� 
(
�� 
user
�� 
is
�� 
null
�� 
)
�� 
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <
UserNotFound
��< H
)
��H I
;
��I J
return
�� 
response
�� 
;
��  
}
�� 
if
�� 
(
�� 
!
�� 
IsCorrectRole
�� 
(
�� 
	userRoles
�� (
,
��( )
roomRequest
��* 5
.
��5 6

Department
��6 @
)
��@ A
)
��A B
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <-
StartDifferentDepartmentRequest
��< [
)
��[ \
;
��\ ]
return
�� 
response
�� 
;
��  
}
�� 
if
�� 
(
�� 
roomRequest
�� 
.
�� 
RequestStatus
�� )
!=
��* ,
RoomRequestStatus
��- >
.
��> ?
Paused
��? E
&&
��F H
roomRequest
��I T
.
��T U
RequestStatus
��U b
!=
��c e
RoomRequestStatus
��f w
.
��w x
New
��x {
)
��{ |
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <
UnableToInitiate
��< L
)
��L M
;
��M N
return
�� 
response
�� 
;
��  
}
�� 
roomRequest
�� 
.
�� 

AssignedTo
�� "
=
��# $
user
��% )
;
��) *
roomRequest
�� 
.
�� 
RequestStatus
�� %
=
��& '
RoomRequestStatus
��( 9
.
��9 :

InProgress
��: D
;
��D E
roomRequest
�� 
.
�� 
	DateStart
�� !
=
��" #
DateTime
��$ ,
.
��, -
Now
��- 0
;
��0 1$
_roomRequestRepository
�� "
.
��" #
Update
��# )
(
��) *
roomRequest
��* 5
)
��5 6
;
��6 7
if
�� 
(
�� 
!
�� 
await
�� $
_roomRequestRepository
�� -
.
��- .
SaveAllAsync
��. :
(
��: ;
)
��; <
)
��< =
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <
UnableToInitiate
��< L
)
��L M
;
��M N
return
�� 
response
�� 
;
��  
}
�� 
response
�� 
.
�� 
IsValid
�� 
=
�� 
response
�� '
.
��' (
Data
��( ,
=
��- .
true
��/ 3
;
��3 4
return
�� 
response
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� )
<
��) *
bool
��* .
>
��. /
>
��/ 0
EndRoomRequest
��1 ?
(
��? @
int
��@ C
roomRequestId
��D Q
,
��Q R
string
��S Y
userRoomNumber
��Z h
,
��h i
List
��j n
<
��n o
string
��o u
>
��u v
	userRoles��w �
)��� �
{
�� 	
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
response
��" *
=
��+ ,
new
��- 0
(
��0 1
)
��1 2
;
��2 3
RoomRequest
�� 
roomRequest
�� #
=
��$ %
await
��& +$
_roomRequestRepository
��, B
.
��B C 
GetRoomRequestById
��C U
(
��U V
roomRequestId
��V c
)
��c d
;
��d e
if
�� 
(
�� 
roomRequest
�� 
is
�� 
null
�� #
)
��# $
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <!
RoomRequestNotFound
��< O
)
��O P
;
��P Q
return
�� 
response
�� 
;
��  
}
�� 
	HotelUser
�� 
user
�� 
=
�� 
await
�� ""
_hotelUserRepository
��# 7
.
��7 8.
 GetHotelUserWithRoomByRoomNumber
��8 X
(
��X Y
userRoomNumber
��Y g
)
��g h
;
��h i
if
�� 
(
�� 
user
�� 
is
�� 
null
�� 
)
�� 
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <
UserNotFound
��< H
)
��H I
;
��I J
return
�� 
response
�� 
;
��  
}
�� 
if
�� 
(
�� 
user
�� 
.
�� 
Id
�� 
!=
�� 
roomRequest
�� &
.
��& '

AssignedTo
��' 1
.
��1 2
Id
��2 4
&&
��5 7
!
��8 9
	userRoles
��9 B
.
��B C
Contains
��C K
(
��K L
Roles
��L Q
.
��Q R
Admin
��R W
)
��W X
)
��X Y
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <+
EndDifferentDepartmentRequest
��< Y
)
��Y Z
;
��Z [
return
�� 
response
�� 
;
��  
}
�� 
if
�� 
(
�� 
roomRequest
�� 
.
�� 
RequestStatus
�� )
!=
��* ,
RoomRequestStatus
��- >
.
��> ?

InProgress
��? I
)
��I J
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <
UnableToEnd
��< G
)
��G H
;
��H I
return
�� 
response
�� 
;
��  
}
�� 
roomRequest
�� 
.
�� 
RequestStatus
�� %
=
��& '
RoomRequestStatus
��( 9
.
��9 :
Ended
��: ?
;
��? @
roomRequest
�� 
.
�� 
DateEnd
�� 
=
��  !
DateTime
��" *
.
��* +
Now
��+ .
;
��. /
roomRequest
�� 
.
�� 
Duration
��  
=
��! "
roomRequest
��# .
.
��. /
DateEnd
��/ 6
-
��7 8
roomRequest
��9 D
.
��D E
	DateStart
��E N
;
��N O$
_roomRequestRepository
�� "
.
��" #
Update
��# )
(
��) *
roomRequest
��* 5
)
��5 6
;
��6 7
if
�� 
(
�� 
!
�� 
await
�� $
_roomRequestRepository
�� -
.
��- .
SaveAllAsync
��. :
(
��: ;
)
��; <
)
��< =
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <
UnableToEnd
��< G
)
��G H
;
��H I
return
�� 
response
�� 
;
��  
}
�� 
response
�� 
.
�� 
IsValid
�� 
=
�� 
response
�� '
.
��' (
Data
��( ,
=
��- .
true
��/ 3
;
��3 4
return
�� 
response
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� )
<
��) *
TimeSpan
��* 2
>
��2 3
>
��3 4-
AverageTimeAssignedRoomRequests
��5 T
(
��T U
string
��U [
userRoomNumber
��\ j
)
��j k
{
�� 	
ServiceResponse
�� 
<
�� 
TimeSpan
�� $
>
��$ %
response
��& .
=
��/ 0
new
��1 4
(
��4 5
)
��5 6
;
��6 7
	HotelUser
�� 
user
�� 
=
�� 
await
�� ""
_hotelUserRepository
��# 7
.
��7 8.
 GetHotelUserWithRoomByRoomNumber
��8 X
(
��X Y
userRoomNumber
��Y g
)
��g h
;
��h i
if
�� 
(
�� 
user
�� 
is
�� 
null
�� 
)
�� 
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <
UserNotFound
��< H
)
��H I
;
��I J
return
�� 
response
�� 
;
��  
}
�� 
List
�� 
<
�� 
TimeSpan
�� 
>
�� 
	durations
�� $
=
��% &
await
��' ,$
_roomRequestRepository
��- C
.
��C D%
GetRoomRequestsDuration
��D [
(
��[ \
user
��\ `
)
��` a
;
��a b
response
�� 
.
�� 
IsValid
�� 
=
�� 
true
�� #
;
��# $
response
�� 
.
�� 
Data
�� 
=
�� 
	durations
�� %
.
��% &
Mean
��& *
(
��* +
)
��+ ,
;
��, -
return
�� 
response
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
ServiceResponse
�� )
<
��) *
bool
��* .
>
��. /
>
��/ 0#
SafeDeleteRoomRequest
��1 F
(
��F G
int
��G J
roomRequestId
��K X
,
��X Y
string
��Z `
userRoomNumber
��a o
,
��o p
List
��q u
<
��u v
string
��v |
>
��| }
	userRoles��~ �
)��� �
{
�� 	
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
response
��" *
=
��+ ,
new
��- 0
(
��0 1
)
��1 2
;
��2 3
RoomRequest
�� 
roomRequest
�� #
=
��$ %
await
��& +$
_roomRequestRepository
��, B
.
��B C 
GetRoomRequestById
��C U
(
��U V
roomRequestId
��V c
)
��c d
;
��d e
if
�� 
(
�� 
roomRequest
�� 
is
�� 
null
�� #
)
��# $
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <!
RoomRequestNotFound
��< O
)
��O P
;
��P Q
return
�� 
response
�� 
;
��  
}
�� 
	HotelUser
�� 
user
�� 
=
�� 
await
�� ""
_hotelUserRepository
��# 7
.
��7 8.
 GetHotelUserWithRoomByRoomNumber
��8 X
(
��X Y
userRoomNumber
��Y g
)
��g h
;
��h i
if
�� 
(
�� 
user
�� 
is
�� 
null
�� 
)
�� 
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <
UserNotFound
��< H
)
��H I
;
��I J
return
�� 
response
�� 
;
��  
}
�� 
if
�� 
(
�� 
roomRequest
�� 
.
�� 
Room
��  
.
��  !

RoomNumber
��! +
!=
��, .
user
��/ 3
.
��3 4
Room
��4 8
.
��8 9

RoomNumber
��9 C
&&
��D F
!
��G H

IsEmployee
��H R
(
��R S
	userRoles
��S \
)
��\ ]
)
��] ^
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <#
UnableToDeleteRequest
��< Q
)
��Q R
;
��R S
return
�� 
response
�� 
;
��  
}
�� 
if
�� 
(
�� 
roomRequest
�� 
.
�� 
RequestStatus
�� )
!=
��* ,
RoomRequestStatus
��- >
.
��> ?
New
��? B
&&
��C E
!
��F G
IsAdmin
��G N
(
��N O
	userRoles
��O X
)
��X Y
)
��Y Z
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <)
UnableToDeleteRequestStatus
��< W
+
��X Y
roomRequest
��Z e
.
��e f
RequestStatus
��f s
.
��s t
ToString
��t |
(
��| }
)
��} ~
)
��~ 
;�� �
return
�� 
response
�� 
;
��  
}
�� 
roomRequest
�� 
.
�� 
RequestStatus
�� %
=
��& '
RoomRequestStatus
��( 9
.
��9 :
Deleted
��: A
;
��A B$
_roomRequestRepository
�� "
.
��" #
Update
��# )
(
��) *
roomRequest
��* 5
)
��5 6
;
��6 7
if
�� 
(
�� 
!
�� 
await
�� $
_roomRequestRepository
�� -
.
��- .
SaveAllAsync
��. :
(
��: ;
)
��; <
)
��< =
{
�� 
response
�� 
.
�� 
Errors
�� 
.
��  
Add
��  #
(
��# $%
RoomRequestServiceError
��$ ;
.
��; <#
UnableToDeleteRequest
��< Q
)
��Q R
;
��R S
return
�� 
response
�� 
;
��  
}
�� 
response
�� 
.
�� 
IsValid
�� 
=
�� 
response
�� '
.
��' (
Data
��( ,
=
��- .
true
��/ 3
;
��3 4
return
�� 
response
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
IsCorrectRole
�� )
(
��) *
List
��* .
<
��. /
string
��/ 5
>
��5 6
	userRoles
��7 @
,
��@ A
string
��B H

department
��I S
)
��S T
{
�� 	
if
�� 
(
�� 
	userRoles
�� 
.
�� 
Contains
�� "
(
��" #

department
��# -
)
��- .
||
��/ 1
	userRoles
��2 ;
.
��; <
Contains
��< D
(
��D E
Roles
��E J
.
��J K
Admin
��K P
)
��P Q
)
��Q R
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 

IsEmployee
�� &
(
��& '
List
��' +
<
��+ ,
string
��, 2
>
��2 3
	userRoles
��4 =
)
��= >
{
�� 	
return
�� 
	userRoles
�� 
.
�� 
Any
��  
(
��  !
role
��! %
=>
��& (
Roles
��) .
.
��. /
Employee
��/ 7
.
��7 8
Contains
��8 @
(
��@ A
role
��A E
)
��E F
)
��F G
;
��G H
}
�� 	
private
�� 
static
�� 
bool
�� 
IsAdmin
�� #
(
��# $
List
��$ (
<
��( )
string
��) /
>
��/ 0
	userRoles
��1 :
)
��: ;
{
�� 	
return
�� 
	userRoles
�� 
.
�� 
FirstOrDefault
�� +
(
��+ ,
r
��, -
=>
��. 0
r
��1 2
.
��2 3
Contains
��3 ;
(
��; <
Roles
��< A
.
��A B
Admin
��B G
)
��G H
)
��H I
!=
��J L
null
��M Q
;
��Q R
}
�� 	
}
�� 
}�� �+
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
}JJ � 
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
}11 �
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