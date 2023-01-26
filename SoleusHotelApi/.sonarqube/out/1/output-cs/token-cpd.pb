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
} �
�C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Constants\SwaggerDescriptions\AdminControllerDescriptions.cs
	namespace 	
SoleusHotelApi
 
. 
	Constants "
." #
SwaggerDescriptions# 6
{ 
public 

static 
class '
AdminControllerDescriptions 3
{ 
public 
const 
string 
CreateUser200Ok +
=, -
$str. c
;c d
public 
const 
string !
CreateUser409Conflict 1
=2 3
$str4 M
;M N
public 
const 
string 
GetHotelUsers200Ok .
=/ 0
$str1 L
;L M
public 
const 
string 
GetHotelUser200Ok -
=. /
$str0 T
;T U
public		 
const		 
string		 %
UserNotFound400BadRequest		 5
=		6 7
$str		8 H
;		H I
public

 
const

 
string

 
EditHotelUser200Ok

 .
=

/ 0
$str

1 p
;

p q
public 
const 
string +
ResetGuestPasswords204NoContent ;
=< =
$str> o
;o p
public 
const 
string "
DeleteUser204NoContent 2
=3 4
$str5 c
;c d
public 
const 
string "
DeleteUser409NoContent 2
=3 4
$str5 d
;d e
public 
const 
string 
InitialSetup200Ok -
=. /
$str0 a
;a b
public 
const 
string #
InitialSetup409Conflict 3
=4 5
$str6 ^
;^ _
} 
} �
�C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Constants\SwaggerDescriptions\HotelUserControllerDescriptions.cs
	namespace 	
SoleusHotelApi
 
. 
	Constants "
." #
SwaggerDescriptions# 6
{ 
public 

static 
class +
HotelUserControllerDescriptions 7
{ 
public 
const 
string 

Login200Ok &
=' (
$str) X
;X Y
public 
const 
string 
Login400BadRequest .
=/ 0
$str1 `
;` a
public 
const 
string 0
$GetHotelUsersWithRequestsNumber200Ok @
=A B
$strC ]
;] ^
public 
const 
string 
GetHotel200Ok )
=* +
$str, H
;H I
public		 
const		 
string		 
EditGuest200Ok		 *
=		+ ,
$str		- F
;		F G
public

 
const

 
string

 !
EditGuest403Forbidden

 1
=

2 3
$str

4 U
;

U V
public 
const 
string %
UserNotFound400BadRequest 5
=6 7
$str8 H
;H I
public 
const 
string 
ForgotPassword200Ok /
=0 1
$str2 g
;g h
public 
const 
string '
ForgotPassword400BadRequest 7
=8 9
$str: `
;` a
public 
const 
string '
ForgotPassword403Fordbidden 7
=8 9
$str: q
;q r
public 
const 
string %
GenerateUserPassword200Ok 5
=6 7
$str8 q
;q r
public 
const 
string ,
 GenerateUserPassword403Forbidden <
== >
$str? b
;b c
} 
} �
�C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Constants\SwaggerDescriptions\RoomRequestControllerDescriptions.cs
	namespace 	
SoleusHotelApi
 
. 
	Constants "
." #
SwaggerDescriptions# 6
{ 
public 

static 
class -
!RoomRequestControllerDescriptions 9
{ 
public 
const 
string %
UserNotFound400BadRequest 5
=6 7
$str8 H
;H I
public 
const 
string 2
&UserOrRoomRequestNotFound404BadRequest B
=C D
$strE e
;e f
public 
const 
string '
GetFilteredRoomRequest200Ok 7
=8 9
$str: x
;x y
public 
const 
string "
GetMyRoomRequests200Ok 2
=3 4
$str5 d
;d e
public		 
const		 
string		 (
GetAssignedRoomRequests200Ok		 8
=		9 :
$str		; k
;		k l
public

 
const

 
string

 
GetRoomRequest200Ok

 /
=

0 1
$str

2 T
;

T U
public 
const 
string &
GetRoomRequest403Forbidden 6
=7 8
$str9 y
;y z
public 
const 
string 1
%EndedRoomRequestsAverageDuration200Ok A
=B C
$str	D �
;
� �
public 
const 
string (
StartRoomRequest204NoContent 8
=9 :
$str; s
;s t
public 
const 
string (
StartRoomRequest403Forbidden 8
=9 :
$str; x
;x y
public 
const 
string '
StartRoomRequest409Conflict 7
=8 9
$str: j
;j k
public 
const 
string &
EndRoomRequest204NoContent 6
=7 8
$str9 j
;j k
public 
const 
string &
EndRoomRequest403Forbidden 6
=7 8
$str9 x
;x y
public 
const 
string %
EndRoomRequest409Conflict 5
=6 7
$str8 ]
;] ^
public 
const 
string )
DeleteRoomRequest204NoContent 9
=: ;
$str< h
;h i
public 
const 
string )
DeleteRoomRequest403Forbidden 9
=: ;
$str	< �
;
� �
public 
const 
string (
DeleteRoomRequest409Conflict 8
=9 :
$str; l
;l m
} 
} �p
dC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Controllers\AdminController.cs
	namespace 	
SoleusHotelApi
 
. 
Controllers $
{ 
[ 
	Authorize 
( 
Policy 
= 
$str $
)$ %
]% &
public 

class 
AdminController  
:! "
BaseApiController# 4
{ 
private 
readonly 
IHotelUserService *
_hotelUserService+ <
;< =
private 
readonly 
IAdminService &
_adminService' 4
;4 5
public 
AdminController 
( 
IHotelUserService 0
hotelUserService1 A
,A B
IAdminServiceC P
adminServiceQ ]
)] ^
{ 	
_hotelUserService 
= 
hotelUserService  0
;0 1
_adminService 
= 
adminService (
;( )
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
[ 	
SwaggerResponse	 
( 
StatusCodes $
.$ %
Status200OK% 0
,0 1'
AdminControllerDescriptions2 M
.M N
CreateUser200OkN ]
,] ^
typeof_ e
(e f
CreatedHotelUserDtof y
)y z
)z {
]{ |
[ 	
SwaggerResponse	 
( 
StatusCodes $
.$ %
Status409Conflict% 6
,6 7'
AdminControllerDescriptions8 S
.S T!
CreateUser409ConflictT i
)i j
]j k
public 
async 
Task 
< 
ActionResult &
<& '
CreatedHotelUserDto' :
>: ;
>; <

CreateUser= G
(G H
[H I
FromBodyI Q
]Q R
CreateHotelUserDtoS e
createHotelUserDtof x
)x y
{ 	
ServiceResponse 
< 
CreatedHotelUserDto /
>/ 0
serviceResponse1 @
=A B
awaitC H
_hotelUserServiceI Z
.Z [
CreateHotelUser[ j
(j k
createHotelUserDtok }
)} ~
;~ 
if!! 
(!! 
!!! 
serviceResponse!!  
.!!  !
IsValid!!! (
)!!( )
{"" 
return## 

StatusCode## !
(##! "
serviceResponse##" 1
.##1 2

StatusCode##2 <
,##< =
serviceResponse##> M
.##M N
Errors##N T
)##T U
;##U V
}$$ 
return&& 
Ok&& 
(&& 
serviceResponse&& %
.&&% &
Data&&& *
)&&* +
;&&+ ,
}'' 	
[)) 	
HttpGet))	 
()) 
$str)) 
))) 
])) 
[** 	
SwaggerResponse**	 
(** 
StatusCodes** $
.**$ %
Status200OK**% 0
,**0 1'
AdminControllerDescriptions**2 M
.**M N
GetHotelUsers200Ok**N `
,**` a
typeof**b h
(**h i
	PagedList**i r
<**r s"
HotelUserWithRolesDto	**s �
>
**� �
)
**� �
)
**� �
]
**� �
public++ 
async++ 
Task++ 
<++ 
ActionResult++ &
<++& '
	PagedList++' 0
<++0 1!
HotelUserWithRolesDto++1 F
>++F G
>++G H
>++H I
GetHotelUsers++J W
(++W X
[++X Y
	FromQuery++Y b
]++b c
HotelUserParams++d s
hotelUserParams1	++t �
)
++� �
{,, 	
ServiceResponse-- 
<-- 
	PagedList-- %
<--% &!
HotelUserWithRolesDto--& ;
>--; <
>--< =
serviceResponse--> M
=--N O
await--P U
_hotelUserService--V g
.--g h
GetHotelUsers--h u
(--u v
hotelUserParams1	--v �
)
--� �
;
--� �
if// 
(// 
!// 
serviceResponse//  
.//  !
IsValid//! (
)//( )
{00 
return11 

StatusCode11 !
(11! "
serviceResponse11" 1
.111 2

StatusCode112 <
,11< =
serviceResponse11> M
.11M N
Errors11N T
)11T U
;11U V
}22 
Response44 
.44 
AddPaginationHeader44 (
(44( )
serviceResponse44) 8
.448 9
Data449 =
.44= >
CurrentPage44> I
,44I J
serviceResponse44K Z
.44Z [
Data44[ _
.44_ `
PageSize44` h
,44h i
serviceResponse55 
.55  
Data55  $
.55$ %

TotalCount55% /
,55/ 0
serviceResponse551 @
.55@ A
Data55A E
.55E F

TotalPages55F P
)55P Q
;55Q R
return77 
Ok77 
(77 
serviceResponse77 %
.77% &
Data77& *
)77* +
;77+ ,
}88 	
[:: 	
HttpGet::	 
(:: 
$str:: %
)::% &
]::& '
[;; 	
SwaggerResponse;;	 
(;; 
StatusCodes;; $
.;;$ %
Status200OK;;% 0
,;;0 1'
AdminControllerDescriptions;;2 M
.;;M N
GetHotelUser200Ok;;N _
,;;_ `
typeof;;a g
(;;g h!
HotelUserWithRolesDto;;h }
);;} ~
);;~ 
]	;; �
[<< 	
SwaggerResponse<<	 
(<< 
StatusCodes<< $
.<<$ %
Status400BadRequest<<% 8
,<<8 9'
AdminControllerDescriptions<<: U
.<<U V%
UserNotFound400BadRequest<<V o
)<<o p
]<<p q
public== 
async== 
Task== 
<== 
ActionResult== &
<==& '!
HotelUserWithRolesDto==' <
>==< =
>=== >
GetHotelUser==? K
(==K L
string==L R

roomNumber==S ]
)==] ^
{>> 	
ServiceResponse?? 
<?? !
HotelUserWithRolesDto?? 1
>??1 2
serviceResponse??3 B
=??C D
await??E J
_hotelUserService??K \
.??\ ]!
GetHotelUserWithRoles??] r
(??r s

roomNumber??s }
)??} ~
;??~ 
ifAA 
(AA 
!AA 
serviceResponseAA  
.AA  !
IsValidAA! (
)AA( )
{BB 
returnCC 

StatusCodeCC !
(CC! "
serviceResponseCC" 1
.CC1 2

StatusCodeCC2 <
,CC< =
serviceResponseCC> M
.CCM N
ErrorsCCN T
)CCT U
;CCU V
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
HttpPutII	 
(II 
$strII 
)II 
]II 
[JJ 	
SwaggerResponseJJ	 
(JJ 
StatusCodesJJ $
.JJ$ %
Status200OKJJ% 0
,JJ0 1'
AdminControllerDescriptionsJJ2 M
.JJM N
EditHotelUser200OkJJN `
,JJ` a
typeofJJb h
(JJh i
CreatedHotelUserDtoJJi |
)JJ| }
)JJ} ~
]JJ~ 
[KK 	
SwaggerResponseKK	 
(KK 
StatusCodesKK $
.KK$ %
Status400BadRequestKK% 8
,KK8 9'
AdminControllerDescriptionsKK: U
.KKU V%
UserNotFound400BadRequestKKV o
)KKo p
]KKp q
publicLL 
asyncLL 
TaskLL 
<LL 
ActionResultLL &
<LL& '
CreatedHotelUserDtoLL' :
>LL: ;
>LL; <
EditUserLL= E
(LLE F
[LLF G
FromBodyLLG O
]LLO P
CreateHotelUserDtoLLQ c
editHotelUserLLd q
)LLq r
{MM 	
ServiceResponseNN 
<NN 
CreatedHotelUserDtoNN /
>NN/ 0
serviceResponseNN1 @
=NNA B
awaitNNC H
_hotelUserServiceNNI Z
.NNZ [
EditUserNN[ c
(NNc d
editHotelUserNNd q
)NNq r
;NNr s
ifPP 
(PP 
!PP 
serviceResponsePP  
.PP  !
IsValidPP! (
)PP( )
{QQ 
returnRR 

StatusCodeRR !
(RR! "
serviceResponseRR" 1
.RR1 2

StatusCodeRR2 <
,RR< =
serviceResponseRR> M
.RRM N
ErrorsRRN T
)RRT U
;RRU V
}SS 
returnUU 
OkUU 
(UU 
serviceResponseUU %
.UU% &
DataUU& *
)UU* +
;UU+ ,
}VV 	
[XX 	
HttpPostXX	 
(XX 
$strXX 
)XX 
]XX 
[YY 	
SwaggerResponseYY	 
(YY 
StatusCodesYY $
.YY$ %
Status204NoContentYY% 7
,YY7 8'
AdminControllerDescriptionsYY9 T
.YYT U+
ResetGuestPasswords204NoContentYYU t
)YYt u
]YYu v
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
ActionResultZZ &
>ZZ& '
ResetGuestPasswordsZZ( ;
(ZZ; <
[ZZ< =
FromBodyZZ= E
]ZZE F
stringZZG M
passwordZZN V
)ZZV W
{[[ 	
ServiceResponse\\ 
<\\ 
bool\\  
>\\  !
serviceResponse\\" 1
=\\2 3
await\\4 9
_hotelUserService\\: K
.\\K L 
ResetGuestsPasswords\\L `
(\\` a
password\\a i
)\\i j
;\\j k
if^^ 
(^^ 
!^^ 
serviceResponse^^  
.^^  !
IsValid^^! (
)^^( )
{__ 
return`` 

StatusCode`` !
(``! "
serviceResponse``" 1
.``1 2

StatusCode``2 <
,``< =
serviceResponse``> M
.``M N
Errors``N T
)``T U
;``U V
}aa 
returncc 
	NoContentcc 
(cc 
)cc 
;cc 
}dd 	
[ff 	

HttpDeleteff	 
(ff 
$strff (
)ff( )
]ff) *
[gg 	
SwaggerResponsegg	 
(gg 
StatusCodesgg $
.gg$ %
Status204NoContentgg% 7
,gg7 8'
AdminControllerDescriptionsgg9 T
.ggT U"
DeleteUser204NoContentggU k
)ggk l
]ggl m
[hh 	
SwaggerResponsehh	 
(hh 
StatusCodeshh $
.hh$ %
Status400BadRequesthh% 8
,hh8 9'
AdminControllerDescriptionshh: U
.hhU V%
UserNotFound400BadRequesthhV o
)hho p
]hhp q
[ii 	
SwaggerResponseii	 
(ii 
StatusCodesii $
.ii$ %
Status409Conflictii% 6
,ii6 7'
AdminControllerDescriptionsii8 S
.iiS T"
DeleteUser409NoContentiiT j
)iij k
]iik l
publicjj 
asyncjj 
Taskjj 
<jj 
ActionResultjj &
>jj& '

DeleteUserjj( 2
(jj2 3
stringjj3 9

roomNumberjj: D
)jjD E
{kk 	
ServiceResponsell 
<ll 
boolll  
>ll  !
serviceResponsell" 1
=ll2 3
awaitll4 9
_hotelUserServicell: K
.llK L
DeleteHotelUserllL [
(ll[ \

roomNumberll\ f
)llf g
;llg h
ifnn 
(nn 
!nn 
serviceResponsenn  
.nn  !
IsValidnn! (
)nn( )
{oo 
returnpp 

StatusCodepp !
(pp! "
serviceResponsepp" 1
.pp1 2

StatusCodepp2 <
,pp< =
serviceResponsepp> M
.ppM N
ErrorsppN T
)ppT U
;ppU V
}qq 
returnss 
	NoContentss 
(ss 
)ss 
;ss 
}tt 	
[vv 	
AllowAnonymousvv	 
]vv 
[ww 	
HttpGetww	 
(ww 
$strww  
)ww  !
]ww! "
[xx 	
SwaggerResponsexx	 
(xx 
StatusCodesxx $
.xx$ %
Status200OKxx% 0
,xx0 1'
AdminControllerDescriptionsxx2 M
.xxM N
InitialSetup200OkxxN _
)xx_ `
]xx` a
[yy 	
SwaggerResponseyy	 
(yy 
StatusCodesyy $
.yy$ %
Status409Conflictyy% 6
,yy6 7'
AdminControllerDescriptionsyy8 S
.yyS T#
InitialSetup409ConflictyyT k
)yyk l
]yyl m
publiczz 
asynczz 
Taskzz 
<zz 
ActionResultzz &
<zz& '
stringzz' -
>zz- .
>zz. /
InitialSetupzz0 <
(zz< =
)zz= >
{{{ 	
ServiceResponse|| 
<|| 
string|| "
>||" #
serviceResponse||$ 3
=||4 5
await||6 ;
_adminService||< I
.||I J
InitialSetup||J V
(||V W
)||W X
;||X Y
if~~ 
(~~ 
!~~ 
serviceResponse~~  
.~~  !
IsValid~~! (
)~~( )
{ 
return
�� 

StatusCode
�� !
(
��! "
serviceResponse
��" 1
.
��1 2

StatusCode
��2 <
,
��< =
serviceResponse
��> M
.
��M N
Errors
��N T
)
��T U
;
��U V
}
�� 
return
�� 
Ok
�� 
(
�� 
serviceResponse
�� %
.
��% &
Data
��& *
)
��* +
;
��+ ,
}
�� 	
}
�� 
}�� �
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
} �o
hC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Controllers\HotelUserController.cs
	namespace 	
SoleusHotelApi
 
. 
Controllers $
{ 
public 

class 
HotelUserController $
:% &
BaseApiController' 8
{ 
private 
readonly 
IHotelUserService *
_hotelUserService+ <
;< =
public 
HotelUserController "
(" #
IHotelUserService# 4
hotelUserService5 E
)E F
{ 	
_hotelUserService 
= 
hotelUserService  0
;0 1
} 	
[ 	
AllowAnonymous	 
] 
[ 	
SwaggerResponse	 
( 
StatusCodes $
.$ %
Status200OK% 0
,0 1+
HotelUserControllerDescriptions2 Q
.Q R

Login200OkR \
,\ ]
typeof^ d
(d e
LoggedUserDtoe r
)r s
)s t
]t u
[ 	
SwaggerResponse	 
( 
StatusCodes $
.$ %
Status400BadRequest% 8
,8 9+
HotelUserControllerDescriptions: Y
.Y Z
Login400BadRequestZ l
)l m
]m n
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
LoggedUserDto' 4
>4 5
>5 6
Login7 <
(< =
[= >
FromBody> F
]F G
LoginHotelUserDtoH Y
loginHotelUserDtoZ k
)k l
{ 	
ServiceResponse 
< 
LoggedUserDto )
>) *
serviceResponse+ :
=; <
await= B
_hotelUserServiceC T
.T U
LoginHotelUserU c
(c d
loginHotelUserDtod u
)u v
;v w
if 
( 
! 
serviceResponse  
.  !
IsValid! (
)( )
{ 
return   

StatusCode   !
(  ! "
serviceResponse  " 1
.  1 2

StatusCode  2 <
,  < =
serviceResponse  > M
.  M N
Errors  N T
)  T U
;  U V
}!! 
return## 
Ok## 
(## 
serviceResponse## %
.##% &
Data##& *
)##* +
;##+ ,
}$$ 	
[&& 	
	Authorize&&	 
(&& 
Policy&& 
=&& 
$str&& +
)&&+ ,
]&&, -
['' 	
HttpGet''	 
('' 
$str'' 
)'' 
]'' 
[(( 	
SwaggerResponse((	 
((( 
StatusCodes(( $
.(($ %
Status200OK((% 0
,((0 1+
HotelUserControllerDescriptions((2 Q
.((Q R0
$GetHotelUsersWithRequestsNumber200Ok((R v
,((v w
typeof((x ~
(((~ 
	PagedList	(( �
<
((� �&
HotelUserWithRequestsDto
((� �
>
((� �
)
((� �
)
((� �
]
((� �
public)) 
async)) 
Task)) 
<)) 
ActionResult)) &
<))& '
	PagedList))' 0
<))0 1$
HotelUserWithRequestsDto))1 I
>))I J
>))J K
>))K L+
GetHotelUsersWithRequestsNumber))M l
())l m
[))m n
	FromQuery))n w
]))w x
HotelUserParams	))y �
hotelUserParams
))� �
)
))� �
{** 	
ServiceResponse++ 
<++ 
	PagedList++ %
<++% &$
HotelUserWithRequestsDto++& >
>++> ?
>++? @
serviceResponse++A P
=++Q R
await++S X
_hotelUserService++Y j
.++j k1
$GetHotelUsersWithCreatedRoomRequests	++k �
(
++� �
hotelUserParams
++� �
)
++� �
;
++� �
if-- 
(-- 
!-- 
serviceResponse--  
.--  !
IsValid--! (
)--( )
{.. 
return// 

StatusCode// !
(//! "
serviceResponse//" 1
.//1 2

StatusCode//2 <
,//< =
serviceResponse//> M
.//M N
Errors//N T
)//T U
;//U V
}00 
Response22 
.22 
AddPaginationHeader22 (
(22( )
serviceResponse22) 8
.228 9
Data229 =
.22= >
CurrentPage22> I
,22I J
serviceResponse22K Z
.22Z [
Data22[ _
.22_ `
PageSize22` h
,22h i
serviceResponse33 
.33  
Data33  $
.33$ %

TotalCount33% /
,33/ 0
serviceResponse331 @
.33@ A
Data33A E
.33E F

TotalPages33F P
)33P Q
;33Q R
return55 
Ok55 
(55 
serviceResponse55 %
.55% &
Data55& *
)55* +
;55+ ,
}66 	
[88 	
	Authorize88	 
(88 
Policy88 
=88 
$str88 +
)88+ ,
]88, -
[99 	
HttpGet99	 
(99 
$str99 
)99  
]99  !
[:: 	
SwaggerResponse::	 
(:: 
StatusCodes:: $
.::$ %
Status200OK::% 0
,::0 1+
HotelUserControllerDescriptions::2 Q
.::Q R
GetHotel200Ok::R _
,::_ `
typeof::a g
(::g h
HotelUserDto::h t
)::t u
)::u v
]::v w
public;; 
async;; 
Task;; 
<;; 
ActionResult;; &
<;;& '
HotelUserDto;;' 3
>;;3 4
>;;4 5
GetHotelUser;;6 B
(;;B C
string;;C I

roomNumber;;J T
);;T U
{<< 	
ServiceResponse== 
<== 
HotelUserDto== (
>==( )
serviceResponse==* 9
===: ;
await==< A
_hotelUserService==B S
.==S T
GetHotelUser==T `
(==` a

roomNumber==a k
)==k l
;==l m
if?? 
(?? 
!?? 
serviceResponse??  
.??  !
IsValid??! (
)??( )
{@@ 
returnAA 

StatusCodeAA !
(AA! "
serviceResponseAA" 1
.AA1 2

StatusCodeAA2 <
,AA< =
serviceResponseAA> M
.AAM N
ErrorsAAN T
)AAT U
;AAU V
}BB 
returnDD 
OkDD 
(DD 
serviceResponseDD %
.DD% &
DataDD& *
)DD* +
;DD+ ,
}EE 	
[GG 	
	AuthorizeGG	 
(GG 
PolicyGG 
=GG 
$strGG ,
)GG, -
]GG- .
[HH 	
	HttpPatchHH	 
(HH 
$strHH 
)HH 
]HH 
[II 	
SwaggerResponseII	 
(II 
StatusCodesII $
.II$ %
Status200OKII% 0
,II0 1+
HotelUserControllerDescriptionsII2 Q
.IIQ R
EditGuest200OkIIR `
,II` a
typeofIIb h
(IIh i
HotelUserDtoIIi u
)IIu v
)IIv w
]IIw x
[JJ 	
SwaggerResponseJJ	 
(JJ 
StatusCodesJJ $
.JJ$ %
Status403ForbiddenJJ% 7
,JJ7 8+
HotelUserControllerDescriptionsJJ9 X
.JJX Y!
EditGuest403ForbiddenJJY n
)JJn o
]JJo p
[KK 	
SwaggerResponseKK	 
(KK 
StatusCodesKK $
.KK$ %
Status404NotFoundKK% 6
,KK6 7+
HotelUserControllerDescriptionsKK8 W
.KKW X%
UserNotFound400BadRequestKKX q
)KKq r
]KKr s
publicLL 
asyncLL 
TaskLL 
<LL 
ActionResultLL &
<LL& '
HotelUserDtoLL' 3
>LL3 4
>LL4 5
	EditGuestLL6 ?
(LL? @
[LL@ A
FromBodyLLA I
]LLI J
HotelUserDtoLLK W
editUserLLX `
)LL` a
{MM 	
ServiceResponseNN 
<NN 
HotelUserDtoNN (
>NN( )
serviceResponseNN* 9
=NN: ;
awaitNN< A
_hotelUserServiceNNB S
.NNS T
EditGuestUserNNT a
(NNa b
editUserNNb j
)NNj k
;NNk l
ifPP 
(PP 
!PP 
serviceResponsePP  
.PP  !
IsValidPP! (
)PP( )
{QQ 
returnRR 

StatusCodeRR !
(RR! "
serviceResponseRR" 1
.RR1 2

StatusCodeRR2 <
,RR< =
serviceResponseRR> M
.RRM N
ErrorsRRN T
)RRT U
;RRU V
}SS 
returnUU 
OkUU 
(UU 
serviceResponseUU %
.UU% &
DataUU& *
)UU* +
;UU+ ,
}VV 	
[XX 	
AllowAnonymousXX	 
]XX 
[YY 	
	HttpPatchYY	 
(YY 
$strYY 
)YY 
]YY  
[ZZ 	
SwaggerResponseZZ	 
(ZZ 
StatusCodesZZ $
.ZZ$ %
Status200OKZZ% 0
,ZZ0 1+
HotelUserControllerDescriptionsZZ2 Q
.ZZQ R
ForgotPassword200OkZZR e
,ZZe f
typeofZZg m
(ZZm n
LoggedUserDtoZZn {
)ZZ{ |
)ZZ| }
]ZZ} ~
[[[ 	
SwaggerResponse[[	 
([[ 
StatusCodes[[ $
.[[$ %
Status400BadRequest[[% 8
,[[8 9+
HotelUserControllerDescriptions[[: Y
.[[Y Z'
ForgotPassword400BadRequest[[Z u
)[[u v
][[v w
[\\ 	
SwaggerResponse\\	 
(\\ 
StatusCodes\\ $
.\\$ %
Status403Forbidden\\% 7
,\\7 8+
HotelUserControllerDescriptions\\9 X
.\\X Y'
ForgotPassword403Fordbidden\\Y t
)\\t u
]\\u v
[]] 	
SwaggerResponse]]	 
(]] 
StatusCodes]] $
.]]$ %
Status404NotFound]]% 6
,]]6 7+
HotelUserControllerDescriptions]]8 W
.]]W X%
UserNotFound400BadRequest]]X q
)]]q r
]]]r s
public^^ 
async^^ 
Task^^ 
<^^ 
ActionResult^^ &
<^^& '
LoggedUserDto^^' 4
>^^4 5
>^^5 6
ForgotPassword^^7 E
(^^E F
[^^F G
FromBody^^G O
]^^O P'
HotelUserPasswordUpdatesDto^^Q l
passwordUpdate^^m {
)^^{ |
{__ 	
ServiceResponse`` 
<`` 
LoggedUserDto`` )
>``) *
serviceResponse``+ :
=``; <
await``= B
_hotelUserService``C T
.``T U
ForgotPassword``U c
(``c d
passwordUpdate``d r
)``r s
;``s t
ifbb 
(bb 
!bb 
serviceResponsebb  
.bb  !
IsValidbb! (
)bb( )
{cc 
returndd 

StatusCodedd !
(dd! "
serviceResponsedd" 1
.dd1 2

StatusCodedd2 <
,dd< =
serviceResponsedd> M
.ddM N
ErrorsddN T
)ddT U
;ddU V
}ee 
returngg 
Okgg 
(gg 
serviceResponsegg %
.gg% &
Datagg& *
)gg* +
;gg+ ,
}hh 	
[jj 	
	Authorizejj	 
(jj 
Policyjj 
=jj 
$strjj ,
)jj, -
]jj- .
[kk 	
	HttpPatchkk	 
(kk 
$strkk +
)kk+ ,
]kk, -
[ll 	
SwaggerResponsell	 
(ll 
StatusCodesll $
.ll$ %
Status200OKll% 0
,ll0 1+
HotelUserControllerDescriptionsll2 Q
.llQ R%
GenerateUserPassword200OkllR k
,llk l
typeofllm s
(lls t
LoggedUserDto	llt �
)
ll� �
)
ll� �
]
ll� �
[mm 	
SwaggerResponsemm	 
(mm 
StatusCodesmm $
.mm$ %
Status403Forbiddenmm% 7
,mm7 8+
HotelUserControllerDescriptionsmm9 X
.mmX Y,
 GenerateUserPassword403ForbiddenmmY y
)mmy z
]mmz {
[nn 	
SwaggerResponsenn	 
(nn 
StatusCodesnn $
.nn$ %
Status404NotFoundnn% 6
,nn6 7+
HotelUserControllerDescriptionsnn8 W
.nnW X%
UserNotFound400BadRequestnnX q
)nnq r
]nnr s
publicoo 
asyncoo 
Taskoo 
<oo 
ActionResultoo &
<oo& '(
GenerateHotelUserPasswordDtooo' C
>ooC D
>ooD E 
GenerateUserPasswordooF Z
(ooZ [
stringoo[ a

roomNumberoob l
)ool m
{pp 	
ServiceResponseqq 
<qq (
GenerateHotelUserPasswordDtoqq 8
>qq8 9
serviceResponseqq: I
=qqJ K
awaitqqL Q
_hotelUserServiceqqR c
.qqc d 
GenerateUserPasswordqqd x
(qqx y

roomNumber	qqy �
)
qq� �
;
qq� �
ifss 
(ss 
!ss 
serviceResponsess  
.ss  !
IsValidss! (
)ss( )
{tt 
returnuu 

StatusCodeuu !
(uu! "
serviceResponseuu" 1
.uu1 2

StatusCodeuu2 <
,uu< =
serviceResponseuu> M
.uuM N
ErrorsuuN T
)uuT U
;uuU V
}vv 
returnxx 
Okxx 
(xx 
serviceResponsexx %
.xx% &
Dataxx& *
)xx* +
;xx+ ,
}yy 	
}zz 
}{{ ݹ
jC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Controllers\RoomRequestController.cs
	namespace 	
SoleusHotelApi
 
. 
Controllers $
{ 
public 

class !
RoomRequestController &
:' (
BaseApiController) :
{ 
private 
readonly 
IRoomRequestService ,
_roomRequestService- @
;@ A
public !
RoomRequestController $
($ %
IRoomRequestService% 8
roomRequestService9 K
)K L
{ 	
_roomRequestService 
=  !
roomRequestService" 4
;4 5
} 	
[ 	
HttpPost	 
( 
) 
] 
[ 	
SwaggerResponse	 
( 
StatusCodes $
.$ %
Status204NoContent% 7
)7 8
]8 9
[ 	
SwaggerResponse	 
( 
StatusCodes $
.$ %
Status404NotFound% 6
,6 7-
!RoomRequestControllerDescriptions8 Y
.Y Z%
UserNotFound400BadRequestZ s
)s t
]t u
public 
async 
Task 
< 
ActionResult &
<& '
bool' +
>+ ,
>, -
CreateRoomRequest. ?
(? @
[@ A
FromBodyA I
]I J 
CreateRoomRequestDtoK _
createRoomRequest` q
)q r
{ 	
ServiceResponse 
< 
bool  
>  !
serviceResponse" 1
=2 3
await4 9
_roomRequestService: M
.M N
CreateRoomRequestN _
(_ `
createRoomRequest` q
,q r
Users w
.w x
GetRoomNumber	x �
(
� �
)
� �
)
� �
;
� �
if 
( 
! 
serviceResponse  
.  !
IsValid! (
)( )
{ 
return 

StatusCode !
(! "
serviceResponse" 1
.1 2

StatusCode2 <
,< =
serviceResponse> M
.M N
ErrorsN T
)T U
;U V
}   
return"" 
	NoContent"" 
("" 
)"" 
;"" 
}## 	
[%% 	
	Authorize%%	 
(%% 
Policy%% 
=%% 
$str%% +
)%%+ ,
]%%, -
[&& 	
HttpGet&&	 
(&& 
)&& 
]&& 
['' 	
SwaggerResponse''	 
('' 
StatusCodes'' $
.''$ %
Status200OK''% 0
,''0 1-
!RoomRequestControllerDescriptions''2 S
.''S T'
GetFilteredRoomRequest200Ok''T o
,''o p
typeof''q w
(''w x
	PagedList	''x �
<
''� � 
BaseRoomRequestDto
''� �
>
''� �
)
''� �
)
''� �
]
''� �
public(( 
async(( 
Task(( 
<(( 
ActionResult(( &
<((& '
	PagedList((' 0
<((0 1
BaseRoomRequestDto((1 C
>((C D
>((D E
>((E F#
GetFilteredRoomRequests((G ^
(((^ _
[((_ `
	FromQuery((` i
]((i j
RoomRequestParams((k |
roomRequestParams	((} �
)
((� �
{)) 	
ServiceResponse** 
<** 
	PagedList** %
<**% &
BaseRoomRequestDto**& 8
>**8 9
>**9 :
serviceResponse**; J
=**K L
await**M R
_roomRequestService**S f
.**f g#
GetFilteredRoomRequests**g ~
(**~ 
roomRequestParams	** �
)
**� �
;
**� �
if,, 
(,, 
!,, 
serviceResponse,,  
.,,  !
IsValid,,! (
),,( )
{-- 
return.. 

StatusCode.. !
(..! "
serviceResponse.." 1
...1 2

StatusCode..2 <
,..< =
serviceResponse..> M
...M N
Errors..N T
)..T U
;..U V
}// 
Response11 
.11 
AddPaginationHeader11 (
(11( )
serviceResponse11) 8
.118 9
Data119 =
.11= >
CurrentPage11> I
,11I J
serviceResponse11K Z
.11Z [
Data11[ _
.11_ `
PageSize11` h
,11h i
serviceResponse22 
.22 
Data22 #
.22# $

TotalCount22$ .
,22. /
serviceResponse220 ?
.22? @
Data22@ D
.22D E

TotalPages22E O
)22O P
;22P Q
return44 
Ok44 
(44 
serviceResponse44 %
.44% &
Data44& *
)44* +
;44+ ,
}55 	
[77 	
HttpGet77	 
(77 
$str77 
)77 
]77 
[88 	
SwaggerResponse88	 
(88 
StatusCodes88 $
.88$ %
Status200OK88% 0
,880 1-
!RoomRequestControllerDescriptions882 S
.88S T"
GetMyRoomRequests200Ok88T j
,88j k
typeof88l r
(88r s
	PagedList88s |
<88| }
BaseRoomRequestDto	88} �
>
88� �
)
88� �
)
88� �
]
88� �
[99 	
SwaggerResponse99	 
(99 
StatusCodes99 $
.99$ %
Status404NotFound99% 6
,996 7-
!RoomRequestControllerDescriptions998 Y
.99Y Z%
UserNotFound400BadRequest99Z s
)99s t
]99t u
public:: 
async:: 
Task:: 
<:: 
ActionResult:: &
<::& '
	PagedList::' 0
<::0 1
BaseRoomRequestDto::1 C
>::C D
>::D E
>::E F
GetMyRoomRequests::G X
(::X Y
[::Y Z
	FromQuery::Z c
]::c d
RoomRequestParams::e v
roomRequestParams	::w �
)
::� �
{;; 	
ServiceResponse<< 
<<< 
	PagedList<< %
<<<% &
BaseRoomRequestDto<<& 8
><<8 9
><<9 :
serviceResponse<<; J
=<<K L
await<<M R
_roomRequestService<<S f
.<<f g
GetMyRoomRequests<<g x
(<<x y
User<<y }
.<<} ~
GetRoomNumber	<<~ �
(
<<� �
)
<<� �
,
<<� �
roomRequestParams
<<� �
)
<<� �
;
<<� �
if>> 
(>> 
!>> 
serviceResponse>>  
.>>  !
IsValid>>! (
)>>( )
{?? 
return@@ 

StatusCode@@ !
(@@! "
serviceResponse@@" 1
.@@1 2

StatusCode@@2 <
,@@< =
serviceResponse@@> M
.@@M N
Errors@@N T
)@@T U
;@@U V
}AA 
ResponseCC 
.CC 
AddPaginationHeaderCC (
(CC( )
serviceResponseCC) 8
.CC8 9
DataCC9 =
.CC= >
CurrentPageCC> I
,CCI J
serviceResponseCCK Z
.CCZ [
DataCC[ _
.CC_ `
PageSizeCC` h
,CCh i
serviceResponseDD 
.DD 
DataDD #
.DD# $

TotalCountDD$ .
,DD. /
serviceResponseDD0 ?
.DD? @
DataDD@ D
.DDD E

TotalPagesDDE O
)DDO P
;DDP Q
returnFF 
OkFF 
(FF 
serviceResponseFF %
.FF% &
DataFF& *
)FF* +
;FF+ ,
}GG 	
[II 	
	AuthorizeII	 
(II 
PolicyII 
=II 
$strII +
)II+ ,
]II, -
[JJ 	
HttpGetJJ	 
(JJ 
$strJJ 
)JJ 
]JJ 
[KK 	
SwaggerResponseKK	 
(KK 
StatusCodesKK $
.KK$ %
Status200OKKK% 0
,KK0 1-
!RoomRequestControllerDescriptionsKK2 S
.KKS T(
GetAssignedRoomRequests200OkKKT p
,KKp q
typeofKKr x
(KKx y
	PagedList	KKy �
<
KK� � 
BaseRoomRequestDto
KK� �
>
KK� �
)
KK� �
)
KK� �
]
KK� �
[LL 	
SwaggerResponseLL	 
(LL 
StatusCodesLL $
.LL$ %
Status404NotFoundLL% 6
,LL6 7-
!RoomRequestControllerDescriptionsLL8 Y
.LLY Z%
UserNotFound400BadRequestLLZ s
)LLs t
]LLt u
publicMM 
asyncMM 
TaskMM 
<MM 
ActionResultMM &
<MM& '
	PagedListMM' 0
<MM0 1
BaseRoomRequestDtoMM1 C
>MMC D
>MMD E
>MME F#
GetAssignedRoomRequestsMMG ^
(MM^ _
[MM_ `
	FromQueryMM` i
]MMi j
RoomRequestParamsMMk |
roomRequestParams	MM} �
)
MM� �
{NN 	
ServiceResponseOO 
<OO 
	PagedListOO %
<OO% &
BaseRoomRequestDtoOO& 8
>OO8 9
>OO9 :
serviceResponseOO; J
=OOK L
awaitPP 
_roomRequestServicePP )
.PP) *!
GetMyAssignedRequestsPP* ?
(PP? @
UserPP@ D
.PPD E
GetRoomNumberPPE R
(PPR S
)PPS T
,PPT U
roomRequestParamsPPV g
)PPg h
;PPh i
ifRR 
(RR 
!RR 
serviceResponseRR  
.RR  !
IsValidRR! (
)RR( )
{SS 
returnTT 

StatusCodeTT !
(TT! "
serviceResponseTT" 1
.TT1 2

StatusCodeTT2 <
,TT< =
serviceResponseTT> M
.TTM N
ErrorsTTN T
)TTT U
;TTU V
}UU 
ResponseWW 
.WW 
AddPaginationHeaderWW (
(WW( )
serviceResponseWW) 8
.WW8 9
DataWW9 =
.WW= >
CurrentPageWW> I
,WWI J
serviceResponseWWK Z
.WWZ [
DataWW[ _
.WW_ `
PageSizeWW` h
,WWh i
serviceResponseXX 
.XX 
DataXX #
.XX# $

TotalCountXX$ .
,XX. /
serviceResponseXX0 ?
.XX? @
DataXX@ D
.XXD E

TotalPagesXXE O
)XXO P
;XXP Q
returnZZ 
OkZZ 
(ZZ 
serviceResponseZZ %
.ZZ% &
DataZZ& *
)ZZ* +
;ZZ+ ,
}[[ 	
[]] 	
HttpGet]]	 
(]] 
$str]] "
)]]" #
]]]# $
[^^ 	
SwaggerResponse^^	 
(^^ 
StatusCodes^^ $
.^^$ %
Status200OK^^% 0
,^^0 1-
!RoomRequestControllerDescriptions^^2 S
.^^S T
GetRoomRequest200Ok^^T g
,^^g h
typeof^^i o
(^^o p
RoomRequestDto^^p ~
)^^~ 
)	^^ �
]
^^� �
[__ 	
SwaggerResponse__	 
(__ 
StatusCodes__ $
.__$ %
Status403Forbidden__% 7
,__7 8-
!RoomRequestControllerDescriptions__9 Z
.__Z [&
GetRoomRequest403Forbidden__[ u
)__u v
]__v w
[`` 	
SwaggerResponse``	 
(`` 
StatusCodes`` $
.``$ %
Status404NotFound``% 6
,``6 7-
!RoomRequestControllerDescriptions``8 Y
.``Y Z3
&UserOrRoomRequestNotFound404BadRequest	``Z �
)
``� �
]
``� �
publicaa 
asyncaa 
Taskaa 
<aa 
ActionResultaa &
<aa& '
RoomRequestDtoaa' 5
>aa5 6
>aa6 7
GetRoomRequestaa8 F
(aaF G
intaaG J
roomRequestIdaaK X
)aaX Y
{bb 	
ServiceResponsecc 
<cc 
RoomRequestDtocc *
>cc* +
serviceResponsecc, ;
=cc< =
awaitcc> C
_roomRequestServiceccD W
.ccW X
GetRoomRequestccX f
(ccf g
roomRequestIdccg t
,cct u
Userccv z
.ccz {
GetRoomNumber	cc{ �
(
cc� �
)
cc� �
,
cc� �
User
cc� �
.
cc� �
GetRoles
cc� �
(
cc� �
)
cc� �
)
cc� �
;
cc� �
ifee 
(ee 
!ee 
serviceResponseee  
.ee  !
IsValidee! (
)ee( )
{ff 
returngg 

StatusCodegg !
(gg! "
serviceResponsegg" 1
.gg1 2

StatusCodegg2 <
,gg< =
serviceResponsegg> M
.ggM N
ErrorsggN T
)ggT U
;ggU V
}hh 
returnjj 
Okjj 
(jj 
serviceResponsejj %
.jj% &
Datajj& *
)jj* +
;jj+ ,
}kk 	
[mm 	
	Authorizemm	 
(mm 
Policymm 
=mm 
$strmm +
)mm+ ,
]mm, -
[nn 	
HttpGetnn	 
(nn 
$strnn 
)nn 
]nn 
[oo 	
SwaggerResponseoo	 
(oo 
StatusCodesoo $
.oo$ %
Status200OKoo% 0
,oo0 1-
!RoomRequestControllerDescriptionsoo2 S
.ooS T1
%EndedRoomRequestsAverageDuration200OkooT y
,ooy z
typeof	oo{ �
(
oo� �
TimeSpan
oo� �
)
oo� �
)
oo� �
]
oo� �
[pp 	
SwaggerResponsepp	 
(pp 
StatusCodespp $
.pp$ %
Status404NotFoundpp% 6
,pp6 7-
!RoomRequestControllerDescriptionspp8 Y
.ppY Z3
&UserOrRoomRequestNotFound404BadRequest	ppZ �
)
pp� �
]
pp� �
publicqq 
asyncqq 
Taskqq 
<qq 
ActionResultqq &
<qq& '
TimeSpanqq' /
>qq/ 0
>qq0 1,
 EndedRoomRequestsAverageDurationqq2 R
(qqR S
)qqS T
{rr 	
ServiceResponsess 
<ss 
TimeSpanss $
>ss$ %
serviceResponsess& 5
=ss6 7
awaitss8 =
_roomRequestServicess> Q
.ssQ R+
AverageTimeAssignedRoomRequestsssR q
(ssq r
Userssr v
.ssv w
GetRoomNumber	ssw �
(
ss� �
)
ss� �
)
ss� �
;
ss� �
ifuu 
(uu 
!uu 
serviceResponseuu  
.uu  !
IsValiduu! (
)uu( )
{vv 
returnww 

StatusCodeww !
(ww! "
serviceResponseww" 1
.ww1 2

StatusCodeww2 <
,ww< =
serviceResponseww> M
.wwM N
ErrorswwN T
)wwT U
;wwU V
}xx 
returnzz 
Okzz 
(zz 
serviceResponsezz %
.zz% &
Datazz& *
)zz* +
;zz+ ,
}{{ 	
[}} 	
	Authorize}}	 
(}} 
Policy}} 
=}} 
$str}} +
)}}+ ,
]}}, -
[~~ 	
	HttpPatch~~	 
(~~ 
$str~~ *
)~~* +
]~~+ ,
[ 	
SwaggerResponse	 
( 
StatusCodes $
.$ %
Status204NoContent% 7
,7 8-
!RoomRequestControllerDescriptions9 Z
.Z [(
StartRoomRequest204NoContent[ w
)w x
]x y
[
�� 	
SwaggerResponse
��	 
(
�� 
StatusCodes
�� $
.
��$ % 
Status403Forbidden
��% 7
,
��7 8/
!RoomRequestControllerDescriptions
��9 Z
.
��Z [*
StartRoomRequest403Forbidden
��[ w
)
��w x
]
��x y
[
�� 	
SwaggerResponse
��	 
(
�� 
StatusCodes
�� $
.
��$ %
Status404NotFound
��% 6
,
��6 7/
!RoomRequestControllerDescriptions
��8 Y
.
��Y Z5
&UserOrRoomRequestNotFound404BadRequest��Z �
)��� �
]��� �
[
�� 	
SwaggerResponse
��	 
(
�� 
StatusCodes
�� $
.
��$ %
Status409Conflict
��% 6
,
��6 7/
!RoomRequestControllerDescriptions
��8 Y
.
��Y Z)
StartRoomRequest409Conflict
��Z u
)
��u v
]
��v w
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
StartRoomRequest
��( 8
(
��8 9
int
��9 <
roomRequestId
��= J
)
��J K
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
��M N
StartRoomRequest
��N ^
(
��^ _
roomRequestId
��_ l
,
��l m
User
��n r
.
��r s
GetRoomNumber��s �
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

StatusCode
�� !
(
��! "
serviceResponse
��" 1
.
��1 2

StatusCode
��2 <
,
��< =
serviceResponse
��> M
.
��M N
Errors
��N T
)
��T U
;
��U V
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
[
�� 	
	Authorize
��	 
(
�� 
Policy
�� 
=
�� 
$str
�� +
)
��+ ,
]
��, -
[
�� 	
	HttpPatch
��	 
(
�� 
$str
�� (
)
��( )
]
��) *
[
�� 	
SwaggerResponse
��	 
(
�� 
StatusCodes
�� $
.
��$ % 
Status204NoContent
��% 7
,
��7 8/
!RoomRequestControllerDescriptions
��9 Z
.
��Z [(
EndRoomRequest204NoContent
��[ u
)
��u v
]
��v w
[
�� 	
SwaggerResponse
��	 
(
�� 
StatusCodes
�� $
.
��$ % 
Status403Forbidden
��% 7
,
��7 8/
!RoomRequestControllerDescriptions
��9 Z
.
��Z [(
EndRoomRequest403Forbidden
��[ u
)
��u v
]
��v w
[
�� 	
SwaggerResponse
��	 
(
�� 
StatusCodes
�� $
.
��$ %
Status404NotFound
��% 6
,
��6 7/
!RoomRequestControllerDescriptions
��8 Y
.
��Y Z5
&UserOrRoomRequestNotFound404BadRequest��Z �
)��� �
]��� �
[
�� 	
SwaggerResponse
��	 
(
�� 
StatusCodes
�� $
.
��$ %
Status409Conflict
��% 6
,
��6 7/
!RoomRequestControllerDescriptions
��8 Y
.
��Y Z'
EndRoomRequest409Conflict
��Z s
)
��s t
]
��t u
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
EndRoomRequest
��( 6
(
��6 7
int
��7 :
roomRequestId
��; H
)
��H I
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
��M N
EndRoomRequest
��N \
(
��\ ]
roomRequestId
��] j
,
��j k
User
��l p
.
��p q
GetRoomNumber
��q ~
(
��~ 
)�� �
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

StatusCode
�� !
(
��! "
serviceResponse
��" 1
.
��1 2

StatusCode
��2 <
,
��< =
serviceResponse
��> M
.
��M N
Errors
��N T
)
��T U
;
��U V
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
��& '
[
�� 	
SwaggerResponse
��	 
(
�� 
StatusCodes
�� $
.
��$ % 
Status204NoContent
��% 7
,
��7 8/
!RoomRequestControllerDescriptions
��9 Z
.
��Z [+
DeleteRoomRequest204NoContent
��[ x
)
��x y
]
��y z
[
�� 	
SwaggerResponse
��	 
(
�� 
StatusCodes
�� $
.
��$ % 
Status403Forbidden
��% 7
,
��7 8/
!RoomRequestControllerDescriptions
��9 Z
.
��Z [+
DeleteRoomRequest403Forbidden
��[ x
)
��x y
]
��y z
[
�� 	
SwaggerResponse
��	 
(
�� 
StatusCodes
�� $
.
��$ %
Status404NotFound
��% 6
,
��6 7/
!RoomRequestControllerDescriptions
��8 Y
.
��Y Z5
&UserOrRoomRequestNotFound404BadRequest��Z �
)��� �
]��� �
[
�� 	
SwaggerResponse
��	 
(
�� 
StatusCodes
�� $
.
��$ %
Status409Conflict
��% 6
,
��6 7/
!RoomRequestControllerDescriptions
��8 Y
.
��Y Z*
DeleteRoomRequest409Conflict
��Z v
)
��v w
]
��w x
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

StatusCode
�� !
(
��! "
serviceResponse
��" 1
.
��1 2

StatusCode
��2 <
,
��< =
serviceResponse
��> M
.
��M N
Errors
��N T
)
��T U
;
��U V
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
} �
{C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Data\Repositories\Contracts\IRoomRequestRepository.cs
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
	interface "
IRoomRequestRepository +
{ 
Task		 
AddRoomRequest		 
(		 
RoomRequest		 '
roomRequest		( 3
)		3 4
;		4 5
void

 
Update

 
(

 
RoomRequest

 
roomRequest

  +
)

+ ,
;

, -
Task 
< 
	PagedList 
< 
BaseRoomRequestDto )
>) *
>* +#
GetFilteredRoomRequests, C
(C D
RoomRequestParamsD U
roomRequestParamsV g
)g h
;h i
Task 
< 
RoomRequest 
> 
GetRoomRequestById ,
(, -
int- 0
id1 3
)3 4
;4 5
Task 
< 
RoomRequestDto 
> !
GetRoomRequestDtoById 2
(2 3
int3 6
id7 9
)9 :
;: ;
Task 
< 
List 
< 
TimeSpan 
> 
> #
GetRoomRequestsDuration 4
(4 5
	HotelUser5 >
assignedUser? K
)K L
;L M
void !
DeleteRoomRequestById "
(" #
RoomRequest# .
roomRequest/ :
): ;
;; <
Task 
< 
bool 
> 
SaveAllAsync 
(  
)  !
;! "
} 
} �T
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
})) Ń
pC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Data\Repositories\RoomRequestRepository.cs
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
class !
RoomRequestRepository &
:' ("
IRoomRequestRepository) ?
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
public !
RoomRequestRepository $
($ %
DataContext% 0
dataContext1 <
,< =
IMapper> E
mapperF L
)L M
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
public 
async 
Task 
AddRoomRequest (
(( )
RoomRequest) 4
roomRequest5 @
)@ A
{ 	
await 
_dataContext 
. 
RoomRequests +
.+ ,
AddAsync, 4
(4 5
roomRequest5 @
)@ A
;A B
} 	
public 
void 
Update 
( 
RoomRequest &
roomRequest' 2
)2 3
{ 	
_dataContext 
. 
Entry 
( 
roomRequest *
)* +
.+ ,
State, 1
=2 3
EntityState4 ?
.? @
Modified@ H
;H I
} 	
public!! 
async!! 
Task!! 
<!! 
	PagedList!! #
<!!# $
BaseRoomRequestDto!!$ 6
>!!6 7
>!!7 8#
GetFilteredRoomRequests!!9 P
(!!P Q
RoomRequestParams!!Q b
roomRequestParams!!c t
)!!t u
{"" 	

IQueryable## 
<## 
RoomRequest## "
>##" #
query##$ )
=##* +
_dataContext##, 8
.##8 9
RoomRequests##9 E
.$$ 
Include$$ 
($$ 
r$$ 
=>$$ 
r$$ 
.$$  
Room$$  $
)$$$ %
.$$% &
ThenInclude$$& 1
($$1 2
u$$2 3
=>$$4 6
u$$7 8
.$$8 9
User$$9 =
)$$= >
.$$> ?
AsQueryable$$? J
($$J K
)$$K L
;$$L M
return&& 
await&& 
	PagedList&& "
<&&" #
BaseRoomRequestDto&&# 5
>&&5 6
.&&6 7
CreateAsync&&7 B
(&&B C
FilterRoomRequests&&C U
(&&U V
query&&V [
,&&[ \
roomRequestParams&&] n
)&&n o
.&&o p
	ProjectTo&&p y
<&&y z
BaseRoomRequestDto	&&z �
>
&&� �
(
&&� �
_mapper
&&� �
.
&&� �#
ConfigurationProvider
&&� �
)
&&� �
.
&&� �
AsNoTracking
&&� �
(
&&� �
)
&&� �
,
&&� �
roomRequestParams'' !
.''! "

PageNumber''" ,
,'', -
roomRequestParams''. ?
.''? @
PageSize''@ H
)''H I
;''I J
}(( 	
public** 
async** 
Task** 
<** 
RoomRequest** %
>**% &
GetRoomRequestById**' 9
(**9 :
int**: =
id**> @
)**@ A
{++ 	
return,, 
await,, 
_dataContext,, %
.,,% &
RoomRequests,,& 2
.,,2 3
Include,,3 :
(,,: ;
r,,; <
=>,,= ?
r,,@ A
.,,A B
Room,,B F
),,F G
.,,G H
Include,,H O
(,,O P
u,,P Q
=>,,R T
u,,U V
.,,V W

AssignedTo,,W a
),,a b
.,,b c 
SingleOrDefaultAsync,,c w
(,,w x
r,,x y
=>,,z |
r,,} ~
.,,~ 
Id	,, �
==
,,� �
id
,,� �
)
,,� �
;
,,� �
}-- 	
public// 
async// 
Task// 
<// 
RoomRequestDto// (
>//( )!
GetRoomRequestDtoById//* ?
(//? @
int//@ C
id//D F
)//F G
{00 	
return11 
_mapper11 
.11 
Map11 
<11 
RoomRequestDto11 -
>11- .
(11. /
await11/ 4
_dataContext115 A
.11A B
RoomRequests11B N
.11N O
Include11O V
(11V W
r11W X
=>11Y [
r11\ ]
.11] ^
Room11^ b
)11b c
.11c d 
SingleOrDefaultAsync11d x
(11x y
r11y z
=>11{ }
r11~ 
.	11 �
Id
11� �
==
11� �
id
11� �
)
11� �
)
11� �
;
11� �
}22 	
public44 
async44 
Task44 
<44 
List44 
<44 
TimeSpan44 '
>44' (
>44( )#
GetRoomRequestsDuration44* A
(44A B
	HotelUser44B K
assignedUser44L X
)44X Y
{55 	
return66 
await66 
_dataContext66 %
.66% &
RoomRequests66& 2
.77 
Where77 
(77 
u77 
=>77 
u77 
.77 

AssignedTo77 (
==77) +
assignedUser77, 8
)778 9
.88 
Where88 
(88 
s88 
=>88 
s88 
.88 
RequestStatus88 +
==88, .
Enums88/ 4
.884 5
RoomRequestStatus885 F
.88F G
Ended88G L
)88L M
.99 
Select99 
(99 
d99 
=>99 
d99 
.99 
Duration99 '
.99' (
Value99( -
)99- .
.99. /
ToListAsync99/ :
(99: ;
)99; <
;99< =
}:: 	
public<< 
void<< !
DeleteRoomRequestById<< )
(<<) *
RoomRequest<<* 5
roomRequest<<6 A
)<<A B
{== 	
_dataContext>> 
.>> 
RoomRequests>> %
.>>% &
Remove>>& ,
(>>, -
roomRequest>>- 8
)>>8 9
;>>9 :
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
boolAA 
>AA 
SaveAllAsyncAA  ,
(AA, -
)AA- .
{BB 	
returnCC 
awaitCC 
_dataContextCC %
.CC% &
SaveChangesAsyncCC& 6
(CC6 7
)CC7 8
>CC9 :
$numCC; <
;CC< =
}DD 	
privateHH 

IQueryableHH 
<HH 
RoomRequestHH &
>HH& '
FilterRoomRequestsHH( :
(HH: ;

IQueryableHH; E
<HHE F
RoomRequestHHF Q
>HHQ R
initialQueryHHS _
,HH_ `
RoomRequestParamsHHa r
roomRequestParams	HHs �
)
HH� �
{II 	
ifJJ 
(JJ 
roomRequestParamsJJ !
.JJ! "
RoomJJ" &
isJJ' )
notJJ* -
nullJJ. 2
)JJ2 3
{KK 
initialQueryLL 
=LL 
initialQueryLL +
.LL+ ,
WhereLL, 1
(LL1 2
rLL2 3
=>LL4 6
rLL7 8
.LL8 9
RoomLL9 =
.LL= >

RoomNumberLL> H
==LLI K
roomRequestParamsLLL ]
.LL] ^
RoomLL^ b
)LLb c
;LLc d
}MM 
ifOO 
(OO 
roomRequestParamsOO !
.OO! "

AssignedToOO" ,
isOO- /
notOO0 3
nullOO4 8
)OO8 9
{PP 
initialQueryQQ 
=QQ 
initialQueryQQ +
.QQ+ ,
WhereQQ, 1
(QQ1 2
rQQ2 3
=>QQ4 6
rQQ7 8
.QQ8 9

AssignedToQQ9 C
.QQC D
RoomQQD H
.QQH I

RoomNumberQQI S
==QQT V
roomRequestParamsQQW h
.QQh i

AssignedToQQi s
)QQs t
;QQt u
}RR 
ifTT 
(TT 
roomRequestParamsTT !
.TT! "
MinRequestDateTT" 0
isTT1 3
notTT4 7
nullTT8 <
)TT< =
{UU 
initialQueryVV 
=VV 
initialQueryVV +
.VV+ ,
WhereVV, 1
(VV1 2
rVV2 3
=>VV4 6
rVV7 8
.VV8 9
RequestDateVV9 D
.VVD E
DayVVE H
>=VVI K
roomRequestParamsVVL ]
.VV] ^
MinRequestDateVV^ l
.VVl m
ValueVVm r
.VVr s
DayVVs v
)VVv w
;VVw x
}WW 
ifYY 
(YY 
roomRequestParamsYY !
.YY! "
MaxRequestDateYY" 0
isYY1 3
notYY4 7
nullYY8 <
)YY< =
{ZZ 
initialQuery[[ 
=[[ 
initialQuery[[ +
.[[+ ,
Where[[, 1
([[1 2
r[[2 3
=>[[4 6
r[[7 8
.[[8 9
RequestDate[[9 D
.[[D E
Day[[E H
<=[[I K
roomRequestParams[[L ]
.[[] ^
MaxRequestDate[[^ l
.[[l m
Value[[m r
.[[r s
Day[[s v
)[[v w
;[[w x
}\\ 
if^^ 
(^^ 
roomRequestParams^^ !
.^^! "
MinDateStart^^" .
is^^/ 1
not^^2 5
null^^6 :
)^^: ;
{__ 
initialQuery`` 
=`` 
initialQuery`` +
.``+ ,
Where``, 1
(``1 2
r``2 3
=>``4 6
r``7 8
.``8 9
	DateStart``9 B
.``B C
Value``C H
.``H I
Day``I L
>=``M O
roomRequestParams``P a
.``a b
MinDateStart``b n
.``n o
Value``o t
.``t u
Day``u x
)``x y
;``y z
}aa 
ifcc 
(cc 
roomRequestParamscc !
.cc! "
MaxDateStartcc" .
iscc/ 1
notcc2 5
nullcc6 :
)cc: ;
{dd 
initialQueryee 
=ee 
initialQueryee +
.ee+ ,
Whereee, 1
(ee1 2
ree2 3
=>ee4 6
ree7 8
.ee8 9
	DateStartee9 B
.eeB C
ValueeeC H
.eeH I
DayeeI L
<=eeM O
roomRequestParamseeP a
.eea b
MaxDateStarteeb n
.een o
Valueeeo t
.eet u
Dayeeu x
)eex y
;eey z
}ff 
ifhh 
(hh 
roomRequestParamshh !
.hh! "

MinDateEndhh" ,
ishh- /
nothh0 3
nullhh4 8
)hh8 9
{ii 
initialQueryjj 
=jj 
initialQueryjj +
.jj+ ,
Wherejj, 1
(jj1 2
rjj2 3
=>jj4 6
rjj7 8
.jj8 9
DateEndjj9 @
.jj@ A
ValuejjA F
.jjF G
DayjjG J
>=jjK M
roomRequestParamsjjN _
.jj_ `

MinDateEndjj` j
.jjj k
Valuejjk p
.jjp q
Dayjjq t
)jjt u
;jju v
}kk 
ifmm 
(mm 
roomRequestParamsmm !
.mm! "

MaxDateEndmm" ,
ismm- /
notmm0 3
nullmm4 8
)mm8 9
{nn 
initialQueryoo 
=oo 
initialQueryoo +
.oo+ ,
Whereoo, 1
(oo1 2
roo2 3
=>oo4 6
roo7 8
.oo8 9
DateEndoo9 @
.oo@ A
ValueooA F
.ooF G
DayooG J
<=ooK M
roomRequestParamsooN _
.oo_ `

MaxDateEndoo` j
.ooj k
Valueook p
.oop q
Dayooq t
)oot u
;oou v
}pp 
ifrr 
(rr 
roomRequestParamsrr !
.rr! "

Departmentrr" ,
isrr- /
notrr0 3
nullrr4 8
)rr8 9
{ss 
initialQuerytt 
=tt 
initialQuerytt +
.tt+ ,
Wherett, 1
(tt1 2
rtt2 3
=>tt4 6
rtt7 8
.tt8 9

Departmenttt9 C
==ttD F
roomRequestParamsttG X
.ttX Y

DepartmentttY c
)ttc d
;ttd e
}uu 
ifww 
(ww 
roomRequestParamsww !
.ww! "
Topicww" '
isww( *
notww+ .
nullww/ 3
)ww3 4
{xx 
initialQueryyy 
=yy 
initialQueryyy +
.yy+ ,
Whereyy, 1
(yy1 2
ryy2 3
=>yy4 6
ryy7 8
.yy8 9
Topicyy9 >
==yy? A
roomRequestParamsyyB S
.yyS T
TopicyyT Y
)yyY Z
;yyZ [
}zz 
if|| 
(|| 
roomRequestParams|| !
.||! "
Subject||" )
is||* ,
not||- 0
null||1 5
)||5 6
{}} 
initialQuery~~ 
=~~ 
initialQuery~~ +
.~~+ ,
Where~~, 1
(~~1 2
r~~2 3
=>~~4 6
r~~7 8
.~~8 9
Subject~~9 @
==~~A C
roomRequestParams~~D U
.~~U V
Subject~~V ]
)~~] ^
;~~^ _
} 
if
�� 
(
�� 
roomRequestParams
�� !
.
��! "
RequestStatus
��" /
is
��0 2
not
��3 6
null
��7 ;
)
��; <
{
�� 
initialQuery
�� 
=
�� 
initialQuery
�� +
.
��+ ,
Where
��, 1
(
��1 2
s
��2 3
=>
��4 6
roomRequestParams
��7 H
.
��H I
RequestStatus
��I V
.
��V W
Contains
��W _
(
��_ `
(
��` a
int
��a d
)
��d e
s
��f g
.
��g h
RequestStatus
��h u
)
��u v
)
��v w
;
��w x
}
�� 
initialQuery
�� 
=
�� 
OrderRoomRequests
�� ,
(
��, -
initialQuery
��- 9
,
��9 :
roomRequestParams
��; L
)
��L M
;
��M N
return
�� 
initialQuery
�� 
;
��  
}
�� 	
private
�� 

IQueryable
�� 
<
�� 
RoomRequest
�� &
>
��& '
OrderRoomRequests
��( 9
(
��9 :

IQueryable
��: D
<
��D E
RoomRequest
��E P
>
��P Q
initialQuery
��R ^
,
��^ _
RoomRequestParams
��` q 
roomRequestParams��r �
)��� �
{
�� 	
initialQuery
�� 
=
�� 
roomRequestParams
�� ,
.
��, -
OrderBy
��- 4
switch
��5 ;
{
�� 
$str
�� 
=>
�� 
initialQuery
�� &
.
��& '
OrderByDescending
��' 8
(
��8 9
x
��9 :
=>
��; =
x
��> ?
.
��? @
RequestDate
��@ K
)
��K L
,
��L M
$str
�� 
=>
�� 
initialQuery
��  ,
.
��, -
OrderByDescending
��- >
(
��> ?
x
��? @
=>
��A C
x
��D E
.
��E F

Department
��F P
)
��P Q
,
��Q R
$str
�� 
=>
�� 
initialQuery
�� *
.
��* +
OrderBy
��+ 2
(
��2 3
x
��3 4
=>
��5 7
x
��8 9
.
��9 :

AssignedTo
��: D
)
��D E
,
��E F
_
�� 
=>
�� 
initialQuery
�� !
.
��! "
OrderByDescending
��" 3
(
��3 4
x
��4 5
=>
��6 8
x
��9 :
.
��: ;
Room
��; ?
.
��? @

RoomNumber
��@ J
.
��J K
Length
��K Q
)
��Q R
.
��R S
ThenBy
��S Y
(
��Y Z
x
��Z [
=>
��\ ^
x
��_ `
.
��` a
Room
��a e
.
��e f

RoomNumber
��f p
)
��p q
}
�� 
;
�� 
return
�� 
initialQuery
�� 
;
��  
}
�� 	
}
�� 
}�� �
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
} �
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
public 
DateTime 
	DateStart !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
DateEnd 
{  !
get" %
;% &
set' *
;* +
}, -
public 
RoomRequestStatus  
RequestStatus! .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} �
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
} �
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
public 
ICollection 
< 
PhotoDto #
># $
Photos% +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
}		 �
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
} �
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
;"" 
opt## 
.## 
EnableAnnotations## %
(##% &
)##& '
;##' (
}$$ 
)$$ 
;$$ 
return&& 
services&& 
;&& 
}'' 	
}(( 
})) �
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
}11 �
hC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Helpers\RoomRequestParamsFilter.cs
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
public 
string 
Room 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

Department  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
Topic		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
string

 
Subject

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
DateTime 
? 
MinRequestDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DateTime 
? 
MaxRequestDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
List 
< 
int 
> 
RequestStatus &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
MinDateStart %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
MaxDateStart %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 

MinDateEnd #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
? 

MaxDateEnd #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 

AssignedTo  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
OrderBy 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. 4
;4 5
} 
} �
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
}�� �	
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
public 
int 

StatusCode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
List 
< 
string 
> 
Errors "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
new3 6
List7 ;
<; <
string< B
>B C
(C D
)D E
;E F
public 
T 
Data 
{ 
get 
; 
set  
;  !
}" #
}		 
}

 �
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
�5
^C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\AdminService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
{ 
public 

class 
AdminService 
: 
IAdminService  -
{ 
private 
readonly 
UserManager $
<$ %
	HotelUser% .
>. /
_userManager0 <
;< =
private 
readonly 
RoleManager $
<$ %
	HotelRole% .
>. /
_roleManager0 <
;< =
private 
readonly 
IRoomRepository (
_roomRepository) 8
;8 9
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
AdminService 
( 
UserManager '
<' (
	HotelUser( 1
>1 2
userManager3 >
,> ?
RoleManager@ K
<K L
	HotelRoleL U
>U V
roleManagerW b
,b c
IRoomRepositoryd s
roomRepository	t �
,
� �
IConfiguration
� �
configuration
� �
)
� �
{ 	
_userManager 
= 
userManager &
;& '
_roleManager 
= 
roleManager &
;& '
_roomRepository 
= 
roomRepository ,
;, -
_configuration 
= 
configuration *
;* +
} 	
public 
async 
Task 
< 
ServiceResponse )
<) *
string* 0
>0 1
>1 2
InitialSetup3 ?
(? @
)@ A
{ 	
ServiceResponse 
< 
string "
>" #
response$ ,
=- .
new/ 2
(2 3
)3 4
;4 5
if   
(   
await   
_userManager   "
.  " #
Users  # (
.  ( )
AnyAsync  ) 1
(  1 2
x  2 3
=>  4 6
x  7 8
.  8 9
Room  9 =
.  = >

RoomNumber  > H
==  I K
_configuration  L Z
[  Z [
$str  [ q
]  q r
)  r s
)  s t
{!! 
response"" 
."" 

StatusCode"" #
=""$ %
(""& '
int""' *
)""* +
HttpStatusCode"", :
."": ;
Conflict""; C
;""C D
response## 
.## 
Errors## 
.##  
Add##  #
(### $
AdminServiceError##$ 5
.##5 6
ConfigurationDone##6 G
)##G H
;##H I
return$$ 
response$$ 
;$$  
}%% 
List'' 
<'' 
string'' 
>'' 
	rolesList'' "
=''# $
new''% (
(''( )
)'') *
{''+ ,
Roles''- 2
.''2 3
Admin''3 8
,''8 9
Roles'': ?
.''? @
Housekeeping''@ L
,''L M
Roles''N S
.''S T
Maintenance''T _
,''_ `
Roles''a f
.''f g
	Reception''g p
,''p q
Roles''r w
.''w x
Guest''x }
}''~ 
;	'' �
foreach)) 
()) 
var)) 
role)) 
in))  
	rolesList))! *
)))* +
{** 
if++ 
(++ 
!++ 
await++ 
_roleManager++ '
.++' (
RoleExistsAsync++( 7
(++7 8
role++8 <
)++< =
)++= >
{,, 
	HotelRole-- 
newRole-- %
=--& '
new--( +
(--+ ,
)--, -
;--- .
newRole.. 
... 
Name..  
=..! "
role..# '
;..' (
await// 
_roleManager// &
.//& '
CreateAsync//' 2
(//2 3
newRole//3 :
)//: ;
;//; <
}00 
}11 
Room33 
superUserRoom33 
=33  
new33! $
(33$ %
)33% &
{44 

RoomNumber55 
=55 
_configuration55 +
[55+ ,
$str55, B
]55B C
,55C D
CheckInDate66 
=66 
DateTime66 &
.66& '
Now66' *
,66* +
CheckOutDate77 
=77 
DateTime77 '
.77' (
Now77( +
.77+ ,
AddYears77, 4
(774 5
$num775 8
)778 9
}88 
;88 
await:: 
_roomRepository:: !
.::! "
AddRoom::" )
(::) *
superUserRoom::* 7
)::7 8
;::8 9
	HotelUser<< 
	superUser<< 
=<<  !
new<<" %
(<<% &
)<<& '
{== 
Room>> 
=>> 
superUserRoom>> $
,>>$ %
	GuestName?? 
=?? 
_configuration?? *
[??* +
$str??+ A
]??A B
,??B C
UserName@@ 
=@@ 
_configuration@@ )
[@@) *
$str@@* @
]@@@ A
}AA 
;AA 
superUserRoomCC 
.CC 
UserIdCC  
=CC! "
	superUserCC# ,
.CC, -
IdCC- /
;CC/ 0
stringEE 
superUserPassEE  
=EE! "
_configurationEE# 1
[EE1 2
$strEE2 F
]EEF G
;EEG H
IdentityResultGG 
resultGG !
=GG" #
awaitGG$ )
_userManagerGG* 6
.GG6 7
CreateAsyncGG7 B
(GGB C
	superUserGGC L
,GGL M
superUserPassGGN [
)GG[ \
;GG\ ]
ifII 
(II 
resultII 
.II 
	SucceededII  
)II  !
{JJ 
_KK 
=KK 
awaitKK 
_userManagerKK &
.KK& '
AddToRoleAsyncKK' 5
(KK5 6
	superUserKK6 ?
,KK? @
RolesKKA F
.KKF G
AdminKKG L
)KKL M
;KKM N
}LL 
awaitNN 
_roomRepositoryNN !
.NN! "
SaveAllAsyncNN" .
(NN. /
)NN/ 0
;NN0 1
responsePP 
.PP 
IsValidPP 
=PP 
truePP #
;PP# $
responseQQ 
.QQ 
DataQQ 
=QQ 
$strQQ ;
;QQ; <
returnRR 
responseRR 
;RR 
}SS 	
}TT 
}UU �
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
} �
oC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\Contracts\IRoomRequestService.cs
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
IRoomRequestService (
{ 
Task		 
<		 
ServiceResponse		 
<		 
bool		 !
>		! "
>		" #
CreateRoomRequest		$ 5
(		5 6 
CreateRoomRequestDto		6 J 
createRoomRequestDto		K _
,		_ `
string		a g
userRoomNumber		h v
)		v w
;		w x
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
& '
BaseRoomRequestDto

' 9
>

9 :
>

: ;
>

; <#
GetFilteredRoomRequests

= T
(

T U
RoomRequestParams

U f
roomRequestFilter

g x
)

x y
;

y z
Task 
< 
ServiceResponse 
< 
	PagedList &
<& '
BaseRoomRequestDto' 9
>9 :
>: ;
>; <
GetMyRoomRequests= N
(N O
stringO U
userRoomNumberV d
,d e
RoomRequestParamsf w
roomRequestFilter	x �
)
� �
;
� �
Task 
< 
ServiceResponse 
< 
	PagedList &
<& '
BaseRoomRequestDto' 9
>9 :
>: ;
>; <!
GetMyAssignedRequests= R
(R S
stringS Y
userRoomNumberZ h
,h i
RoomRequestParamsj {
roomRequestFilter	| �
)
� �
;
� �
Task 
< 
ServiceResponse 
< 
RoomRequestDto +
>+ ,
>, -
GetRoomRequest. <
(< =
int= @
roomRequestIdA N
,N O
stringP V
userRoomNumberW e
,e f
Listg k
<k l
stringl r
>r s
	userRolest }
)} ~
;~ 
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" #
StartRoomRequest$ 4
(4 5
int5 8
roomRequestId9 F
,F G
stringH N
userRoomNumberO ]
,] ^
List_ c
<c d
stringd j
>j k
	userRolesl u
)u v
;v w
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" #
EndRoomRequest$ 2
(2 3
int3 6
roomRequestId7 D
,D E
stringF L
userRoomNumberM [
,[ \
List] a
<a b
stringb h
>h i
	userRolesj s
)s t
;t u
Task 
< 
ServiceResponse 
< 
TimeSpan %
>% &
>& '+
AverageTimeAssignedRoomRequests( G
(G H
stringH N
userRoomNumberO ]
)] ^
;^ _
Task 
< 
ServiceResponse 
< 
bool !
>! "
>" #!
SafeDeleteRoomRequest$ 9
(9 :
int: =
roomRequestId> K
,K L
stringM S
userRoomNumberT b
,b c
Listd h
<h i
stringi o
>o p
	userRolesq z
)z {
;{ |
} 
} �
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
}		 ڻ
bC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\HotelUserService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
{ 
public 

class 
HotelUserService !
:" #
IHotelUserService$ 5
{ 
private 
readonly 
IRoomService %
_roomService& 2
;2 3
private 
readonly 
UserManager $
<$ %
	HotelUser% .
>. /
_userManager0 <
;< =
private 
readonly 
SignInManager &
<& '
	HotelUser' 0
>0 1
_signInManager2 @
;@ A
private 
readonly  
IHotelUserRepository -
_userRepository. =
;= >
private 
readonly 
IRoomRepository (
_roomRepository) 8
;8 9
private 
readonly 
ITokenService &
_tokenService' 4
;4 5
private 
readonly 
IMapper  
_mapper! (
;( )
public 
HotelUserService 
(  
IRoomService  ,
roomService- 8
,8 9
UserManager: E
<E F
	HotelUserF O
>O P
userManagerQ \
,\ ]
SignInManager^ k
<k l
	HotelUserl u
>u v
signInManager	w �
,
� �"
IHotelUserRepository
� �
userRepository
� �
,
� �
IRoomRepository 
roomRepository *
,* +
ITokenService, 9
tokenService: F
,F G
IMapperH O
mapperP V
)V W
{ 	
_roomService 
= 
roomService &
;& '
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_userRepository   
=   
userRepository   ,
;  , -
_roomRepository!! 
=!! 
roomRepository!! ,
;!!, -
_tokenService"" 
="" 
tokenService"" (
;""( )
_mapper## 
=## 
mapper## 
;## 
}$$ 	
public'' 
async'' 
Task'' 
<'' 
ServiceResponse'' )
<'') *
	PagedList''* 3
<''3 4!
HotelUserWithRolesDto''4 I
>''I J
>''J K
>''K L
GetHotelUsers''M Z
(''Z [
HotelUserParams''[ j
hotelUserParams''k z
)''z {
{(( 	
ServiceResponse)) 
<)) 
	PagedList)) %
<))% &!
HotelUserWithRolesDto))& ;
>)); <
>))< =
response))> F
=))G H
new))I L
())L M
)))M N
;))N O
	PagedList++ 
<++ !
HotelUserWithRolesDto++ +
>+++ ,
userList++- 5
=++6 7
await++8 =
_userRepository++> M
.++M N
GetAllHotelUsers++N ^
(++^ _
hotelUserParams++_ n
)++n o
;++o p
foreach,, 
(,, 
var,, 
user,, 
in,,  
userList,,! )
),,) *
{-- 
	HotelUser.. 
userInDb.. "
=..# $
await..% *
_userRepository..+ :
...: ;,
 GetHotelUserWithRoomByRoomNumber..; [
(..[ \
user..\ `
...` a

RoomNumber..a k
)..k l
;..l m
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
=33 
userList33 $
;33$ %
return44 
response44 
;44 
}55 	
public77 
async77 
Task77 
<77 
ServiceResponse77 )
<77) *
	PagedList77* 3
<773 4$
HotelUserWithRequestsDto774 L
>77L M
>77M N
>77N O0
$GetHotelUsersWithCreatedRoomRequests77P t
(77t u
HotelUserParams	77u �
hotelUserParams
77� �
)
77� �
{88 	
return99 
new99 
ServiceResponse99 &
<99& '
	PagedList99' 0
<990 1$
HotelUserWithRequestsDto991 I
>99I J
>99J K
{:: 
IsValid;; 
=;; 
true;; 
,;; 
Data<< 
=<< 
await<< 
_userRepository<< ,
.<<, -(
GetAllGuestsWithRoomRequests<<- I
(<<I J
hotelUserParams<<J Y
)<<Y Z
}== 
;== 
}>> 	
public@@ 
async@@ 
Task@@ 
<@@ 
ServiceResponse@@ )
<@@) *
HotelUserDto@@* 6
>@@6 7
>@@7 8
GetHotelUser@@9 E
(@@E F
string@@F L

roomNumber@@M W
)@@W X
{AA 	
returnBB 
newBB 
ServiceResponseBB &
<BB& '
HotelUserDtoBB' 3
>BB3 4
{CC 
IsValidDD 
=DD 
trueDD 
,DD 
DataEE 
=EE 
awaitEE 
_userRepositoryEE ,
.EE, - 
GetHotelUserDtoAsyncEE- A
(EEA B

roomNumberEEB L
)EEL M
}FF 
;FF 
}GG 	
publicII 
asyncII 
TaskII 
<II 
ServiceResponseII )
<II) *!
HotelUserWithRolesDtoII* ?
>II? @
>II@ A!
GetHotelUserWithRolesIIB W
(IIW X
stringIIX ^

roomNumberII_ i
)IIi j
{JJ 	
ServiceResponseKK 
<KK !
HotelUserWithRolesDtoKK 1
>KK1 2
responseKK3 ;
=KK< =
newKK> A
(KKA B
)KKB C
;KKC D
varMM 
userMM 
=MM 
awaitMM 
_userManagerMM )
.MM) *
UsersMM* /
.MM/ 0
IncludeMM0 7
(MM7 8
rMM8 9
=>MM: <
rMM= >
.MM> ?
RoomMM? C
)MMC D
.MMD E
FirstOrDefaultAsyncMME X
(MMX Y
xMMY Z
=>MM[ ]
xMM^ _
.MM_ `
RoomMM` d
.MMd e

RoomNumberMMe o
==MMp r

roomNumberMMs }
)MM} ~
;MM~ 
ifOO 
(OO 
userOO 
isOO 
nullOO 
)OO 
{PP 
responseQQ 
.QQ 

StatusCodeQQ #
=QQ$ %
(QQ& '
intQQ' *
)QQ* +
HttpStatusCodeQQ, :
.QQ: ;
NotFoundQQ; C
;QQC D
responseRR 
.RR 
ErrorsRR 
.RR  
AddRR  #
(RR# $!
HotelUserServiceErrorRR$ 9
.RR9 :
UserNotFoundRR: F
)RRF G
;RRG H
returnSS 
responseSS 
;SS  
}TT !
HotelUserWithRolesDtoVV !
userWithRolesDtoVV" 2
=VV3 4
_mapperVV5 <
.VV< =
MapVV= @
<VV@ A!
HotelUserWithRolesDtoVVA V
>VVV W
(VVW X
userVVX \
)VV\ ]
;VV] ^
userWithRolesDtoWW 
.WW 
	UserRolesWW &
=WW' (
awaitWW) .
_userManagerWW/ ;
.WW; <
GetRolesAsyncWW< I
(WWI J
userWWJ N
)WWN O
;WWO P
responseYY 
.YY 
IsValidYY 
=YY 
trueYY #
;YY# $
responseZZ 
.ZZ 
DataZZ 
=ZZ 
userWithRolesDtoZZ ,
;ZZ, -
return\\ 
response\\ 
;\\ 
}]] 	
public__ 
async__ 
Task__ 
<__ 
ServiceResponse__ )
<__) *
CreatedHotelUserDto__* =
>__= >
>__> ?
CreateHotelUser__@ O
(__O P
CreateHotelUserDto__P b
createHotelUserDto__c u
)__u v
{`` 	
ServiceResponseaa 
<aa 
CreatedHotelUserDtoaa /
>aa/ 0
responseaa1 9
=aa: ;
newaa< ?
(aa? @
)aa@ A
;aaA B
ifcc 
(cc 
awaitcc 

UserExistscc  
(cc  !
createHotelUserDtocc! 3
.cc3 4

RoomNumbercc4 >
)cc> ?
)cc? @
{dd 
responseee 
.ee 

StatusCodeee #
=ee$ %
(ee& '
intee' *
)ee* +
HttpStatusCodeee+ 9
.ee9 :
Conflictee: B
;eeB C
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
.tt 

StatusCodett #
=tt$ %
(tt& '
inttt' *
)tt* +
HttpStatusCodett, :
.tt: ;
InternalServerErrortt; N
;ttN O
responseuu 
.uu 
Errorsuu 
=uu  !
createUserResultuu" 2
.uu2 3
Errorsuu3 9
.uu9 :
Selectuu: @
(uu@ A
xuuA B
=>uuC E
xuuF G
.uuG H
DescriptionuuH S
)uuS T
.uuT U
ToListuuU [
(uu[ \
)uu\ ]
;uu] ^
returnvv 
responsevv 
;vv  
}ww 
foreachyy 
(yy 
varyy 
roleyy 
inyy  
createHotelUserDtoyy! 3
.yy3 4
Rolesyy4 9
)yy9 :
{zz 
IdentityResult{{ 

roleResult{{ )
={{* +
await{{, 1
_userManager{{2 >
.{{> ?
AddToRoleAsync{{? M
({{M N
	hotelUser{{N W
,{{W X
role{{Y ]
){{] ^
;{{^ _
if}} 
(}} 
!}} 

roleResult}} 
.}}  
	Succeeded}}  )
)}}) *
{~~ 
response 
. 

StatusCode '
=( )
(* +
int+ .
). /
HttpStatusCode/ =
.= >
InternalServerError> Q
;Q R
response
�� 
.
�� 
Errors
�� #
=
��$ %
createUserResult
��& 6
.
��6 7
Errors
��7 =
.
��= >
Select
��> D
(
��D E
x
��E F
=>
��G I
x
��J K
.
��K L
Description
��L W
)
��W X
.
��X Y
ToList
��Y _
(
��_ `
)
��` a
;
��a b
return
�� 
response
�� #
;
��# $
}
�� 
}
�� 
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
�� 

StatusCode
�� #
=
��$ %
userAddedToRoom
��& 5
.
��5 6

StatusCode
��6 @
;
��@ A
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
NotFound
��: B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
editRolesResponse
��& 7
.
��7 8

StatusCode
��8 B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
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
�� 

StatusCode
�� '
=
��( )
(
��* +
int
��+ .
)
��. /
HttpStatusCode
��/ =
.
��= >!
InternalServerError
��> Q
;
��Q R
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
�� 
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
isTheRoomUpdated
��" 2
=
��3 4
await
��5 :
_roomService
��; G
.
��G H

UpdateRoom
��H R
(
��R S
editUser
��S [
)
��[ \
;
��\ ]
if
�� 
(
�� 
!
�� 
isTheRoomUpdated
�� !
.
��! "
IsValid
��" )
)
��) *
{
�� 
response
�� 
.
�� 

StatusCode
�� #
=
��$ %
isTheRoomUpdated
��& 6
.
��6 7

StatusCode
��7 A
;
��A B
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
NotFound
��: B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
	Forbidden
��: C
;
��C D
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
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
�� 
ServiceResponse
�� 
<
�� 
bool
��  
>
��  !
isTheRoomUpdated
��" 2
=
��3 4
await
��5 :
_roomService
��; G
.
��G H

UpdateRoom
��H R
(
��R S
_mapper
��S Z
.
��Z [
Map
��[ ^
<
��^ _ 
CreateHotelUserDto
��_ q
>
��q r
(
��r s
editUser
��s {
)
��{ |
)
��| }
;
��} ~
if
�� 
(
�� 
!
�� 
isTheRoomUpdated
�� !
.
��! "
IsValid
��" )
)
��) *
{
�� 
response
�� 
.
�� 

StatusCode
�� #
=
��$ %
isTheRoomUpdated
��& 6
.
��6 7

StatusCode
��7 A
;
��A B
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
RoomDatesUnsaved
��: J
+
��K L
editUser
��M U
.
��U V

RoomNumber
��V `
)
��` a
;
��a b
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
�� 
_mapper
�� #
.
��# $
Map
��$ '
<
��' (
HotelUserDto
��( 4
>
��4 5
(
��5 6
user
��6 :
)
��: ;
;
��; <
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
LoginHotelUser
��: H
(
��H I
LoginHotelUserDto
��I Z
loginHotelUserDto
��[ l
)
��l m
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
��; <
if
�� 
(
�� 
loginHotelUserDto
�� !
is
��" $
null
��% )
)
��) *
{
�� 
response
�� 
.
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :

BadRequest
��: D
;
��D E
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
NullPasswordAndUserName
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
�� 
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :

BadRequest
��: D
;
��D E
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :

BadRequest
��: D
;
��D E
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
NotFound
��: B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
	Forbidden
��: C
;
��C D
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :

BadRequest
��: D
;
��D E
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :

BadRequest
��: D
;
��D E
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
	Forbidden
��: C
;
��C D
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
�� 
response
�� 
.
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
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
�� *
GenerateHotelUserPasswordDto
�� (#
generatedPasswordUser
��) >
=
��? @
_mapper
��A H
.
��H I
Map
��I L
<
��L M*
GenerateHotelUserPasswordDto
��M i
>
��i j
(
��j k
user
��k o
)
��o p
;
��p q#
generatedPasswordUser
�� !
.
��! "
Password
��" *
=
��+ ,
generatedPassword
��- >
;
��> ?
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
�� #
generatedPasswordUser
�� 1
;
��1 2
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
��/ 0"
ResetGuestsPasswords
��1 E
(
��E F
string
��F L
password
��M U
)
��U V
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
��2 3
List
�� 
<
�� 
string
�� 
>
�� 
failedUserChanges
�� *
=
��+ ,
new
��- 0
(
��0 1
)
��1 2
;
��2 3
List
�� 
<
�� 
	HotelUser
�� 
>
�� 
users
�� !
=
��" #
await
��$ )
_userRepository
��* 9
.
��9 :!
GetHotelUsersByRole
��: M
(
��M N
Roles
��N S
.
��S T
Guest
��T Y
)
��Y Z
;
��Z [
foreach
�� 
(
�� 
var
�� 
user
�� 
in
��  
users
��! &
)
��& '
{
�� 
string
��  
passwordResetToken
�� )
=
��* +
await
��, 1
_userManager
��2 >
.
��> ?-
GeneratePasswordResetTokenAsync
��? ^
(
��^ _
user
��_ c
)
��c d
;
��d e
IdentityResult
�� 
result
�� %
=
��& '
await
��( -
_userManager
��. :
.
��: ; 
ResetPasswordAsync
��; M
(
��M N
user
��N R
,
��R S 
passwordResetToken
��T f
,
��f g
password
��h p
)
��p q
;
��q r
if
�� 
(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� %
)
��% &
{
�� 
failedUserChanges
�� %
.
��% &
Add
��& )
(
��) *
user
��* .
.
��. /
Room
��/ 3
.
��3 4

RoomNumber
��4 >
)
��> ?
;
��? @
}
�� 
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
NotFound
��: B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
Conflict
��: B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
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
�� 
}�� ��
dC:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\RoomRequestService.cs
	namespace 	
SoleusHotelApi
 
. 
Services !
{ 
public 

class 
RoomRequestService #
:$ %
IRoomRequestService& 9
{ 
private 
readonly  
IHotelUserRepository - 
_hotelUserRepository. B
;B C
private 
readonly "
IRoomRequestRepository /"
_roomRequestRepository0 F
;F G
private 
readonly 
IMapper  
_mapper! (
;( )
public 
RoomRequestService !
(! " 
IHotelUserRepository" 6
hotelUserRepository7 J
,J K"
IRoomRequestRepositoryL b!
roomRequestRepositoryc x
,x y
IMapper	z �
mapper
� �
)
� �
{ 	 
_hotelUserRepository  
=! "
hotelUserRepository# 6
;6 7"
_roomRequestRepository "
=# $!
roomRequestRepository% :
;: ;
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
ServiceResponse )
<) *
bool* .
>. /
>/ 0
CreateRoomRequest1 B
(B C 
CreateRoomRequestDtoC W 
createRoomRequestDtoX l
,l m
stringn t
userRoomNumber	u �
)
� �
{ 	
ServiceResponse   
<   
bool    
>    !
response  " *
=  + ,
new  - 0
(  0 1
)  1 2
;  2 3
	HotelUser!! 
user!! 
=!! 
await!! " 
_hotelUserRepository!!# 7
.!!7 8,
 GetHotelUserWithRoomByRoomNumber!!8 X
(!!X Y
userRoomNumber!!Y g
)!!g h
;!!h i
if## 
(## 
user## 
is## 
null## 
)## 
{$$ 
response%% 
.%% 

StatusCode%% #
=%%$ %
(%%& '
int%%' *
)%%* +
HttpStatusCode%%+ 9
.%%9 :
NotFound%%: B
;%%B C
response&& 
.&& 
Errors&& 
.&&  
Add&&  #
(&&# $#
RoomRequestServiceError&&$ ;
.&&; <
UserNotFound&&< H
)&&H I
;&&I J
return'' 
response'' 
;''  
}(( 
RoomRequest** 
request** 
=**  !
_mapper**" )
.**) *
Map*** -
<**- .
RoomRequest**. 9
>**9 :
(**: ; 
createRoomRequestDto**; O
)**O P
;**P Q
request,, 
.,, 
RequestStatus,, !
=,," #
RoomRequestStatus,,$ 5
.,,5 6
New,,6 9
;,,9 :
request-- 
.-- 
Room-- 
=-- 
user-- 
.--  
Room--  $
;--$ %
await// "
_roomRequestRepository// (
.//( )
AddRoomRequest//) 7
(//7 8
request//8 ?
)//? @
;//@ A
if11 
(11 
!11 
await11 "
_roomRequestRepository11 -
.11- .
SaveAllAsync11. :
(11: ;
)11; <
)11< =
{22 
response33 
.33 

StatusCode33 #
=33$ %
(33& '
int33' *
)33* +
HttpStatusCode33+ 9
.339 :
InternalServerError33: M
;33M N
response44 
.44 
Errors44 
.44  
Add44  #
(44# $#
RoomRequestServiceError44$ ;
.44; <
UnableToSaveRequest44< O
)44O P
;44P Q
return55 
response55 
;55  
}66 
response88 
.88 
IsValid88 
=88 
true88 #
;88# $
return99 
response99 
;99 
}:: 	
public<< 
async<< 
Task<< 
<<< 
ServiceResponse<< )
<<<) *
	PagedList<<* 3
<<<3 4
BaseRoomRequestDto<<4 F
><<F G
><<G H
><<H I#
GetFilteredRoomRequests<<J a
(<<a b
RoomRequestParams<<b s
roomRequestFilter	<<t �
)
<<� �
{== 	
return>> 
new>> 
ServiceResponse>> &
<>>& '
	PagedList>>' 0
<>>0 1
BaseRoomRequestDto>>1 C
>>>C D
>>>D E
(>>E F
)>>F G
{?? 
Data@@ 
=@@ 
await@@ "
_roomRequestRepository@@ 3
.@@3 4#
GetFilteredRoomRequests@@4 K
(@@K L
roomRequestFilter@@L ]
)@@] ^
,@@^ _
IsValidAA 
=AA 
trueAA 
}BB 
;BB 
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE 
ServiceResponseEE )
<EE) *
	PagedListEE* 3
<EE3 4
BaseRoomRequestDtoEE4 F
>EEF G
>EEG H
>EEH I
GetMyRoomRequestsEEJ [
(EE[ \
stringEE\ b
userRoomNumberEEc q
,EEq r
RoomRequestParams	EEs �
roomRequestFilter
EE� �
)
EE� �
{FF 	
ServiceResponseGG 
<GG 
	PagedListGG %
<GG% &
BaseRoomRequestDtoGG& 8
>GG8 9
>GG9 :
responseGG; C
=GGD E
newGGF I
(GGI J
)GGJ K
;GGK L
	HotelUserHH 
userHH 
=HH 
awaitHH " 
_hotelUserRepositoryHH# 7
.HH7 8,
 GetHotelUserWithRoomByRoomNumberHH8 X
(HHX Y
userRoomNumberHHY g
)HHg h
;HHh i
ifJJ 
(JJ 
userJJ 
isJJ 
nullJJ 
)JJ 
{KK 
responseLL 
.LL 

StatusCodeLL #
=LL$ %
(LL& '
intLL' *
)LL* +
HttpStatusCodeLL+ 9
.LL9 :
NotFoundLL: B
;LLB C
responseMM 
.MM 
ErrorsMM 
.MM  
AddMM  #
(MM# $#
RoomRequestServiceErrorMM$ ;
.MM; <
UserNotFoundMM< H
)MMH I
;MMI J
returnNN 
responseNN 
;NN  
}OO 
roomRequestFilterQQ 
.QQ 
RoomQQ "
=QQ# $
userQQ% )
.QQ) *
RoomQQ* .
.QQ. /

RoomNumberQQ/ 9
;QQ9 :
roomRequestFilterRR 
.RR 
MinRequestDateRR ,
=RR- .
userRR/ 3
.RR3 4
RoomRR4 8
.RR8 9
CheckInDateRR9 D
;RRD E
roomRequestFilterSS 
.SS 
MaxRequestDateSS ,
=SS- .
userSS/ 3
.SS3 4
RoomSS4 8
.SS8 9
CheckOutDateSS9 E
;SSE F
responseUU 
.UU 
IsValidUU 
=UU 
trueUU #
;UU# $
responseVV 
.VV 
DataVV 
=VV 
awaitVV !"
_roomRequestRepositoryVV" 8
.VV8 9#
GetFilteredRoomRequestsVV9 P
(VVP Q
roomRequestFilterVVQ b
)VVb c
;VVc d
returnWW 
responseWW 
;WW 
}XX 	
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
ServiceResponseZZ )
<ZZ) *
	PagedListZZ* 3
<ZZ3 4
BaseRoomRequestDtoZZ4 F
>ZZF G
>ZZG H
>ZZH I!
GetMyAssignedRequestsZZJ _
(ZZ_ `
stringZZ` f
userRoomNumberZZg u
,ZZu v
RoomRequestParams	ZZw �
roomRequestFilter
ZZ� �
)
ZZ� �
{[[ 	
ServiceResponse\\ 
<\\ 
	PagedList\\ %
<\\% &
BaseRoomRequestDto\\& 8
>\\8 9
>\\9 :
response\\; C
=\\D E
new\\F I
(\\I J
)\\J K
;\\K L
	HotelUser]] 
user]] 
=]] 
await]] " 
_hotelUserRepository]]# 7
.]]7 8,
 GetHotelUserWithRoomByRoomNumber]]8 X
(]]X Y
userRoomNumber]]Y g
)]]g h
;]]h i
if__ 
(__ 
user__ 
is__ 
null__ 
)__ 
{`` 
responseaa 
.aa 

StatusCodeaa #
=aa$ %
(aa& '
intaa' *
)aa* +
HttpStatusCodeaa+ 9
.aa9 :
NotFoundaa: B
;aaB C
responsebb 
.bb 
Errorsbb 
.bb  
Addbb  #
(bb# $#
RoomRequestServiceErrorbb$ ;
.bb; <
UserNotFoundbb< H
)bbH I
;bbI J
returncc 
responsecc 
;cc  
}dd 
roomRequestFilterff 
.ff 

AssignedToff (
=ff) *
userff+ /
.ff/ 0
Roomff0 4
.ff4 5

RoomNumberff5 ?
;ff? @
roomRequestFiltergg 
.gg 
RequestStatusgg +
=gg, -
newgg. 1
Listgg2 6
<gg6 7
intgg7 :
>gg: ;
{gg< =
(gg> ?
intgg? B
)ggB C
RoomRequestStatusggD U
.ggU V

InProgressggV `
,gg` a
(ggb c
intggc f
)ggf g
RoomRequestStatusggh y
.ggy z
Paused	ggz �
}
gg� �
;
gg� �
responseii 
.ii 
IsValidii 
=ii 
trueii #
;ii# $
responsejj 
.jj 
Datajj 
=jj 
awaitjj !"
_roomRequestRepositoryjj" 8
.jj8 9#
GetFilteredRoomRequestsjj9 P
(jjP Q
roomRequestFilterjjQ b
)jjb c
;jjc d
returnkk 
responsekk 
;kk 
}ll 	
publicnn 
asyncnn 
Tasknn 
<nn 
ServiceResponsenn )
<nn) *
RoomRequestDtonn* 8
>nn8 9
>nn9 :
GetRoomRequestnn; I
(nnI J
intnnJ M
roomRequestIdnnN [
,nn[ \
stringnn] c
userRoomNumbernnd r
,nnr s
Listnnt x
<nnx y
stringnny 
>	nn �
	userRoles
nn� �
)
nn� �
{oo 	
ServiceResponsepp 
<pp 
RoomRequestDtopp *
>pp* +
responsepp, 4
=pp5 6
newpp7 :
(pp: ;
)pp; <
;pp< =
RoomRequestrr 
roomRequestrr #
=rr$ %
awaitrr& +"
_roomRequestRepositoryrr, B
.rrB C
GetRoomRequestByIdrrC U
(rrU V
roomRequestIdrrV c
)rrc d
;rrd e
iftt 
(tt 
roomRequesttt 
istt 
nulltt #
)tt# $
{uu 
responsevv 
.vv 

StatusCodevv #
=vv$ %
(vv& '
intvv' *
)vv* +
HttpStatusCodevv+ 9
.vv9 :
NotFoundvv: B
;vvB C
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
}yy 
	HotelUser{{ 
user{{ 
={{ 
await{{ " 
_hotelUserRepository{{# 7
.{{7 8,
 GetHotelUserWithRoomByRoomNumber{{8 X
({{X Y
userRoomNumber{{Y g
){{g h
;{{h i
if}} 
(}} 
user}} 
is}} 
null}} 
)}} 
{~~ 
response 
. 

StatusCode #
=$ %
(& '
int' *
)* +
HttpStatusCode+ 9
.9 :
NotFound: B
;B C
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
�� 
roomRequest
�� 
.
�� 
Room
��  
.
��  !

RoomNumber
��! +
!=
��, .
user
��/ 3
.
��3 4
Room
��4 8
.
��8 9

RoomNumber
��9 C
&&
��D F
!
��G H
	CheckRole
��H Q
(
��Q R
	userRoles
��R [
,
��[ \
Roles
��] b
.
��b c
Employee
��c k
.
��k l
ToList
��l r
(
��r s
)
��s t
)
��t u
)
��u v
{
�� 
response
�� 
.
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
	Forbidden
��: C
;
��C D
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
��' (
RoomRequestDto
��( 6
>
��6 7
(
��7 8
roomRequest
��8 C
)
��C D
;
��D E
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
NotFound
��: B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
NotFound
��: B
;
��B C
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
�� 
	CheckRole
�� 
(
�� 
	userRoles
�� $
,
��$ %
new
��& )
List
��* .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
)
��7 8
{
��9 :
roomRequest
��; F
.
��F G

Department
��G Q
}
��R S
)
��S T
)
��T U
{
�� 
response
�� 
.
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
	Forbidden
��: C
;
��C D
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
Conflict
��: B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
NotFound
��: B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
NotFound
��: B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
Conflict
��: B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
	Forbidden
��: C
;
��C D
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
NotFound
��: B
;
��B C
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
�� 
List
�� 
<
�� 
TimeSpan
�� 
>
�� 
	durations
�� $
=
��% &
await
��' ,$
_roomRequestRepository
��- C
.
��C D%
GetRoomRequestsDuration
��D [
(
��[ \
user
��\ `
)
��` a
;
��a b
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
�� 
	durations
�� %
.
��% &
Mean
��& *
(
��* +
)
��+ ,
;
��, -
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
��/ 0#
SafeDeleteRoomRequest
��1 F
(
��F G
int
��G J
roomRequestId
��K X
,
��X Y
string
��Z `
userRoomNumber
��a o
,
��o p
List
��q u
<
��u v
string
��v |
>
��| }
	userRoles��~ �
)��� �
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
��2 3
RoomRequest
�� 
roomRequest
�� #
=
��$ %
await
��& +$
_roomRequestRepository
��, B
.
��B C 
GetRoomRequestById
��C U
(
��U V
roomRequestId
��V c
)
��c d
;
��d e
if
�� 
(
�� 
roomRequest
�� 
is
�� 
null
�� #
)
��# $
{
�� 
response
�� 
.
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
NotFound
��: B
;
��B C
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
��; <!
RoomRequestNotFound
��< O
)
��O P
;
��P Q
return
�� 
response
�� 
;
��  
}
�� 
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
NotFound
��: B
;
��B C
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
��G H
	CheckRole
��H Q
(
��Q R
	userRoles
��R [
,
��[ \
Roles
��] b
.
��b c
Employee
��c k
.
��k l
ToList
��l r
(
��r s
)
��s t
)
��t u
)
��u v
{
�� 
response
�� 
.
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
	Forbidden
��: C
;
��C D
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
��F G
	CheckRole
��G P
(
��P Q
	userRoles
��Q Z
,
��Z [
new
��\ _
List
��` d
<
��d e
string
��e k
>
��k l
{
��m n
Roles
��o t
.
��t u
Admin
��u z
}
��z {
)
��{ |
)
��| }
{
�� 
response
�� 
.
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :
Conflict
��: B
;
��B C
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
�� 

StatusCode
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
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
�� 
	CheckRole
�� %
(
��% &
List
��& *
<
��* +
string
��+ 1
>
��1 2
	userRoles
��3 <
,
��< =
List
��> B
<
��B C
string
��C I
>
��I J
requiredRoles
��K X
)
��X Y
{
�� 	
if
�� 
(
�� 
!
�� 
	userRoles
�� 
.
�� 
Any
�� 
(
�� 
role
�� #
=>
��$ &
requiredRoles
��' 4
.
��4 5
Contains
��5 =
(
��= >
role
��> B
)
��B C
)
��C D
&&
��E G
!
��H I
	userRoles
��I R
.
��R S
Any
��S V
(
��V W
role
��W [
=>
��\ ^
Roles
��_ d
.
��d e
Admin
��e j
.
��j k
Contains
��k s
(
��s t
role
��t x
)
��x y
)
��y z
)
��z {
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
}
�� 
}�� �0
]C:\Users\34626\source\repos\SoleusHotel\SoleusHotelApi\SoleusHotelApi\Services\RoomService.cs
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
class 
RoomService 
: 
IRoomService +
{ 
private 
readonly 
IRoomRepository (
_roomRepository) 8
;8 9
public 
RoomService 
( 
IRoomRepository *
roomRepository+ 9
)9 :
{ 	
_roomRepository 
= 
roomRepository ,
;, -
} 	
public 
async 
Task 
< 
ServiceResponse )
<) *
bool* .
>. /
>/ 0

UpdateRoom1 ;
(; <
CreateHotelUserDto< N
createHotelUserDtoO a
)a b
{ 	
ServiceResponse 
< 
bool  
>  !
response" *
=+ ,
new- 0
(0 1
)1 2
;2 3
Room 
room 
= 
await 
_roomRepository -
.- .
GetRoomByRoomNumber. A
(A B
createHotelUserDtoB T
.T U

RoomNumberU _
)_ `
;` a
if 
( 
room 
is 
null 
) 
{ 
response 
. 

StatusCode #
=$ %
(& '
int' *
)* +
HttpStatusCode+ 9
.9 :
NotFound: B
;B C
response 
. 
Errors 
.  
Add  #
(# $
RoomServiceError$ 4
.4 5
RoomNotFound5 A
)A B
;B C
return 
response 
;  
} 
room   
.   
CheckInDate   
=   
createHotelUserDto   1
.  1 2
CheckInDate  2 =
;  = >
room!! 
.!! 
CheckOutDate!! 
=!! 
createHotelUserDto!!  2
.!!2 3
CheckOutDate!!3 ?
;!!? @
_roomRepository## 
.## 
Update## "
(##" #
room### '
)##' (
;##( )
if%% 
(%% 
!%% 
await%% 
_roomRepository%% &
.%%& '
SaveAllAsync%%' 3
(%%3 4
)%%4 5
)%%5 6
{&& 
response'' 
.'' 

StatusCode'' #
=''$ %
(''& '
int''' *
)''* +
HttpStatusCode''+ 9
.''9 :
InternalServerError'': M
;''M N
response(( 
.(( 
Errors(( 
.((  
Add((  #
(((# $
RoomServiceError(($ 4
.((4 5
UnableToChangeDates((5 H
+((I J
room((K O
.((O P

RoomNumber((P Z
)((Z [
;(([ \
return)) 
response)) 
;))  
}** 
response,, 
.,, 
IsValid,, 
=,, 
response,, '
.,,' (
Data,,( ,
=,,- .
true,,/ 3
;,,3 4
return-- 
response-- 
;-- 
}.. 	
public00 
async00 
Task00 
<00 
ServiceResponse00 )
<00) *
bool00* .
>00. /
>00/ 0
AddUserToRoom001 >
(00> ?
	HotelUser00? H
user00I M
,00M N
CreateHotelUserDto00O a
createdHotelUserDto00b u
)00u v
{11 	
ServiceResponse22 
<22 
bool22  
>22  !
response22" *
=22+ ,
new22- 0
(220 1
)221 2
;222 3
Room44 
room44 
=44 
await44 
_roomRepository44 -
.44- .
GetRoomByRoomNumber44. A
(44A B
createdHotelUserDto44B U
.44U V

RoomNumber44V `
)44` a
;44a b
if66 
(66 
room66 
is66 
null66 
)66 
{77 
room88 
=88 
new88 
Room88 
(88  
)88  !
{99 

RoomNumber:: 
=::  
createdHotelUserDto::! 4
.::4 5

RoomNumber::5 ?
,::? @
CheckInDate;; 
=;;  !
createdHotelUserDto;;" 5
.;;5 6
CheckInDate;;6 A
,;;A B
CheckOutDate<<  
=<<! "
createdHotelUserDto<<# 6
.<<6 7
CheckOutDate<<7 C
}== 
;== 
await>> 
_roomRepository>> %
.>>% &
AddRoom>>& -
(>>- .
room>>. 2
)>>2 3
;>>3 4
}?? 
roomAA 
.AA 
UserIdAA 
=AA 
userAA 
.AA 
IdAA !
;AA! "
ifCC 
(CC 
!CC 
awaitCC 
_roomRepositoryCC &
.CC& '
SaveAllAsyncCC' 3
(CC3 4
)CC4 5
)CC5 6
{DD 
responseEE 
.EE 

StatusCodeEE #
=EE$ %
(EE& '
intEE' *
)EE* +
HttpStatusCodeEE+ 9
.EE9 :
InternalServerErrorEE: M
;EEM N
responseFF 
.FF 
ErrorsFF 
.FF  
AddFF  #
(FF# $
RoomServiceErrorFF$ 4
.FF4 5
UnableToAddUserFF5 D
+FFE F
roomFFG K
.FFK L

RoomNumberFFL V
)FFV W
;FFW X
returnGG 
responseGG 
;GG  
}HH 
responseJJ 
.JJ 
IsValidJJ 
=JJ 
responseJJ '
.JJ' (
DataJJ( ,
=JJ- .
trueJJ/ 3
;JJ3 4
returnKK 
responseKK 
;KK 
}LL 	
}MM 
}NN � 
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