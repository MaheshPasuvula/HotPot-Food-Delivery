�
PC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\WeatherForecast.cs
	namespace 	
HotPotProject
 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateOnly 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
TemperatureC 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
int		 
TemperatureF		 
=>		  "
$num		# %
+		& '
(		( )
int		) ,
)		, -
(		- .
TemperatureC		. :
/		; <
$num		= C
)		C D
;		D E
public 
string 
? 
Summary 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �3
WC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Services\TokenServices.cs
	namespace 	
HotPotProject
 
. 
Services  
{		 
public

 

class

 
TokenServices

 
:

  
ITokenServices

! /
{ 
private 
readonly 
string 

_keyString  *
;* +
private 
readonly  
SymmetricSecurityKey -
_key. 2
;2 3
public 
TokenServices 
( 
IConfiguration +
configuration, 9
)9 :
{ 	

_keyString 
= 
configuration &
[& '
$str' 2
]2 3
.3 4
ToString4 <
(< =
)= >
;> ?
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
(B C

_keyStringC M
)M N
)N O
;O P
} 	
public 
async 
Task 
< 
string  
>  !
GenerateToken" /
(/ 0
LoginUserDTO0 <
	loginUser= F
)F G
{ 	
string 
token 
= 
string !
.! "
Empty" '
;' (
var 
claims 
= 
new 
List !
<! "
Claim" '
>' (
{ 
new 
Claim 
( #
JwtRegisteredClaimNames 1
.1 2
NameId2 8
,8 9
	loginUser9 B
.B C
UserNameC K
)K L
,L M
new 
Claim 
( 

ClaimTypes $
.$ %
Role% )
,) *
	loginUser* 3
.3 4
Role4 8
)8 9
} 
; 
var 
cred 
= 
new 
SigningCredentials -
(- .
_key. 2
,2 3
SecurityAlgorithms4 F
.F G

HmacSha256G Q
)Q R
;R S
var!! 
tokenDescription!!  
=!!! "
new!!# &#
SecurityTokenDescriptor!!' >
{"" 
Subject## 
=## 
new## 
ClaimsIdentity## ,
(##, -
claims##- 3
)##3 4
,##4 5
Expires$$ 
=$$ 
DateTime$$ "
.$$" #
Today$$# (
.$$( )
AddDays$$) 0
($$0 1
$num$$1 2
)$$2 3
,$$3 4
SigningCredentials%% "
=%%# $
cred%%% )
}&& 
;&& 
var(( 
tokenHandler(( 
=(( 
new(( "#
JwtSecurityTokenHandler((# :
(((: ;
)((; <
;((< =
var)) 
myToken)) 
=)) 
tokenHandler)) &
.))& '
CreateToken))' 2
())2 3
tokenDescription))3 C
)))C D
;))D E
token** 
=** 
tokenHandler**  
.**  !

WriteToken**! +
(**+ ,
myToken**, 3
)**3 4
;**4 5
return,, 
token,, 
;,, 
}-- 	
public.. 
async.. 
Task.. 
<.. 
string..  
>..  !)
GenerateAllAuthorizationToken.." ?
(..? @
LoginUserDTO..@ L
	loginUser..M V
)..V W
{// 	
string00 
token00 
=00 
string00 !
.00! "
Empty00" '
;00' (
var22 
claims22 
=22 
new22 
List22 !
<22! "
Claim22" '
>22' (
{33 
new44 
Claim44 
(44 #
JwtRegisteredClaimNames44 %
.44% &
NameId44& ,
,44, -
	loginUser44. 7
.447 8
UserName448 @
)44@ A
,44A B
new55 
Claim55 
(55 

ClaimTypes55 
.55 
Role55 
,55 
$str55 &
)55& '
,55' (
new66 
Claim66 
(66 

ClaimTypes66 
.66 
Role66 
,66 
$str66 %
)66% &
,66& '
new77 
Claim77 
(77 

ClaimTypes77 
.77 
Role77 
,77 
$str77 )
)77) *
,77* +
new88 
Claim88 
(88 

ClaimTypes88 
.88 
Role88 
,88 
$str88 0
)880 1
,881 2
new99 
Claim99 
(99 

ClaimTypes99 
.99 
Role99 
,99 
$str99 1
)991 2
}:: 
;:: 
var<< 
cred<< 
=<< 
new<< 
SigningCredentials<< -
(<<- .
_key<<. 2
,<<2 3
SecurityAlgorithms<<4 F
.<<F G

HmacSha256<<G Q
)<<Q R
;<<R S
var>> 
tokenDescription>>  
=>>! "
new>># &#
SecurityTokenDescriptor>>' >
{?? 
Subject@@ 
=@@ 
new@@ 
ClaimsIdentity@@ ,
(@@, -
claims@@- 3
)@@3 4
,@@4 5
ExpiresAA 
=AA 
DateTimeAA "
.AA" #
TodayAA# (
.AA( )
AddDaysAA) 0
(AA0 1
$numAA1 2
)AA2 3
,AA3 4
SigningCredentialsBB "
=BB# $
credBB% )
}CC 
;CC 
varEE 
tokenHandlerEE 
=EE 
newEE "#
JwtSecurityTokenHandlerEE# :
(EE: ;
)EE; <
;EE< =
varFF 
myTokenFF 
=FF 
tokenHandlerFF &
.FF& '
CreateTokenFF' 2
(FF2 3
tokenDescriptionFF3 C
)FFC D
;FFD E
tokenGG 
=GG 
tokenHandlerGG  
.GG  !

WriteTokenGG! +
(GG+ ,
myTokenGG, 3
)GG3 4
;GG4 5
returnII 
tokenII 
;II 
}JJ 	
}KK 
}LL ��
`C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Services\RestaurantUserServices.cs
	namespace

 	
HotPotProject


 
.

 
Services

  
{ 
public 

class "
RestaurantUserServices '
:( )#
IRestaurantUserServices* A
{ 
private 
readonly 
IRepository $
<$ %
int% (
,( )
String* 0
,0 1

Restaurant2 <
>< =
_restaurantRepo> M
;M N
private 
readonly 
IRepository $
<$ %
int% (
,( )
String* 0
,0 1
City2 6
>6 7
	_cityRepo8 A
;A B
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
Menu2 6
>6 7
	_menuRepo8 A
;A B
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
Payment2 9
>9 :
_paymentRepo; G
;G H
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
Order2 7
>7 8

_orderRepo9 C
;C D
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
User2 6
>6 7
	_userRepo8 A
;A B
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
RestaurantOwner2 A
>A B
_restOwnerRepoC Q
;Q R
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1 
RestaurantSpeciality2 F
>F G
_specialityRepoH W
;W X
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
CustomerReview2 @
>@ A
_reviewRepoB M
;M N
private 
readonly 
ITokenServices '
_tokenServices( 6
;6 7
private 
ILogger 
< "
RestaurantUserServices .
>. /
_logger0 7
;7 8
public "
RestaurantUserServices %
(% &
IRepository& 1
<1 2
int2 5
,5 6
String7 =
,= >

Restaurant? I
>I J
restaurantRepoK Y
,Y Z
IRepository& 1
<1 2
int2 5
,5 6
String7 =
,= >
City? C
>C D
cityRepoE M
,M N
IRepository& 1
<1 2
int2 5
,5 6
String7 =
,= >
Menu? C
>C D
menuRepoE M
,M N
IRepository& 1
<1 2
int2 5
,5 6
string7 =
,= >
Payment? F
>F G
paymentRepoH S
,S T
IRepository& 1
<1 2
int2 5
,5 6
string7 =
,= >
Order? D
>D E
	orderRepoF O
,O P
IRepository  & 1
<  1 2
int  2 5
,  5 6
string  7 =
,  = >
User  ? C
>  C D
userRepo  E M
,  M N
IRepository!!& 1
<!!1 2
int!!2 5
,!!5 6
string!!7 =
,!!= >
RestaurantOwner!!? N
>!!N O
restOwnerRepo!!P ]
,!!] ^
IRepository""& 1
<""1 2
int""2 5
,""5 6
string""7 =
,""= > 
RestaurantSpeciality""? S
>""S T
specialityRepo""U c
,""c d
IRepository##& 1
<##1 2
int##2 5
,##5 6
string##7 =
,##= >
CustomerReview##? M
>##M N

reviewRepo##O Y
,##Y Z
ITokenServices$$& 4
tokenServices$$5 B
,$$B C
ILogger%%& -
<%%- ."
RestaurantUserServices%%. D
>%%D E
logger%%F L
)%%L M
{&& 	
_restaurantRepo'' 
='' 
restaurantRepo'' ,
;'', -
	_cityRepo(( 
=(( 
cityRepo((  
;((  !
	_menuRepo)) 
=)) 
menuRepo))  
;))  !
_paymentRepo** 
=** 
paymentRepo** &
;**& '

_orderRepo++ 
=++ 
	orderRepo++ "
;++" #
	_userRepo,, 
=,, 
userRepo,,  
;,,  !
_restOwnerRepo-- 
=-- 
restOwnerRepo-- *
;--* +
_specialityRepo.. 
=.. 
specialityRepo.. ,
;.., -
_reviewRepo// 
=// 

reviewRepo// $
;//$ %
_tokenServices00 
=00 
tokenServices00 *
;00* +
_logger11 
=11 
logger11 
;11 
}22 	
public44 
async44 
Task44 
<44 
Menu44 
>44 
AddMenuItem44  +
(44+ ,
Menu44, 0
menu441 5
)445 6
{55 	
var66 

restaurant66 
=66 
await66 "
_restaurantRepo66# 2
.662 3
GetAsync663 ;
(66; <
menu66< @
.66@ A
RestaurantId66A M
)66M N
;66N O
if77 
(77 

restaurant77 
!=77 
null77 "
)77" #
{88 
var99 
newItem99 
=99 
await99 #
	_menuRepo99$ -
.99- .
Add99. 1
(991 2
menu992 6
)996 7
;997 8
return:: 
newItem:: 
;:: 
};; 
throw<< 
new<< '
RestaurantNotFoundException<< 1
(<<1 2
)<<2 3
;<<3 4
}== 	
public?? 
async?? 
Task?? 
<?? 

Restaurant?? $
>??$ %
AddRestaurant??& 3
(??3 4

Restaurant??4 >

restaurant??? I
)??I J
{@@ 	

restaurantAA 
=AA 
awaitAA 
_restaurantRepoAA .
.AA. /
AddAA/ 2
(AA2 3

restaurantAA3 =
)AA= >
;AA> ?
returnBB 

restaurantBB 
;BB 
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE 
OrderEE 
>EE  
ChangeOrderStatusEE! 2
(EE2 3
intEE3 6
orderIdEE7 >
,EE> ?
stringEE@ F
	newStatusEEG P
)EEP Q
{FF 	
varGG 
orderGG 
=GG 
awaitGG 

_orderRepoGG (
.GG( )
GetAsyncGG) 1
(GG1 2
orderIdGG2 9
)GG9 :
;GG: ;
ifHH 
(HH 
orderHH 
!=HH 
nullHH 
)HH 
{II 
orderJJ 
.JJ 
StatusJJ 
=JJ 
	newStatusJJ (
.JJ( )
ToLowerJJ) 0
(JJ0 1
)JJ1 2
;JJ2 3
orderKK 
=KK 
awaitKK 

_orderRepoKK (
.KK( )
UpdateKK) /
(KK/ 0
orderKK0 5
)KK5 6
;KK6 7
returnLL 
orderLL 
;LL 
}MM 
throwNN 
newNN #
OrdersNotFoundExceptionNN -
(NN- .
)NN. /
;NN/ 0
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
ListQQ 
<QQ 
OrderQQ $
>QQ$ %
>QQ% &
GetAllOrdersQQ' 3
(QQ3 4
intQQ4 7
RestaurantIdQQ8 D
)QQD E
{RR 	
varSS 
ordersSS 
=SS 
awaitSS 

_orderRepoSS )
.SS) *
GetAsyncSS* 2
(SS2 3
)SS3 4
;SS4 5
varTT 
ordersForRestaurantTT #
=TT$ %
ordersTT& ,
.TT, -
WhereTT- 2
(TT2 3
oTT3 4
=>TT5 7
oTT8 9
.TT9 :
RestaurantIdTT: F
==TTG I
RestaurantIdTTJ V
)TTV W
.TTW X
ToListTTX ^
(TT^ _
)TT_ `
;TT` a
ifUU 
(UU 
ordersForRestaurantUU #
!=UU$ &
nullUU' +
||UU, .
ordersForRestaurantUU/ B
.UUB C
CountUUC H
>UUI J
$numUUK L
)UUL M
returnVV 
ordersForRestaurantVV *
;VV* +
throwWW 
newWW #
OrdersNotFoundExceptionWW -
(WW- .
)WW. /
;WW/ 0
}XX 	
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
ListZZ 
<ZZ 
OrderZZ $
>ZZ$ %
>ZZ% &
GetAllOrdersZZ' 3
(ZZ3 4
)ZZ4 5
{[[ 	
var\\ 
orders\\ 
=\\ 
await\\ 

_orderRepo\\ )
.\\) *
GetAsync\\* 2
(\\2 3
)\\3 4
;\\4 5
if]] 
(]] 
orders]] 
!=]] 
null]] 
||]] !
orders]]" (
.]]( )
Count]]) .
>]]/ 0
$num]]1 2
)]]2 3
return^^ 
orders^^ 
;^^ 
throw__ 
new__ #
OrdersNotFoundException__ -
(__- .
)__. /
;__/ 0
}`` 	
publicbb 
asyncbb 
Taskbb 
<bb 
Listbb 
<bb 
Paymentbb &
>bb& '
>bb' (
GetAllPaymentsbb) 7
(bb7 8
intbb8 ;
RestaurantIdbb< H
)bbH I
{cc 	
vardd 
paymentsdd 
=dd 
awaitdd  
_paymentRepodd! -
.dd- .
GetAsyncdd. 6
(dd6 7
)dd7 8
;dd8 9
varee 
ordersee 
=ee 
awaitee 

_orderRepoee )
.ee) *
GetAsyncee* 2
(ee2 3
)ee3 4
;ee4 5
Listff 
<ff 
Paymentff 
>ff !
paymentsForRestaurantff /
=ff0 1
(ff2 3
fromff3 7
paymentff8 ?
inff@ B
paymentsffC K
joingg3 7
ordergg8 =
ingg> @
ordersggA G
onggH J
paymentggK R
.ggR S
OrderIdggS Z
equalsgg[ a
orderggb g
.ggg h
OrderIdggh o
wherehh3 8
orderhh9 >
.hh> ?
RestaurantIdhh? K
==hhL N
RestaurantIdhhO [
selectii3 9
paymentii: A
)iiA B
.iiB C
ToListiiC I
(iiI J
)iiJ K
;iiK L
ifjj 
(jj !
paymentsForRestaurantjj %
!=jj& (
nulljj) -
||jj. 0!
paymentsForRestaurantjj1 F
.jjF G
CountjjG L
>jjM N
$numjjO P
)jjP Q
returnkk !
paymentsForRestaurantkk ,
;kk, -
throwll 
newll %
PaymentsNotFoundExceptionll /
(ll/ 0
)ll0 1
;ll1 2
}mm 	
publicoo 
asyncoo 
Taskoo 
<oo 
Listoo 
<oo 
Paymentoo &
>oo& '
>oo' (
GetAllPaymentsoo) 7
(oo7 8
)oo8 9
{pp 	
varqq 
paymentsqq 
=qq 
awaitqq  
_paymentRepoqq! -
.qq- .
GetAsyncqq. 6
(qq6 7
)qq7 8
;qq8 9
ifrr 
(rr 
paymentsrr 
!=rr 
nullrr  
||rr! #
paymentsrr$ ,
.rr, -
Countrr- 2
>rr3 4
$numrr5 6
)rr6 7
returnss 
paymentsss 
;ss  
throwtt 
newtt %
PaymentsNotFoundExceptiontt /
(tt/ 0
)tt0 1
;tt1 2
}uu 	
publicww 
asyncww 
Taskww 
<ww 
LoginUserDTOww &
>ww& '
LogInRestaurantww( 7
(ww7 8
LoginUserDTOww8 D
loginRestaurantwwE T
)wwT U
{xx 	
varyy 
useryy 
=yy 
awaityy 
	_userRepoyy &
.yy& '
GetAsyncyy' /
(yy/ 0
loginRestaurantyy0 ?
.yy? @
UserNameyy@ H
)yyH I
;yyI J
ifzz 
(zz 
userzz 
==zz 
nullzz 
)zz 
throw{{ 
new{{  
InvalidUserException{{ .
({{. /
){{/ 0
;{{0 1
var|| 
owners|| 
=|| 
await|| 
_restOwnerRepo|| -
.||- .
GetAsync||. 6
(||6 7
)||7 8
;||8 9
var}} 
owner}} 
=}} 
owners}} 
.}} 
FirstOrDefault}} -
(}}- .
o}}. /
=>}}0 2
o}}3 4
.}}4 5
UserName}}5 =
==}}> @
loginRestaurant}}A P
.}}P Q
UserName}}Q Y
)}}Y Z
;}}Z [
var~~ 
password~~ 
=~~  
getEncryptedPassword~~ /
(~~/ 0
loginRestaurant~~0 ?
.~~? @
Password~~@ H
,~~H I
user~~J N
.~~N O
Key~~O R
)~~R S
;~~S T
bool 
matchPassword 
=  
passwordMatch! .
(. /
password/ 7
,7 8
user9 =
.= >
Password> F
)F G
;G H
if
�� 
(
�� 
matchPassword
�� 
)
�� 
{
�� 
loginRestaurant
�� 
.
��  
Password
��  (
=
��) *
$str
��+ -
;
��- .
loginRestaurant
�� 
.
��  
Role
��  $
=
��% &
user
��' +
.
��+ ,
Role
��, 0
;
��0 1
loginRestaurant
�� 
.
��  
UserId
��  &
=
��' (
owner
��) .
.
��. /
RestaurantId
��/ ;
;
��; <
loginRestaurant
�� 
.
��  
Token
��  %
=
��& '
await
��( -
_tokenServices
��. <
.
��< =
GenerateToken
��= J
(
��J K
loginRestaurant
��K Z
)
��Z [
;
��[ \
return
�� 
loginRestaurant
�� &
;
��& '
}
�� 
throw
�� 
new
�� "
InvalidUserException
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
[
�� 	%
ExcludeFromCodeCoverage
��	  
]
��  !
public
�� 
bool
�� 
passwordMatch
�� !
(
��! "
byte
��" &
[
��& '
]
��' (
password
��) 1
,
��1 2
byte
��3 7
[
��7 8
]
��8 9
userPassword
��: F
)
��F G
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
password
��  (
.
��( )
Length
��) /
;
��/ 0
i
��1 2
++
��2 4
)
��4 5
{
�� 
if
�� 
(
�� 
password
�� 
[
�� 
i
�� 
]
�� 
!=
��  "
userPassword
��# /
[
��/ 0
i
��0 1
]
��1 2
)
��2 3
return
�� 
false
��  
;
��  !
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
[
�� 	%
ExcludeFromCodeCoverage
��	  
]
��  !
public
�� 
byte
�� 
[
�� 
]
�� "
getEncryptedPassword
�� *
(
��* +
string
��+ 1
password
��2 :
,
��: ;
byte
��< @
[
��@ A
]
��A B
key
��C F
)
��F G
{
�� 	

HMACSHA512
�� 
hmac
�� 
=
�� 
new
�� !

HMACSHA512
��" ,
(
��, -
key
��- 0
)
��0 1
;
��1 2
var
�� 
userPwd
�� 
=
�� 
hmac
�� 
.
�� 
ComputeHash
�� *
(
��* +
Encoding
��+ 3
.
��3 4
UTF8
��4 8
.
��8 9
GetBytes
��9 A
(
��A B
password
��B J
)
��J K
)
��K L
;
��L M
return
�� 
userPwd
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
LoginUserDTO
�� &
>
��& ' 
RegisterRestaurant
��( :
(
��: ;#
RegisterRestaurantDTO
��; P 
registerRestaurant
��Q c
)
��c d
{
�� 	 
registerRestaurant
�� 
.
�� 
Role
�� #
=
��$ %
$str
��& 7
;
��7 8
User
�� 
newUser
�� 
=
�� 
new
�� &
RegisterToRestaurantUser
�� 7
(
��7 8 
registerRestaurant
��8 J
)
��J K
.
��K L
getUser
��L S
(
��S T
)
��T U
;
��U V
newUser
�� 
=
�� 
await
�� 
	_userRepo
�� %
.
��% &
Add
��& )
(
��) *
newUser
��* 1
)
��1 2
;
��2 3
var
��  
newRestaurantOwner
�� "
=
��# $
new
��% ("
RegisterToRestaurant
��) =
(
��= > 
registerRestaurant
��> P
)
��P Q
.
��Q R 
GetRestaurantOwner
��R d
(
��d e
)
��e f
;
��f g 
newRestaurantOwner
�� 
=
��  
await
��! &
_restOwnerRepo
��' 5
.
��5 6
Add
��6 9
(
��9 : 
newRestaurantOwner
��: L
)
��L M
;
��M N
LoginUserDTO
�� 
result
�� 
=
��  !
new
��" %
LoginUserDTO
��& 2
{
�� 
UserName
�� 
=
�� 
newUser
�� "
.
��" #
UserName
��# +
,
��+ ,
Role
�� 
=
�� 
newUser
�� 
.
�� 
Role
�� #
}
�� 
;
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� "
RestaurantSpeciality
�� 3
>
��3 4
>
��4 5 
GetAllSpecialities
��6 H
(
��H I
)
��I J
{
�� 	
var
�� 
specialities
�� 
=
�� 
await
�� $
_specialityRepo
��% 4
.
��4 5
GetAsync
��5 =
(
��= >
)
��> ?
;
��? @
return
�� 
specialities
�� 
;
��  
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� "
RestaurantSpeciality
�� .
>
��. /%
AddRestaurantSpeciality
��0 G
(
��G H"
RestaurantSpeciality
��H \"
restaurantspeciality
��] q
)
��q r
{
�� 	
var
�� 

restaurant
�� 
=
�� 
await
�� "
_restaurantRepo
��# 2
.
��2 3
GetAsync
��3 ;
(
��; <"
restaurantspeciality
��< P
.
��P Q
RestaurantId
��Q ]
)
��] ^
;
��^ _
if
�� 
(
�� 

restaurant
�� 
==
�� 
null
�� "
)
��" #
{
�� 
throw
�� 
new
�� )
RestaurantNotFoundException
�� 5
(
��5 6
$str
��6 M
)
��M N
;
��N O
}
�� 
var
�� 
addedSpeciality
�� 
=
��  !
await
��" '
_specialityRepo
��( 7
.
��7 8
Add
��8 ;
(
��; <"
restaurantspeciality
��< P
)
��P Q
;
��Q R
return
�� 
addedSpeciality
�� "
;
��" #
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
CustomerReview
�� -
>
��- .
>
��. / 
GetCustomerReviews
��0 B
(
��B C
)
��C D
{
�� 	
var
�� 
reviews
�� 
=
�� 
await
�� 
_reviewRepo
��  +
.
��+ ,
GetAsync
��, 4
(
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 
reviews
�� 
==
�� 
null
�� 
)
��  
throw
�� 
new
�� ,
NoCustomerReviewFoundException
�� 8
(
��8 9
)
��9 :
;
��: ;
return
�� 
reviews
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Menu
�� 
>
�� 
DeleteMenuItem
��  .
(
��. /
int
��/ 2

menuItemId
��3 =
)
��= >
{
�� 	
var
�� 
menuItem
�� 
=
�� 
await
��  
	_menuRepo
��! *
.
��* +
GetAsync
��+ 3
(
��3 4

menuItemId
��4 >
)
��> ?
;
��? @
if
�� 
(
�� 
menuItem
�� 
==
�� 
null
��  
)
��  !
throw
�� 
new
�� &
NoMenuAvailableException
�� 2
(
��2 3
)
��3 4
;
��4 5
menuItem
�� 
=
�� 
await
�� 
	_menuRepo
�� &
.
��& '
Delete
��' -
(
��- .

menuItemId
��. 8
)
��8 9
;
��9 :
return
�� 
menuItem
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
�� 
Order
�� 
>
��  
DeleteOrder
��! ,
(
��, -
int
��- 0
orderId
��1 8
)
��8 9
{
�� 	
var
�� 
order
�� 
=
�� 
await
�� 

_orderRepo
�� (
.
��( )
GetAsync
��) 1
(
��1 2
orderId
��2 9
)
��9 :
;
��: ;
if
�� 
(
�� 
order
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� %
OrdersNotFoundException
�� 1
(
��1 2
$str
��2 D
)
��D E
;
��E F
}
�� 
var
�� 
deletedOrder
�� 
=
�� 
await
�� $

_orderRepo
��% /
.
��/ 0
Delete
��0 6
(
��6 7
orderId
��7 >
)
��> ?
;
��? @
return
�� 
deletedOrder
�� 
;
��  
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 

Restaurant
�� )
>
��) *
>
��* +
GetAllRestaurants
��, =
(
��= >
)
��> ?
{
�� 	
var
�� 
restaurants
�� 
=
�� 
await
�� #
_restaurantRepo
��$ 3
.
��3 4
GetAsync
��4 <
(
��< =
)
��= >
;
��> ?
return
�� 
restaurants
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
Menu
�� #
>
��# $
>
��$ %
GetAllMenus
��& 1
(
��1 2
)
��2 3
{
�� 	
var
�� 
menus
�� 
=
�� 
await
�� 
	_menuRepo
�� '
.
��' (
GetAsync
��( 0
(
��0 1
)
��1 2
;
��2 3
return
�� 
menus
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
DeleteRestaurant
��  0
(
��0 1
int
��1 4
restaurantId
��5 A
)
��A B
{
�� 	
var
�� 

restaurant
�� 
=
�� 
await
�� "
_restaurantRepo
��# 2
.
��2 3
GetAsync
��3 ;
(
��; <
restaurantId
��< H
)
��H I
;
��I J
if
�� 
(
�� 

restaurant
�� 
==
�� 
null
�� "
)
��" #
{
�� 
throw
�� 
new
�� )
RestaurantNotFoundException
�� 5
(
��5 6
$str
��6 M
)
��M N
;
��N O
}
�� 
var
�� 
deletedRestaurant
�� !
=
��" #
await
��$ )
_restaurantRepo
��* 9
.
��9 :
Delete
��: @
(
��@ A
restaurantId
��A M
)
��M N
;
��N O
return
�� 
true
�� 
;
�� 
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
RestaurantOwner
�� )
>
��) **
GetRestaurantOwnerByUsername
��+ G
(
��G H
string
��H N
username
��O W
)
��W X
{
�� 	
var
�� 
restaurantOwner
�� 
=
��  !
await
��" '
_restOwnerRepo
��( 6
.
��6 7
GetAsync
��7 ?
(
��? @
username
��@ H
)
��H I
;
��I J
if
�� 
(
�� 
restaurantOwner
�� 
==
��  "
null
��# '
)
��' (
{
�� 
throw
�� 
new
�� .
 RestaurantOwnerNotFoundException
�� :
(
��: ;
$str
��; o
)
��o p
;
��p q
}
�� 
return
�� 
restaurantOwner
�� "
;
��" #
}
�� 	
}
�� 
}�� �_
aC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Services\DeliveryPartnerServices.cs
	namespace

 	
HotPotProject


 
.

 
Services

  
{ 
public 

class #
DeliveryPartnerServices (
:) *$
IDeliveryPartnerServices+ C
{ 
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
Order2 7
>7 8

_orderRepo9 C
;C D
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
DeliveryPartner2 A
>A B 
_deliveryPartnerRepoC W
;W X
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
User2 6
>6 7
	_userRepo8 A
;A B
private 
readonly 
ITokenServices '
_tokenServices( 6
;6 7
private 
readonly 
ILogger  
<  !#
DeliveryPartnerServices! 8
>8 9
_logger: A
;A B
public #
DeliveryPartnerServices &
(& '
IRepository' 2
<2 3
int3 6
,6 7
string8 >
,> ?
Order@ E
>E F
	orderRepoG P
,P Q
IRepository' 2
<2 3
int3 6
,6 7
string8 >
,> ?
DeliveryPartner@ O
>O P
deliveryPartnerRepoQ d
,d e
IRepository' 2
<2 3
int3 6
,6 7
string8 >
,> ?
User@ D
>D E
userRepoF N
,N O
ITokenServices' 5
tokenServices6 C
,C D
ILogger' .
<. /#
DeliveryPartnerServices/ F
>F G
loggerH N
)N O
{ 	

_orderRepo 
= 
	orderRepo "
;" # 
_deliveryPartnerRepo  
=! "
deliveryPartnerRepo# 6
;6 7
	_userRepo 
= 
userRepo  
;  !
_tokenServices 
= 
tokenServices *
;* +
_logger 
= 
logger 
; 
} 	
public   
async   
Task   
<   
Order   
>    
ChangeOrderStatus  ! 2
(  2 3
int  3 6
orderId  7 >
)  > ?
{!! 	
var"" 
order"" 
="" 
await"" 

_orderRepo"" (
.""( )
GetAsync"") 1
(""1 2
orderId""2 9
)""9 :
;"": ;
if## 
(## 
order## 
==## 
null## 
)## 
throw$$ 
new$$ #
OrdersNotFoundException$$ 1
($$1 2
)$$2 3
;$$3 4
order%% 
.%% 
Status%% 
=%% 
$str%% &
;%%& '
order&& 
=&& 
await&& 

_orderRepo&& $
.&&$ %
Update&&% +
(&&+ ,
order&&, 1
)&&1 2
;&&2 3
return'' 
order'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
DeliveryPartner** )
>**) *%
GetDeliveryPartnerDetails**+ D
(**D E
int**E H
	partnerId**I R
)**R S
{++ 	
var,, 
deliveryPartner,, 
=,,  !
await,," ' 
_deliveryPartnerRepo,,( <
.,,< =
GetAsync,,= E
(,,E F
	partnerId,,F O
),,O P
;,,P Q
return-- 
deliveryPartner-- "
;--" #
}.. 	
[00 	#
ExcludeFromCodeCoverage00	  
]00  !
public11 
async11 
Task11 
<11 
LoginUserDTO11 &
>11& ' 
LoginDeliveryPartner11( <
(11< =
LoginUserDTO11= I
	loginUser11J S
)11S T
{22 	
var33 
user33 
=33 
await33 
	_userRepo33 &
.33& '
GetAsync33' /
(33/ 0
	loginUser330 9
.339 :
UserName33: B
)33B C
;33C D
var44 
deliveryPartners44  
=44! "
await44# ( 
_deliveryPartnerRepo44) =
.44= >
GetAsync44> F
(44F G
)44G H
;44H I
var55 
deliveryPartner55 
=55  !
deliveryPartners55" 2
.552 3
FirstOrDefault553 A
(55A B
d55B C
=>55D F
d55G H
.55H I
UserName55I Q
==55R T
	loginUser55U ^
.55^ _
UserName55_ g
)55g h
;55h i
if66 
(66 
user66 
==66 
null66 
)66 
throw77 
new77 +
NoDeliveryPartnerFoundException77 9
(779 :
)77: ;
;77; <
var88 
password88 
=88  
getEncryptedPassword88 /
(88/ 0
	loginUser880 9
.889 :
Password88: B
,88B C
user88D H
.88H I
Key88I L
)88L M
;88M N
bool99 
matchPassword99 
=99  
passwordMatch99! .
(99. /
password99/ 7
,997 8
user999 =
.99= >
Password99> F
)99F G
;99G H
if:: 
(:: 
matchPassword:: 
):: 
{;; 
	loginUser<< 
.<< 
UserId<<  
=<<! "
deliveryPartner<<# 2
.<<2 3
	PartnerId<<3 <
;<<< =
	loginUser== 
.== 
UserName== "
===# $
	loginUser==% .
.==. /
UserName==/ 7
;==7 8
	loginUser>> 
.>> 
Password>> "
=>># $
$str>>% '
;>>' (
	loginUser?? 
.?? 
Role?? 
=??  
user??! %
.??% &
Role??& *
;??* +
	loginUser@@ 
.@@ 
Token@@ 
=@@  !
await@@" '
_tokenServices@@( 6
.@@6 7
GenerateToken@@7 D
(@@D E
	loginUser@@E N
)@@N O
;@@O P
returnAA 
	loginUserAA  
;AA  !
}BB 
throwCC 
newCC  
InvalidUserExceptionCC *
(CC* +
)CC+ ,
;CC, -
}DD 	
[FF 	#
ExcludeFromCodeCoverageFF	  
]FF  !
privateGG 
boolGG 
passwordMatchGG "
(GG" #
byteGG# '
[GG' (
]GG( )
passwordGG* 2
,GG2 3
byteGG4 8
[GG8 9
]GG9 :
userPasswordGG; G
)GGG H
{HH 	
forII 
(II 
intII 
iII 
=II 
$numII 
;II 
iII 
<II 
passwordII  (
.II( )
LengthII) /
;II/ 0
iII1 2
++II2 4
)II4 5
{JJ 
ifKK 
(KK 
passwordKK 
[KK 
iKK 
]KK 
!=KK  "
userPasswordKK# /
[KK/ 0
iKK0 1
]KK1 2
)KK2 3
returnLL 
falseLL  
;LL  !
}MM 
returnNN 
trueNN 
;NN 
}OO 	
[QQ 	#
ExcludeFromCodeCoverageQQ	  
]QQ  !
privateRR 
byteRR 
[RR 
]RR  
getEncryptedPasswordRR +
(RR+ ,
stringRR, 2
passwordRR3 ;
,RR; <
byteRR= A
[RRA B
]RRB C
keyRRD G
)RRG H
{SS 	

HMACSHA512TT 
hmacTT 
=TT 
newTT !

HMACSHA512TT" ,
(TT, -
keyTT- 0
)TT0 1
;TT1 2
varUU 
userPwdUU 
=UU 
hmacUU 
.UU 
ComputeHashUU *
(UU* +
EncodingUU+ 3
.UU3 4
UTF8UU4 8
.UU8 9
GetBytesUU9 A
(UUA B
passwordUUB J
)UUJ K
)UUK L
;UUL M
returnVV 
userPwdVV 
;VV 
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
LoginUserDTOYY &
>YY& '#
RegisterDeliveryPartnerYY( ?
(YY? @&
RegisterDeliveryPartnerDTOYY@ Z
deliveryPartnerYY[ j
)YYj k
{ZZ 	
User[[ 
myUser[[ 
=[[ 
new[[ )
RegisterToDeliveryPartnerUser[[ ;
([[; <
deliveryPartner[[< K
)[[K L
.[[L M
GetUser[[M T
([[T U
)[[U V
;[[V W
myUser\\ 
=\\ 
await\\ 
	_userRepo\\ $
.\\$ %
Add\\% (
(\\( )
myUser\\) /
)\\/ 0
;\\0 1
DeliveryPartner]] 
myDeliveryPartner]] -
=]]. /
new]]0 3%
RegisterToDeliveryPartner]]4 M
(]]M N
deliveryPartner]]N ]
)]]] ^
.]]^ _
GetDeliveryPartner]]_ q
(]]q r
)]]r s
;]]s t
myDeliveryPartner^^ 
=^^ 
await^^  % 
_deliveryPartnerRepo^^& :
.^^: ;
Add^^; >
(^^> ?
myDeliveryPartner^^? P
)^^P Q
;^^Q R
LoginUserDTO`` 
	loginUser`` "
=``# $
new``% (
LoginUserDTO``) 5
{aa 
UserIdbb 
=bb 
myDeliveryPartnerbb *
.bb* +
	PartnerIdbb+ 4
,bb4 5
UserNamecc 
=cc 
myUsercc !
.cc! "
UserNamecc" *
,cc* +
Roledd 
=dd 
myUserdd 
.dd 
Roledd "
}ee 
;ee 
returngg 
	loginUsergg 
;gg 
}hh 	
publicjj 
asyncjj 
Taskjj 
<jj 
DeliveryPartnerjj )
>jj) *(
UpdateDeliveryPartnerDetailsjj+ G
(jjG H
DeliveryPartnerjjH W
deliveryPartnerjjX g
)jjg h
{kk 	
varll 
updatedPartnerll 
=ll  
awaitll! & 
_deliveryPartnerRepoll' ;
.ll; <
Updatell< B
(llB C
deliveryPartnerllC R
)llR S
;llS T
returnmm 
updatedPartnermm !
;mm! "
}nn 	
publicpp 
asyncpp 
Taskpp 
<pp 
Listpp 
<pp 
Orderpp $
>pp$ %
>pp% &
GetAllOrderspp' 3
(pp3 4
intpp4 7
	partnerIdpp8 A
)ppA B
{qq 	
varrr 
ordersrr 
=rr 
awaitrr 

_orderReporr )
.rr) *
GetAsyncrr* 2
(rr2 3
)rr3 4
;rr4 5
varss 
ordersForPartnerss  
=ss! "
ordersss# )
.ss) *
Wheress* /
(ss/ 0
oss0 1
=>ss2 4
oss5 6
.ss6 7
	PartnerIdss7 @
==ssA C
	partnerIdssD M
)ssM N
.ssN O
ToListssO U
(ssU V
)ssV W
;ssW X
iftt 
(tt 
ordersForPartnertt  
==tt! #
nulltt$ (
)tt( )
throwuu 
newuu #
OrdersNotFoundExceptionuu 1
(uu1 2
)uu2 3
;uu3 4
returnvv 
ordersForPartnervv #
;vv# $
}ww 	
}xx 
}yy ��
ZC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Services\CustomerServices.cs
	namespace 	
HotPotProject
 
. 
Services  
{ 
public 

class 
CustomerServices !
:" #
ICustomerServices$ 5
{ 
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
Customer2 :
>: ;
	_custRepo< E
;E F
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
User2 6
>6 7
	_userRepo8 A
;A B
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
Menu2 6
>6 7
	_menuRepo8 A
;A B
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
Cart2 6
>6 7
	_cartRepo8 A
;A B
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
Order2 7
>7 8

_orderRepo9 C
;C D
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
	OrderItem2 ;
>; <
_orderItemRepo= K
;K L
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
Payment2 9
>9 :
_paymentRepo; G
;G H
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1

Restaurant2 <
>< =
_restaurantRepo> M
;M N
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
City2 6
>6 7
	_cityRepo8 A
;A B
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
CustomerAddress2 A
>A B
_custAddressRepoC S
;S T
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
CustomerReview2 @
>@ A
_custReviewRepoB Q
;Q R
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
DeliveryPartner2 A
>A B 
_deliveryPartnerRepoC W
;W X
private 
readonly 
ITokenServices '
_tokenServices( 6
;6 7
private 
readonly 
ILogger  
<  !
CustomerServices! 1
>1 2
_logger3 :
;: ;
public 
CustomerServices 
(  
IRepository  +
<+ ,
int, /
,/ 0
string1 7
,7 8
Customer9 A
>A B
custRepoC K
,K L
IRepository  +
<+ ,
int, /
,/ 0
string1 7
,7 8
User9 =
>= >
userRepo? G
,G H
IRepository    +
<  + ,
int  , /
,  / 0
string  1 7
,  7 8
Menu  9 =
>  = >
menuRepo  ? G
,  G H
IRepository!!  +
<!!+ ,
int!!, /
,!!/ 0
string!!1 7
,!!7 8
Cart!!9 =
>!!= >
cartRepo!!? G
,!!G H
IRepository""  +
<""+ ,
int"", /
,""/ 0
string""1 7
,""7 8
Order""9 >
>""> ?
	orderRepo""@ I
,""I J
IRepository##  +
<##+ ,
int##, /
,##/ 0
string##1 7
,##7 8
	OrderItem##9 B
>##B C
orderItemRepo##D Q
,##Q R
IRepository$$  +
<$$+ ,
int$$, /
,$$/ 0
string$$1 7
,$$7 8
Payment$$9 @
>$$@ A
paymentRepo$$B M
,$$M N
IRepository%%  +
<%%+ ,
int%%, /
,%%/ 0
String%%1 7
,%%7 8

Restaurant%%9 C
>%%C D
restaurantRepo%%E S
,%%S T
IRepository&&  +
<&&+ ,
int&&, /
,&&/ 0
String&&1 7
,&&7 8
City&&9 =
>&&= >
cityRepo&&? G
,&&G H
IRepository''  +
<''+ ,
int'', /
,''/ 0
string''1 7
,''7 8
CustomerAddress''9 H
>''H I
custAddressRepo''J Y
,''Y Z
IRepository((  +
<((+ ,
int((, /
,((/ 0
string((1 7
,((7 8
CustomerReview((9 G
>((G H
custReviewRepo((I W
,((W X
IRepository))  +
<))+ ,
int)), /
,))/ 0
string))1 7
,))7 8
DeliveryPartner))9 H
>))H I
deliveryPartnerRepo))J ]
,))] ^
ITokenServices**  .
tokenServices**/ <
,**< =
ILogger++  '
<++' (
CustomerServices++( 8
>++8 9
logger++: @
)++@ A
{,, 	
	_custRepo-- 
=-- 
custRepo--  
;--  !
	_userRepo.. 
=.. 
userRepo..  
;..  !
	_menuRepo// 
=// 
menuRepo//  
;//  !
	_cartRepo00 
=00 
cartRepo00  
;00  !

_orderRepo11 
=11 
	orderRepo11 "
;11" #
_orderItemRepo22 
=22 
orderItemRepo22 *
;22* +
_paymentRepo33 
=33 
paymentRepo33 &
;33& '
_restaurantRepo44 
=44 
restaurantRepo44 ,
;44, -
	_cityRepo55 
=55 
cityRepo55  
;55  !
_custAddressRepo66 
=66 
custAddressRepo66 .
;66. /
_custReviewRepo77 
=77 
custReviewRepo77 ,
;77, - 
_deliveryPartnerRepo88  
=88! "
deliveryPartnerRepo88# 6
;886 7
_tokenServices99 
=99 
tokenServices99 *
;99* +
_logger:: 
=:: 
logger:: 
;:: 
};; 	
[== 	#
ExcludeFromCodeCoverage==	  
]==  !
public>> 
async>> 
Task>> 
<>> 
LoginUserDTO>> &
>>>& '
LogIn>>( -
(>>- .
LoginUserDTO>>. :
loginCustomer>>; H
)>>H I
{?? 	
var@@ 
user@@ 
=@@ 
await@@ 
	_userRepo@@ &
.@@& '
GetAsync@@' /
(@@/ 0
loginCustomer@@0 =
.@@= >
UserName@@> F
)@@F G
;@@G H
varAA 
	customersAA 
=AA 
awaitAA !
	_custRepoAA" +
.AA+ ,
GetAsyncAA, 4
(AA4 5
)AA5 6
;AA6 7
varBB 
customerBB 
=BB 
	customersBB $
.BB$ %
FirstOrDefaultBB% 3
(BB3 4
cBB4 5
=>BB6 8
cBB9 :
.BB: ;
UserNameBB; C
==BBD F
loginCustomerBBG T
.BBT U
UserNameBBU ]
)BB] ^
;BB^ _
ifCC 
(CC 
userCC 
==CC 
nullCC 
)CC 
throwDD 
newDD  
InvalidUserExceptionDD .
(DD. /
)DD/ 0
;DD0 1
varEE 
passwordEE 
=EE  
getEncryptedPasswordEE /
(EE/ 0
loginCustomerEE0 =
.EE= >
PasswordEE> F
,EEF G
userEEH L
.EEL M
KeyEEM P
)EEP Q
;EEQ R
boolFF 
matchPasswordFF 
=FF  
passwordMatchFF! .
(FF. /
passwordFF/ 7
,FF7 8
userFF9 =
.FF= >
PasswordFF> F
)FFF G
;FFG H
ifGG 
(GG 
matchPasswordGG 
)GG 
{HH 
loginCustomerII 
.II 
UserIdII $
=II% &
customerII' /
.II/ 0
IdII0 2
;II2 3
loginCustomerJJ 
.JJ 
PasswordJJ &
=JJ' (
$strJJ) +
;JJ+ ,
loginCustomerKK 
.KK 
RoleKK "
=KK# $
userKK% )
.KK) *
RoleKK* .
;KK. /
loginCustomerLL 
.LL 
TokenLL #
=LL$ %
awaitLL& +
_tokenServicesLL, :
.LL: ;
GenerateTokenLL; H
(LLH I
loginCustomerLLI V
)LLV W
;LLW X
returnMM 
loginCustomerMM $
;MM$ %
}NN 
throwOO 
newOO  
InvalidUserExceptionOO *
(OO* +
)OO+ ,
;OO, -
}PP 	
[RR 	#
ExcludeFromCodeCoverageRR	  
]RR  !
privateSS 
boolSS 
passwordMatchSS "
(SS" #
byteSS# '
[SS' (
]SS( )
passwordSS* 2
,SS2 3
byteSS4 8
[SS8 9
]SS9 :
userPasswordSS; G
)SSG H
{TT 	
forUU 
(UU 
intUU 
iUU 
=UU 
$numUU 
;UU 
iUU 
<UU 
passwordUU  (
.UU( )
LengthUU) /
;UU/ 0
iUU1 2
++UU2 4
)UU4 5
{VV 
ifWW 
(WW 
passwordWW 
[WW 
iWW 
]WW 
!=WW  "
userPasswordWW# /
[WW/ 0
iWW0 1
]WW1 2
)WW2 3
returnXX 
falseXX  
;XX  !
}YY 
returnZZ 
trueZZ 
;ZZ 
}[[ 	
[]] 	#
ExcludeFromCodeCoverage]]	  
]]]  !
private^^ 
byte^^ 
[^^ 
]^^  
getEncryptedPassword^^ +
(^^+ ,
string^^, 2
password^^3 ;
,^^; <
byte^^= A
[^^A B
]^^B C
key^^D G
)^^G H
{__ 	

HMACSHA512`` 
hmac`` 
=`` 
new`` !

HMACSHA512``" ,
(``, -
key``- 0
)``0 1
;``1 2
varaa 
userPwdaa 
=aa 
hmacaa 
.aa 
ComputeHashaa *
(aa* +
Encodingaa+ 3
.aa3 4
UTF8aa4 8
.aa8 9
GetBytesaa9 A
(aaA B
passwordaaB J
)aaJ K
)aaK L
;aaL M
returnbb 
userPwdbb 
;bb 
}cc 	
publicee 
asyncee 
Taskee 
<ee 
LoginUserDTOee &
>ee& '
RegisterCustomeree( 8
(ee8 9
RegisterCustomerDTOee9 L
registerCustomereeM ]
)ee] ^
{ff 	
registerCustomergg 
.gg 
Rolegg !
=gg" #
$strgg$ .
;gg. /
Userhh 
myUserhh 
=hh 
newhh 
RegisterToUserhh ,
(hh, -
registerCustomerhh- =
)hh= >
.hh> ?
getUserhh? F
(hhF G
)hhG H
;hhH I
myUserii 
=ii 
awaitii 
	_userRepoii $
.ii$ %
Addii% (
(ii( )
myUserii) /
)ii/ 0
;ii0 1
Customerjj 

myCustomerjj 
=jj  !
newjj" %
RegisterToCustomerjj& 8
(jj8 9
registerCustomerjj9 I
)jjI J
.jjJ K
GetCustomerjjK V
(jjV W
)jjW X
;jjX Y

myCustomerkk 
=kk 
awaitkk 
	_custRepokk (
.kk( )
Addkk) ,
(kk, -

myCustomerkk- 7
)kk7 8
;kk8 9
CustomerAddressll 
customerAddressll +
=ll, -
newll. 1
CustomerAddressll2 A
(llA B
)llB C
{mm 

CustomerIdnn 
=nn 

myCustomernn '
.nn' (
Idnn( *
,nn* +
CityIdoo 
=oo 
$numoo 
}pp 
;pp 
customerAddressqq 
=qq 
awaitqq #
_custAddressRepoqq$ 4
.qq4 5
Addqq5 8
(qq8 9
customerAddressqq9 H
)qqH I
;qqI J
LoginUserDTOrr 
resultrr 
=rr  !
newrr" %
LoginUserDTOrr& 2
{ss 
UserIdtt 
=tt 

myCustomertt #
.tt# $
Idtt$ &
,tt& '
UserNameuu 
=uu 
myUseruu !
.uu! "
UserNameuu" *
,uu* +
Rolevv 
=vv 
myUservv 
.vv 
Rolevv "
}ww 
;ww 
returnxx 
resultxx 
;xx 
}yy 	
public{{ 
async{{ 
Task{{ 
<{{ 
List{{ 
<{{ 
Menu{{ #
>{{# $
>{{$ %
GetMenuByRestaurant{{& 9
({{9 :
int{{: =
RestaurantId{{> J
){{J K
{|| 	
var}} 

menusItems}} 
=}} 
await}} "
	_menuRepo}}# ,
.}}, -
GetAsync}}- 5
(}}5 6
)}}6 7
;}}7 8
var~~ 
menuForRestaurant~~ !
=~~" #

menusItems~~$ .
.~~. /
Where~~/ 4
(~~4 5
m~~5 6
=>~~7 9
m~~: ;
.~~; <
RestaurantId~~< H
==~~I K
RestaurantId~~L X
)~~X Y
.~~Y Z
ToList~~Z `
(~~` a
)~~a b
;~~b c
if 
( 
menuForRestaurant !
==" $
null% )
||* ,
menuForRestaurant- >
.> ?
Count? D
==E G
$numH I
)I J
throw
�� 
new
�� &
NoMenuAvailableException
�� 2
(
��2 3
)
��3 4
;
��4 5
return
�� 
menuForRestaurant
�� $
;
��$ %
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 

Restaurant
�� $
>
��$ %!
GetRestaurantByName
��& 9
(
��9 :
string
��: @
name
��A E
)
��E F
{
�� 	
var
�� 

restaurant
�� 
=
�� 
await
�� "
_restaurantRepo
��# 2
.
��2 3
GetAsync
��3 ;
(
��; <
name
��< @
)
��@ A
;
��A B
if
�� 
(
�� 

restaurant
�� 
==
�� 
null
�� "
)
��" #
throw
�� 
new
�� )
RestaurantNotFoundException
�� 5
(
��5 6
)
��6 7
;
��7 8
return
�� 

restaurant
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 

Restaurant
�� )
>
��) *
>
��* +"
GetRestaurantsByCity
��, @
(
��@ A
string
��A G
city
��H L
)
��L M
{
�� 	
var
�� 
myCity
�� 
=
�� 
await
�� 
	_cityRepo
�� (
.
��( )
GetAsync
��) 1
(
��1 2
city
��2 6
)
��6 7
;
��7 8
if
�� 
(
�� 
myCity
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
CityNotFoundException
�� /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
var
�� 
restaurants
�� 
=
�� 
await
�� #
_restaurantRepo
��$ 3
.
��3 4
GetAsync
��4 <
(
��< =
)
��= >
;
��> ?
var
�� 
myCityRestaurants
�� !
=
��" #
restaurants
��$ /
.
��/ 0
Where
��0 5
(
��5 6
r
��6 7
=>
��8 :
r
��; <
.
��< =
CityId
��= C
==
��D F
myCity
��G M
.
��M N
CityId
��N T
)
��T U
.
��U V
ToList
��V \
(
��\ ]
)
��] ^
;
��^ _
if
�� 
(
�� 
myCityRestaurants
�� !
==
��" $
null
��% )
||
��* ,
myCityRestaurants
��- >
.
��> ?
Count
��? D
==
��E G
$num
��H I
)
��I J
throw
�� 
new
�� )
RestaurantNotFoundException
�� 5
(
��5 6
)
��6 7
;
��7 8
return
�� 
myCityRestaurants
�� $
;
��$ %
}
�� 	
[
�� 	%
ExcludeFromCodeCoverage
��	  
]
��  !
public
�� 
async
�� 
Task
�� 
<
�� 
OrderMenuDTO
�� &
>
��& '

PlaceOrder
��( 2
(
��2 3
int
��3 6

customerId
��7 A
,
��A B
string
��C I
paymentMode
��J U
)
��U V
{
�� 	
var
�� 
carts
�� 
=
�� 
await
�� 
	_cartRepo
�� '
.
��' (
GetAsync
��( 0
(
��0 1
)
��1 2
;
��2 3
var
�� 
	cartItems
�� 
=
�� 
carts
�� !
.
��! "
Where
��" '
(
��' (
c
��( )
=>
��* ,
c
��- .
.
��. /

CustomerId
��/ 9
==
��: <

customerId
��= G
)
��G H
.
��H I
Where
��I N
(
��N O
c
��O P
=>
��Q S
c
��T U
.
��U V
Status
��V \
==
��] _
$str
��` g
)
��g h
.
��h i
ToList
��i o
(
��o p
)
��p q
;
��q r
if
�� 
(
�� 
	cartItems
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
��  
{
�� 
float
�� 
totalAmount
�� !
=
��" #
$num
��$ %
;
��% &
foreach
�� 
(
�� 
var
�� 
cart
�� !
in
��" $
	cartItems
��% .
)
��. /
{
�� 
var
�� 
menuItem
��  
=
��! "
await
��# (
	_menuRepo
��) 2
.
��2 3
GetAsync
��3 ;
(
��; <
cart
��< @
.
��@ A

MenuItemId
��A K
)
��K L
;
��L M
totalAmount
�� 
+=
��  "
menuItem
��# +
.
��+ ,
Price
��, 1
*
��2 3
cart
��4 8
.
��8 9
Quantity
��9 A
;
��A B
}
�� 
Order
�� 
newOrder
�� 
=
��  
new
��! $
Order
��% *
{
�� 
	OrderDate
�� 
=
�� 
DateTime
��  (
.
��( )
Now
��) ,
,
��, -
Amount
�� 
=
�� 
totalAmount
�� (
,
��( )
Status
�� 
=
�� 
$str
�� &
,
��& '

CustomerId
�� 
=
��  
	cartItems
��! *
[
��* +
$num
��+ ,
]
��, -
.
��- .

CustomerId
��. 8
,
��8 9
RestaurantId
��  
=
��! "
	cartItems
��# ,
[
��, -
$num
��- .
]
��. /
.
��/ 0
RestaurantId
��0 <
}
�� 
;
�� 
var
�� 

restaurant
�� 
=
��  
await
��! &
_restaurantRepo
��' 6
.
��6 7
GetAsync
��7 ?
(
��? @
	cartItems
��@ I
[
��I J
$num
��J K
]
��K L
.
��L M
RestaurantId
��M Y
)
��Y Z
;
��Z [
var
�� 
deliveryPartners
�� $
=
��% &
await
��' ,"
_deliveryPartnerRepo
��- A
.
��A B
GetAsync
��B J
(
��J K
)
��K L
;
��L M
var
�� &
deliveryPartnersFromCity
�� ,
=
��- .
deliveryPartners
��/ ?
.
��? @
Where
��@ E
(
��E F
d
��F G
=>
��H J
d
��K L
.
��L M
CityId
��M S
==
��T V

restaurant
��W a
.
��a b
CityId
��b h
)
��h i
.
��i j
ToList
��j p
(
��p q
)
��q r
;
��r s
Random
�� 
random
�� 
=
�� 
new
��  #
Random
��$ *
(
��* +
)
��+ ,
;
��, -
var
�� 
deliveryPartner
�� #
=
��$ %&
deliveryPartnersFromCity
��& >
[
��> ?
random
��? E
.
��E F
Next
��F J
(
��J K&
deliveryPartnersFromCity
��K c
.
��c d
Count
��d i
)
��i j
]
��j k
;
��k l
var
�� 
payment
�� 
=
�� 
await
�� #
RecordPayment
��$ 1
(
��1 2
newOrder
��2 :
)
��: ;
;
��; <
if
�� 
(
�� 
payment
�� 
.
�� 
Status
�� "
==
��# %
$str
��& 2
)
��2 3
{
�� 
newOrder
�� 
.
�� 
Status
�� #
=
��$ %
$str
��& .
;
��. /
newOrder
�� 
.
�� 
	PartnerId
�� &
=
��' (
deliveryPartner
��) 8
.
��8 9
	PartnerId
��9 B
;
��B C
newOrder
�� 
=
�� 
await
�� $

_orderRepo
��% /
.
��/ 0
Add
��0 3
(
��3 4
newOrder
��4 <
)
��< =
;
��= >
List
�� 
<
�� 
MenuNameDTO
�� $
>
��$ %
names
��& +
=
��, -
new
��. 1
List
��2 6
<
��6 7
MenuNameDTO
��7 B
>
��B C
(
��C D
)
��D E
;
��E F
foreach
�� 
(
�� 
var
��  
cart
��! %
in
��& (
	cartItems
��) 2
)
��2 3
{
�� 
var
�� 
menuItem
�� $
=
��% &
await
��' ,
	_menuRepo
��- 6
.
��6 7
GetAsync
��7 ?
(
��? @
cart
��@ D
.
��D E

MenuItemId
��E O
)
��O P
;
��P Q
	OrderItem
�� !
newOrderItem
��" .
=
��/ 0
new
��1 4
	OrderItem
��5 >
{
�� 
OrderId
�� #
=
��$ %
newOrder
��& .
.
��. /
OrderId
��/ 6
,
��6 7
MenuId
�� "
=
��# $
cart
��% )
.
��) *

MenuItemId
��* 4
,
��4 5
SubTotalPrice
�� )
=
��* +
menuItem
��, 4
.
��4 5
Price
��5 :
*
��; <
cart
��= A
.
��A B
Quantity
��B J
,
��J K
Quantity
�� $
=
��% &
cart
��' +
.
��+ ,
Quantity
��, 4
}
�� 
;
�� 
await
�� 
_orderItemRepo
�� ,
.
��, -
Add
��- 0
(
��0 1
newOrderItem
��1 =
)
��= >
;
��> ?
cart
�� 
.
�� 
Status
�� #
=
��$ %
$str
��& 1
;
��1 2
await
�� 
	_cartRepo
�� '
.
��' (
Update
��( .
(
��. /
cart
��/ 3
)
��3 4
;
��4 5
MenuNameDTO
�� #
menuNameDTO
��$ /
=
��0 1
new
��2 5
MenuNameDTO
��6 A
{
�� 
ManuItemName
�� (
=
��) *
menuItem
��+ 3
.
��3 4
Name
��4 8
,
��8 9
Quantity
�� $
=
��% &
cart
��' +
.
��+ ,
Quantity
��, 4
}
�� 
;
�� 
names
�� 
.
�� 
Add
�� !
(
��! "
menuNameDTO
��" -
)
��- .
;
��. /
}
�� 
payment
�� 
.
�� 
OrderId
�� #
=
��$ %
newOrder
��& .
.
��. /
OrderId
��/ 6
;
��6 7
payment
�� 
=
�� 
await
�� #
_paymentRepo
��$ 0
.
��0 1
Update
��1 7
(
��7 8
payment
��8 ?
)
��? @
;
��@ A
OrderMenuDTO
��  

orderItems
��! +
=
��, -
new
��. 1
OrderMenuDTO
��2 >
{
�� 
orderId
�� 
=
��  !
newOrder
��" *
.
��* +
OrderId
��+ 2
,
��2 3

customerId
�� "
=
��# $
newOrder
��% -
.
��- .

CustomerId
��. 8
,
��8 9
restaurantId
�� $
=
��% &
newOrder
��' /
.
��/ 0
RestaurantId
��0 <
,
��< =
menuName
��  
=
��! "
names
��# (
,
��( )
Price
�� 
=
�� 
totalAmount
��  +
,
��+ ,
Status
�� 
=
��  
newOrder
��! )
.
��) *
Status
��* 0
,
��0 1
	partnerId
�� !
=
��" #
deliveryPartner
��$ 3
.
��3 4
	PartnerId
��4 =
,
��= >
PartnerName
�� #
=
��$ %
deliveryPartner
��& 5
.
��5 6
Name
��6 :
}
�� 
;
�� 
return
�� 

orderItems
�� %
;
��% &
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� $
PaymentFailedException
�� 4
(
��4 5
)
��5 6
;
��6 7
}
�� 
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� $
PaymentFailedException
�� 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
[
�� 	%
ExcludeFromCodeCoverage
��	  
]
��  !
public
�� 
async
�� 
Task
�� 
<
�� 
OrderMenuDTO
�� &
>
��& '
PlaceOrderForOne
��( 8
(
��8 9
int
��9 <

cartItemId
��= G
,
��G H
string
��I O
paymentMode
��P [
)
��[ \
{
�� 	
Cart
�� 
cartItem
�� 
=
�� 
await
�� !
	_cartRepo
��" +
.
��+ ,
GetAsync
��, 4
(
��4 5

cartItemId
��5 ?
)
��? @
;
��@ A
Menu
�� 
menuItem
�� 
=
�� 
await
�� !
	_menuRepo
��" +
.
��+ ,
GetAsync
��, 4
(
��4 5
cartItem
��5 =
.
��= >

MenuItemId
��> H
)
��H I
;
��I J
float
�� 
amount
�� 
=
�� 
menuItem
�� #
.
��# $
Price
��$ )
*
��* +
cartItem
��, 4
.
��4 5
Quantity
��5 =
;
��= >
Order
�� 
newOrder
�� 
=
�� 
new
��  
Order
��! &
{
�� 
	OrderDate
�� 
=
�� 
DateTime
�� $
.
��$ %
Now
��% (
,
��( )
Amount
�� 
=
�� 
amount
�� 
,
��  
Status
�� 
=
�� 
$str
�� "
,
��" #

CustomerId
�� 
=
�� 
cartItem
�� %
.
��% &

CustomerId
��& 0
,
��0 1
RestaurantId
�� 
=
�� 
cartItem
�� '
.
��' (
RestaurantId
��( 4
,
��4 5
	PartnerId
�� 
=
�� 
$num
�� 
}
�� 
;
�� 

Restaurant
�� 

restaurant
�� !
=
��" #
await
��$ )
_restaurantRepo
��* 9
.
��9 :
GetAsync
��: B
(
��B C
cartItem
��C K
.
��K L
RestaurantId
��L X
)
��X Y
;
��Y Z
int
�� 
restaurantCityId
��  
=
��! "

restaurant
��# -
.
��- .
CityId
��. 4
;
��4 5
var
�� 
deliveryPartners
��  
=
��! "
await
��# ("
_deliveryPartnerRepo
��) =
.
��= >
GetAsync
��> F
(
��F G
)
��G H
;
��H I
var
�� &
deliveryPartnersFromCity
�� (
=
��) *
deliveryPartners
��+ ;
.
��; <
Where
��< A
(
��A B
d
��B C
=>
��D F
d
��G H
.
��H I
CityId
��I O
==
��P R
restaurantCityId
��S c
)
��c d
.
��d e
ToList
��e k
(
��k l
)
��l m
;
��m n
Random
�� 
random
�� 
=
�� 
new
�� 
Random
��  &
(
��& '
)
��' (
;
��( )
var
�� 
deliveryPartner
�� 
=
��  !&
deliveryPartnersFromCity
��" :
[
��: ;
random
��; A
.
��A B
Next
��B F
(
��F G&
deliveryPartnersFromCity
��G _
.
��_ `
Count
��` e
)
��e f
]
��f g
;
��g h
var
�� 
payment
�� 
=
�� 
await
�� 
RecordPayment
��  -
(
��- .
newOrder
��. 6
)
��6 7
;
��7 8
if
�� 
(
�� 
payment
�� 
.
�� 
Status
�� 
==
�� !
$str
��" .
)
��. /
{
�� 
newOrder
�� 
.
�� 
Status
�� 
=
��  !
$str
��" *
;
��* +
newOrder
�� 
.
�� 
	PartnerId
�� "
=
��# $
deliveryPartner
��% 4
.
��4 5
	PartnerId
��5 >
;
��> ?
newOrder
�� 
=
�� 
await
��  

_orderRepo
��! +
.
��+ ,
Add
��, /
(
��/ 0
newOrder
��0 8
)
��8 9
;
��9 :
	OrderItem
�� 
newOrderItem
�� &
=
��' (
new
��) ,
	OrderItem
��- 6
{
�� 
OrderId
�� 
=
�� 
newOrder
�� &
.
��& '
OrderId
��' .
,
��. /
MenuId
�� 
=
�� 
menuItem
�� %
.
��% &
MenuId
��& ,
,
��, -
Quantity
�� 
=
�� 
cartItem
�� '
.
��' (
Quantity
��( 0
,
��0 1
SubTotalPrice
�� !
=
��" #
amount
��$ *
}
�� 
;
�� 
newOrderItem
�� 
=
�� 
await
�� $
_orderItemRepo
��% 3
.
��3 4
Add
��4 7
(
��7 8
newOrderItem
��8 D
)
��D E
;
��E F
payment
�� 
.
�� 
OrderId
�� 
=
��  !
newOrder
��" *
.
��* +
OrderId
��+ 2
;
��2 3
payment
�� 
=
�� 
await
�� 
_paymentRepo
��  ,
.
��, -
Update
��- 3
(
��3 4
payment
��4 ;
)
��; <
;
��< =
cartItem
�� 
.
�� 
Status
�� 
=
��  !
$str
��" -
;
��- .
cartItem
�� 
=
�� 
await
��  
	_cartRepo
��! *
.
��* +
Update
��+ 1
(
��1 2
cartItem
��2 :
)
��: ;
;
��; <
List
�� 
<
�� 
MenuNameDTO
��  
>
��  !
names
��" '
=
��( )
new
��* -
List
��. 2
<
��2 3
MenuNameDTO
��3 >
>
��> ?
(
��? @
)
��@ A
;
��A B
MenuNameDTO
�� 
menuNameDTO
�� '
=
��( )
new
��* -
MenuNameDTO
��. 9
{
�� 
ManuItemName
��  
=
��! "
menuItem
��# +
.
��+ ,
Name
��, 0
,
��0 1
Quantity
�� 
=
�� 
cartItem
�� '
.
��' (
Quantity
��( 0
}
�� 
;
�� 
names
�� 
.
�� 
Add
�� 
(
�� 
menuNameDTO
�� %
)
��% &
;
��& '
OrderMenuDTO
�� 

orderItems
�� '
=
��( )
new
��* -
OrderMenuDTO
��. :
{
�� 
orderId
�� 
=
�� 
newOrder
�� &
.
��& '
OrderId
��' .
,
��. /

customerId
�� 
=
��  
newOrder
��! )
.
��) *

CustomerId
��* 4
,
��4 5
restaurantId
��  
=
��! "
newOrder
��# +
.
��+ ,
RestaurantId
��, 8
,
��8 9
menuName
�� 
=
�� 
names
�� $
,
��$ %
Price
�� 
=
�� 
amount
�� "
,
��" #
	partnerId
�� 
=
�� 
deliveryPartner
��  /
.
��/ 0
	PartnerId
��0 9
,
��9 :
PartnerName
�� 
=
��  !
deliveryPartner
��" 1
.
��1 2
Name
��2 6
}
�� 
;
�� 
return
�� 

orderItems
�� !
;
��! "
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� $
PaymentFailedException
�� 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Payment
�� !
>
��! "
RecordPayment
��# 0
(
��0 1
Order
��1 6
order
��7 <
)
��< =
{
�� 	
Payment
�� 
payment
�� 
=
�� 
new
�� !
Payment
��" )
{
�� 
PaymentMode
�� 
=
�� 
$str
�� &
,
��& '
Amount
�� 
=
�� 
order
�� 
.
�� 
Amount
�� %
,
��% &
Status
�� 
=
�� 
$str
�� %
,
��% &
Date
�� 
=
�� 
DateTime
�� 
.
��  
Now
��  #
}
�� 
;
�� 
payment
�� 
=
�� 
await
�� 
_paymentRepo
�� (
.
��( )
Add
��) ,
(
��, -
payment
��- 4
)
��4 5
;
��5 6
return
�� 
payment
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
int
�� 
>
�� 
	AddToCart
�� (
(
��( )
int
��) ,
userId
��- 3
,
��3 4
int
��5 8

menuItemId
��9 C
)
��C D
{
�� 	
var
�� 
menuItem
�� 
=
�� 
await
��  
	_menuRepo
��! *
.
��* +
GetAsync
��+ 3
(
��3 4

menuItemId
��4 >
)
��> ?
;
��? @
if
�� 
(
�� 
menuItem
�� 
!=
�� 
null
��  
)
��  !
{
�� 
var
�� 
	cartItems
�� 
=
�� 
await
��  %
	_cartRepo
��& /
.
��/ 0
GetAsync
��0 8
(
��8 9
)
��9 :
;
��: ;
var
�� 
customerCart
��  
=
��! "
	cartItems
��# ,
.
��, -
Where
��- 2
(
��2 3
c
��3 4
=>
��5 7
c
��8 9
.
��9 :

CustomerId
��: D
==
��E G
userId
��H N
&&
��O Q
c
��R S
.
��S T
Status
��T Z
==
��[ ]
$str
��^ e
)
��e f
.
��f g
ToList
��g m
(
��m n
)
��n o
;
��o p
var
�� 
checkMenuInCart
�� #
=
��$ %
customerCart
��& 2
.
��2 3
FirstOrDefault
��3 A
(
��A B
c
��B C
=>
��D F
c
��G H
.
��H I

MenuItemId
��I S
==
��T V

menuItemId
��W a
)
��a b
;
��b c
if
�� 
(
�� 
checkMenuInCart
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
Cart
�� 
cartItem
�� !
=
��" #
new
��$ '
Cart
��( ,
{
�� 

CustomerId
�� "
=
��# $
userId
��% +
,
��+ ,
RestaurantId
�� $
=
��% &
menuItem
��' /
.
��/ 0
RestaurantId
��0 <
,
��< =

MenuItemId
�� "
=
��# $

menuItemId
��% /
,
��/ 0
Quantity
��  
=
��! "
$num
��# $
,
��$ %
Status
�� 
=
��  
$str
��! (
}
�� 
;
�� 
cartItem
�� 
=
�� 
await
�� $
	_cartRepo
��% .
.
��. /
Add
��/ 2
(
��2 3
cartItem
��3 ;
)
��; <
;
��< =
return
�� 
cartItem
�� #
.
��# $
Id
��$ &
;
��& '
}
�� 
await
�� &
IncreaseCartItemQuantity
�� .
(
��. /
checkMenuInCart
��/ >
.
��> ?
Id
��? A
)
��A B
;
��B C
return
�� 
checkMenuInCart
�� &
.
��& '
Id
��' )
;
��) *
}
�� 
throw
�� 
new
�� &
NoMenuAvailableException
�� .
(
��. /
)
��/ 0
;
��0 1
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
CartMenuDTO
�� *
>
��* +
>
��+ ,
GetCarts
��- 5
(
��5 6
int
��6 9

customerId
��: D
)
��D E
{
�� 	
var
�� 
	cartItems
�� 
=
�� 
await
�� !
	_cartRepo
��" +
.
��+ ,
GetAsync
��, 4
(
��4 5
)
��5 6
;
��6 7
var
�� 
cartForCustomer
�� 
=
��  !
	cartItems
��" +
.
��+ ,
Where
��, 1
(
��1 2
c
��2 3
=>
��4 6
c
��7 8
.
��8 9

CustomerId
��9 C
==
��D F

customerId
��G Q
)
��Q R
.
��R S
Where
��S X
(
��X Y
c
��Y Z
=>
��[ ]
c
��^ _
.
��_ `
Status
��` f
==
��g i
$str
��j q
)
��q r
.
��r s
ToList
��s y
(
��y z
)
��z {
;
��{ |
var
�� 

restaurant
�� 
=
�� 
await
�� "
_restaurantRepo
��# 2
.
��2 3
GetAsync
��3 ;
(
��; <
cartForCustomer
��< K
[
��K L
$num
��L M
]
��M N
.
��N O
RestaurantId
��O [
)
��[ \
;
��\ ]
List
�� 
<
�� 
CartMenuDTO
�� 
>
�� 
	cartMenus
�� '
=
��( )
new
��* -
List
��. 2
<
��2 3
CartMenuDTO
��3 >
>
��> ?
(
��? @
)
��@ A
;
��A B
if
�� 
(
�� 
cartForCustomer
�� 
!=
��  "
null
��# '
||
��( *
cartForCustomer
��+ :
.
��: ;
Count
��; @
>
��A B
$num
��C D
)
��D E
{
�� 
foreach
�� 
(
�� 
var
�� 
cartItem
�� %
in
��& (
cartForCustomer
��) 8
)
��8 9
{
�� 
var
�� 
menuItem
��  
=
��! "
await
��# (
	_menuRepo
��) 2
.
��2 3
GetAsync
��3 ;
(
��; <
cartItem
��< D
.
��D E

MenuItemId
��E O
)
��O P
;
��P Q
CartMenuDTO
�� 
cartMenu
��  (
=
��) *
new
��+ .
CartMenuDTO
��/ :
{
�� 
CartId
�� 
=
��  
cartItem
��! )
.
��) *
Id
��* ,
,
��, -

CustomerId
�� "
=
��# $
cartItem
��% -
.
��- .

CustomerId
��. 8
,
��8 9
RestaurantId
�� $
=
��% &
menuItem
��' /
.
��/ 0
RestaurantId
��0 <
,
��< =

MenuItemId
�� "
=
��# $
menuItem
��% -
.
��- .
MenuId
��. 4
,
��4 5
	MenuTitle
�� !
=
��" #
menuItem
��$ ,
.
��, -
Name
��- 1
,
��1 2
Quantity
��  
=
��! "
cartItem
��# +
.
��+ ,
Quantity
��, 4
,
��4 5
Price
�� 
=
�� 
menuItem
��  (
.
��( )
Price
��) .
*
��/ 0
cartItem
��1 9
.
��9 :
Quantity
��: B
,
��B C
	MenuImage
�� !
=
��" #
menuItem
��$ ,
.
��, -
	ItemImage
��- 6
,
��6 7
RestaurantName
�� &
=
��' (

restaurant
��) 3
.
��3 4
RestaurantName
��4 B
,
��B C
RestaurantCityId
�� (
=
��) *

restaurant
��+ 5
.
��5 6
CityId
��6 <
}
�� 
;
�� 
	cartMenus
�� 
.
�� 
Add
�� !
(
��! "
cartMenu
��" *
)
��* +
;
��+ ,
}
�� 
if
�� 
(
�� 
	cartMenus
�� 
==
��  
null
��! %
||
��& (
	cartMenus
��) 2
.
��2 3
Count
��3 8
==
��9 ;
$num
��< =
)
��= >
return
�� 
null
�� 
;
��  
else
�� 
return
�� 
	cartMenus
�� $
;
��$ %
}
�� 
throw
�� 
new
��  
EmptyCartException
�� (
(
��( )
)
��) *
;
��* +
}
�� 	
public
�� 
async
�� 
Task
�� 
DeleteCartItem
�� (
(
��( )
int
��) ,

cartItemId
��- 7
)
��7 8
{
�� 	
var
�� 
cartItem
�� 
=
�� 
await
��  
	_cartRepo
��! *
.
��* +
GetAsync
��+ 3
(
��3 4

cartItemId
��4 >
)
��> ?
;
��? @
await
�� 
	_cartRepo
�� 
.
�� 
Delete
�� "
(
��" #
cartItem
��# +
.
��+ ,
Id
��, .
)
��. /
;
��/ 0
}
�� 	
public
�� 
async
�� 
Task
�� 
	EmptyCart
�� #
(
��# $
int
��$ '

customerId
��( 2
)
��2 3
{
�� 	
var
�� 
	cartItems
�� 
=
�� 
await
�� !
	_cartRepo
��" +
.
��+ ,
GetAsync
��, 4
(
��4 5
)
��5 6
;
��6 7
var
�� 
cartForCustomer
�� 
=
��  !
	cartItems
��" +
.
��+ ,
Where
��, 1
(
��1 2
c
��2 3
=>
��4 6
c
��7 8
.
��8 9

CustomerId
��9 C
==
��D F

customerId
��G Q
)
��Q R
.
��R S
Where
��S X
(
��X Y
c
��Y Z
=>
��[ ]
c
��^ _
.
��_ `
Status
��` f
==
��g i
$str
��j q
)
��q r
.
��r s
ToList
��s y
(
��y z
)
��z {
;
��{ |
foreach
�� 
(
�� 
var
�� 
cartItem
�� !
in
��" $
	cartItems
��% .
)
��. /
{
�� 
cartItem
�� 
.
�� 
Status
�� 
=
��  !
$str
��" +
;
��+ ,
await
�� 
	_cartRepo
�� 
.
��  
Update
��  &
(
��& '
cartItem
��' /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� &
IncreaseCartItemQuantity
�� 2
(
��2 3
int
��3 6
cartId
��7 =
)
��= >
{
�� 	
var
�� 
cartItem
�� 
=
�� 
await
��  
	_cartRepo
��! *
.
��* +
GetAsync
��+ 3
(
��3 4
cartId
��4 :
)
��: ;
;
��; <
cartItem
�� 
.
�� 
Quantity
�� 
++
�� 
;
��  
cartItem
�� 
=
�� 
await
�� 
	_cartRepo
�� &
.
��& '
Update
��' -
(
��- .
cartItem
��. 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
async
�� 
Task
�� &
DecreaseCartItemQuantity
�� 2
(
��2 3
int
��3 6
cartId
��7 =
)
��= >
{
�� 	
var
�� 
cartItem
�� 
=
�� 
await
��  
	_cartRepo
��! *
.
��* +
GetAsync
��+ 3
(
��3 4
cartId
��4 :
)
��: ;
;
��; <
if
�� 
(
�� 
cartItem
�� 
.
�� 
Quantity
�� !
>
��" #
$num
��$ %
)
��% &
{
�� 
cartItem
�� 
.
�� 
Quantity
�� !
--
��! #
;
��# $
cartItem
�� 
=
�� 
await
��  
	_cartRepo
��! *
.
��* +
Update
��+ 1
(
��1 2
cartItem
��2 :
)
��: ;
;
��; <
}
�� 
else
�� 
{
�� 
await
�� 
DeleteCartItem
�� $
(
��$ %
cartId
��% +
)
��+ ,
;
��, -
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
OrderMenuDTO
�� &
>
��& '
ViewOrderStatus
��( 7
(
��7 8
int
��8 ;
orderId
��< C
)
��C D
{
�� 	
var
�� 
order
�� 
=
�� 
await
�� 

_orderRepo
�� (
.
��( )
GetAsync
��) 1
(
��1 2
orderId
��2 9
)
��9 :
;
��: ;
if
�� 
(
�� 
order
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� %
OrdersNotFoundException
�� 1
(
��1 2
)
��2 3
;
��3 4
var
�� 

restaurant
�� 
=
�� 
await
�� "
_restaurantRepo
��# 2
.
��2 3
GetAsync
��3 ;
(
��; <
order
��< A
.
��A B
RestaurantId
��B N
)
��N O
;
��O P
var
�� 

orderitems
�� 
=
�� 
await
�� "
_orderItemRepo
��# 1
.
��1 2
GetAsync
��2 :
(
��: ;
)
��; <
;
��< =
var
�� #
orderItemsForCustomer
�� %
=
��& '

orderitems
��( 2
.
��2 3
Where
��3 8
(
��8 9
oi
��9 ;
=>
��< >
oi
��? A
.
��A B
OrderId
��B I
==
��J L
orderId
��M T
)
��T U
.
��U V
ToList
��V \
(
��\ ]
)
��] ^
;
��^ _
List
�� 
<
�� 
MenuNameDTO
�� 
>
�� 
menuList
�� &
=
��' (
new
��) ,
List
��- 1
<
��1 2
MenuNameDTO
��2 =
>
��= >
(
��> ?
)
��? @
;
��@ A
float
�� 

totalPrice
�� 
=
�� 
$num
��  
;
��  !
foreach
�� 
(
�� 
var
�� 
	orderItem
�� "
in
��# %#
orderItemsForCustomer
��& ;
)
��; <
{
�� 
var
�� 
menu
�� 
=
�� 
await
��  
	_menuRepo
��! *
.
��* +
GetAsync
��+ 3
(
��3 4
	orderItem
��4 =
.
��= >
MenuId
��> D
)
��D E
;
��E F
MenuNameDTO
�� 
menuNameDTO
�� '
=
��( )
new
��* -
MenuNameDTO
��. 9
{
�� 
ManuItemName
��  
=
��! "
menu
��# '
.
��' (
Name
��( ,
,
��, -
Quantity
�� 
=
�� 
	orderItem
�� (
.
��( )
Quantity
��) 1
}
�� 
;
�� 
menuList
�� 
.
�� 
Add
�� 
(
�� 
menuNameDTO
�� (
)
��( )
;
��) *

totalPrice
�� 
+=
�� 
	orderItem
�� '
.
��' (
SubTotalPrice
��( 5
;
��5 6
}
�� 
OrderMenuDTO
�� 
orderMenuDTO
�� %
=
��& '
new
��( +
OrderMenuDTO
��, 8
{
�� 
orderId
�� 
=
�� 
orderId
�� !
,
��! "

customerId
�� 
=
�� 
order
�� "
.
��" #

CustomerId
��# -
,
��- .
restaurantId
�� 
=
�� 
order
�� $
.
��$ %
RestaurantId
��% 1
,
��1 2
menuName
�� 
=
�� 
menuList
�� #
,
��# $
Price
�� 
=
�� 

totalPrice
�� "
,
��" #
Status
�� 
=
�� 
order
�� 
.
�� 
Status
�� %
,
��% &
RestaurantName
�� 
=
��  

restaurant
��! +
.
��+ ,
RestaurantName
��, :
,
��: ;
RestaurantImage
�� 
=
��  !

restaurant
��" ,
.
��, -
RestaurantImage
��- <
,
��< =
	OrderDate
�� 
=
�� 
order
�� !
.
��! "
	OrderDate
��" +
}
�� 
;
�� 
return
�� 
orderMenuDTO
�� 
;
��  
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
OrderMenuDTO
�� +
>
��+ ,
>
��, -
ViewOrderHistory
��. >
(
��> ?
int
��? B

customerId
��C M
)
��M N
{
�� 	
var
�� 
orders
�� 
=
�� 
await
�� 

_orderRepo
�� )
.
��) *
GetAsync
��* 2
(
��2 3
)
��3 4
;
��4 5
var
��  
ordersForCustomers
�� "
=
��# $
orders
��% +
.
��+ ,
Where
��, 1
(
��1 2
o
��2 3
=>
��4 6
o
��7 8
.
��8 9

CustomerId
��9 C
==
��D F

customerId
��G Q
)
��Q R
.
��R S
ToList
��S Y
(
��Y Z
)
��Z [
;
��[ \
var
�� 

orderItems
�� 
=
�� 
await
�� "
_orderItemRepo
��# 1
.
��1 2
GetAsync
��2 :
(
��: ;
)
��; <
;
��< =
List
�� 
<
�� 
OrderMenuDTO
�� 
>
�� 
orderHistory
�� +
=
��, -
new
��. 1
List
��2 6
<
��6 7
OrderMenuDTO
��7 C
>
��C D
(
��D E
)
��E F
;
��F G
foreach
�� 
(
�� 
var
�� 
order
�� 
in
�� ! 
ordersForCustomers
��" 4
)
��4 5
{
�� 
var
�� 

restaurant
�� 
=
��  
await
��! &
_restaurantRepo
��' 6
.
��6 7
GetAsync
��7 ?
(
��? @
order
��@ E
.
��E F
RestaurantId
��F R
)
��R S
;
��S T
var
��  
orderItemsForOrder
�� &
=
��' (

orderItems
��) 3
.
��3 4
Where
��4 9
(
��9 :
oi
��: <
=>
��= ?
oi
��@ B
.
��B C
OrderId
��C J
==
��K M
order
��N S
.
��S T
OrderId
��T [
)
��[ \
.
��\ ]
ToList
��] c
(
��c d
)
��d e
;
��e f
List
�� 
<
�� 
MenuNameDTO
��  
>
��  !
	menuNames
��" +
=
��, -
new
��. 1
List
��2 6
<
��6 7
MenuNameDTO
��7 B
>
��B C
(
��C D
)
��D E
;
��E F
float
�� 
price
�� 
=
�� 
$num
�� 
;
��  
foreach
�� 
(
�� 
var
�� 
	orderItem
�� &
in
��' ) 
orderItemsForOrder
��* <
)
��< =
{
�� 
var
�� 
menu
�� 
=
�� 
await
�� $
	_menuRepo
��% .
.
��. /
GetAsync
��/ 7
(
��7 8
	orderItem
��8 A
.
��A B
MenuId
��B H
)
��H I
;
��I J
MenuNameDTO
�� 
menuName
��  (
=
��) *
new
��+ .
MenuNameDTO
��/ :
{
�� 
ManuItemName
�� $
=
��% &
menu
��' +
.
��+ ,
Name
��, 0
,
��0 1
Quantity
��  
=
��! "
	orderItem
��# ,
.
��, -
Quantity
��- 5
}
�� 
;
�� 
	menuNames
�� 
.
�� 
Add
�� !
(
��! "
menuName
��" *
)
��* +
;
��+ ,
price
�� 
+=
�� 
	orderItem
�� &
.
��& '
SubTotalPrice
��' 4
;
��4 5
}
�� 
OrderMenuDTO
�� 
	orderMenu
�� &
=
��' (
new
��) ,
OrderMenuDTO
��- 9
{
�� 
orderId
�� 
=
�� 
order
�� #
.
��# $
OrderId
��$ +
,
��+ ,

customerId
�� 
=
��  

customerId
��! +
,
��+ ,
restaurantId
��  
=
��! "
order
��# (
.
��( )
RestaurantId
��) 5
,
��5 6
menuName
�� 
=
�� 
	menuNames
�� (
,
��( )
Price
�� 
=
�� 
price
�� !
,
��! "
Status
�� 
=
�� 
order
�� "
.
��" #
Status
��# )
,
��) *
RestaurantName
�� "
=
��# $

restaurant
��% /
.
��/ 0
RestaurantName
��0 >
,
��> ?
RestaurantImage
�� #
=
��$ %

restaurant
��& 0
.
��0 1
RestaurantImage
��1 @
,
��@ A
	OrderDate
�� 
=
�� 
order
��  %
.
��% &
	OrderDate
��& /
,
��/ 0
	partnerId
�� 
=
�� 
order
��  %
.
��% &
	PartnerId
��& /
}
�� 
;
�� 
orderHistory
�� 
.
�� 
Add
��  
(
��  !
	orderMenu
��! *
)
��* +
;
��+ ,
}
�� 
if
�� 
(
�� 
orderHistory
�� 
==
�� 
null
��  $
||
��% '
orderHistory
��( 4
.
��4 5
Count
��5 :
(
��: ;
)
��; <
==
��= ?
$num
��@ A
)
��A B
throw
�� 
new
�� %
OrdersNotFoundException
�� 1
(
��1 2
)
��2 3
;
��3 4
return
�� 
orderHistory
�� 
;
��  
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Customer
�� "
>
��" # 
GetCustomerDetails
��$ 6
(
��6 7
int
��7 :

customerId
��; E
)
��E F
{
�� 	
var
�� 
customer
�� 
=
�� 
await
��  
	_custRepo
��! *
.
��* +
GetAsync
��+ 3
(
��3 4

customerId
��4 >
)
��> ?
;
��? @
if
�� 
(
�� 
customer
�� 
==
�� 
null
��  
)
��  !
throw
�� 
new
�� '
NoUsersAvailableException
�� 3
(
��3 4
)
��4 5
;
��5 6
return
�� 
customer
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Customer
�� "
>
��" ##
UpdateCustomerDetails
��$ 9
(
��9 :
Customer
��: B
customer
��C K
)
��K L
{
�� 	
var
�� 

myCustomer
�� 
=
�� 
await
�� "
	_custRepo
��# ,
.
��, -
GetAsync
��- 5
(
��5 6
customer
��6 >
.
��> ?
Id
��? A
)
��A B
;
��B C
if
�� 
(
�� 

myCustomer
�� 
==
�� 
null
�� "
)
��" #
throw
�� 
new
�� '
NoUsersAvailableException
�� 3
(
��3 4
)
��4 5
;
��5 6

myCustomer
�� 
=
�� 
await
�� 
	_custRepo
�� (
.
��( )
Update
��) /
(
��/ 0
customer
��0 8
)
��8 9
;
��9 :
return
�� 

myCustomer
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
City
�� #
>
��# $
>
��$ %
GetAllCities
��& 2
(
��2 3
)
��3 4
{
�� 	
var
�� 
cities
�� 
=
�� 
await
�� 
	_cityRepo
�� (
.
��( )
GetAsync
��) 1
(
��1 2
)
��2 3
;
��3 4
if
�� 
(
�� 
cities
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
CityNotFoundException
�� /
(
��/ 0
)
��0 1
;
��1 2
return
�� 
cities
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
Order
�� 
>
��  %
CancelOrderFromCustomer
��! 8
(
��8 9
int
��9 <
orderId
��= D
)
��D E
{
�� 	
var
�� 
order
�� 
=
�� 
await
�� 

_orderRepo
�� (
.
��( )
GetAsync
��) 1
(
��1 2
orderId
��2 9
)
��9 :
;
��: ;
if
�� 
(
�� 
order
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� %
OrdersNotFoundException
�� 1
(
��1 2
)
��2 3
;
��3 4
order
�� 
.
�� 
Status
�� 
=
�� 
$str
�� &
;
��& '
order
�� 
=
�� 
await
�� 

_orderRepo
�� $
.
��$ %
Update
��% +
(
��+ ,
order
��, 1
)
��1 2
;
��2 3
return
�� 
order
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
CustomerAddress
�� )
>
��) * 
AddCustomerAddress
��+ =
(
��= >
CustomerAddress
��> M
customerAddress
��N ]
)
��] ^
{
�� 	
var
�� 
myCustomerAddress
�� !
=
��" #
await
��$ )
_custAddressRepo
��* :
.
��: ;
Add
��; >
(
��> ?
customerAddress
��? N
)
��N O
;
��O P
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$"
��# %
$str
��% U
{
��U V
myCustomerAddress
��V g
.
��g h
	AddressId
��h q
}
��q r
"
��r s
)
��s t
;
��t u
return
�� 
myCustomerAddress
�� $
;
��$ %
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
CustomerAddress
�� )
>
��) *#
UpdateCustomerAddress
��+ @
(
��@ A
int
��A D
	addressId
��E N
,
��N O&
CustomerAddressUpdateDTO
��P h
addressUpdateDto
��i y
)
��y z
{
�� 	
var
�� 
existingAddress
�� 
=
��  !
await
��" '
_custAddressRepo
��( 8
.
��8 9
GetAsync
��9 A
(
��A B
	addressId
��B K
)
��K L
;
��L M
if
�� 
(
�� 
existingAddress
�� 
==
��  "
null
��# '
)
��' (
{
�� 
throw
�� 
new
�� -
NoCustomerAddressFoundException
�� 9
(
��9 :
$"
��: <
$str
��< U
{
��U V
	addressId
��V _
}
��_ `
$str
��` k
"
��k l
)
��l m
;
��m n
}
�� 
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$str
��# G
)
��G H
;
��H I
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$"
��# %
$str
��% 3
{
��3 4
existingAddress
��4 C
.
��C D
HouseNumber
��D O
}
��O P
"
��P Q
)
��Q R
;
��R S
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$"
��# %
$str
��% 4
{
��4 5
existingAddress
��5 D
.
��D E
BuildingName
��E Q
}
��Q R
"
��R S
)
��S T
;
��T U
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$"
��# %
$str
��% /
{
��/ 0
existingAddress
��0 ?
.
��? @
Locality
��@ H
}
��H I
"
��I J
)
��J K
;
��K L
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$"
��# %
$str
��% .
{
��. /
existingAddress
��/ >
.
��> ?
CityId
��? E
}
��E F
"
��F G
)
��G H
;
��H I
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$"
��# %
$str
��% /
{
��/ 0
existingAddress
��0 ?
.
��? @
LandMark
��@ H
}
��H I
"
��I J
)
��J K
;
��K L
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
addressUpdateDto
��& 6
.
��6 7
HouseNumber
��7 B
)
��B C
)
��C D
{
�� 
existingAddress
�� 
.
��  
HouseNumber
��  +
=
��, -
addressUpdateDto
��. >
.
��> ?
HouseNumber
��? J
;
��J K
}
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
addressUpdateDto
��& 6
.
��6 7
BuildingName
��7 C
)
��C D
)
��D E
{
�� 
existingAddress
�� 
.
��  
BuildingName
��  ,
=
��- .
addressUpdateDto
��/ ?
.
��? @
BuildingName
��@ L
;
��L M
}
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
addressUpdateDto
��& 6
.
��6 7
Locality
��7 ?
)
��? @
)
��@ A
{
�� 
existingAddress
�� 
.
��  
Locality
��  (
=
��) *
addressUpdateDto
��+ ;
.
��; <
Locality
��< D
;
��D E
}
�� 
if
�� 
(
�� 
addressUpdateDto
��  
.
��  !
CityId
��! '
.
��' (
HasValue
��( 0
)
��0 1
{
�� 
existingAddress
�� 
.
��  
CityId
��  &
=
��' (
addressUpdateDto
��) 9
.
��9 :
CityId
��: @
.
��@ A
Value
��A F
;
��F G
}
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
addressUpdateDto
��& 6
.
��6 7
LandMark
��7 ?
)
��? @
)
��@ A
{
�� 
existingAddress
�� 
.
��  
LandMark
��  (
=
��) *
addressUpdateDto
��+ ;
.
��; <
LandMark
��< D
;
��D E
}
�� 
var
�� 
updatedAddress
�� 
=
��  
await
��! &
_custAddressRepo
��' 7
.
��7 8
Update
��8 >
(
��> ?
existingAddress
��? N
)
��N O
;
��O P
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$"
��# %
$str
��% W
{
��W X
updatedAddress
��X f
.
��f g
	AddressId
��g p
}
��p q
"
��q r
)
��r s
;
��s t
return
�� 
updatedAddress
�� !
;
��! "
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
CustomerAddress
�� )
>
��) *-
ViewCustomerAddressByCustomerId
��+ J
(
��J K
int
��K N

customerId
��O Y
)
��Y Z
{
�� 	
var
�� 
customerAddress
�� 
=
��  !
await
��" '
_custAddressRepo
��( 8
.
��8 9
GetAsync
��9 A
(
��A B

customerId
��B L
)
��L M
;
��M N
if
�� 
(
�� 
customerAddress
�� 
==
��  "
null
��# '
)
��' (
{
�� 
throw
�� 
new
�� -
NoCustomerAddressFoundException
�� 9
(
��9 :
$"
��: <
$str
��< b
{
��b c

customerId
��c m
}
��m n
"
��n o
)
��o p
;
��p q
}
�� 
return
�� 
customerAddress
�� "
;
��" #
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
CustomerReview
�� (
>
��( )
AddCustomerReview
��* ;
(
��; <
CustomerReview
��< J
customerReview
��K Y
)
��Y Z
{
�� 	
customerReview
�� 
=
�� 
await
�� "
_custReviewRepo
��# 2
.
��2 3
Add
��3 6
(
��6 7
customerReview
��7 E
)
��E F
;
��F G
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$"
��# %
$str
��% S
{
��S T
customerReview
��T b
.
��b c
ReviewId
��c k
}
��k l
"
��l m
)
��m n
;
��n o
return
�� 
customerReview
�� !
;
��! "
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
CustomerReview
�� (
>
��( ) 
ViewCustomerReview
��* <
(
��< =
int
��= @
customerReviewId
��A Q
)
��Q R
{
�� 	
var
�� 
customerReview
�� 
=
��  
await
��! &
_custReviewRepo
��' 6
.
��6 7
GetAsync
��7 ?
(
��? @
customerReviewId
��@ P
)
��P Q
;
��Q R
if
�� 
(
�� 
customerReview
�� 
==
�� !
null
��" &
)
��& '
{
�� 
throw
�� 
new
�� ,
NoCustomerReviewFoundException
�� 8
(
��8 9
)
��9 :
;
��: ;
}
�� 
return
�� 
customerReview
�� !
;
��! "
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
CustomerReview
�� (
>
��( )&
UpdateCustomerReviewText
��* B
(
��B C%
CustomerReviewUpdateDTO
��C Z
reviewUpdateDTO
��[ j
)
��j k
{
�� 	
var
�� 
existingReview
�� 
=
��  
await
��! &
_custReviewRepo
��' 6
.
��6 7
GetAsync
��7 ?
(
��? @
reviewUpdateDTO
��@ O
.
��O P
ReviewId
��P X
)
��X Y
;
��Y Z
if
�� 
(
�� 
existingReview
�� 
==
�� !
null
��" &
)
��& '
{
�� 
throw
�� 
new
�� ,
NoCustomerReviewFoundException
�� 8
(
��8 9
)
��9 :
;
��: ;
}
�� 
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$"
��# %
$str
��% ;
{
��; <
existingReview
��< J
.
��J K

TextReview
��K U
}
��U V
"
��V W
)
��W X
;
��X Y
existingReview
�� 
.
�� 

TextReview
�� %
=
��& '
reviewUpdateDTO
��( 7
.
��7 8

TextReview
��8 B
;
��B C
var
�� 
updatedReview
�� 
=
�� 
await
��  %
_custReviewRepo
��& 5
.
��5 6
Update
��6 <
(
��< =
existingReview
��= K
)
��K L
;
��L M
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$"
��# %
$str
��% Q
{
��Q R
updatedReview
��R _
.
��_ `
ReviewId
��` h
}
��h i
"
��i j
)
��j k
;
��k l
return
�� 
updatedReview
��  
;
��  !
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
CustomerReview
�� (
>
��( )"
DeleteCustomerReview
��* >
(
��> ?
int
��? B
reviewId
��C K
)
��K L
{
�� 	
var
�� 
existingReview
�� 
=
��  
await
��! &
_custReviewRepo
��' 6
.
��6 7
GetAsync
��7 ?
(
��? @
reviewId
��@ H
)
��H I
;
��I J
if
�� 
(
�� 
existingReview
�� 
==
�� !
null
��" &
)
��& '
{
�� 
throw
�� 
new
�� ,
NoCustomerReviewFoundException
�� 8
(
��8 9
)
��9 :
;
��: ;
}
�� 
var
�� 
updatedReview
�� 
=
�� 
await
��  %
_custReviewRepo
��& 5
.
��5 6
Delete
��6 <
(
��< =
reviewId
��= E
)
��E F
;
��F G
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
$"
��# %
$str
��% Z
{
��Z [
updatedReview
��[ h
.
��h i
ReviewId
��i q
}
��q r
"
��r s
)
��s t
;
��t u
return
�� 
updatedReview
��  
;
��  !
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
Menu
�� #
>
��# $
>
��$ %

SearchMenu
��& 0
(
��0 1
int
��1 4
restaurantId
��5 A
,
��A B
string
��C I
query
��J O
)
��O P
{
�� 	
var
�� 
allMenus
�� 
=
�� 
await
��  
	_menuRepo
��! *
.
��* +
GetAsync
��+ 3
(
��3 4
)
��4 5
;
��5 6
var
�� 
allMenuItems
�� 
=
�� 
allMenus
�� '
.
��' (
Where
��( -
(
��- .
m
��. /
=>
��0 2
m
��3 4
.
��4 5
RestaurantId
��5 A
==
��B D
restaurantId
��E Q
)
��Q R
;
��R S
if
�� 
(
�� 
allMenuItems
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
throw
�� 
new
�� &
NoMenuAvailableException
�� 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
var
�� 
matchingMenuItems
�� !
=
��" #
allMenuItems
��$ 0
.
��0 1
Where
��1 6
(
��6 7
menu
��7 ;
=>
��< >
menu
��? C
.
��C D
Name
��D H
.
��H I
Contains
��I Q
(
��Q R
query
��R W
,
��W X
StringComparison
��Y i
.
��i j
OrdinalIgnoreCase
��j {
)
��{ |
)
��| }
.
��} ~
ToList��~ �
(��� �
)��� �
;��� �
return
�� 
matchingMenuItems
�� $
;
��$ %
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
Menu
�� #
>
��# $
>
��$ %$
FilterMenuByPriceRange
��& <
(
��< =
int
��= @
restaurantId
��A M
,
��M N
float
��O T
minPrice
��U ]
,
��] ^
float
��_ d
maxPrice
��e m
)
��m n
{
�� 	
var
�� 
allMenus
�� 
=
�� 
await
��  
	_menuRepo
��! *
.
��* +
GetAsync
��+ 3
(
��3 4
)
��4 5
;
��5 6
var
�� 
allMenuItems
�� 
=
�� 
allMenus
�� '
.
��' (
Where
��( -
(
��- .
m
��. /
=>
��0 2
m
��3 4
.
��4 5
RestaurantId
��5 A
==
��B D
restaurantId
��E Q
)
��Q R
;
��R S
if
�� 
(
�� 
allMenuItems
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
throw
�� 
new
�� &
NoMenuAvailableException
�� 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
var
�� 
filteredMenuItems
�� !
=
��" #
allMenuItems
��$ 0
.
��0 1
Where
��1 6
(
��6 7
m
��7 8
=>
��9 ;
m
��< =
.
��= >
Price
��> C
>=
��D F
minPrice
��G O
&&
��P R
m
��S T
.
��T U
Price
��U Z
<=
��[ ]
maxPrice
��^ f
)
��f g
.
��g h
ToList
��h n
(
��n o
)
��o p
;
��p q
return
�� 
filteredMenuItems
�� $
;
��$ %
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
Menu
�� #
>
��# $
>
��$ %
FilterMenuByType
��& 6
(
��6 7
int
��7 :
restaurantId
��; G
,
��G H
string
��I O
type
��P T
)
��T U
{
�� 	
var
�� 
allMenus
�� 
=
�� 
await
��  
	_menuRepo
��! *
.
��* +
GetAsync
��+ 3
(
��3 4
)
��4 5
;
��5 6
var
�� 
allMenuItems
�� 
=
�� 
allMenus
�� '
.
��' (
Where
��( -
(
��- .
m
��. /
=>
��0 2
m
��3 4
.
��4 5
RestaurantId
��5 A
==
��B D
restaurantId
��E Q
)
��Q R
;
��R S
if
�� 
(
�� 
allMenuItems
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
throw
�� 
new
�� &
NoMenuAvailableException
�� 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
var
�� 
filteredMenuItems
�� !
=
��" #
allMenuItems
��$ 0
.
��0 1
Where
��1 6
(
��6 7
m
��7 8
=>
��9 ;
string
��< B
.
��B C
Equals
��C I
(
��I J
m
��J K
.
��K L
Type
��L P
,
��P Q
type
��R V
,
��V W
StringComparison
��X h
.
��h i
OrdinalIgnoreCase
��i z
)
��z {
)
��{ |
.
��| }
ToList��} �
(��� �
)��� �
;��� �
return
�� 
filteredMenuItems
�� $
;
��$ %
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
�� 
Menu
�� #
>
��# $
>
��$ %!
FilterMenuByCuisine
��& 9
(
��9 :
int
��: =
restaurantId
��> J
,
��J K
string
��L R
cuisine
��S Z
)
��Z [
{
�� 	
var
�� 
allMenus
�� 
=
�� 
await
��  
	_menuRepo
��! *
.
��* +
GetAsync
��+ 3
(
��3 4
)
��4 5
;
��5 6
var
�� 
allMenuItems
�� 
=
�� 
allMenus
�� '
.
��' (
Where
��( -
(
��- .
m
��. /
=>
��0 2
m
��3 4
.
��4 5
RestaurantId
��5 A
==
��B D
restaurantId
��E Q
)
��Q R
;
��R S
if
�� 
(
�� 
allMenuItems
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
throw
�� 
new
�� &
NoMenuAvailableException
�� 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
var
�� 
filteredMenuItems
�� !
=
��" #
allMenuItems
��$ 0
.
��0 1
Where
��1 6
(
��6 7
m
��7 8
=>
��9 ;
string
��< B
.
��B C
Equals
��C I
(
��I J
m
��J K
.
��K L
Cuisine
��L S
,
��S T
cuisine
��U \
,
��\ ]
StringComparison
��^ n
.
��n o 
OrdinalIgnoreCase��o �
)��� �
)��� �
.��� �
ToList��� �
(��� �
)��� �
;��� �
return
�� 
filteredMenuItems
�� $
;
��$ %
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (#
GetCustomerByUsername
��) >
(
��> ?
string
��? E
username
��F N
)
��N O
{
�� 	
try
�� 
{
�� 
var
�� 
	customers
�� 
=
�� 
await
��  %
	_custRepo
��& /
.
��/ 0
GetAsync
��0 8
(
��8 9
)
��9 :
;
��: ;
var
�� 
customer
�� 
=
�� 
	customers
�� (
.
��( )
FirstOrDefault
��) 7
(
��7 8
c
��8 9
=>
��: <
c
��= >
.
��> ?
UserName
��? G
==
��H J
username
��K S
)
��S T
;
��T U
if
�� 
(
�� 
customer
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
return
�� 
new
�� 
OkObjectResult
�� -
(
��- .
customer
��. 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 
return
�� 
new
�� 
NotFoundResult
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# Z
{
��Z [
ex
��[ ]
.
��] ^
Message
��^ e
}
��e f
"
��f g
)
��g h
;
��h i
return
�� 
new
�� 
StatusCodeResult
�� +
(
��+ ,
$num
��, /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
}
�� 
}�� �	
VC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Services\AuthServices.cs
	namespace 	
HotPotProject
 
. 
Services  
{		 
public

 

class

 
AuthServices

 
{ 
private 
readonly %
ApplicationTrackerContext 2
_context3 ;
;; <
public 
AuthServices 
( %
ApplicationTrackerContext 5
context6 =
)= >
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
User 
> "
GetUserByUserNameAsync  6
(6 7
string7 =
username> F
)F G
{ 	
return 
await 
_context !
.! "
Users" '
.' (
FirstOrDefaultAsync( ;
(; <
u< =
=>> @
uA B
.B C
UserNameC K
==L N
usernameO W
)W X
;X Y
} 	
} 
} �3
WC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Services\AdminServices.cs
	namespace		 	
HotPotProject		
 
.		 
Services		  
{

 
public 

class 
AdminServices 
: 
IAdminServices -
{ 
private 
readonly 
IRepository $
<$ %
int% (
,( )
string* 0
,0 1
User2 6
>6 7
	_userRepo8 A
;A B
private 
readonly 
ITokenServices '
_tokenServices( 6
;6 7
public 
AdminServices 
( 
IRepository (
<( )
int) ,
,, -
string. 4
,4 5
User6 :
>: ;
userRepo< D
,D E
ITokenServicesF T
tokenServicesU b
)b c
{ 	
	_userRepo 
= 
userRepo  
;  !
_tokenServices 
= 
tokenServices *
;* +
} 	
public 
async 
Task 
< 
LoginUserDTO &
>& '

LoginAdmin( 2
(2 3
LoginUserDTO3 ?
	loginUser@ I
)I J
{ 	
var 
	adminUser 
= 
await !
	_userRepo" +
.+ ,
GetAsync, 4
(4 5
	loginUser5 >
.> ?
UserName? G
)G H
;H I
if 
( 
	adminUser 
== 
null !
)! "
throw 
new  
InvalidUserException .
(. /
)/ 0
;0 1
var 
password 
=  
getEncryptedPassword /
(/ 0
	loginUser0 9
.9 :
Password: B
,B C
	adminUserD M
.M N
KeyN Q
)Q R
;R S
var 
matchPassword 
= 
passwordMatch  -
(- .
password. 6
,6 7
	adminUser8 A
.A B
PasswordB J
)J K
;K L
if 
( 
matchPassword 
) 
{ 
	loginUser 
. 
Password "
=# $
$str% '
;' (
	loginUser 
. 
Role 
=  
	adminUser! *
.* +
Role+ /
;/ 0
	loginUser   
.   
Token   
=    !
await  " '
_tokenServices  ( 6
.  6 7
GenerateToken  7 D
(  D E
	loginUser  E N
)  N O
;  O P
return!! 
	loginUser!!  
;!!  !
}"" 
throw## 
new##  
InvalidUserException## *
(##* +
)##+ ,
;##, -
}$$ 	
private&& 
bool&& 
passwordMatch&& "
(&&" #
byte&&# '
[&&' (
]&&( )
password&&* 2
,&&2 3
byte&&4 8
[&&8 9
]&&9 :
userPassword&&; G
)&&G H
{'' 	
for(( 
((( 
int(( 
i(( 
=(( 
$num(( 
;(( 
i(( 
<(( 
password((  (
.((( )
Length(() /
;((/ 0
i((1 2
++((2 4
)((4 5
{)) 
if** 
(** 
password** 
[** 
i** 
]** 
!=**  "
userPassword**# /
[**/ 0
i**0 1
]**1 2
)**2 3
return++ 
false++  
;++  !
},, 
return-- 
true-- 
;-- 
}.. 	
private00 
byte00 
[00 
]00  
getEncryptedPassword00 +
(00+ ,
string00, 2
password003 ;
,00; <
byte00= A
[00A B
]00B C
key00D G
)00G H
{11 	

HMACSHA51222 
hmac22 
=22 
new22 !

HMACSHA51222" ,
(22, -
key22- 0
)220 1
;221 2
var33 
userPwd33 
=33 
hmac33 
.33 
ComputeHash33 *
(33* +
Encoding33+ 3
.333 4
UTF8334 8
.338 9
GetBytes339 A
(33A B
password33B J
)33J K
)33K L
;33L M
return44 
userPwd44 
;44 
}55 	
public77 
async77 
Task77 
<77 
LoginUserDTO77 &
>77& '
RegisterAdmin77( 5
(775 6
LoginUserDTO776 B
registerUser77C O
)77O P
{88 	
User99 
	adminUser99 
=99 
new99  
User99! %
(99% &
)99& '
;99' (
	adminUser:: 
.:: 
UserName:: 
=::  
registerUser::! -
.::- .
UserName::. 6
;::6 7
	adminUser;; 
.;; 
Role;; 
=;; 
$str;; $
;;;$ %

HMACSHA512<< 
hmac<< 
=<< 
new<< !

HMACSHA512<<" ,
(<<, -
)<<- .
;<<. /
	adminUser== 
.== 
Key== 
=== 
hmac==  
.==  !
Key==! $
;==$ %
	adminUser>> 
.>> 
Password>> 
=>>  
hmac>>! %
.>>% &
ComputeHash>>& 1
(>>1 2
Encoding>>2 :
.>>: ;
UTF8>>; ?
.>>? @
GetBytes>>@ H
(>>H I
registerUser>>I U
.>>U V
Password>>V ^
)>>^ _
)>>_ `
;>>` a
	adminUser?? 
=?? 
await?? 
	_userRepo?? '
.??' (
Add??( +
(??+ ,
	adminUser??, 5
)??5 6
;??6 7
registerUser@@ 
.@@ 
Password@@ !
=@@" #
$str@@$ &
;@@& '
registerUserAA 
.AA 
RoleAA 
=AA 
$strAA  '
;AA' (
returnBB 
registerUserBB 
;BB  
}CC 	
}EE 
}FF �$
\C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\UserRepository.cs
	namespace

 	
HotPotProject


 
.

 
Repositories

 $
{ 
public 

class 
UserRepository 
:  !
IRepository" -
<- .
int. 1
,1 2
string3 9
,9 :
User; ?
>? @
{ 
private 
readonly %
ApplicationTrackerContext 2
_context3 ;
;; <
public 
UserRepository 
( %
ApplicationTrackerContext 7
context8 ?
)? @
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
User 
> 
Add  #
(# $
User$ (
item) -
)- .
{ 	
_context 
. 
Add 
( 
item 
) 
; 
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
item 
; 
} 	
public 
async 
Task 
< 
User 
> 
Delete  &
(& '
int' *
key+ .
). /
{ 	
var 
user 
= 
await 
_context %
.% &
Users& +
.+ ,
	FindAsync, 5
(5 6
key6 9
)9 :
;: ;
if 
( 
user 
!= 
null 
) 
{   
_context!! 
.!! 
Users!! 
.!! 
Remove!! %
(!!% &
user!!& *
)!!* +
;!!+ ,
await"" 
_context"" 
."" 
SaveChangesAsync"" /
(""/ 0
)""0 1
;""1 2
}## 
return$$ 
user$$ 
;$$ 
}%% 	
public'' 
async'' 
Task'' 
<'' 
User'' 
>'' 
GetAsync''  (
(''( )
int'') ,
key''- 0
)''0 1
{(( 	
return)) 
await)) 
_context)) !
.))! "
Users))" '
.))' (
	FindAsync))( 1
())1 2
key))2 5
)))5 6
;))6 7
}** 	
public,, 
async,, 
Task,, 
<,, 
List,, 
<,, 
User,, #
>,,# $
>,,$ %
GetAsync,,& .
(,,. /
),,/ 0
{-- 	
return.. 
await.. 
_context.. !
...! "
Users.." '
...' (
ToListAsync..( 3
(..3 4
)..4 5
;..5 6
}// 	
public11 
async11 
Task11 
<11 
User11 
>11 
GetAsync11  (
(11( )
string11) /
key110 3
)113 4
{22 	
return33 
await33 
_context33 !
.33! "
Users33" '
.33' (
FirstOrDefaultAsync33( ;
(33; <
u33< =
=>33> @
u33A B
.33B C
UserName33C K
==33L N
key33O R
)33R S
;33S T
}44 	
public66 
async66 
Task66 
<66 
User66 
>66 
Update66  &
(66& '
User66' +
item66, 0
)660 1
{77 	
var88 
existingUser88 
=88 
await88 $
_context88% -
.88- .
Users88. 3
.883 4
	FindAsync884 =
(88= >
item88> B
.88B C
UserName88C K
)88K L
;88L M
if99 
(99 
existingUser99 
!=99 
null99  $
)99$ %
{:: 
_context;; 
.;; 
Entry;; 
(;; 
existingUser;; +
);;+ ,
.;;, -
CurrentValues;;- :
.;;: ;
	SetValues;;; D
(;;D E
item;;E I
);;I J
;;;J K
await<< 
_context<< 
.<< 
SaveChangesAsync<< /
(<</ 0
)<<0 1
;<<1 2
}== 
return>> 
existingUser>> 
;>>  
}?? 	
}AA 
}BB �*
]C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\StateRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public		 

class		 
StateRepository		  
:		! "
IRepository		# .
<		. /
int		/ 2
,		2 3
String		4 :
,		: ;
State		< A
>		A B
{

 %
ApplicationTrackerContext !
_context" *
;* +
public 
StateRepository 
( %
ApplicationTrackerContext 8
context9 @
)@ A
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
State 
>  
Add! $
($ %
State% *
item+ /
)/ 0
{ 	
_context 
. 
Add 
( 
item 
) 
; 
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
item 
; 
} 	
public$$ 
async$$ 
Task$$ 
<$$ 
State$$ 
>$$  
Delete$$! '
($$' (
int$$( +
key$$, /
)$$/ 0
{%% 	
var&& 
state&& 
=&& 
await&& 
GetAsync&& &
(&&& '
key&&' *
)&&* +
;&&+ ,
if'' 
('' 
state'' 
!='' 
null'' 
)'' 
{(( 
_context)) 
.)) 
States)) 
.))  
Remove))  &
())& '
state))' ,
))), -
;))- .
_context** 
.** 
SaveChanges** $
(**$ %
)**% &
;**& '
return++ 
state++ 
;++ 
},, 
throw-- 
new-- "
StateNotFoundException-- ,
(--, -
$str--- =
)--= >
;--> ?
}.. 	
public66 
async66 
Task66 
<66 
State66 
>66  
GetAsync66! )
(66) *
int66* -
key66. 1
)661 2
{77 	
var88 
states88 
=88 
await88 
GetAsync88 '
(88' (
)88( )
;88) *
var99 
state99 
=99 
states99 
.99 
FirstOrDefault99 -
(99- .
s99. /
=>990 2
s993 4
.994 5
StateId995 <
==99= ?
key99@ C
)99C D
;99D E
if:: 
(:: 
state:: 
!=:: 
null:: 
):: 
return;; 
state;; 
;;; 
throw<< 
new<< "
StateNotFoundException<< ,
(<<, -
$str<<- =
)<<= >
;<<> ?
}== 	
publicDD 
asyncDD 
TaskDD 
<DD 
ListDD 
<DD 
StateDD $
>DD$ %
>DD% &
GetAsyncDD' /
(DD/ 0
)DD0 1
{EE 	
varFF 
statesFF 
=FF 
_contextFF !
.FF! "
StatesFF" (
.FF( )
ToListFF) /
(FF/ 0
)FF0 1
;FF1 2
ifGG 
(GG 
statesGG 
!=GG 
nullGG 
||GG !
statesGG" (
.GG( )
CountGG) .
>GG/ 0
$numGG1 2
)GG2 3
returnHH 
statesHH 
;HH 
throwII 
newII "
StateNotFoundExceptionII ,
(II, -
$strII- X
)IIX Y
;IIY Z
}JJ 	
publicLL 
TaskLL 
<LL 
StateLL 
>LL 
GetAsyncLL #
(LL# $
stringLL$ *
keyLL+ .
)LL. /
{MM 	
throwNN 
newNN #
NotImplementedExceptionNN -
(NN- .
)NN. /
;NN/ 0
}OO 	
publicWW 
asyncWW 
TaskWW 
<WW 
StateWW 
>WW  
UpdateWW! '
(WW' (
StateWW( -
itemWW. 2
)WW2 3
{XX 	
varYY 
stateYY 
=YY 
awaitYY 
GetAsyncYY &
(YY& '
itemYY' +
.YY+ ,
StateIdYY, 3
)YY3 4
;YY4 5
ifZZ 
(ZZ 
stateZZ 
!=ZZ 
nullZZ 
)ZZ 
{[[ 
_context\\ 
.\\ 
Entry\\ 
<\\ 
State\\ $
>\\$ %
(\\% &
item\\& *
)\\* +
.\\+ ,
State\\, 1
=\\2 3
EntityState\\4 ?
.\\? @
Modified\\@ H
;\\H I
_context]] 
.]] 
SaveChanges]] $
(]]$ %
)]]% &
;]]& '
return^^ 
item^^ 
;^^ 
}__ 
throw`` 
new`` "
StateNotFoundException`` ,
(``, -
$str``- =
)``= >
;``> ?
}aa 	
}bb 
}cc �-
nC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\RestaurantSpecialitiesRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public		 

class		 ,
 RestaurantSpecialitiesRepository		 1
:		2 3
IRepository		4 ?
<		? @
int		@ C
,		C D
String		E K
,		K L 
RestaurantSpeciality		M a
>		a b
{

 %
ApplicationTrackerContext !
_context" *
;* +
public ,
 RestaurantSpecialitiesRepository /
(/ 0%
ApplicationTrackerContext0 I
contextJ Q
)Q R
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
<  
RestaurantSpeciality .
>. /
Add0 3
(3 4 
RestaurantSpeciality4 H
itemI M
)M N
{ 	
_context 
. 
Add 
( 
item 
) 
; 
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
item 
; 
} 	
public$$ 
async$$ 
Task$$ 
<$$  
RestaurantSpeciality$$ .
>$$. /
Delete$$0 6
($$6 7
int$$7 :
key$$; >
)$$> ?
{%% 	
var&& 

speciality&& 
=&& 
await&& "
GetAsync&&# +
(&&+ ,
key&&, /
)&&/ 0
;&&0 1
if'' 
('' 

speciality'' 
!='' 
null'' "
)''" #
{(( 
_context)) 
.)) "
RestaurantSpecialities)) /
.))/ 0
Remove))0 6
())6 7

speciality))7 A
)))A B
;))B C
_context** 
.** 
SaveChanges** $
(**$ %
)**% &
;**& '
return++ 

speciality++ !
;++! "
},, 
throw-- 
new-- '
SpecialityNotFoundException-- 1
(--1 2
$str--2 G
)--G H
;--H I
}.. 	
public66 
async66 
Task66 
<66  
RestaurantSpeciality66 .
>66. /
GetAsync660 8
(668 9
int669 <
key66= @
)66@ A
{77 	
var88 
specialities88 
=88 
await88 $
GetAsync88% -
(88- .
)88. /
;88/ 0
var99 

speciality99 
=99 
specialities99 )
.99) *
FirstOrDefault99* 8
(998 9
s999 :
=>99; =
s99> ?
.99? @

CategoryId99@ J
==99K M
key99N Q
)99Q R
;99R S
if:: 
(:: 

speciality:: 
!=:: 
null:: "
)::" #
return;; 

speciality;; !
;;;! "
throw<< 
new<< '
SpecialityNotFoundException<< 1
(<<1 2
$str<<2 G
)<<G H
;<<H I
}== 	
publicDD 
asyncDD 
TaskDD 
<DD 
ListDD 
<DD  
RestaurantSpecialityDD 3
>DD3 4
>DD4 5
GetAsyncDD6 >
(DD> ?
)DD? @
{EE 	
varFF 
specialitiesFF 
=FF 
_contextFF '
.FF' ("
RestaurantSpecialitiesFF( >
.FF> ?
ToListFF? E
(FFE F
)FFF G
;FFG H
ifGG 
(GG 
specialitiesGG 
!=GG 
nullGG  $
||GG% '
specialitiesGG( 4
.GG4 5
CountGG5 :
>GG; <
$numGG= >
)GG> ?
returnHH 
specialitiesHH #
;HH# $
throwII 
newII '
SpecialityNotFoundExceptionII 1
(II1 2
$strII2 [
)II[ \
;II\ ]
}JJ 	
publicLL 
TaskLL 
<LL  
RestaurantSpecialityLL (
>LL( )
GetAsyncLL* 2
(LL2 3
stringLL3 9
keyLL: =
)LL= >
{MM 	
throwNN 
newNN #
NotImplementedExceptionNN -
(NN- .
)NN. /
;NN/ 0
}OO 	
publicWW 
asyncWW 
TaskWW 
<WW  
RestaurantSpecialityWW .
>WW. /
UpdateWW0 6
(WW6 7 
RestaurantSpecialityWW7 K
itemWWL P
)WWP Q
{XX 	
varYY 

specialityYY 
=YY 
awaitYY "
GetAsyncYY# +
(YY+ ,
itemYY, 0
.YY0 1

CategoryIdYY1 ;
)YY; <
;YY< =
ifZZ 
(ZZ 

specialityZZ 
!=ZZ 
nullZZ "
)ZZ" #
{[[ 
_context\\ 
.\\ 
Entry\\ 
<\\  
RestaurantSpeciality\\ 3
>\\3 4
(\\4 5
item\\5 9
)\\9 :
.\\: ;
State\\; @
=\\A B
EntityState\\C N
.\\N O
Modified\\O W
;\\W X
_context]] 
.]] 
SaveChanges]] $
(]]$ %
)]]% &
;]]& '
return^^ 

speciality^^ !
;^^! "
}__ 
throw`` 
new`` '
SpecialityNotFoundException`` 1
(``1 2
$str``2 [
)``[ \
;``\ ]
}aa 	
}bb 
}cc �/
bC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\RestaurantRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public		 

class		  
RestaurantRepository		 %
:		& '
IRepository		( 3
<		3 4
int		4 7
,		7 8
String		9 ?
,		? @

Restaurant		A K
>		K L
{

 %
ApplicationTrackerContext !
_context" *
;* +
public  
RestaurantRepository #
(# $%
ApplicationTrackerContext$ =
context> E
)E F
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 

Restaurant $
>$ %
Add& )
() *

Restaurant* 4
item5 9
)9 :
{ 	
_context 
. 
Add 
( 
item 
) 
; 
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
item 
; 
} 	
public$$ 
async$$ 
Task$$ 
<$$ 

Restaurant$$ $
>$$$ %
Delete$$& ,
($$, -
int$$- 0
key$$1 4
)$$4 5
{%% 	
var&& 

restaurant&& 
=&& 
await&& "
GetAsync&&# +
(&&+ ,
key&&, /
)&&/ 0
;&&0 1
_context'' 
.'' 
Restaurants''  
.''  !
Remove''! '
(''' (

restaurant''( 2
)''2 3
;''3 4
_context(( 
.(( 
SaveChanges((  
(((  !
)((! "
;((" #
return)) 

restaurant)) 
;)) 
}** 	
public22 
async22 
Task22 
<22 

Restaurant22 $
>22$ %
GetAsync22& .
(22. /
int22/ 2
key223 6
)226 7
{33 	
var44 
restaurants44 
=44 
await44 #
GetAsync44$ ,
(44, -
)44- .
;44. /
var55 

restaurant55 
=55 
restaurants55 (
.55( )
FirstOrDefault55) 7
(557 8
r558 9
=>55: <
r55= >
.55> ?
RestaurantId55? K
==55L N
key55O R
)55R S
;55S T
return66 

restaurant66 
;66 
}77 	
public>> 
async>> 
Task>> 
<>> 
List>> 
<>> 

Restaurant>> )
>>>) *
>>>* +
GetAsync>>, 4
(>>4 5
)>>5 6
{?? 	
var@@ 
restaurants@@ 
=@@ 
_context@@ &
.@@& '
Restaurants@@' 2
.@@2 3
ToList@@3 9
(@@9 :
)@@: ;
;@@; <
returnAA 
restaurantsAA 
;AA 
}BB 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 

RestaurantJJ $
>JJ$ %
UpdateJJ& ,
(JJ, -

RestaurantJJ- 7
itemJJ8 <
)JJ< =
{KK 	
varLL 

restaurantLL 
=LL 
awaitLL "
GetAsyncLL# +
(LL+ ,
itemLL, 0
.LL0 1
RestaurantIdLL1 =
)LL= >
;LL> ?
_contextMM 
.MM 
EntryMM 
<MM 

RestaurantMM %
>MM% &
(MM& '
itemMM' +
)MM+ ,
.MM, -
StateMM- 2
=MM3 4
EntityStateMM5 @
.MM@ A
ModifiedMMA I
;MMI J
_contextNN 
.NN 
SaveChangesNN  
(NN  !
)NN! "
;NN" #
returnOO 

restaurantOO 
;OO 
}PP 	
publicXX 
asyncXX 
TaskXX 
<XX 

RestaurantXX $
>XX$ %
GetAsyncXX& .
(XX. /
StringXX/ 5
nameXX6 :
)XX: ;
{YY 	
varZZ 
restaurantsZZ 
=ZZ 
_contextZZ &
.ZZ& '
RestaurantsZZ' 2
.ZZ2 3
ToListZZ3 9
(ZZ9 :
)ZZ: ;
;ZZ; <
var[[ 

restaurant[[ 
=[[ 
restaurants[[ (
.[[( )
FirstOrDefault[[) 7
([[7 8
r[[8 9
=>[[: <
r[[= >
.[[> ?
RestaurantName[[? M
.[[M N
ToLower[[N U
([[U V
)[[V W
==[[X Z
name[[[ _
.[[_ `
ToLower[[` g
([[g h
)[[h i
)[[i j
;[[j k
return\\ 

restaurant\\ 
;\\ 
}]] 	
public^^ 
async^^ 
Task^^ 
<^^ 

Restaurant^^ $
>^^$ %
DeleteAsync^^& 1
(^^1 2
string^^2 8
name^^9 =
)^^= >
{__ 	
var`` 

restaurant`` 
=`` 
await`` "
GetAsync``# +
(``+ ,
name``, 0
)``0 1
;``1 2
ifaa 
(aa 

restaurantaa 
==aa 
nullaa "
)aa" #
{bb 
throwcc 
newcc '
RestaurantNotFoundExceptioncc 5
(cc5 6
$strcc6 M
)ccM N
;ccN O
}dd 
_contextff 
.ff 
Restaurantsff  
.ff  !
Removeff! '
(ff' (

restaurantff( 2
)ff2 3
;ff3 4
_contextgg 
.gg 
SaveChangesgg  
(gg  !
)gg! "
;gg" #
returnhh 

restauranthh 
;hh 
}ii 	
}kk 
}ll �2
gC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\RestaurantOwnerRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public 

class %
RestaurantOwnerRepository *
:+ ,
IRepository- 8
<8 9
int9 <
,< =
string> D
,D E
RestaurantOwnerF U
>U V
{		 
private

 
readonly

 %
ApplicationTrackerContext

 2
_context

3 ;
;

; <
private 
readonly 
ILogger  
<  !%
RestaurantOwnerRepository! :
>: ;
_logger< C
;C D
public %
RestaurantOwnerRepository (
(( )%
ApplicationTrackerContext) B
contextC J
,J K
ILoggerL S
<S T%
RestaurantOwnerRepositoryT m
>m n
loggero u
)u v
{ 	
_context 
= 
context 
; 
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
RestaurantOwner )
>) *
Add+ .
(. /
RestaurantOwner/ >
item? C
)C D
{ 	
_context 
. 
RestaurantOwners %
.% &
Add& )
() *
item* .
). /
;/ 0
_context 
. 
SaveChanges  
(  !
)! "
;" #
LogInformation 
( 
$" 
$str 5
{5 6
item6 :
.: ;
OwnerId; B
}B C
"C D
)D E
;E F
return 
item 
; 
} 	
public 
async 
Task 
< 
RestaurantOwner )
>) *
Delete+ 1
(1 2
int2 5
key6 9
)9 :
{ 	
var 
owner 
= 
await 
GetAsync &
(& '
key' *
)* +
;+ ,
if 
( 
owner 
!= 
null 
) 
{ 
_context   
.   
RestaurantOwners   )
.  ) *
Remove  * 0
(  0 1
owner  1 6
)  6 7
;  7 8
await!! 
_context!! 
.!! 
SaveChangesAsync!! /
(!!/ 0
)!!0 1
;!!1 2
LogInformation"" 
("" 
$""" !
$str""! ;
{""; <
owner""< A
.""A B
OwnerId""B I
}""I J
"""J K
)""K L
;""L M
return## 
owner## 
;## 
}$$ 
return%% 
null%% 
;%% 
}&& 	
public(( 
async(( 
Task(( 
<(( 
RestaurantOwner(( )
>(() *
GetAsync((+ 3
(((3 4
int((4 7
key((8 ;
)((; <
{)) 	
var** 
owner** 
=** 
await** 
_context** &
.**& '
RestaurantOwners**' 7
.**7 8
	FindAsync**8 A
(**A B
key**B E
)**E F
;**F G
return++ 
owner++ 
;++ 
},, 	
public.. 
async.. 
Task.. 
<.. 
List.. 
<.. 
RestaurantOwner.. .
>... /
>../ 0
GetAsync..1 9
(..9 :
)..: ;
{// 	
var00 
owners00 
=00 
await00 
_context00 '
.00' (
RestaurantOwners00( 8
.008 9
ToListAsync009 D
(00D E
)00E F
;00F G
LogInformation11 
(11 
$str11 F
)11F G
;11G H
return22 
owners22 
;22 
}33 	
public55 
async55 
Task55 
<55 
RestaurantOwner55 )
>55) *
Update55+ 1
(551 2
RestaurantOwner552 A
item55B F
)55F G
{66 	
var77 
owner77 
=77 
await77 
GetAsync77 &
(77& '
item77' +
.77+ ,
OwnerId77, 3
)773 4
;774 5
_context88 
.88 
Entry88 
(88 
item88 
)88  
.88  !
State88! &
=88' (
EntityState88) 4
.884 5
Modified885 =
;88= >
await99 
_context99 
.99 
SaveChangesAsync99 +
(99+ ,
)99, -
;99- .
LogInformation:: 
(:: 
$":: 
$str:: 7
{::7 8
item::8 <
.::< =
OwnerId::= D
}::D E
"::E F
)::F G
;::G H
return;; 
item;; 
;;; 
}== 	
public?? 
async?? 
Task?? 
<?? 
RestaurantOwner?? )
>??) *
GetAsync??+ 3
(??3 4
string??4 :
name??; ?
)??? @
{@@ 	
varAA 
restaurantOwnersAA  
=AA! "
_contextAA# +
.AA+ ,
RestaurantOwnersAA, <
.AA< =
ToListAA= C
(AAC D
)AAD E
;AAE F
varBB 
restaurantOwnerBB 
=BB  !
restaurantOwnersBB" 2
.BB2 3
FirstOrDefaultBB3 A
(BBA B
rBBB C
=>BBD F
rBBG H
.BBH I
NameBBI M
==BBN P
nameBBQ U
)BBU V
;BBV W
returnCC 
restaurantOwnerCC "
;CC" #
}DD 	
publicFF 
voidFF 
LogInformationFF "
(FF" #
stringFF# )
messageFF* 1
)FF1 2
{GG 	
_loggerHH 
.HH 
LogInformationHH "
(HH" #
messageHH# *
)HH* +
;HH+ ,
}II 	
}JJ 
}KK �2
_C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\PaymentRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public		 

class		 
PaymentRepository		 "
:		# $
IRepository		% 0
<		0 1
int		1 4
,		4 5
string		6 <
,		< =
Payment		> E
>		E F
{

 
private 
readonly %
ApplicationTrackerContext 2
_context3 ;
;; <
private 
readonly 
ILogger  
<  !
PaymentRepository! 2
>2 3
_logger4 ;
;; <
public 
PaymentRepository  
(  !%
ApplicationTrackerContext! :
context; B
,B C
ILoggerD K
<K L
PaymentRepositoryL ]
>] ^
logger_ e
)e f
{ 	
_context 
= 
context 
; 
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
Payment !
>! "
Add# &
(& '
Payment' .
item/ 3
)3 4
{ 	
_context 
. 
Payments 
. 
Add !
(! "
item" &
)& '
;' (
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
LogInformation 
( 
$" 
$str ,
{, -
item- 1
.1 2
	PaymentId2 ;
}; <
"< =
)= >
;> ?
return 
item 
; 
}   	
public'' 
async'' 
Task'' 
<'' 
Payment'' !
>''! "
Delete''# )
('') *
int''* -
key''. 1
)''1 2
{(( 	
var)) 
payment)) 
=)) 
await)) 
GetAsync))  (
())( )
key))) ,
))), -
;))- .
if++ 
(++ 
payment++ 
!=++ 
null++ 
)++  
{,, 
_context-- 
.-- 
Payments-- !
.--! "
Remove--" (
(--( )
payment--) 0
)--0 1
;--1 2
await.. 
_context.. 
... 
SaveChangesAsync.. /
(../ 0
)..0 1
;..1 2
LogInformation00 
(00 
$"00 !
$str00! 2
{002 3
payment003 :
.00: ;
	PaymentId00; D
}00D E
"00E F
)00F G
;00G H
}11 
return33 
payment33 
;33 
}44 	
public;; 
async;; 
Task;; 
<;; 
Payment;; !
>;;! "
GetAsync;;# +
(;;+ ,
int;;, /
key;;0 3
);;3 4
{<< 	
var== 
payments== 
=== 
await==  
GetAsync==! )
(==) *
)==* +
;==+ ,
var>> 
payment>> 
=>> 
payments>> "
.>>" #
FirstOrDefault>># 1
(>>1 2
p>>2 3
=>>>4 6
p>>7 8
.>>8 9
	PaymentId>>9 B
==>>C E
key>>F I
)>>I J
;>>J K
if@@ 
(@@ 
payment@@ 
!=@@ 
null@@ 
)@@  
{AA 
returnBB 
paymentBB 
;BB 
}CC 
throwEE 
newEE %
PaymentsNotFoundExceptionEE /
(EE/ 0
)EE0 1
;EE1 2
}FF 	
publicLL 
asyncLL 
TaskLL 
<LL 
ListLL 
<LL 
PaymentLL &
>LL& '
>LL' (
GetAsyncLL) 1
(LL1 2
)LL2 3
{MM 	
varNN 
paymentsNN 
=NN 
awaitNN  
_contextNN! )
.NN) *
PaymentsNN* 2
.OO 
IncludeOO 
(OO 
pOO 
=>OO 
pOO 
.OO  
OrderOO  %
)OO% &
.PP 
ToListAsyncPP 
(PP 
)PP 
;PP 
returnRR 
paymentsRR 
;RR 
}SS 	
public[[ 
async[[ 
Task[[ 
<[[ 
Payment[[ !
>[[! "
Update[[# )
([[) *
Payment[[* 1
item[[2 6
)[[6 7
{\\ 	
var]] 
payment]] 
=]] 
await]] 
GetAsync]]  (
(]]( )
item]]) -
.]]- .
	PaymentId]]. 7
)]]7 8
;]]8 9
if__ 
(__ 
payment__ 
!=__ 
null__ 
)__  
{`` 
_contextaa 
.aa 
Entryaa 
(aa 
itemaa #
)aa# $
.aa$ %
Stateaa% *
=aa+ ,
EntityStateaa- 8
.aa8 9
Modifiedaa9 A
;aaA B
awaitbb 
_contextbb 
.bb 
SaveChangesAsyncbb /
(bb/ 0
)bb0 1
;bb1 2
LogInformationdd 
(dd 
$"dd !
$strdd! 2
{dd2 3
itemdd3 7
.dd7 8
	PaymentIddd8 A
}ddA B
"ddB C
)ddC D
;ddD E
}ee 
returngg 
paymentgg 
;gg 
}hh 	
publicoo 
voidoo 
LogInformationoo "
(oo" #
stringoo# )
messageoo* 1
)oo1 2
{pp 	
_loggerqq 
.qq 
LogInformationqq "
(qq" #
messageqq# *
)qq* +
;qq+ ,
}rr 	
publictt 
Tasktt 
<tt 
Paymenttt 
>tt 
GetAsynctt %
(tt% &
stringtt& ,
keytt- 0
)tt0 1
{uu 	
throwvv 
newvv #
NotImplementedExceptionvv -
(vv- .
)vv. /
;vv/ 0
}ww 	
}xx 
}yy �6
]C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\OrderRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public		 

class		 
OrderRepository		  
:		! "
IRepository		# .
<		. /
int		/ 2
,		2 3
string		4 :
,		: ;
Order		< A
>		A B
{

 
private 
readonly %
ApplicationTrackerContext 2
_context3 ;
;; <
private 
readonly 
ILogger  
<  !
OrderRepository! 0
>0 1
_logger2 9
;9 :
public 
OrderRepository 
( %
ApplicationTrackerContext 8
context9 @
,@ A
ILoggerB I
<I J
OrderRepositoryJ Y
>Y Z
logger[ a
)a b
{ 	
_context 
= 
context 
; 
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
Order 
>  
Add! $
($ %
Order% *
item+ /
)/ 0
{ 	
_context 
. 
Orders 
. 
Add 
(  
item  $
)$ %
;% &
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
LogInformation 
( 
$" 
$str *
{* +
item+ /
./ 0
OrderId0 7
}7 8
"8 9
)9 :
;: ;
return 
item 
; 
}   	
public'' 
async'' 
Task'' 
<'' 
Order'' 
>''  
Delete''! '
(''' (
int''( +
key'', /
)''/ 0
{(( 	
try)) 
{** 
var++ 
order++ 
=++ 
await++ !
GetAsync++" *
(++* +
key+++ .
)++. /
;++/ 0
if-- 
(-- 
order-- 
!=-- 
null-- !
)--! "
{.. 
_context// 
.// 
Orders// #
.//# $
Remove//$ *
(//* +
order//+ 0
)//0 1
;//1 2
await00 
_context00 "
.00" #
SaveChangesAsync00# 3
(003 4
)004 5
;005 6
LogInformation22 "
(22" #
$"22# %
$str22% 4
{224 5
order225 :
.22: ;
OrderId22; B
}22B C
"22C D
)22D E
;22E F
}33 
return55 
order55 
;55 
}66 
catch77 
(77 
	Exception77 
e77 
)77 
{88 
throw99 
new99 
	Exception99 #
(99# $
e99$ %
.99% &
Message99& -
)99- .
;99. /
}:: 
};; 	
publicBB 
asyncBB 
TaskBB 
<BB 
OrderBB 
>BB  
GetAsyncBB! )
(BB) *
intBB* -
keyBB. 1
)BB1 2
{CC 	
varDD 
ordersDD 
=DD 
awaitDD 
GetAsyncDD '
(DD' (
)DD( )
;DD) *
varEE 
orderEE 
=EE 
ordersEE 
.EE 
FirstOrDefaultEE -
(EE- .
oEE. /
=>EE0 2
oEE3 4
.EE4 5
OrderIdEE5 <
==EE= ?
keyEE@ C
)EEC D
;EED E
ifGG 
(GG 
orderGG 
!=GG 
nullGG 
)GG 
{HH 
returnII 
orderII 
;II 
}JJ 
throwLL 
newLL #
OrdersNotFoundExceptionLL -
(LL- .
)LL. /
;LL/ 0
}MM 	
publicSS 
asyncSS 
TaskSS 
<SS 
ListSS 
<SS 
OrderSS $
>SS$ %
>SS% &
GetAsyncSS' /
(SS/ 0
)SS0 1
{TT 	
varUU 
ordersUU 
=UU 
awaitUU 
_contextUU '
.UU' (
OrdersUU( .
.VV 
IncludeVV 
(VV 
oVV 
=>VV 
oVV 
.VV  
CustomerVV  (
)VV( )
.WW 
IncludeWW 
(WW 
oWW 
=>WW 
oWW 
.WW  

RestaurantWW  *
)WW* +
.XX 
IncludeXX 
(XX 
oXX 
=>XX 
oXX 
.XX  
DeliveryPartnerXX  /
)XX/ 0
.YY 
ToListAsyncYY 
(YY 
)YY 
;YY 
return[[ 
orders[[ 
;[[ 
}\\ 	
publiccc 
asynccc 
Taskcc 
<cc 
Ordercc 
>cc  
Updatecc! '
(cc' (
Ordercc( -
itemcc. 2
)cc2 3
{dd 	
varee 
orderee 
=ee 
awaitee 
GetAsyncee &
(ee& '
itemee' +
.ee+ ,
OrderIdee, 3
)ee3 4
;ee4 5
ifgg 
(gg 
ordergg 
!=gg 
nullgg 
)gg 
{hh 
_contextii 
.ii 
Entryii 
(ii 
itemii #
)ii# $
.ii$ %
Stateii% *
=ii+ ,
EntityStateii- 8
.ii8 9
Modifiedii9 A
;iiA B
awaitjj 
_contextjj 
.jj 
SaveChangesAsyncjj /
(jj/ 0
)jj0 1
;jj1 2
LogInformationll 
(ll 
$"ll !
$strll! 0
{ll0 1
itemll1 5
.ll5 6
OrderIdll6 =
}ll= >
"ll> ?
)ll? @
;ll@ A
}mm 
returnoo 
orderoo 
;oo 
}pp 	
publicww 
voidww 
LogInformationww "
(ww" #
stringww# )
messageww* 1
)ww1 2
{xx 	
_loggeryy 
.yy 
LogInformationyy "
(yy" #
messageyy# *
)yy* +
;yy+ ,
}zz 	
public|| 
Task|| 
<|| 
Order|| 
>|| 
GetAsync|| #
(||# $
string||$ *
key||+ .
)||. /
{}} 	
throw~~ 
new~~ #
NotImplementedException~~ -
(~~- .
)~~. /
;~~/ 0
} 	
}
�� 
}�� �<
aC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\OrderItemRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public 

class 
OrderItemRepository $
:% &
IRepository' 2
<2 3
int3 6
,6 7
string8 >
,> ?
	OrderItem@ I
>I J
{		 
private

 
readonly

 %
ApplicationTrackerContext

 2
_context

3 ;
;

; <
private 
readonly 
ILogger  
<  !
OrderItemRepository! 4
>4 5
_logger6 =
;= >
public 
OrderItemRepository "
(" #%
ApplicationTrackerContext# <
context= D
,D E
ILoggerF M
<M N
OrderItemRepositoryN a
>a b
loggerc i
)i j
{ 	
_context 
= 
context 
; 
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
	OrderItem #
># $
Add% (
(( )
	OrderItem) 2
item3 7
)7 8
{ 	
_context 
. 

OrderItems 
.  
Add  #
(# $
item$ (
)( )
;) *
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
LogInformation 
( 
$" 
$str 7
{7 8
item8 <
.< =
OrderId= D
}D E
$strE N
{N O
itemO S
.S T
MenuIdT Z
}Z [
"[ \
)\ ]
;] ^
return 
item 
; 
} 	
public&& 
async&& 
Task&& 
<&& 
	OrderItem&& #
>&&# $
Delete&&% +
(&&+ ,
(&&, -
int&&- 0
OrderId&&1 8
,&&8 9
int&&: =
MenuId&&> D
)&&D E
key&&F I
)&&I J
{'' 	
var(( 
	orderItem(( 
=(( 
await(( !
GetAsync((" *
(((* +
key((+ .
)((. /
;((/ 0
if** 
(** 
	orderItem** 
!=** 
null** !
)**! "
{++ 
_context,, 
.,, 

OrderItems,, #
.,,# $
Remove,,$ *
(,,* +
	orderItem,,+ 4
),,4 5
;,,5 6
await-- 
_context-- 
.-- 
SaveChangesAsync-- /
(--/ 0
)--0 1
;--1 2
LogInformation// 
(// 
$"// !
$str//! =
{//= >
	orderItem//> G
.//G H
OrderId//H O
}//O P
$str//P Y
{//Y Z
	orderItem//Z c
.//c d
MenuId//d j
}//j k
"//k l
)//l m
;//m n
}00 
return22 
	orderItem22 
;22 
}33 	
public:: 
async:: 
Task:: 
<:: 
	OrderItem:: #
>::# $
GetAsync::% -
(::- .
(::. /
int::/ 2
OrderId::3 :
,::: ;
int::< ?
MenuId::@ F
)::F G
key::H K
)::K L
{;; 	
var<< 
	orderItem<< 
=<< 
await<< !
_context<<" *
.<<* +

OrderItems<<+ 5
.== 
Where== 
(== 
oi== 
=>== 
oi== 
.==  
OrderId==  '
====( *
key==+ .
.==. /
OrderId==/ 6
&&==7 9
oi==: <
.==< =
MenuId=== C
====D F
key==G J
.==J K
MenuId==K Q
)==Q R
.>> 
FirstOrDefaultAsync>> $
(>>$ %
)>>% &
;>>& '
return@@ 
	orderItem@@ 
;@@ 
}AA 	
publicHH 
asyncHH 
TaskHH 
<HH 
ListHH 
<HH 
	OrderItemHH (
>HH( )
>HH) *
GetAsyncHH+ 3
(HH3 4
)HH4 5
{II 	
varJJ 

orderItemsJJ 
=JJ 
awaitJJ "
_contextJJ# +
.JJ+ ,

OrderItemsJJ, 6
.KK 
IncludeKK 
(KK 
oiKK 
=>KK 
oiKK !
.KK! "
OrderKK" '
)KK' (
.LL 
IncludeLL 
(LL 
oiLL 
=>LL 
oiLL !
.LL! "
MenuLL" &
)LL& '
.MM 
ToListAsyncMM 
(MM 
)MM 
;MM 
returnOO 

orderItemsOO 
;OO 
}PP 	
publicWW 
asyncWW 
TaskWW 
<WW 
	OrderItemWW #
>WW# $
UpdateWW% +
(WW+ ,
	OrderItemWW, 5
itemWW6 :
)WW: ;
{XX 	
varYY 
	orderItemYY 
=YY 
awaitYY !
GetAsyncYY" *
(YY* +
(YY+ ,
itemYY, 0
.YY0 1
OrderIdYY1 8
,YY8 9
itemYY: >
.YY> ?
MenuIdYY? E
)YYE F
)YYF G
;YYG H
if[[ 
([[ 
	orderItem[[ 
!=[[ 
null[[ !
)[[! "
{\\ 
_context]] 
.]] 
Entry]] 
(]] 
item]] #
)]]# $
.]]$ %
State]]% *
=]]+ ,
EntityState]]- 8
.]]8 9
Modified]]9 A
;]]A B
await^^ 
_context^^ 
.^^ 
SaveChangesAsync^^ /
(^^/ 0
)^^0 1
;^^1 2
LogInformation`` 
(`` 
$"`` !
$str``! =
{``= >
item``> B
.``B C
OrderId``C J
}``J K
$str``K T
{``T U
item``U Y
.``Y Z
MenuId``Z `
}``` a
"``a b
)``b c
;``c d
}aa 
returncc 
	orderItemcc 
;cc 
}dd 	
publicll 
voidll 
LogInformationll "
(ll" #
stringll# )
messagell* 1
)ll1 2
{mm 	
_loggernn 
.nn 
LogInformationnn "
(nn" #
messagenn# *
)nn* +
;nn+ ,
}oo 	
publicqq 
Taskqq 
<qq 
	OrderItemqq 
>qq 
GetAsyncqq '
(qq' (
intqq( +
keyqq, /
)qq/ 0
{rr 	
throwss 
newss #
NotImplementedExceptionss -
(ss- .
)ss. /
;ss/ 0
}tt 	
publicvv 
Taskvv 
<vv 
	OrderItemvv 
>vv 
Deletevv %
(vv% &
intvv& )
keyvv* -
)vv- .
{ww 	
throwxx 
newxx #
NotImplementedExceptionxx -
(xx- .
)xx. /
;xx/ 0
}yy 	
public{{ 
Task{{ 
<{{ 
	OrderItem{{ 
>{{ 
GetAsync{{ '
({{' (
string{{( .
key{{/ 2
){{2 3
{|| 	
throw}} 
new}} #
NotImplementedException}} -
(}}- .
)}}. /
;}}/ 0
}~~ 	
} 
}�� �8
\C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\MenuRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public		 

class		 
MenuRepository		 
:		  !
IRepository		" -
<		- .
int		. 1
,		1 2
String		3 9
,		9 :
Menu		; ?
>		? @
{

 
private 
readonly %
ApplicationTrackerContext 2
_context3 ;
;; <
private 
readonly 
ILogger  
<  !
MenuRepository! /
>/ 0
_logger1 8
;8 9
public 
MenuRepository 
( %
ApplicationTrackerContext 7
context8 ?
,? @
ILoggerA H
<H I
MenuRepositoryI W
>W X
loggerY _
)_ `
{ 	
_context 
= 
context 
; 
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
Menu 
> 
Add  #
(# $
Menu$ (
item) -
)- .
{ 	
_context 
. 
Menus 
. 
Add 
( 
item #
)# $
;$ %
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
LogInformation 
( 
$" 
$str )
{) *
item* .
.. /
MenuId/ 5
}5 6
"6 7
)7 8
;8 9
return 
item 
; 
} 	
public%% 
async%% 
Task%% 
<%% 
Menu%% 
>%% 
Delete%%  &
(%%& '
int%%' *
key%%+ .
)%%. /
{&& 	
var'' 
menu'' 
='' 
await'' 
GetAsync'' %
(''% &
key''& )
)'') *
;''* +
if(( 
((( 
menu(( 
!=(( 
null(( 
)(( 
{)) 
_context** 
.** 
Menus** 
.** 
Remove** %
(**% &
menu**& *
)*** +
;**+ ,
await++ 
_context++ 
.++ 
SaveChangesAsync++ /
(++/ 0
)++0 1
;++1 2
LogInformation,, 
(,, 
$",, !
$str,,! /
{,,/ 0
menu,,0 4
.,,4 5
MenuId,,5 ;
},,; <
",,< =
),,= >
;,,> ?
return-- 
menu-- 
;-- 
}.. 
return// 
null// 
;// 
}00 	
public77 
async77 
Task77 
<77 
Menu77 
>77 
GetAsync77  (
(77( )
int77) ,
key77- 0
)770 1
{88 	
var99 
menus99 
=99 
await99 
GetAsync99 &
(99& '
)99' (
;99( )
var:: 
menu:: 
=:: 
menus:: 
.:: 
FirstOrDefault:: +
(::+ ,
m::, -
=>::. 0
m::1 2
.::2 3
MenuId::3 9
==::: <
key::= @
)::@ A
;::A B
if;; 
(;; 
menu;; 
!=;; 
null;; 
);; 
{<< 
return== 
menu== 
;== 
}>> 
throw?? 
new?? $
NoMenuAvailableException?? .
(??. /
)??/ 0
;??0 1
}@@ 	
publicFF 
asyncFF 
TaskFF 
<FF 
ListFF 
<FF 
MenuFF #
>FF# $
>FF$ %
GetAsyncFF& .
(FF. /
)FF/ 0
{GG 	
varHH 
menusHH 
=HH 
awaitHH 
_contextHH &
.HH& '
MenusHH' ,
.II 
IncludeII 
(II 
mII 
=>II 
mII 
.II  
NutritionalInfoII  /
)II/ 0
.JJ 
IncludeJJ 
(JJ 
mJJ 
=>JJ 
mJJ 
.JJ  

RestaurantJJ  *
)JJ* +
.KK 
ToListAsyncKK 
(KK 
)KK 
;KK 
LogInformationLL 
(LL 
$strLL ?
)LL? @
;LL@ A
returnMM 
menusMM 
;MM 
}NN 	
publicUU 
asyncUU 
TaskUU 
<UU 
MenuUU 
>UU 
UpdateUU  &
(UU& '
MenuUU' +
itemUU, 0
)UU0 1
{VV 	
varWW 
menuWW 
=WW 
awaitWW 
GetAsyncWW %
(WW% &
itemWW& *
.WW* +
MenuIdWW+ 1
)WW1 2
;WW2 3
ifXX 
(XX 
menuXX 
!=XX 
nullXX 
)XX 
{YY 
_contextZZ 
.ZZ 
EntryZZ 
(ZZ 
itemZZ #
)ZZ# $
.ZZ$ %
StateZZ% *
=ZZ+ ,
EntityStateZZ- 8
.ZZ8 9
ModifiedZZ9 A
;ZZA B
await[[ 
_context[[ 
.[[ 
SaveChangesAsync[[ /
([[/ 0
)[[0 1
;[[1 2
LogInformation\\ 
(\\ 
$"\\ !
$str\\! /
{\\/ 0
item\\0 4
.\\4 5
MenuId\\5 ;
}\\; <
"\\< =
)\\= >
;\\> ?
}]] 
return^^ 
menu^^ 
;^^ 
}__ 	
publicff 
asyncff 
Taskff 
<ff 
Menuff 
>ff 
GetAsyncff  (
(ff( )
stringff) /
nameff0 4
)ff4 5
{gg 	
varhh 
menushh 
=hh 
_contexthh  
.hh  !
Menushh! &
.hh& '
ToListhh' -
(hh- .
)hh. /
;hh/ 0
varii 
menuii 
=ii 
menusii 
.ii 
FirstOrDefaultii +
(ii+ ,
mii, -
=>ii. 0
mii1 2
.ii2 3
Nameii3 7
==ii8 :
nameii; ?
)ii? @
;ii@ A
ifjj 
(jj 
menujj 
!=jj 
nulljj 
)jj 
{kk 
returnll 
menull 
;ll 
}mm 
thrownn 
newnn $
NoMenuAvailableExceptionnn .
(nn. /
)nn/ 0
;nn0 1
}oo 	
publicuu 
voiduu 
LogInformationuu "
(uu" #
stringuu# )
messageuu* 1
)uu1 2
{vv 	
_loggerww 
.ww 
LogInformationww "
(ww" #
messageww# *
)ww* +
;ww+ ,
}xx 	
}yy 
}zz �(
fC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\CustomerReviewRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public		 

class		 $
CustomerReviewRepository		 )
:		* +
IRepository		, 7
<		7 8
int		8 ;
,		; <
String		= C
,		C D
CustomerReview		E S
>		S T
{

 %
ApplicationTrackerContext !
_context" *
;* +
public $
CustomerReviewRepository '
(' (%
ApplicationTrackerContext( A
contextB I
)I J
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
CustomerReview (
>( )
Add* -
(- .
CustomerReview. <
item= A
)A B
{ 	
_context 
. 
Add 
( 
item 
) 
; 
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
item 
; 
} 	
public$$ 
async$$ 
Task$$ 
<$$ 
CustomerReview$$ (
>$$( )
Delete$$* 0
($$0 1
int$$1 4
key$$5 8
)$$8 9
{%% 	
var&& 
review&& 
=&& 
await&& 
GetAsync&& '
(&&' (
key&&( +
)&&+ ,
;&&, -
if'' 
('' 
review'' 
!='' 
null'' 
)'' 
{(( 
_context)) 
.)) 
CustomerReviews)) (
.))( )
Remove))) /
())/ 0
review))0 6
)))6 7
;))7 8
_context** 
.** 
SaveChanges** $
(**$ %
)**% &
;**& '
return++ 
review++ 
;++ 
},, 
throw-- 
new-- #
ReviewNotFoundException-- -
(--- .
)--. /
;--/ 0
}.. 	
public66 
async66 
Task66 
<66 
CustomerReview66 (
>66( )
GetAsync66* 2
(662 3
int663 6
key667 :
)66: ;
{77 	
var88 
reviews88 
=88 
await88 
GetAsync88  (
(88( )
)88) *
;88* +
var99 
review99 
=99 
reviews99  
.99  !
FirstOrDefault99! /
(99/ 0
r990 1
=>992 4
r995 6
.996 7
ReviewId997 ?
==99@ B
key99C F
)99F G
;99G H
if:: 
(:: 
review:: 
!=:: 
null:: 
):: 
return;; 
review;; 
;;; 
throw<< 
new<< #
ReviewNotFoundException<< -
(<<- .
)<<. /
;<</ 0
}== 	
publicCC 
asyncCC 
TaskCC 
<CC 
ListCC 
<CC 
CustomerReviewCC -
>CC- .
>CC. /
GetAsyncCC0 8
(CC8 9
)CC9 :
{DD 	
varEE 
reviewsEE 
=EE 
_contextEE "
.EE" #
CustomerReviewsEE# 2
.EE2 3
ToListEE3 9
(EE9 :
)EE: ;
;EE; <
returnFF 
reviewsFF 
;FF 
}GG 	
publicII 
TaskII 
<II 
CustomerReviewII "
>II" #
GetAsyncII$ ,
(II, -
stringII- 3
keyII4 7
)II7 8
{JJ 	
throwKK 
newKK #
NotImplementedExceptionKK -
(KK- .
)KK. /
;KK/ 0
}LL 	
publicTT 
asyncTT 
TaskTT 
<TT 
CustomerReviewTT (
>TT( )
UpdateTT* 0
(TT0 1
CustomerReviewTT1 ?
itemTT@ D
)TTD E
{UU 	
varVV 
reviewVV 
=VV 
awaitVV 
GetAsyncVV '
(VV' (
itemVV( ,
.VV, -
ReviewIdVV- 5
)VV5 6
;VV6 7
ifWW 
(WW 
reviewWW 
!=WW 
nullWW 
)WW 
{XX 
_contextYY 
.YY 
EntryYY 
<YY 
CustomerReviewYY -
>YY- .
(YY. /
itemYY/ 3
)YY3 4
.YY4 5
StateYY5 :
=YY; <
EntityStateYY= H
.YYH I
ModifiedYYI Q
;YYQ R
_contextZZ 
.ZZ 
SaveChangesZZ $
(ZZ$ %
)ZZ% &
;ZZ& '
return[[ 
review[[ 
;[[ 
}\\ 
throw]] 
new]] #
ReviewNotFoundException]] -
(]]- .
)]]. /
;]]/ 0
}^^ 	
}__ 
}`` �;
gC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\DeliveryPartnerRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public 

class %
DeliveryPartnerRepository *
:+ ,
IRepository- 8
<8 9
int9 <
,< =
string> D
,D E
DeliveryPartnerF U
>U V
{		 
private

 
readonly

 %
ApplicationTrackerContext

 2
_context

3 ;
;

; <
private 
readonly 
ILogger  
<  !%
DeliveryPartnerRepository! :
>: ;
_logger< C
;C D
public %
DeliveryPartnerRepository (
(( )%
ApplicationTrackerContext) B
contextC J
,J K
ILoggerL S
<S T%
DeliveryPartnerRepositoryT m
>m n
loggero u
)u v
{ 	
_context 
= 
context 
; 
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
DeliveryPartner )
>) *
Add+ .
(. /
DeliveryPartner/ >
item? C
)C D
{ 	
_context 
. 
Add 
( 
item 
) 
; 
_context 
. 
SaveChanges  
(  !
)! "
;" #
LogInformation 
( 
$" 
$str 5
{5 6
item6 :
.: ;
	PartnerId; D
}D E
"E F
)F G
;G H
return 
item 
; 
} 	
public%% 
async%% 
Task%% 
<%% 
DeliveryPartner%% )
>%%) *
Delete%%+ 1
(%%1 2
int%%2 5
key%%6 9
)%%9 :
{&& 	
var'' 
partner'' 
='' 
await'' 
GetAsync''  (
(''( )
key'') ,
)'', -
;''- .
if)) 
()) 
partner)) 
!=)) 
null)) 
)))  
{** 
_context++ 
.++ 
DeliveryPartners++ )
.++) *
Remove++* 0
(++0 1
partner++1 8
)++8 9
;++9 :
_context,, 
.,, 
SaveChanges,, $
(,,$ %
),,% &
;,,& '
LogInformation.. 
(.. 
$".. !
$str..! ;
{..; <
partner..< C
...C D
	PartnerId..D M
}..M N
"..N O
)..O P
;..P Q
return// 
partner// 
;// 
}00 
return11 
null11 
;11 
}33 	
public99 
async99 
Task99 
<99 
DeliveryPartner99 )
>99) *
GetAsync99+ 3
(993 4
int994 7
key998 ;
)99; <
{:: 	
var;; 
partners;; 
=;; 
await;;  
GetAsync;;! )
(;;) *
);;* +
;;;+ ,
var<< 
partner<< 
=<< 
partners<< "
.<<" #
FirstOrDefault<<# 1
(<<1 2
p<<2 3
=><<4 6
p<<7 8
.<<8 9
	PartnerId<<9 B
==<<C E
key<<F I
)<<I J
;<<J K
if>> 
(>> 
partner>> 
!=>> 
null>> 
)>>  
{?? 
return@@ 
partner@@ 
;@@ 
}AA 
throwCC 
newCC +
NoDeliveryPartnerFoundExceptionCC 5
(CC5 6
)CC6 7
;CC7 8
}DD 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
ListJJ 
<JJ 
DeliveryPartnerJJ .
>JJ. /
>JJ/ 0
GetAsyncJJ1 9
(JJ9 :
)JJ: ;
{KK 	
varLL 
partnersLL 
=LL 
_contextLL #
.LL# $
DeliveryPartnersLL$ 4
.LL4 5
ToListLL5 ;
(LL; <
)LL< =
;LL= >
returnMM 
partnersMM 
;MM 
}NN 	
publicUU 
asyncUU 
TaskUU 
<UU 
DeliveryPartnerUU )
>UU) *
UpdateUU+ 1
(UU1 2
DeliveryPartnerUU2 A
itemUUB F
)UUF G
{VV 	
varWW 
partnerWW 
=WW 
awaitWW 
GetAsyncWW  (
(WW( )
itemWW) -
.WW- .
	PartnerIdWW. 7
)WW7 8
;WW8 9
ifYY 
(YY 
partnerYY 
!=YY 
nullYY 
)YY  
{ZZ 
partner\\ 
.\\ 
Name\\ 
=\\ 
item\\ #
.\\# $
Name\\$ (
;\\( )
partner]] 
.]] 
Email]] 
=]] 
item]]  $
.]]$ %
Email]]% *
;]]* +
partner^^ 
.^^ 
Phone^^ 
=^^ 
item^^  $
.^^$ %
Phone^^% *
;^^* +
partner__ 
.__ 
CityId__ 
=__  
item__! %
.__% &
CityId__& ,
;__, -
partner`` 
.`` 
UserName``  
=``! "
item``# '
.``' (
UserName``( 0
;``0 1
_contextaa 
.aa 
SaveChangesaa $
(aa$ %
)aa% &
;aa& '
LogInformationbb 
(bb 
$"bb !
$strbb! ;
{bb; <
itembb< @
.bb@ A
	PartnerIdbbA J
}bbJ K
"bbK L
)bbL M
;bbM N
returncc 
partnercc 
;cc 
}ee 
throwgg 
newgg +
NoDeliveryPartnerFoundExceptiongg 5
(gg5 6
)gg6 7
;gg7 8
}hh 	
publicoo 
asyncoo 
Taskoo 
<oo 
DeliveryPartneroo )
>oo) *
GetAsyncoo+ 3
(oo3 4
stringoo4 :
nameoo; ?
)oo? @
{pp 	
varqq 
partnersqq 
=qq 
_contextqq #
.qq# $
DeliveryPartnersqq$ 4
.qq4 5
ToListqq5 ;
(qq; <
)qq< =
;qq= >
varrr 
partnerrr 
=rr 
partnersrr "
.rr" #
FirstOrDefaultrr# 1
(rr1 2
prr2 3
=>rr4 6
prr7 8
.rr8 9
Namerr9 =
==rr> @
namerrA E
)rrE F
;rrF G
ifss 
(ss 
partnerss 
!=ss 
nullss 
)ss  
{tt 
returnuu 
partneruu 
;uu 
}vv 
throwww 
newww +
NoDeliveryPartnerFoundExceptionww 5
(ww5 6
)ww6 7
;ww7 8
}xx 	
public~~ 
void~~ 
LogInformation~~ "
(~~" #
string~~# )
message~~* 1
)~~1 2
{ 	
_logger
�� 
.
�� 
LogInformation
�� "
(
��" #
message
��# *
)
��* +
;
��+ ,
}
�� 	
}
�� 
}�� �,
`C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\CustomerRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public 

class 
CustomerRepository #
:$ %
IRepository& 1
<1 2
int2 5
,5 6
String7 =
,= >
Customer? G
>G H
{		 %
ApplicationTrackerContext

 !
_context

" *
;

* +
public 
CustomerRepository !
(! "%
ApplicationTrackerContext" ;
context< C
)C D
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
Customer "
>" #
Add$ '
(' (
Customer( 0
item1 5
)5 6
{ 	
_context 
. 
Add 
( 
item 
) 
; 
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
item 
; 
} 	
public## 
async## 
Task## 
<## 
Customer## "
>##" #
Delete##$ *
(##* +
int##+ .
key##/ 2
)##2 3
{$$ 	
var%% 
user%% 
=%% 
await%% 
GetAsync%% %
(%%% &
key%%& )
)%%) *
;%%* +
if&& 
(&& 
user&& 
!=&& 
null&& 
)&& 
{'' 
_context(( 
.(( 
	Customers(( "
.((" #
Remove((# )
((() *
user((* .
)((. /
;((/ 0
_context)) 
.)) 
SaveChanges)) $
())$ %
)))% &
;))& '
return** 
user** 
;** 
}++ 
throw,, 
new,, !
UserNotFoundException,, +
(,,+ ,
),,, -
;,,- .
}-- 	
public55 
async55 
Task55 
<55 
Customer55 "
>55" #
GetAsync55$ ,
(55, -
int55- 0
key551 4
)554 5
{66 	
var77 
users77 
=77 
_context77  
.77  !
	Customers77! *
.77* +
ToList77+ 1
(771 2
)772 3
;773 4
var88 
user88 
=88 
users88 
.88 
FirstOrDefault88 +
(88+ ,
u88, -
=>88. 0
u881 2
.882 3
Id883 5
==886 8
key889 <
)88< =
;88= >
if99 
(99 
user99 
!=99 
null99 
)99 
return:: 
user:: 
;:: 
throw;; 
new;; !
UserNotFoundException;; +
(;;+ ,
);;, -
;;;- .
}<< 	
publicCC 
asyncCC 
TaskCC 
<CC 
ListCC 
<CC 
CustomerCC '
>CC' (
>CC( )
GetAsyncCC* 2
(CC2 3
)CC3 4
{DD 	
varEE 
usersEE 
=EE 
_contextEE  
.EE  !
	CustomersEE! *
.EE* +
ToListEE+ 1
(EE1 2
)EE2 3
;EE3 4
ifFF 
(FF 
usersFF 
!=FF 
nullFF 
||FF  
usersFF! &
.FF& '
CountFF' ,
>FF- .
$numFF/ 0
)FF0 1
returnGG 
usersGG 
;GG 
throwHH 
newHH %
NoUsersAvailableExceptionHH /
(HH/ 0
)HH0 1
;HH1 2
}II 	
publicKK 
TaskKK 
<KK 
CustomerKK 
>KK 
GetAsyncKK &
(KK& '
stringKK' -
keyKK. 1
)KK1 2
{LL 	
throwMM 
newMM #
NotImplementedExceptionMM -
(MM- .
)MM. /
;MM/ 0
}NN 	
publicVV 
asyncVV 
TaskVV 
<VV 
CustomerVV  
>VV  !
UpdateVV" (
(VV( )
CustomerVV) 1
itemVV2 6
)VV6 7
{WW
 
varXX 
userXX 
=XX 
awaitXX 
GetAsyncXX %
(XX% &
itemXX& *
.XX* +
IdXX+ -
)XX- .
;XX. /
ifYY 
(YY 
userYY 
!=YY 
nullYY 
)YY 
{ZZ 
user\\ 
.\\ 
Name\\ 
=\\ 
item\\  
.\\  !
Name\\! %
;\\% &
user]] 
.]] 
Email]] 
=]] 
item]] !
.]]! "
Email]]" '
;]]' (
user^^ 
.^^ 
Phone^^ 
=^^ 
item^^ !
.^^! "
Phone^^" '
;^^' (
user__ 
.__ 
UserName__ 
=__ 
item__  $
.__$ %
UserName__% -
;__- .
_context`` 
.`` 
SaveChanges`` $
(``$ %
)``% &
;``& '
returnaa 
useraa 
;aa 
}bb 
throwcc 
newcc !
UserNotFoundExceptioncc +
(cc+ ,
)cc, -
;cc- .
}dd 	
}ee 
}ff �,
gC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\CustomerAddressRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public 

class %
CustomerAddressRepository *
:+ ,
IRepository- 8
<8 9
int9 <
,< =
String> D
,D E
CustomerAddressF U
>U V
{		 %
ApplicationTrackerContext

 !
_context

" *
;

* +
readonly 
ILogger 
< %
CustomerAddressRepository 2
>2 3
_logger4 ;
;; <
public %
CustomerAddressRepository (
(( )%
ApplicationTrackerContext) B
contextC J
,J K
ILoggerL S
<S T%
CustomerAddressRepositoryT m
>m n
loggero u
)u v
{ 	
_logger 
= 
logger 
; 
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
CustomerAddress )
>) *
Add+ .
(. /
CustomerAddress/ >
item? C
)C D
{ 	
_context 
. 
Add 
( 
item 
) 
; 
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
item 
; 
} 	
public%% 
async%% 
Task%% 
<%% 
CustomerAddress%% )
>%%) *
Delete%%+ 1
(%%1 2
int%%2 5
key%%6 9
)%%9 :
{&& 	
var'' 
address'' 
='' 
await'' 
GetAsync''  (
(''( )
key'') ,
)'', -
;''- .
if(( 
((( 
address(( 
!=(( 
null(( 
)((  
{)) 
_context** 
.** 
CustomerAddresses** *
.*** +
Remove**+ 1
(**1 2
address**2 9
)**9 :
;**: ;
_context++ 
.++ 
SaveChanges++ $
(++$ %
)++% &
;++& '
return,, 
address,, 
;,, 
}-- 
throw.. 
new.. 
	Exception.. 
(..  
)..  !
;..! "
}// 	
public77 
async77 
Task77 
<77 
CustomerAddress77 )
>77) *
GetAsync77+ 3
(773 4
int774 7
key778 ;
)77; <
{88 	
var99 
	addresses99 
=99 
await99 !
GetAsync99" *
(99* +
)99+ ,
;99, -
var:: 
address:: 
=:: 
	addresses:: #
.::# $
FirstOrDefault::$ 2
(::2 3
a::3 4
=>::5 7
a::8 9
.::9 :

CustomerId::: D
==::E G
key::H K
)::K L
;::L M
if;; 
(;; 
address;; 
!=;; 
null;; 
);;  
return<< 
address<< 
;<< 
throw== 
new== 
	Exception== 
(==  
)==  !
;==! "
}>> 	
publicDD 
asyncDD 
TaskDD 
<DD 
ListDD 
<DD 
CustomerAddressDD .
>DD. /
>DD/ 0
GetAsyncDD1 9
(DD9 :
)DD: ;
{EE 	
varFF 
	addressesFF 
=FF 
_contextFF $
.FF$ %
CustomerAddressesFF% 6
.FF6 7
IncludeFF7 >
(FF> ?
aFF? @
=>FFA C
aFFD E
.FFE F
CityFFF J
)FFJ K
.FFK L
ToListFFL R
(FFR S
)FFS T
;FFT U
returnGG 
	addressesGG 
;GG 
}HH 	
publicPP 
asyncPP 
TaskPP 
<PP 
CustomerAddressPP )
>PP) *
UpdatePP+ 1
(PP1 2
CustomerAddressPP2 A
itemPPB F
)PPF G
{QQ 	
varRR 
addressRR 
=RR 
awaitRR 
GetAsyncRR  (
(RR( )
itemRR) -
.RR- .
	AddressIdRR. 7
)RR7 8
;RR8 9
ifSS 
(SS 
addressSS 
!=SS 
nullSS 
)SS  
{TT 
_contextUU 
.UU 
EntryUU 
<UU 
CustomerAddressUU .
>UU. /
(UU/ 0
itemUU0 4
)UU4 5
.UU5 6
StateUU6 ;
=UU< =
EntityStateUU> I
.UUI J
ModifiedUUJ R
;UUR S
_contextVV 
.VV 
SaveChangesVV $
(VV$ %
)VV% &
;VV& '
returnWW 
addressWW 
;WW 
}XX 
throwYY 
newYY 
	ExceptionYY 
(YY  
)YY  !
;YY! "
}ZZ 	
public\\ 
Task\\ 
<\\ 
CustomerAddress\\ #
>\\# $
GetAsync\\% -
(\\- .
string\\. 4
key\\5 8
)\\8 9
{]] 	
throw^^ 
new^^ #
NotImplementedException^^ -
(^^- .
)^^. /
;^^/ 0
}__ 	
}`` 
}aa �%
\C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\CityRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public 

class 
CityRepository 
:  !
IRepository" -
<- .
int. 1
,1 2
String3 9
,9 :
City; ?
>? @
{		 %
ApplicationTrackerContext

 !
_context

" *
;

* +
public 
CityRepository 
( %
ApplicationTrackerContext 7
context8 ?
)? @
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
City 
> 
Add  #
(# $
City$ (
item) -
)- .
{ 	
_context 
. 
Add 
( 
item 
) 
; 
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
item 
; 
} 	
public## 
async## 
Task## 
<## 
City## 
>## 
Delete##  &
(##& '
int##' *
key##+ .
)##. /
{$$ 	
var%% 
city%% 
=%% 
await%% 
GetAsync%% %
(%%% &
key%%& )
)%%) *
;%%* +
_context&& 
.&& 
Cities&& 
.&& 
Remove&& "
(&&" #
city&&# '
)&&' (
;&&( )
_context'' 
.'' 
SaveChanges''  
(''  !
)''! "
;''" #
return(( 
city(( 
;(( 
})) 	
public11 
async11 
Task11 
<11 
City11 
>11 
GetAsync11  (
(11( )
int11) ,
key11- 0
)110 1
{22 	
var33 
cities33 
=33 
await33 
GetAsync33 '
(33' (
)33( )
;33) *
var44 
city44 
=44 
cities44 
.44 
FirstOrDefault44 ,
(44, -
c44- .
=>44/ 1
c442 3
.443 4
CityId444 :
==44; =
key44> A
)44A B
;44B C
return55 
city55 
;55 
}66 	
public== 
async== 
Task== 
<== 
List== 
<== 
City== #
>==# $
>==$ %
GetAsync==& .
(==. /
)==/ 0
{>> 	
var?? 
cities?? 
=?? 
_context?? !
.??! "
Cities??" (
.??( )
ToList??) /
(??/ 0
)??0 1
;??1 2
return@@ 
cities@@ 
;@@ 
}AA 	
publicII 
asyncII 
TaskII 
<II 
CityII 
>II 
UpdateII  &
(II& '
CityII' +
itemII, 0
)II0 1
{JJ 	
varKK 
cityKK 
=KK 
awaitKK 
GetAsyncKK %
(KK% &
itemKK& *
.KK* +
CityIdKK+ 1
)KK1 2
;KK2 3
_contextLL 
.LL 
EntryLL 
<LL 
CityLL 
>LL  
(LL  !
itemLL! %
)LL% &
.LL& '
StateLL' ,
=LL- .
EntityStateLL/ :
.LL: ;
ModifiedLL; C
;LLC D
_contextMM 
.MM 
SaveChangesMM  
(MM  !
)MM! "
;MM" #
returnNN 
cityNN 
;NN 
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
CityQQ 
>QQ 
GetAsyncQQ  (
(QQ( )
stringQQ) /
nameQQ0 4
)QQ4 5
{RR 	
varSS 
citiesSS 
=SS 
awaitSS 
GetAsyncSS '
(SS' (
)SS( )
;SS) *
varTT 
cityTT 
=TT 
citiesTT 
.TT 
FirstOrDefaultTT ,
(TT, -
eTT- .
=>TT/ 1
eTT2 3
.TT3 4
NameTT4 8
.TT8 9
ToLowerTT9 @
(TT@ A
)TTA B
==TTC E
nameTTF J
.TTJ K
ToLowerTTK R
(TTR S
)TTS T
)TTT U
;TTU V
returnUU 
cityUU 
;UU 
}VV 	
}WW 
}XX � 
\C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Repositories\CartRepository.cs
	namespace 	
HotPotProject
 
. 
Repositories $
{ 
public 

class 
CartRepository 
:  
IRepository  +
<+ ,
int, /
,/ 0
string1 7
,7 8
Cart9 =
>= >
{		 %
ApplicationTrackerContext

 !
_context

" *
;

* +
public 
CartRepository 
( %
ApplicationTrackerContext 7
context8 ?
)? @
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
Cart 
> 
Add  #
(# $
Cart$ (
item) -
)- .
{ 	
_context 
. 
Add 
( 
item 
) 
; 
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
item 
; 
} 	
public 
async 
Task 
< 
Cart 
> 
Delete  &
(& '
int' *
key+ .
). /
{ 	
var 
cartItem 
= 
await  
GetAsync! )
() *
key* -
)- .
;. /
_context 
. 
Carts 
. 
Remove !
(! "
cartItem" *
)* +
;+ ,
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
cartItem 
; 
} 	
public   
async   
Task   
<   
Cart   
>   
GetAsync    (
(  ( )
int  ) ,
key  - 0
)  0 1
{!! 	
var"" 
items"" 
="" 
await"" 
GetAsync"" &
(""& '
)""' (
;""( )
var## 
cartItem## 
=## 
items##  
.##  !
FirstOrDefault##! /
(##/ 0
c##0 1
=>##2 4
c##5 6
.##6 7
Id##7 9
==##: <
key##= @
)##@ A
;##A B
return$$ 
cartItem$$ 
;$$ 
}%% 	
public'' 
async'' 
Task'' 
<'' 
List'' 
<'' 
Cart'' #
>''# $
>''$ %
GetAsync''& .
(''. /
)''/ 0
{(( 	
var)) 
	cartItems)) 
=)) 
_context)) $
.))$ %
Carts))% *
.))* +
ToList))+ 1
())1 2
)))2 3
;))3 4
return** 
	cartItems** 
;** 
}++ 	
public-- 
Task-- 
<-- 
Cart-- 
>-- 
GetAsync-- "
(--" #
string--# )
key--* -
)--- .
{.. 	
throw// 
new// #
NotImplementedException// -
(//- .
)//. /
;/// 0
}00 	
public22 
async22 
Task22 
<22 
Cart22 
>22 
Update22  &
(22& '
Cart22' +
item22, 0
)220 1
{33 	
_context44 
.44 
Entry44 
<44 
Cart44 
>44  
(44  !
item44! %
)44% &
.44& '
State44' ,
=44- .
EntityState44/ :
.44: ;
Modified44; C
;44C D
_context55 
.55 
SaveChanges55  
(55  !
)55! "
;55" #
return66 
item66 
;66 
}77 	
}88 
}99 �m
HC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Program.cs
	namespace 	
HotPotProject
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
var 
builder 
= 
WebApplication (
.( )
CreateBuilder) 6
(6 7
args7 ;
); <
;< =
builder 
. 
Services 
. 
AddControllers +
(+ ,
), -
;- .
builder 
. 
Services 
. #
AddEndpointsApiExplorer 4
(4 5
)5 6
;6 7
builder 
. 
Services 
. 
AddSwaggerGen *
(* +
opt+ .
=>/ 1
{ 
opt 
. 

SwaggerDoc 
( 
$str #
,# $
new% (
OpenApiInfo) 4
{5 6
Title7 <
== >
$str? F
,F G
VersionH O
=P Q
$strR V
}W X
)X Y
;Y Z
opt 
. !
AddSecurityDefinition )
() *
$str* 2
,2 3
new4 7!
OpenApiSecurityScheme8 M
{ 
In   
=   
ParameterLocation   *
.  * +
Header  + 1
,  1 2
Description!! 
=!!  !
$str!!" 6
,!!6 7
Name"" 
="" 
$str"" *
,""* +
Type## 
=## 
SecuritySchemeType## -
.##- .
Http##. 2
,##2 3
BearerFormat$$  
=$$! "
$str$$# (
,$$( )
Scheme%% 
=%% 
$str%% %
}&& 
)&& 
;&& 
opt(( 
.(( "
AddSecurityRequirement(( *
(((* +
new((+ .&
OpenApiSecurityRequirement((/ I
{)) 
{** 
new++ !
OpenApiSecurityScheme++  5
{,, 
	Reference--  )
=--* +
new--, /
OpenApiReference--0 @
{..  !
Type//$ (
=//( )
ReferenceType//) 6
.//6 7
SecurityScheme//7 E
,//E F
Id00$ &
=00& '
$str00' /
}11  !
}22 
,22 
new33 
string33  &
[33& '
]33' (
{33( )
}33) *
}44 
}55 
)55 
;55 
}66 
)66 
;66 
builder88 
.88 
Services88 
.88 
AddCors88 $
(88$ %
options88% ,
=>88- /
{99 
options:: 
.:: 
	AddPolicy:: !
(::! "
$str::" /
,::/ 0
opts::1 5
=>::6 8
{;; 
opts@@ 
.@@ 
AllowAnyOrigin@@ '
(@@' (
)@@( )
.@@) *
AllowAnyMethod@@* 8
(@@8 9
)@@9 :
.@@: ;
AllowAnyHeader@@; I
(@@I J
)@@J K
;@@K L
}BB 
)BB 
;BB 
}CC 
)CC 
;CC 
builderEE 
.EE 
ServicesEE 
.EE 
AddAuthenticationEE .
(EE. /
JwtBearerDefaultsEE/ @
.EE@ A 
AuthenticationSchemeEEA U
)EEU V
.FF 
AddJwtBearerFF 
(FF 
optionsFF %
=>FF& (
{GG 
optionsHH 
.HH %
TokenValidationParametersHH 5
=HH6 7
newHH8 ;%
TokenValidationParametersHH< U
{II $
ValidateIssuerSigningKeyJJ 0
=JJ1 2
trueJJ3 7
,JJ7 8
IssuerSigningKeyKK (
=KK) *
newKK+ . 
SymmetricSecurityKeyKK/ C
(KKC D
EncodingKKD L
.KKL M
UTF8KKM Q
.KKQ R
GetBytesKKR Z
(KKZ [
builderKK[ b
.KKb c
ConfigurationKKc p
[KKp q
$strKKq |
]KK| }
)KK} ~
)KK~ 
,	KK �
ValidateIssuerLL &
=LL' (
falseLL) .
,LL. /
ValidateAudienceMM (
=MM) *
falseMM+ 0
}NN 
;NN 
}OO 
)OO 
;OO 
builderQQ 
.QQ 
ServicesQQ 
.QQ 
AddDbContextQQ )
<QQ) *%
ApplicationTrackerContextQQ* C
>QQC D
(QQD E
optionsQQE L
=>QQM O
{RR 
optionsSS 
.SS 
UseSqlServerSS $
(SS$ %
builderSS% ,
.SS, -
ConfigurationSS- :
.SS: ;
GetConnectionStringSS; N
(SSN O
$strSSO m
)SSm n
)SSn o
;SSo p
}TT 
)TT 
;TT 
builderWW 
.WW 
ServicesWW 
.WW 
	AddScopedWW &
<WW& '
IRepositoryWW' 2
<WW2 3
intWW3 6
,WW6 7
StringWW8 >
,WW> ?
CityWW@ D
>WWD E
,WWE F
CityRepositoryWWG U
>WWU V
(WWV W
)WWW X
;WWX Y
builderXX 
.XX 
ServicesXX 
.XX 
	AddScopedXX &
<XX& '
IRepositoryXX' 2
<XX2 3
intXX3 6
,XX6 7
StringXX8 >
,XX> ?

RestaurantXX@ J
>XXJ K
,XXK L 
RestaurantRepositoryXXM a
>XXa b
(XXb c
)XXc d
;XXd e
builderYY 
.YY 
ServicesYY 
.YY 
	AddScopedYY &
<YY& '
IRepositoryYY' 2
<YY2 3
intYY3 6
,YY6 7
StringYY8 >
,YY> ?
MenuYY@ D
>YYD E
,YYE F
MenuRepositoryYYG U
>YYU V
(YYV W
)YYW X
;YYX Y
builderZZ 
.ZZ 
ServicesZZ 
.ZZ 
	AddScopedZZ &
<ZZ& '
IRepositoryZZ' 2
<ZZ2 3
intZZ3 6
,ZZ6 7
StringZZ8 >
,ZZ> ?
PaymentZZ@ G
>ZZG H
,ZZH I
PaymentRepositoryZZJ [
>ZZ[ \
(ZZ\ ]
)ZZ] ^
;ZZ^ _
builder[[ 
.[[ 
Services[[ 
.[[ 
	AddScoped[[ &
<[[& '
IRepository[[' 2
<[[2 3
int[[3 6
,[[6 7
String[[8 >
,[[> ?
Order[[@ E
>[[E F
,[[F G
OrderRepository[[H W
>[[W X
([[X Y
)[[Y Z
;[[Z [
builder\\ 
.\\ 
Services\\ 
.\\ 
	AddScoped\\ &
<\\& '
IRepository\\' 2
<\\2 3
int\\3 6
,\\6 7
String\\8 >
,\\> ?
User\\@ D
>\\D E
,\\E F
UserRepository\\G U
>\\U V
(\\V W
)\\W X
;\\X Y
builder]] 
.]] 
Services]] 
.]] 
	AddScoped]] &
<]]& '
IRepository]]' 2
<]]2 3
int]]3 6
,]]6 7
String]]8 >
,]]> ?
Customer]]@ H
>]]H I
,]]I J
CustomerRepository]]K ]
>]]] ^
(]]^ _
)]]_ `
;]]` a
builder^^ 
.^^ 
Services^^ 
.^^ 
	AddScoped^^ &
<^^& '
IRepository^^' 2
<^^2 3
int^^3 6
,^^6 7
String^^8 >
,^^> ?
Menu^^@ D
>^^D E
,^^E F
MenuRepository^^G U
>^^U V
(^^V W
)^^W X
;^^X Y
builder__ 
.__ 
Services__ 
.__ 
	AddScoped__ &
<__& '
IRepository__' 2
<__2 3
int__3 6
,__6 7
String__8 >
,__> ?
Cart__@ D
>__D E
,__E F
CartRepository__G U
>__U V
(__V W
)__W X
;__X Y
builder`` 
.`` 
Services`` 
.`` 
	AddScoped`` &
<``& '
IRepository``' 2
<``2 3
int``3 6
,``6 7
String``8 >
,``> ?
Order``@ E
>``E F
,``F G
OrderRepository``H W
>``W X
(``X Y
)``Y Z
;``Z [
builderaa 
.aa 
Servicesaa 
.aa 
	AddScopedaa &
<aa& '
IRepositoryaa' 2
<aa2 3
intaa3 6
,aa6 7
Stringaa8 >
,aa> ?
	OrderItemaa@ I
>aaI J
,aaJ K
OrderItemRepositoryaaL _
>aa_ `
(aa` a
)aaa b
;aab c
builderbb 
.bb 
Servicesbb 
.bb 
	AddScopedbb &
<bb& '
IRepositorybb' 2
<bb2 3
intbb3 6
,bb6 7
Stringbb8 >
,bb> ?
Paymentbb@ G
>bbG H
,bbH I
PaymentRepositorybbJ [
>bb[ \
(bb\ ]
)bb] ^
;bb^ _
buildercc 
.cc 
Servicescc 
.cc 
	AddScopedcc &
<cc& '
IRepositorycc' 2
<cc2 3
intcc3 6
,cc6 7
Stringcc8 >
,cc> ?
RestaurantOwnercc@ O
>ccO P
,ccP Q%
RestaurantOwnerRepositoryccR k
>cck l
(ccl m
)ccm n
;ccn o
builderdd 
.dd 
Servicesdd 
.dd 
	AddScopeddd &
<dd& '
IRepositorydd' 2
<dd2 3
intdd3 6
,dd6 7
Stringdd8 >
,dd> ?
CustomerAddressdd@ O
>ddO P
,ddP Q%
CustomerAddressRepositoryddR k
>ddk l
(ddl m
)ddm n
;ddn o
builderee 
.ee 
Servicesee 
.ee 
	AddScopedee &
<ee& '
IRepositoryee' 2
<ee2 3
intee3 6
,ee6 7
Stringee8 >
,ee> ?
CustomerReviewee@ N
>eeN O
,eeO P$
CustomerReviewRepositoryeeQ i
>eei j
(eej k
)eek l
;eel m
builderff 
.ff 
Servicesff 
.ff 
	AddScopedff &
<ff& '
IRepositoryff' 2
<ff2 3
intff3 6
,ff6 7
Stringff8 >
,ff> ?
DeliveryPartnerff@ O
>ffO P
,ffP Q%
DeliveryPartnerRepositoryffR k
>ffk l
(ffl m
)ffm n
;ffn o
buildergg 
.gg 
Servicesgg 
.gg 
	AddScopedgg &
<gg& '
IRepositorygg' 2
<gg2 3
intgg3 6
,gg6 7
Stringgg8 >
,gg> ? 
RestaurantSpecialitygg@ T
>ggT U
,ggU V,
 RestaurantSpecialitiesRepositoryggW w
>ggw x
(ggx y
)ggy z
;ggz {
builderjj 
.jj 
Servicesjj 
.jj 
	AddScopedjj &
<jj& '#
IRestaurantUserServicesjj' >
,jj> ?"
RestaurantUserServicesjj@ V
>jjV W
(jjW X
)jjX Y
;jjY Z
builderkk 
.kk 
Serviceskk 
.kk 
	AddScopedkk &
<kk& '
ICustomerServiceskk' 8
,kk8 9
CustomerServiceskk: J
>kkJ K
(kkK L
)kkL M
;kkM N
builderll 
.ll 
Servicesll 
.ll 
	AddScopedll &
<ll& '
ITokenServicesll' 5
,ll5 6
TokenServicesll7 D
>llD E
(llE F
)llF G
;llG H
buildermm 
.mm 
Servicesmm 
.mm 
	AddScopedmm &
<mm& '$
IDeliveryPartnerServicesmm' ?
,mm? @#
DeliveryPartnerServicesmmA X
>mmX Y
(mmY Z
)mmZ [
;mm[ \
buildernn 
.nn 
Servicesnn 
.nn 
	AddScopednn &
<nn& '
IAdminServicesnn' 5
,nn5 6
AdminServicesnn7 D
>nnD E
(nnE F
)nnF G
;nnG H
builderoo 
.oo 
Servicesoo 
.oo 
	AddScopedoo &
<oo& '
AuthServicesoo' 3
>oo3 4
(oo4 5
)oo5 6
;oo6 7
varss 
appss 
=ss 
builderss 
.ss 
Buildss #
(ss# $
)ss$ %
;ss% &
ifvv 
(vv 
appvv 
.vv 
Environmentvv 
.vv  
IsDevelopmentvv  -
(vv- .
)vv. /
)vv/ 0
{ww 
appxx 
.xx 

UseSwaggerxx 
(xx 
)xx  
;xx  !
appyy 
.yy 
UseSwaggerUIyy  
(yy  !
)yy! "
;yy" #
}zz 
app|| 
.|| 
UseCors|| 
(|| 
$str|| %
)||% &
;||& '
app}} 
.}} 
UseAuthentication}} !
(}}! "
)}}" #
;}}# $
app~~ 
.~~ 
UseAuthorization~~  
(~~  !
)~~! "
;~~" #
app
�� 
.
�� 
MapControllers
�� 
(
�� 
)
��  
;
��  !
app
�� 
.
�� 
Run
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
LC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\User.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
User 
{ 
[ 	
Key	 
] 
public		 
string		 
UserName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
byte

 
[

 
]

 
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
+ ,
public 
string 
Role 
{ 
get  
;  !
set" %
;% &
}' (
public 
byte 
[ 
] 
Key 
{ 
get 
;  
set! $
;$ %
}& '
} 
} �	
MC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\State.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
State 
{ 
[ 	
Key	 
] 
public 
int 
StateId 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 
State 
( 
) 
{ 	
} 	
public 
State 
( 
int 
stateId  
,  !
string" (
name) -
)- .
{ 	
StateId 
= 
stateId 
; 
Name 
= 
name 
; 
} 	
public 
State 
( 
string 
name  
)  !
{ 	
Name 
= 
name 
; 
} 	
} 
} �
\C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\RestaurantSpeciality.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class  
RestaurantSpeciality %
{ 
[ 	
Key	 
] 
public		 
int		 

CategoryId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
int

 
RestaurantId

 
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
public 
string 
CategoryName "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

ForeignKey	 
( 
$str "
)" #
]# $
public 

Restaurant 
? 

Restaurant %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
? 
CategoryImage $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public  
RestaurantSpeciality #
(# $
)$ %
{ 	
} 	
public  
RestaurantSpeciality #
(# $
int$ '

categoryId( 2
,2 3
int4 7
restaurantId8 D
,D E
stringF L
categoryNameM Y
,Y Z
string[ a
?a b
categoryImagec p
)p q
{ 	

CategoryId 
= 

categoryId #
;# $
RestaurantId 
= 
restaurantId '
;' (
CategoryName 
= 
categoryName '
;' (
CategoryImage 
= 
categoryImage )
;) *
} 	
} 
} �
WC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\RestaurantOwner.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
RestaurantOwner  
{ 
[ 	
Key	 
] 
public		 
int		 
OwnerId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
Name

 
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
' (
=

) *
string

+ 1
.

1 2
Empty

2 7
;

7 8
public 
int 
RestaurantId 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

ForeignKey	 
( 
$str "
)" #
]# $
public 

Restaurant 

Restaurant $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

ForeignKey	 
( 
$str 
) 
]  
public 
User 
? 
User 
{ 
get 
;  
set! $
;$ %
}& '
public 
RestaurantOwner 
( 
)  
{ 	
} 	
public 
RestaurantOwner 
( 
string %
name& *
,* +
int, /
restaurantId0 <
,< =
string> D
userNameE M
)M N
{ 	
Name 
= 
name 
; 
RestaurantId 
= 
restaurantId '
;' (
UserName 
= 
userName 
;  
} 	
public 
RestaurantOwner 
( 
int "
ownerId# *
,* +
string, 2
name3 7
,7 8
int9 <
restaurantId= I
,I J
stringK Q
userNameR Z
)Z [
{ 	
OwnerId   
=   
ownerId   
;   
Name!! 
=!! 
name!! 
;!! 
RestaurantId"" 
="" 
restaurantId"" '
;""' (
UserName## 
=## 
userName## 
;##  
}$$ 	
}%% 
}&& �
RC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\Restaurant.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 

Restaurant 
{ 
[ 	
Key	 
] 
public		 
int		 
RestaurantId		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
RestaurantName

 $
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
1 2
public 
string 
Phone 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
CityId 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
City 
? 
City 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
? 
RestaurantImage &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 

Restaurant 
( 
) 
{ 	
} 	
public 

Restaurant 
( 
int 
restaurantId *
,* +
string, 2
restaurantName3 A
,A B
stringC I
phoneJ O
,O P
stringQ W
emailX ]
,] ^
int_ b
cityIdc i
,i j
stringk q
?q r
restaurantImage	s �
)
� �
{ 	
RestaurantId 
= 
restaurantId '
;' (
RestaurantName 
= 
restaurantName +
;+ ,
Phone 
= 
phone 
; 
Email 
= 
email 
; 
CityId 
= 
cityId 
; 
RestaurantImage 
= 
restaurantImage -
;- .
} 	
public!! 

Restaurant!! 
(!! 
string!!  
restaurantName!!! /
,!!/ 0
string!!1 7
phone!!8 =
,!!= >
string!!? E
email!!F K
,!!K L
int!!M P
cityId!!Q W
,!!W X
string!!Y _
?!!_ `
restaurantImage!!a p
)!!p q
{"" 	
RestaurantName## 
=## 
restaurantName## +
;##+ ,
Phone$$ 
=$$ 
phone$$ 
;$$ 
Email%% 
=%% 
email%% 
;%% 
CityId&& 
=&& 
cityId&& 
;&& 
RestaurantImage'' 
='' 
restaurantImage'' -
;''- .
}(( 	
}** 
}++ � 
OC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\Payment.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
Payment 
: 

IEquatable %
<% &
Payment& -
>- .
{ 
[		 	
Key			 
]		 
public

 
int

 
	PaymentId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
PaymentMode !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
string2 8
.8 9
Empty9 >
;> ?
public 
float 
Amount 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
OrderId 
{ 
get !
;! "
set# &
;& '
}( )
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
Order 
? 
Order 
{ 
get !
;! "
set# &
;& '
}( )
public 
Payment 
( 
) 
{ 	
	PaymentId 
= 
$num 
; 
} 	
public 
Payment 
( 
int 
	paymentid $
,$ %
string& ,
paymentMode- 8
,8 9
float: ?
amount@ F
,F G
stringH N
statusO U
,U V
DateTimeW _
date` d
,d e
intf i
orderIdj q
)q r
{ 	
	PaymentId 
= 
	paymentid !
;! "
PaymentMode 
= 
paymentMode %
;% &
Amount 
= 
amount 
; 
Status 
= 
status 
; 
Date 
= 
date 
; 
OrderId 
= 
orderId 
; 
}   	
public"" 
Payment"" 
("" 
string"" 
paymentMode"" )
,"") *
float""+ 0
amount""1 7
,""7 8
string""9 ?
status""@ F
,""F G
DateTime""H P
date""Q U
,""U V
int""W Z
orderId""[ b
)""b c
{## 	
PaymentMode$$ 
=$$ 
paymentMode$$ %
;$$% &
Amount%% 
=%% 
amount%% 
;%% 
Status&& 
=&& 
status&& 
;&& 
Date'' 
='' 
date'' 
;'' 
OrderId(( 
=(( 
orderId(( 
;(( 
})) 	
public++ 
bool++ 
Equals++ 
(++ 
Payment++ "
?++" #
other++$ )
)++) *
{,, 	
var-- 
payment-- 
=-- 
other-- 
??--  "
new--# &
Payment--' .
(--. /
)--/ 0
;--0 1
return.. 
this.. 
... 
	PaymentId.. !
...! "
Equals.." (
(..( )
payment..) 0
...0 1
	PaymentId..1 :
)..: ;
;..; <
}// 	
}00 
}11 �
QC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\OrderItem.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
	OrderItem 
: 

IEquatable '
<' (
	OrderItem( 1
>1 2
{ 
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
public 
float 
SubTotalPrice "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
int		 
OrderId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
[

 	

ForeignKey

	 
(

 
$str

 
)

 
]

 
public 
Order 
? 
Order 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
MenuId 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
Menu 
? 
Menu 
{ 
get 
;  
set! $
;$ %
}& '
public 
	OrderItem 
( 
) 
{ 	
} 	
public 
	OrderItem 
( 
int 
quantity %
,% &
float' ,
subTotalPrice- :
,: ;
int< ?
orderId@ G
,G H
intI L
menuIdM S
)S T
{ 	
Quantity 
= 
quantity 
;  
SubTotalPrice 
= 
subTotalPrice )
;) *
OrderId 
= 
orderId 
; 
MenuId 
= 
menuId 
; 
} 	
public 
	OrderItem 
( 
int 
orderItemId (
,( )
int* -
quantity. 6
,6 7
float8 =
subTotalPrice> K
,K L
intM P
orderIdQ X
,X Y
intZ ]
menuId^ d
)d e
{ 	
Quantity 
= 
quantity 
;  
SubTotalPrice   
=   
subTotalPrice   )
;  ) *
OrderId!! 
=!! 
orderId!! 
;!! 
MenuId"" 
="" 
menuId"" 
;"" 
}## 	
public%% 
bool%% 
Equals%% 
(%% 
	OrderItem%% $
?%%$ %
other%%& +
)%%+ ,
{&& 	
var'' 
	orderItem'' 
='' 
other'' !
??''" $
new''% (
	OrderItem'') 2
(''2 3
)''3 4
;''4 5
return(( 
this(( 
.(( 
OrderId(( 
.((  
Equals((  &
(((& '
	orderItem((' 0
.((0 1
OrderId((1 8
)((8 9
;((9 :
})) 	
}** 
}++ �'
MC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\Order.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
Order 
: 

IEquatable #
<# $
Order$ )
>) *
{ 
[ 	
Key	 
] 
public		 
int		 
OrderId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
DateTime

 
	OrderDate

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
float 
Amount 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
public 
int 

CustomerId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	

ForeignKey	 
( 
$str  
)  !
]! "
public 
Customer 
? 
Customer !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
RestaurantId 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

ForeignKey	 
( 
$str "
)" #
]# $
public 

Restaurant 
? 

Restaurant %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
? 
	PartnerId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	

ForeignKey	 
( 
$str 
)  
]  !
public 
DeliveryPartner 
? 
DeliveryPartner  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
Order 
( 
) 
{ 	
OrderId 
= 
$num 
; 
} 	
public 
Order 
( 
DateTime 
	orderDate '
,' (
float) .
amount/ 5
,5 6
string7 =
status> D
,D E
intF I
userIdJ P
,P Q
intR U
restaurantIdV b
,b c
intd g
	partnerIdh q
)q r
{ 	
	OrderDate   
=   
	orderDate   !
;  ! "
Amount!! 
=!! 
amount!! 
;!! 
Status"" 
="" 
status"" 
;"" 

CustomerId## 
=## 
userId## 
;##  
RestaurantId$$ 
=$$ 
restaurantId$$ '
;$$' (
	PartnerId%% 
=%% 
	partnerId%% !
;%%! "
}&& 	
public(( 
Order(( 
((( 
int(( 
orderId((  
,((  !
DateTime((" *
	orderDate((+ 4
,((4 5
float((6 ;
amount((< B
,((B C
string((D J
status((K Q
,((Q R
int((S V
userId((W ]
,((] ^
int((_ b
restaurantId((c o
,((o p
int((q t
	partnerId((u ~
)((~ 
{)) 	
OrderId** 
=** 
orderId** 
;** 
	OrderDate++ 
=++ 
	orderDate++ !
;++! "
Amount,, 
=,, 
amount,, 
;,, 
Status-- 
=-- 
status-- 
;-- 

CustomerId.. 
=.. 
userId.. 
;..  
RestaurantId// 
=// 
restaurantId// '
;//' (
	PartnerId00 
=00 
	partnerId00 !
;00! "
}11 	
public33 
bool33 
Equals33 
(33 
Order33  
?33  !
other33" '
)33' (
{44 	
var55 
order55 
=55 
other55 
??55  
new55! $
Order55% *
(55* +
)55+ ,
;55, -
return66 
this66 
.66 
OrderId66 
.66  
Equals66  &
(66& '
order66' ,
.66, -
OrderId66- 4
)664 5
;665 6
}77 	
}88 
}99 �
WC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\NutritionalInfo.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
NutritionalInfo  
:! "

IEquatable# -
<- .
NutritionalInfo. =
>= >
{ 
[ 	
Key	 
] 
public 
int 
NutritionId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
float		 
Calories		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
float

 
Fats

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
float 
Proteins 
{ 
get  #
;# $
set% (
;( )
}* +
public 
float 
Carbohydrates "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
NutritionalInfo 
( 
)  
{ 	
NutritionId 
= 
$num 
; 
} 	
public 
NutritionalInfo 
( 
int "
nutritionId# .
,. /
float0 5
calories6 >
,> ?
float@ E
fatsF J
,J K
floatL Q
proteinsR Z
,Z [
float\ a
carbohydratesb o
)o p
{ 	
NutritionId 
= 
nutritionId %
;% &
Calories 
= 
calories 
;  
Fats 
= 
fats 
; 
Proteins 
= 
proteins 
;  
Carbohydrates 
= 
carbohydrates )
;) *
} 	
public 
NutritionalInfo 
( 
float $
calories% -
,- .
float/ 4
fats5 9
,9 :
float; @
proteinsA I
,I J
floatK P
carbohydratesQ ^
)^ _
{ 	
Calories 
= 
calories 
;  
Fats 
= 
fats 
; 
Proteins   
=   
proteins   
;    
Carbohydrates!! 
=!! 
carbohydrates!! )
;!!) *
}"" 	
public$$ 
bool$$ 
Equals$$ 
($$ 
NutritionalInfo$$ *
?$$* +
other$$, 1
)$$1 2
{%% 	
var&& 
nutritionalInfo&& 
=&&  !
other&&" '
??&&( *
new&&+ .
NutritionalInfo&&/ >
(&&> ?
)&&? @
;&&@ A
return'' 
this'' 
.'' 
NutritionId'' #
.''# $
Equals''$ *
(''* +
nutritionalInfo''+ :
.'': ;
NutritionId''; F
)''F G
;''G H
}(( 	
})) 
}** �8
LC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\Menu.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
Menu 
{ 
[ 	
Key	 
] 
public		 
int		 
MenuId		 
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
 
Name

 
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
' (
=

) *
string

+ 1
.

1 2
Empty

2 7
;

7 8
public 
string 
? 
Type 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
public 
float 
Price 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
? 
Description "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
string3 9
.9 :
Empty: ?
;? @
public 
string 
? 
Cuisine 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
public 
string 
? 
Category 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
public 
TimeSpan 
? 
CookingTime $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
? 
	TasteInfo  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
string1 7
.7 8
Empty8 =
;= >
public 
string 
? 
	ItemImage  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
string1 7
.7 8
Empty8 =
;= >
public 
int 
NutritionId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

ForeignKey	 
( 
$str !
)! "
]" #
public 
NutritionalInfo 
? 
NutritionalInfo  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
int 
RestaurantId 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

ForeignKey	 
( 
$str "
)" #
]# $
public 

Restaurant 
? 

Restaurant %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
Menu 
( 
) 
{ 	
} 	
public!! 
Menu!! 
(!! 
string!! 
name!! 
,!!  
string!!! '
type!!( ,
,!!, -
float!!. 3
price!!4 9
,!!9 :
string!!; A
?!!A B
description!!C N
,!!N O
string!!P V
cuisine!!W ^
,!!^ _
TimeSpan!!` h
?!!h i
cookingTime!!j u
,!!u v
string!!w }
?!!} ~
	tasteInfo	!! �
,
!!� �
string
!!� �
?
!!� �
	itemImage
!!� �
,
!!� �
int
!!� �
nutritionId
!!� �
,
!!� �
int
!!� �
restaurantId
!!� �
)
!!� �
{"" 	
Name## 
=## 
name## 
;## 
Type$$ 
=$$ 
type$$ 
;$$ 
Price%% 
=%% 
price%% 
;%% 
Description&& 
=&& 
description&& %
;&&% &
Cuisine'' 
='' 
cuisine'' 
;'' 
CookingTime(( 
=(( 
cookingTime(( %
;((% &
	TasteInfo)) 
=)) 
	tasteInfo)) !
;))! "
	ItemImage** 
=** 
	itemImage** !
;**! "
NutritionId++ 
=++ 
nutritionId++ %
;++% &
RestaurantId,, 
=,, 
restaurantId,, '
;,,' (
}-- 	
public// 
Menu// 
(// 
int// 
menuId// 
,// 
string//  &
name//' +
,//+ ,
string//- 3
type//4 8
,//8 9
float//: ?
price//@ E
,//E F
string//G M
?//M N
description//O Z
,//Z [
string//\ b
cuisine//c j
,//j k
TimeSpan//l t
?//t u
cookingTime	//v �
,
//� �
string
//� �
?
//� �
	tasteInfo
//� �
,
//� �
string
//� �
?
//� �
	itemImage
//� �
,
//� �
int
//� �
nutritionId
//� �
,
//� �
int
//� �
restaurantId
//� �
)
//� �
{00 	
MenuId11 
=11 
menuId11 
;11 
Name22 
=22 
name22 
;22 
Type33 
=33 
type33 
;33 
Price44 
=44 
price44 
;44 
Description55 
=55 
description55 %
;55% &
Cuisine66 
=66 
cuisine66 
;66 
CookingTime77 
=77 
cookingTime77 %
;77% &
	TasteInfo88 
=88 
	tasteInfo88 !
;88! "
	ItemImage99 
=99 
	itemImage99 !
;99! "
NutritionId:: 
=:: 
nutritionId:: %
;::% &
RestaurantId;; 
=;; 
restaurantId;; '
;;;' (
}<< 	
public>> 
bool>> 
Equals>> 
(>> 
Menu>> 
?>>  
other>>! &
)>>& '
{?? 	
var@@ 
menu@@ 
=@@ 
other@@ 
??@@ 
new@@  #
Menu@@$ (
(@@( )
)@@) *
;@@* +
returnAA 
thisAA 
.AA 
MenuIdAA 
.AA 
EqualsAA %
(AA% &
menuAA& *
.AA* +
MenuIdAA+ 1
)AA1 2
;AA2 3
}BB 	
}CC 
}DD �
aC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DTO\RegisterRestaurantDTO.cs
	namespace 	
HotPotProject
 
. 
Models 
. 
DTO "
{ 
public 

class !
RegisterRestaurantDTO &
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
RestaurantId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
Role		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
}

 
} �
fC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DTO\RegisterDeliveryPartnerDTO.cs
	namespace 	
HotPotProject
 
. 
Models 
. 
DTO "
{ 
public 

class &
RegisterDeliveryPartnerDTO +
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Phone 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
cityId 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
UserName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
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
+ ,
public 
string 
Role 
{ 
get  
;  !
set" %
;% &
}' (
} 
} �	
_C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DTO\RegisterCustomerDTO.cs
	namespace 	
HotPotProject
 
. 
Models 
. 
DTO "
{ 
public 

class 
RegisterCustomerDTO $
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Phone 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
Password		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
Role

 
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
' (
} 
} �
\C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DTO\PaymentOrdersDTO.cs
	namespace 	
HotPotProject
 
. 
Models 
. 
DTO "
{ 
public 

class 
PaymentOrdersDTO !
{ 
public 
Payment 
Payment 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
OrderItemsDTO 

OrderItems '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} �
XC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DTO\OrderMenuDTO.cs
	namespace 	
HotPotProject
 
. 
Models 
. 
DTO "
{ 
public 

class 
OrderMenuDTO 
{ 
public 
int 
orderId 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 

customerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
restaurantId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
RestaurantName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public		 
string		 
?		 
RestaurantImage		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public

 
List

 
<

 
MenuNameDTO

 
>

  
menuName

! )
{

* +
get

, /
;

/ 0
set

1 4
;

4 5
}

6 7
public 
float 
Price 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
	OrderDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
	partnerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
? 
PartnerName "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} �
YC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DTO\OrderItemsDTO.cs
	namespace 	
HotPotProject
 
. 
Models 
. 
DTO "
{ 
public 

class 
OrderItemsDTO 
{ 
public 
Order 
Order 
{ 
get  
;  !
set" %
;% &
}' (
public 
List 
< 
	OrderItem 
> 
Items $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} �
WC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DTO\MenuNameDTO.cs
	namespace 	
HotPotProject
 
. 
Models 
. 
DTO "
{ 
public 

class 
MenuNameDTO 
{ 
public 
string 
ManuItemName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
} 
} �
XC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DTO\LoginUserDTO.cs
	namespace 	
HotPotProject
 
. 
Models 
. 
DTO "
{ 
public 

class 
LoginUserDTO 
{ 
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Role 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Token		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
}

 
} �
cC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DTO\CustomerReviewUpdateDTO.cs
	namespace 	
HotPotProject
 
. 
Models 
. 
DTO "
{ 
public 

class #
CustomerReviewUpdateDTO (
{ 
public 
int 
ReviewId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 

TextReview  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �	
dC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DTO\CustomerAddressUpdateDTO.cs
	namespace 	
HotPotProject
 
. 
Models 
. 
DTO "
{ 
public 

class $
CustomerAddressUpdateDTO )
{ 
public 
string 
? 
HouseNumber "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
BuildingName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
Locality 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
? 
CityId 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
?		 
LandMark		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
}

 
} �
WC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DTO\CartMenuDTO.cs
	namespace 	
HotPotProject
 
. 
Models 
. 
DTO "
{ 
public 

class 
CartMenuDTO 
{ 
public 
int 
CartId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 

CustomerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
RestaurantId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 

MenuItemId 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
?		 
	MenuTitle		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
int

 
Quantity

 
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
public 
float 
Price 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
? 
	MenuImage  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
? 
RestaurantName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
RestaurantCityId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} �
WC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\DeliveryPartner.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
DeliveryPartner  
{ 
[ 	
Key	 
] 
public 
int 
	PartnerId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
=		) *
string		+ 1
.		1 2
Empty		2 7
;		7 8
public

 
string

 
Phone
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
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
public 
int 
CityId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
public 
DeliveryPartner 
( 
)  
{ 	
	PartnerId 
= 
$num 
; 
} 	
public 
DeliveryPartner 
( 
int "
	partnerid# ,
,, -
string. 4
name5 9
,9 :
string; A
phoneB G
,G H
stringI O
emailP U
)U V
{ 	
	PartnerId 
= 
	partnerid !
;! "
Name 
= 
name 
; 
Phone 
= 
phone 
; 
Email 
= 
email 
; 
} 	
public 
DeliveryPartner 
( 
string %
name& *
,* +
string, 2
phone3 8
,8 9
string: @
emailA F
)F G
{ 	
Name 
= 
name 
; 
Phone 
= 
phone 
; 
Email   
=   
email   
;   
}!! 	
public## 
bool## 
Equals## 
(## 
DeliveryPartner## *
?##* +
other##, 1
)##1 2
{$$ 	
var%% 
deliveryPartner%% 
=%%  !
other%%" '
??%%( *
new%%+ .
DeliveryPartner%%/ >
(%%> ?
)%%? @
;%%@ A
return&& 
this&& 
.&& 
	PartnerId&& !
.&&! "
Equals&&" (
(&&( )
deliveryPartner&&) 8
.&&8 9
	PartnerId&&9 B
)&&B C
;&&C D
}'' 	
}(( 
})) �
VC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\CustomerReview.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
CustomerReview 
{ 
[ 	
Key	 
] 
public		 
int		 
ReviewId		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
int

 

CustomerId

 
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
public 
int 
RestaurantId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Rating 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 

TextReview  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	

ForeignKey	 
( 
$str  
)  !
]! "
public 
Customer 
? 
Customer !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

ForeignKey	 
( 
$str "
)" #
]# $
public 

Restaurant 
? 

Restaurant %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
CustomerReview 
( 
) 
{ 	
} 	
public 
CustomerReview 
( 
int !
reviewId" *
,* +
int, /
userId0 6
,6 7
int8 ;
restaurantId< H
,H I
intJ M
ratingN T
,T U
stringV \

textReview] g
)g h
{ 	
ReviewId 
= 
reviewId 
;  

CustomerId 
= 
userId 
;  
RestaurantId 
= 
restaurantId '
;' (
Rating 
= 
rating 
; 

TextReview 
= 

textReview #
;# $
}   	
public"" 
CustomerReview"" 
("" 
int"" !
userId""" (
,""( )
int""* -
restaurantId"". :
,"": ;
int""< ?
rating""@ F
,""F G
string""H N

textReview""O Y
)""Y Z
{## 	

CustomerId$$ 
=$$ 
userId$$ 
;$$  
RestaurantId%% 
=%% 
restaurantId%% '
;%%' (
Rating&& 
=&& 
rating&& 
;&& 

TextReview'' 
='' 

textReview'' #
;''# $
}(( 	
})) 
}** � 
WC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\CustomerAddress.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
CustomerAddress  
{ 
[		 	
Key			 
]		 
public

 
int

 
	AddressId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
int 
? 

CustomerId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
? 
HouseNumber "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
BuildingName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
Locality 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
? 
CityId 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
City 
? 
City 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
? 
LandMark 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

ForeignKey	 
( 
$str  
)  !
]! "
public 
Customer 
? 
Customer !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
CustomerAddress 
( 
)  
{ 	
} 	
public 
CustomerAddress 
( 
int "
userId# )
,) *
string+ 1
?1 2
houseNumber3 >
,> ?
string@ F
?F G
buildingNameH T
,T U
stringV \
?\ ]
locality^ f
,f g
inth k
cityIdl r
,r s
stringt z
?z {
landMark	| �
)
� �
{ 	

CustomerId 
= 
userId 
;  
HouseNumber   
=   
houseNumber   %
;  % &
BuildingName!! 
=!! 
buildingName!! '
;!!' (
Locality"" 
="" 
locality"" 
;""  
CityId## 
=## 
cityId## 
;## 
LandMark$$ 
=$$ 
landMark$$ 
;$$  
}%% 	
public'' 
CustomerAddress'' 
('' 
int'' "
	addressId''# ,
,'', -
int''. 1
userId''2 8
,''8 9
string'': @
?''@ A
houseNumber''B M
,''M N
string''O U
?''U V
buildingName''W c
,''c d
string''e k
?''k l
locality''m u
,''u v
int''w z
cityId	''{ �
,
''� �
string
''� �
?
''� �
landMark
''� �
)
''� �
{(( 	
	AddressId)) 
=)) 
	addressId)) !
;))! "

CustomerId** 
=** 
userId** 
;**  
HouseNumber++ 
=++ 
houseNumber++ %
;++% &
BuildingName,, 
=,, 
buildingName,, '
;,,' (
Locality-- 
=-- 
locality-- 
;--  
CityId.. 
=.. 
cityId.. 
;.. 
LandMark// 
=// 
landMark// 
;//  
}00 	
}11 
}22 �
PC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\Customer.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
Customer 
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
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
?		 
Email		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
?

 
Phone

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
? 
UserName 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

ForeignKey	 
( 
$str 
) 
]  
public 
User 
? 
User 
{ 
get 
;  
set! $
;$ %
}& '
public 
Customer 
( 
) 
{ 	
} 	
public 
Customer 
( 
int 
id 
, 
string  &
name' +
,+ ,
string- 3
email4 9
,9 :
string; A
phoneB G
)G H
{ 	
Id 
= 
id 
; 
Name 
= 
name 
; 
Email 
= 
email 
; 
Phone 
= 
phone 
; 
} 	
public 
Customer 
( 
string 
name #
,# $
string% +
email, 1
,1 2
string3 9
phone: ?
)? @
{ 	
Name 
= 
name 
; 
Email   
=   
email   
;   
Phone!! 
=!! 
phone!! 
;!! 
}"" 	
}## 
}$$ �
LC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\City.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
City 
{ 
[ 	
Key	 
] 
public		 
int		 
CityId		 
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
 
Name

 
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
public 
int 
StateId 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

ForeignKey	 
( 
$str 
) 
] 
public 
State 
? 
State 
{ 
get !
;! "
set# &
;& '
}( )
public 
City 
( 
) 
{ 	
} 	
public 
City 
( 
int 
cityId 
, 
string  &
name' +
,+ ,
int- 0
stateId1 8
)8 9
{ 	
CityId 
= 
cityId 
; 
Name 
= 
name 
; 
StateId 
= 
stateId 
; 
} 	
public 
City 
( 
string 
name 
,  
int! $
stateId% ,
), -
{ 	
Name 
= 
name 
; 
StateId 
= 
stateId 
; 
}   	
}!! 
}"" �
LC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Models\Cart.cs
	namespace 	
HotPotProject
 
. 
Models 
{ 
public 

class 
Cart 
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
public 
int 

CustomerId 
{ 
get  #
;# $
set% (
;( )
}* +
[

 	

ForeignKey

	 
(

 
$str

  
)

  !
]

! "
public 
Customer 
Customer  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
RestaurantId 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

ForeignKey	 
( 
$str "
)" #
]# $
public 

Restaurant 

Restaurant $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 

MenuItemId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	

ForeignKey	 
( 
$str  
)  !
]! "
public 
Menu 
Menu 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Cart 
( 
) 
{ 	
} 	
public 
Cart 
( 
int 

customerId "
," #
int$ '
restaurantId( 4
,4 5
int6 9

menuItemId: D
,D E
intF I
quantityJ R
,R S
stringT Z
status[ a
)a b
{ 	

CustomerId 
= 

customerId #
;# $
RestaurantId 
= 
restaurantId '
;' (

MenuItemId   
=   

menuItemId   #
;  # $
Quantity!! 
=!! 
quantity!! 
;!!  
Status"" 
="" 
status"" 
;"" 
}## 	
public%% 
Cart%% 
(%% 
int%% 
id%% 
,%% 
int%% 

customerId%%  *
,%%* +
int%%, /
restaurantId%%0 <
,%%< =
int%%> A

menuItemId%%B L
,%%L M
int%%N Q
quantity%%R Z
,%%Z [
string%%\ b
status%%c i
)%%i j
{&& 	
Id'' 
='' 
id'' 
;'' 

CustomerId(( 
=(( 

customerId(( #
;((# $
RestaurantId)) 
=)) 
restaurantId)) '
;))' (

MenuItemId** 
=** 

menuItemId** #
;**# $
Quantity++ 
=++ 
quantity++ 
;++  
Status,, 
=,, 
status,, 
;,, 
}-- 	
}.. 
}// ��
�C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Migrations\20240429060651_Ef_core_code_FirstDemo.Models.Context.cs
	namespace 	
HotPotProject
 
. 

Migrations "
{ 
public		 

partial		 
class		 /
#Ef_core_code_FirstDemoModelsContext		 <
:		= >
	Migration		? H
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str (
,( )
columns 
: 
table 
=> !
new" %
{ 
	PartnerId 
= 
table  %
.% &
Column& ,
<, -
int- 0
>0 1
(1 2
type2 6
:6 7
$str8 =
,= >
nullable? G
:G H
falseI N
)N O
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
nullableG O
:O P
falseQ V
)V W
,W X
Phone 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 F
,F G
nullableH P
:P Q
falseR W
)W X
,X Y
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 F
,F G
nullableH P
:P Q
falseR W
)W X
,X Y
CityId 
= 
table "
." #
Column# )
<) *
int* -
>- .
(. /
type/ 3
:3 4
$str5 :
,: ;
nullable< D
:D E
falseF K
)K L
,L M
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% :
,: ;
x< =
=>> @
xA B
.B C
	PartnerIdC L
)L M
;M N
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name   
:   
$str   (
,  ( )
columns!! 
:!! 
table!! 
=>!! !
new!!" %
{"" 
NutritionId## 
=##  !
table##" '
.##' (
Column##( .
<##. /
int##/ 2
>##2 3
(##3 4
type##4 8
:##8 9
$str##: ?
,##? @
nullable##A I
:##I J
false##K P
)##P Q
.$$ 

Annotation$$ #
($$# $
$str$$$ 8
,$$8 9
$str$$: @
)$$@ A
,$$A B
Calories%% 
=%% 
table%% $
.%%$ %
Column%%% +
<%%+ ,
float%%, 1
>%%1 2
(%%2 3
type%%3 7
:%%7 8
$str%%9 ?
,%%? @
nullable%%A I
:%%I J
false%%K P
)%%P Q
,%%Q R
Fats&& 
=&& 
table&&  
.&&  !
Column&&! '
<&&' (
float&&( -
>&&- .
(&&. /
type&&/ 3
:&&3 4
$str&&5 ;
,&&; <
nullable&&= E
:&&E F
false&&G L
)&&L M
,&&M N
Proteins'' 
='' 
table'' $
.''$ %
Column''% +
<''+ ,
float'', 1
>''1 2
(''2 3
type''3 7
:''7 8
$str''9 ?
,''? @
nullable''A I
:''I J
false''K P
)''P Q
,''Q R
Carbohydrates(( !
=((" #
table(($ )
.(() *
Column((* 0
<((0 1
float((1 6
>((6 7
(((7 8
type((8 <
:((< =
$str((> D
,((D E
nullable((F N
:((N O
false((P U
)((U V
})) 
,)) 
constraints** 
:** 
table** "
=>**# %
{++ 
table,, 
.,, 

PrimaryKey,, $
(,,$ %
$str,,% :
,,,: ;
x,,< =
=>,,> @
x,,A B
.,,B C
NutritionId,,C N
),,N O
;,,O P
}-- 
)-- 
;-- 
migrationBuilder// 
.// 
CreateTable// (
(//( )
name00 
:00 
$str00 
,00 
columns11 
:11 
table11 
=>11 !
new11" %
{22 
StateId33 
=33 
table33 #
.33# $
Column33$ *
<33* +
int33+ .
>33. /
(33/ 0
type330 4
:334 5
$str336 ;
,33; <
nullable33= E
:33E F
false33G L
)33L M
.44 

Annotation44 #
(44# $
$str44$ 8
,448 9
$str44: @
)44@ A
,44A B
Name55 
=55 
table55  
.55  !
Column55! '
<55' (
string55( .
>55. /
(55/ 0
type550 4
:554 5
$str556 E
,55E F
nullable55G O
:55O P
false55Q V
)55V W
}66 
,66 
constraints77 
:77 
table77 "
=>77# %
{88 
table99 
.99 

PrimaryKey99 $
(99$ %
$str99% 0
,990 1
x992 3
=>994 6
x997 8
.998 9
StateId999 @
)99@ A
;99A B
}:: 
):: 
;:: 
migrationBuilder<< 
.<< 
CreateTable<< (
(<<( )
name== 
:== 
$str== 
,== 
columns>> 
:>> 
table>> 
=>>> !
new>>" %
{?? 
UserName@@ 
=@@ 
table@@ $
.@@$ %
Column@@% +
<@@+ ,
string@@, 2
>@@2 3
(@@3 4
type@@4 8
:@@8 9
$str@@: I
,@@I J
nullable@@K S
:@@S T
false@@U Z
)@@Z [
,@@[ \
PasswordAA 
=AA 
tableAA $
.AA$ %
ColumnAA% +
<AA+ ,
byteAA, 0
[AA0 1
]AA1 2
>AA2 3
(AA3 4
typeAA4 8
:AA8 9
$strAA: J
,AAJ K
nullableAAL T
:AAT U
falseAAV [
)AA[ \
,AA\ ]
RoleBB 
=BB 
tableBB  
.BB  !
ColumnBB! '
<BB' (
stringBB( .
>BB. /
(BB/ 0
typeBB0 4
:BB4 5
$strBB6 E
,BBE F
nullableBBG O
:BBO P
falseBBQ V
)BBV W
,BBW X
KeyCC 
=CC 
tableCC 
.CC  
ColumnCC  &
<CC& '
byteCC' +
[CC+ ,
]CC, -
>CC- .
(CC. /
typeCC/ 3
:CC3 4
$strCC5 E
,CCE F
nullableCCG O
:CCO P
falseCCQ V
)CCV W
}DD 
,DD 
constraintsEE 
:EE 
tableEE "
=>EE# %
{FF 
tableGG 
.GG 

PrimaryKeyGG $
(GG$ %
$strGG% /
,GG/ 0
xGG1 2
=>GG3 5
xGG6 7
.GG7 8
UserNameGG8 @
)GG@ A
;GGA B
}HH 
)HH 
;HH 
migrationBuilderJJ 
.JJ 
CreateTableJJ (
(JJ( )
nameKK 
:KK 
$strKK 
,KK 
columnsLL 
:LL 
tableLL 
=>LL !
newLL" %
{MM 
CityIdNN 
=NN 
tableNN "
.NN" #
ColumnNN# )
<NN) *
intNN* -
>NN- .
(NN. /
typeNN/ 3
:NN3 4
$strNN5 :
,NN: ;
nullableNN< D
:NND E
falseNNF K
)NNK L
.OO 

AnnotationOO #
(OO# $
$strOO$ 8
,OO8 9
$strOO: @
)OO@ A
,OOA B
NamePP 
=PP 
tablePP  
.PP  !
ColumnPP! '
<PP' (
stringPP( .
>PP. /
(PP/ 0
typePP0 4
:PP4 5
$strPP6 E
,PPE F
nullablePPG O
:PPO P
falsePPQ V
)PPV W
,PPW X
StateIdQQ 
=QQ 
tableQQ #
.QQ# $
ColumnQQ$ *
<QQ* +
intQQ+ .
>QQ. /
(QQ/ 0
typeQQ0 4
:QQ4 5
$strQQ6 ;
,QQ; <
nullableQQ= E
:QQE F
falseQQG L
)QQL M
}RR 
,RR 
constraintsSS 
:SS 
tableSS "
=>SS# %
{TT 
tableUU 
.UU 

PrimaryKeyUU $
(UU$ %
$strUU% 0
,UU0 1
xUU2 3
=>UU4 6
xUU7 8
.UU8 9
CityIdUU9 ?
)UU? @
;UU@ A
tableVV 
.VV 

ForeignKeyVV $
(VV$ %
nameWW 
:WW 
$strWW 8
,WW8 9
columnXX 
:XX 
xXX  !
=>XX" $
xXX% &
.XX& '
StateIdXX' .
,XX. /
principalTableYY &
:YY& '
$strYY( 0
,YY0 1
principalColumnZZ '
:ZZ' (
$strZZ) 2
,ZZ2 3
onDelete[[  
:[[  !
ReferentialAction[[" 3
.[[3 4
Cascade[[4 ;
)[[; <
;[[< =
}\\ 
)\\ 
;\\ 
migrationBuilder^^ 
.^^ 
CreateTable^^ (
(^^( )
name__ 
:__ 
$str__ !
,__! "
columns`` 
:`` 
table`` 
=>`` !
new``" %
{aa 
Idbb 
=bb 
tablebb 
.bb 
Columnbb %
<bb% &
intbb& )
>bb) *
(bb* +
typebb+ /
:bb/ 0
$strbb1 6
,bb6 7
nullablebb8 @
:bb@ A
falsebbB G
)bbG H
.cc 

Annotationcc #
(cc# $
$strcc$ 8
,cc8 9
$strcc: @
)cc@ A
,ccA B
Namedd 
=dd 
tabledd  
.dd  !
Columndd! '
<dd' (
stringdd( .
>dd. /
(dd/ 0
typedd0 4
:dd4 5
$strdd6 E
,ddE F
nullableddG O
:ddO P
trueddQ U
)ddU V
,ddV W
Emailee 
=ee 
tableee !
.ee! "
Columnee" (
<ee( )
stringee) /
>ee/ 0
(ee0 1
typeee1 5
:ee5 6
$stree7 F
,eeF G
nullableeeH P
:eeP Q
trueeeR V
)eeV W
,eeW X
Phoneff 
=ff 
tableff !
.ff! "
Columnff" (
<ff( )
stringff) /
>ff/ 0
(ff0 1
typeff1 5
:ff5 6
$strff7 F
,ffF G
nullableffH P
:ffP Q
trueffR V
)ffV W
,ffW X
UserNamegg 
=gg 
tablegg $
.gg$ %
Columngg% +
<gg+ ,
stringgg, 2
>gg2 3
(gg3 4
typegg4 8
:gg8 9
$strgg: I
,ggI J
nullableggK S
:ggS T
trueggU Y
)ggY Z
}hh 
,hh 
constraintsii 
:ii 
tableii "
=>ii# %
{jj 
tablekk 
.kk 

PrimaryKeykk $
(kk$ %
$strkk% 3
,kk3 4
xkk5 6
=>kk7 9
xkk: ;
.kk; <
Idkk< >
)kk> ?
;kk? @
tablell 
.ll 

ForeignKeyll $
(ll$ %
namemm 
:mm 
$strmm ;
,mm; <
columnnn 
:nn 
xnn  !
=>nn" $
xnn% &
.nn& '
UserNamenn' /
,nn/ 0
principalTableoo &
:oo& '
$stroo( /
,oo/ 0
principalColumnpp '
:pp' (
$strpp) 3
)pp3 4
;pp4 5
}qq 
)qq 
;qq 
migrationBuilderss 
.ss 
CreateTabless (
(ss( )
namett 
:tt 
$strtt #
,tt# $
columnsuu 
:uu 
tableuu 
=>uu !
newuu" %
{vv 
RestaurantIdww  
=ww! "
tableww# (
.ww( )
Columnww) /
<ww/ 0
intww0 3
>ww3 4
(ww4 5
typeww5 9
:ww9 :
$strww; @
,ww@ A
nullablewwB J
:wwJ K
falsewwL Q
)wwQ R
.xx 

Annotationxx #
(xx# $
$strxx$ 8
,xx8 9
$strxx: @
)xx@ A
,xxA B
RestaurantNameyy "
=yy# $
tableyy% *
.yy* +
Columnyy+ 1
<yy1 2
stringyy2 8
>yy8 9
(yy9 :
typeyy: >
:yy> ?
$stryy@ O
,yyO P
nullableyyQ Y
:yyY Z
falseyy[ `
)yy` a
,yya b
Phonezz 
=zz 
tablezz !
.zz! "
Columnzz" (
<zz( )
stringzz) /
>zz/ 0
(zz0 1
typezz1 5
:zz5 6
$strzz7 F
,zzF G
nullablezzH P
:zzP Q
falsezzR W
)zzW X
,zzX Y
Email{{ 
={{ 
table{{ !
.{{! "
Column{{" (
<{{( )
string{{) /
>{{/ 0
({{0 1
type{{1 5
:{{5 6
$str{{7 F
,{{F G
nullable{{H P
:{{P Q
false{{R W
){{W X
,{{X Y
CityId|| 
=|| 
table|| "
.||" #
Column||# )
<||) *
int||* -
>||- .
(||. /
type||/ 3
:||3 4
$str||5 :
,||: ;
nullable||< D
:||D E
false||F K
)||K L
,||L M
RestaurantImage}} #
=}}$ %
table}}& +
.}}+ ,
Column}}, 2
<}}2 3
string}}3 9
>}}9 :
(}}: ;
type}}; ?
:}}? @
$str}}A P
,}}P Q
nullable}}R Z
:}}Z [
true}}\ `
)}}` a
}~~ 
,~~ 
constraints 
: 
table "
=># %
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
��% 5
,
��5 6
x
��7 8
=>
��9 ;
x
��< =
.
��= >
RestaurantId
��> J
)
��J K
;
��K L
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
CityId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) 1
,
��1 2
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
�� )
,
��) *
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
�� 
	AddressId
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
��, -
int
��- 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 =
,
��= >
nullable
��? G
:
��G H
false
��I N
)
��N O
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
��A B

CustomerId
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
��- .
int
��. 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 >
,
��> ?
nullable
��@ H
:
��H I
true
��J N
)
��N O
,
��O P
HouseNumber
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
��L M
nullable
��N V
:
��V W
true
��X \
)
��\ ]
,
��] ^
BuildingName
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
��/ 0
string
��0 6
>
��6 7
(
��7 8
type
��8 <
:
��< =
$str
��> M
,
��M N
nullable
��O W
:
��W X
true
��Y ]
)
��] ^
,
��^ _
Locality
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
��Z [
CityId
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
��D E
true
��F J
)
��J K
,
��K L
LandMark
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
��% ;
,
��; <
x
��= >
=>
��? A
x
��B C
.
��C D
	AddressId
��D M
)
��M N
;
��N O
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
�� B
,
��B C
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
CityId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) 1
)
��1 2
;
��2 3
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
�� I
,
��I J
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
��& '

CustomerId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( 3
,
��3 4
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
�� 
ReviewId
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
��+ ,
int
��, /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 <
,
��< =
nullable
��> F
:
��F G
false
��H M
)
��M N
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
��A B

CustomerId
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
��- .
int
��. 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 >
,
��> ?
nullable
��@ H
:
��H I
false
��J O
)
��O P
,
��P Q
RestaurantId
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
��J K
false
��L Q
)
��Q R
,
��R S
Rating
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

TextReview
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
��= ?
x
��@ A
.
��A B
ReviewId
��B J
)
��J K
;
��K L
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
��& '

CustomerId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( 3
,
��3 4
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
�� K
,
��K L
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
RestaurantId
��' 3
,
��3 4
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
��) 7
,
��7 8
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
�� 
,
�� 
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
MenuId
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
��A B
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
��W X
Type
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
��O P
true
��Q U
)
��U V
,
��V W
Price
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
��( )
float
��) .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 <
,
��< =
nullable
��> F
:
��F G
false
��H M
)
��M N
,
��N O
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
��L M
nullable
��N V
:
��V W
true
��X \
)
��\ ]
,
��] ^
Cuisine
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
��9 H
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
��Y Z
Category
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
��Z [
CookingTime
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
TimeSpan
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
��? E
,
��E F
nullable
��G O
:
��O P
true
��Q U
)
��U V
,
��V W
	TasteInfo
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
��, -
string
��- 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; J
,
��J K
nullable
��L T
:
��T U
true
��V Z
)
��Z [
,
��[ \
	ItemImage
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
��, -
string
��- 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; J
,
��J K
nullable
��L T
:
��T U
true
��V Z
)
��Z [
,
��[ \
NutritionId
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
��. /
int
��/ 2
>
��2 3
(
��3 4
type
��4 8
:
��8 9
$str
��: ?
,
��? @
nullable
��A I
:
��I J
false
��K P
)
��P Q
,
��Q R
RestaurantId
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
��J K
false
��L Q
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
��% /
,
��/ 0
x
��1 2
=>
��3 5
x
��6 7
.
��7 8
MenuId
��8 >
)
��> ?
;
��? @
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
��& '
NutritionId
��' 2
,
��2 3
principalTable
�� &
:
��& '
$str
��( :
,
��: ;
principalColumn
�� '
:
��' (
$str
��) 6
,
��6 7
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
�� A
,
��A B
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
RestaurantId
��' 3
,
��3 4
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
��) 7
,
��7 8
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
�� 
OrderId
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
��* +
int
��+ .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 ;
,
��; <
nullable
��= E
:
��E F
false
��G L
)
��L M
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
��A B
	OrderDate
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
��R S
false
��T Y
)
��Y Z
,
��Z [
Amount
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
��) *
float
��* /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 =
,
��= >
nullable
��? G
:
��G H
false
��I N
)
��N O
,
��O P
Status
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
��) *
string
��* 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 G
,
��G H
nullable
��I Q
:
��Q R
false
��S X
)
��X Y
,
��Y Z

CustomerId
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
��- .
int
��. 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 >
,
��> ?
nullable
��@ H
:
��H I
false
��J O
)
��O P
,
��P Q
RestaurantId
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
��J K
false
��L Q
)
��Q R
,
��R S
	PartnerId
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
��, -
int
��- 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 =
,
��= >
nullable
��? G
:
��G H
true
��I M
)
��M N
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
��8 9
OrderId
��9 @
)
��@ A
;
��A B
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
�� >
,
��> ?
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
��& '

CustomerId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( 3
,
��3 4
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
��& '
	PartnerId
��' 0
,
��0 1
principalTable
�� &
:
��& '
$str
��( :
,
��: ;
principalColumn
�� '
:
��' (
$str
��) 4
)
��4 5
;
��5 6
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� B
,
��B C
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RestaurantId
��' 3
,
��3 4
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) 7
,
��7 8
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
OwnerId
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
int
��+ .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 ;
,
��; <
nullable
��= E
:
��E F
false
��G L
)
��L M
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 E
,
��E F
nullable
��G O
:
��O P
false
��Q V
)
��V W
,
��W X
RestaurantId
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
int
��0 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; @
,
��@ A
nullable
��B J
:
��J K
false
��L Q
)
��Q R
,
��R S
UserName
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
string
��, 2
>
��2 3
(
��3 4
type
��4 8
:
��8 9
$str
��: I
,
��I J
nullable
��K S
:
��S T
false
��U Z
)
��Z [
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
x
��A B
.
��B C
OwnerId
��C J
)
��J K
;
��K L
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� L
,
��L M
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RestaurantId
��' 3
,
��3 4
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) 7
,
��7 8
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� B
,
��B C
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserName
��' /
,
��/ 0
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) 3
,
��3 4
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
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
��. /
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 

CategoryId
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
int
��. 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 >
,
��> ?
nullable
��@ H
:
��H I
false
��J O
)
��O P
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
RestaurantId
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
int
��0 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; @
,
��@ A
nullable
��B J
:
��J K
false
��L Q
)
��Q R
,
��R S
CategoryName
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
string
��0 6
>
��6 7
(
��7 8
type
��8 <
:
��< =
$str
��> M
,
��M N
nullable
��O W
:
��W X
false
��Y ^
)
��^ _
,
��_ `
CategoryImage
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
type
��9 =
:
��= >
$str
��? N
,
��N O
nullable
��P X
:
��X Y
true
��Z ^
)
��^ _
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% @
,
��@ A
x
��B C
=>
��D F
x
��G H
.
��H I

CategoryId
��I S
)
��S T
;
��T U
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� R
,
��R S
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RestaurantId
��' 3
,
��3 4
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) 7
,
��7 8
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� 
,
�� 
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
int
��& )
>
��) *
(
��* +
type
��+ /
:
��/ 0
$str
��1 6
,
��6 7
nullable
��8 @
:
��@ A
false
��B G
)
��G H
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B

CustomerId
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
int
��. 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 >
,
��> ?
nullable
��@ H
:
��H I
false
��J O
)
��O P
,
��P Q
RestaurantId
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
int
��0 3
>
��3 4
(
��4 5
type
��5 9
:
��9 :
$str
��; @
,
��@ A
nullable
��B J
:
��J K
false
��L Q
)
��Q R
,
��R S

MenuItemId
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
int
��. 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 >
,
��> ?
nullable
��@ H
:
��H I
false
��J O
)
��O P
,
��P Q
Quantity
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
int
��, /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 <
,
��< =
nullable
��> F
:
��F G
false
��H M
)
��M N
,
��N O
Status
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 G
,
��G H
nullable
��I Q
:
��Q R
false
��S X
)
��X Y
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% /
,
��/ 0
x
��1 2
=>
��3 5
x
��6 7
.
��7 8
Id
��8 :
)
��: ;
;
��; <
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� =
,
��= >
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '

CustomerId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( 3
,
��3 4
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� 9
,
��9 :
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '

MenuItemId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) 1
,
��1 2
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� A
,
��A B
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RestaurantId
��' 3
,
��3 4
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) 7
,
��7 8
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
NoAction
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� "
,
��" #
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
OrderId
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
int
��+ .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 ;
,
��; <
nullable
��= E
:
��E F
false
��G L
)
��L M
,
��M N
MenuId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
int
��* -
>
��- .
(
��. /
type
��/ 3
:
��3 4
$str
��5 :
,
��: ;
nullable
��< D
:
��D E
false
��F K
)
��K L
,
��L M
Quantity
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
int
��, /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 <
,
��< =
nullable
��> F
:
��F G
false
��H M
)
��M N
,
��N O
SubTotalPrice
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
float
��1 6
>
��6 7
(
��7 8
type
��8 <
:
��< =
$str
��> D
,
��D E
nullable
��F N
:
��N O
false
��P U
)
��U V
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 4
,
��4 5
x
��6 7
=>
��8 :
new
��; >
{
��? @
x
��A B
.
��B C
OrderId
��C J
,
��J K
x
��L M
.
��M N
MenuId
��N T
}
��U V
)
��V W
;
��W X
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� :
,
��: ;
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
MenuId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) 1
,
��1 2
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� <
,
��< =
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
OrderId
��' .
,
��. /
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) 2
,
��2 3
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
NoAction
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
��  
,
��  !
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
	PaymentId
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
int
��- 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 =
,
��= >
nullable
��? G
:
��G H
false
��I N
)
��N O
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
PaymentMode
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
type
��7 ;
:
��; <
$str
��= L
,
��L M
nullable
��N V
:
��V W
false
��X ]
)
��] ^
,
��^ _
Amount
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
float
��* /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 =
,
��= >
nullable
��? G
:
��G H
false
��I N
)
��N O
,
��O P
Status
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 G
,
��G H
nullable
��I Q
:
��Q R
false
��S X
)
��X Y
,
��Y Z
Date
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
DateTime
��( 0
>
��0 1
(
��1 2
type
��2 6
:
��6 7
$str
��8 C
,
��C D
nullable
��E M
:
��M N
false
��O T
)
��T U
,
��U V
OrderId
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
int
��+ .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 ;
,
��; <
nullable
��= E
:
��E F
true
��G K
)
��K L
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 2
,
��2 3
x
��4 5
=>
��6 8
x
��9 :
.
��: ;
	PaymentId
��; D
)
��D E
;
��E F
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� :
,
��: ;
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
OrderId
��' .
,
��. /
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) 2
)
��2 3
;
��3 4
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� -
,
��- .
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� )
,
��) *
table
�� 
:
�� 
$str
�� 
,
��  
column
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 3
,
��3 4
table
�� 
:
�� 
$str
�� *
,
��* +
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 7
,
��7 8
table
�� 
:
�� 
$str
�� *
,
��* +
column
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 5
,
��5 6
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 7
,
��7 8
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� -
,
��- .
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� ,
,
��, -
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� %
)
��% &
;
��& '
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� -
,
��- .
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� ,
,
��, -
table
�� 
:
�� 
$str
�� #
,
��# $
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� ,
,
��, -
table
�� 
:
�� 
$str
�� 
,
��  
column
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
table
�� 
:
�� 
$str
�� 
,
��  
column
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� .
,
��. /
table
�� 
:
�� 
$str
�� 
,
��  
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
table
�� 
:
�� 
$str
�� !
,
��! "
column
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 8
,
��8 9
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 4
,
��4 5
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� -
,
��- .
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� >
,
��> ?
table
�� 
:
�� 
$str
�� /
,
��/ 0
column
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� .
)
��. /
;
��/ 0
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
��  
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
��  
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
��  
}
�� 	
}
�� 
}�� �
WC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Mappers\RegisterToUser.cs
	namespace 	
HotPotProject
 
. 
Mappers 
{ 
public 

class 
RegisterToUser 
{		 
User

 
user

 
;

 
public 
RegisterToUser 
( 
RegisterCustomerDTO 1
registerCustomer2 B
)B C
{ 	
user 
= 
new 
User 
( 
) 
; 
user 
. 
UserName 
= 
registerCustomer ,
., -
UserName- 5
;5 6
user 
. 
Role 
= 
registerCustomer (
.( )
Role) -
;- .
generatePassword 
( 
registerCustomer -
.- .
Password. 6
)6 7
;7 8
} 	
void 
generatePassword 
( 
string $
password% -
)- .
{ 	

HMACSHA512 
hmac 
= 
new !

HMACSHA512" ,
(, -
)- .
;. /
user 
. 
Key 
= 
hmac 
. 
Key 
;  
user 
. 
Password 
= 
hmac  
.  !
ComputeHash! ,
(, -
Encoding- 5
.5 6
UTF86 :
.: ;
GetBytes; C
(C D
passwordD L
)L M
)M N
;N O
} 	
public 
User 
getUser 
( 
) 
{ 	
return 
user 
; 
} 	
} 
}   �
aC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Mappers\RegisterToRestaurantUser.cs
	namespace 	
HotPotProject
 
. 
Mappers 
{ 
public 

class $
RegisterToRestaurantUser )
{ 
User		 
user		 
;		 
public

 $
RegisterToRestaurantUser

 '
(

' (!
RegisterRestaurantDTO

( =
registerRestaurant

> P
)

P Q
{ 	
user 
= 
new 
User 
( 
) 
; 
user 
. 
UserName 
= 
registerRestaurant .
.. /
UserName/ 7
;7 8
user 
. 
Role 
= 
registerRestaurant *
.* +
Role+ /
;/ 0
generatePassword 
( 
registerRestaurant /
./ 0
Password0 8
)8 9
;9 :
} 	
void 
generatePassword 
( 
string $
password% -
)- .
{ 	

HMACSHA512 
hmac 
= 
new !

HMACSHA512" ,
(, -
)- .
;. /
user 
. 
Key 
= 
hmac 
. 
Key 
;  
user 
. 
Password 
= 
hmac  
.  !
ComputeHash! ,
(, -
Encoding- 5
.5 6
UTF86 :
.: ;
GetBytes; C
(C D
passwordD L
)L M
)M N
;N O
} 	
public 
User 
getUser 
( 
) 
{ 	
return 
user 
; 
} 	
} 
} �

]C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Mappers\RegisterToRestaurant.cs
	namespace 	
HotPotProject
 
. 
Mappers 
{ 
public 

class  
RegisterToRestaurant %
{ 
RestaurantOwner 
restaurantOwner '
;' (
public		  
RegisterToRestaurant		 #
(		# $!
RegisterRestaurantDTO		$ 9
registerRestaurant		: L
)		L M
{

 	
restaurantOwner 
= 
new !
RestaurantOwner" 1
(1 2
)2 3
;3 4
restaurantOwner 
. 
Name  
=! "
registerRestaurant# 5
.5 6
Name6 :
;: ;
restaurantOwner 
. 
UserName $
=% &
registerRestaurant' 9
.9 :
UserName: B
;B C
restaurantOwner 
. 
RestaurantId (
=) *
registerRestaurant+ =
.= >
RestaurantId> J
;J K
} 	
public 
RestaurantOwner 
GetRestaurantOwner 1
(1 2
)2 3
{ 	
return 
restaurantOwner "
;" #
} 	
} 
} �
fC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Mappers\RegisterToDeliveryPartnerUser.cs
	namespace 	
HotPotProject
 
. 
Mappers 
{ 
public 

class )
RegisterToDeliveryPartnerUser .
{		 
User

 
newUser

 
;

 
public )
RegisterToDeliveryPartnerUser ,
(, -&
RegisterDeliveryPartnerDTO- G
deliveryPartnerH W
)W X
{ 	
newUser 
= 
new 
User 
( 
)  
;  !
newUser 
. 
UserName 
= 
deliveryPartner .
.. /
UserName/ 7
;7 8
newUser 
. 
Role 
= 
$str ,
;, -
generatePassword 
( 
deliveryPartner ,
., -
Password- 5
)5 6
;6 7
} 	
void 
generatePassword 
( 
string $
password% -
)- .
{ 	

HMACSHA512 
hmac 
= 
new !

HMACSHA512" ,
(, -
)- .
;. /
newUser 
. 
Key 
= 
hmac 
. 
Key "
;" #
newUser 
. 
Password 
= 
hmac #
.# $
ComputeHash$ /
(/ 0
Encoding0 8
.8 9
UTF89 =
.= >
GetBytes> F
(F G
passwordG O
)O P
)P Q
;Q R
} 	
public 
User 
GetUser 
( 
) 
{ 	
return 
newUser 
; 
} 	
} 
}   �
bC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Mappers\RegisterToDeliveryPartner.cs
	namespace 	
HotPotProject
 
. 
Mappers 
{ 
public 

class %
RegisterToDeliveryPartner *
{ 
DeliveryPartner 
newDeliveryPartner *
;* +
public

 %
RegisterToDeliveryPartner

 (
(

( )&
RegisterDeliveryPartnerDTO

) C
deliveryPartner

D S
)

S T
{ 	
newDeliveryPartner 
=  
new! $
DeliveryPartner% 4
(4 5
)5 6
;6 7
newDeliveryPartner 
. 
Name #
=$ %
deliveryPartner& 5
.5 6
Name6 :
;: ;
newDeliveryPartner 
. 
Email $
=% &
deliveryPartner' 6
.6 7
Email7 <
;< =
newDeliveryPartner 
. 
Phone $
=% &
deliveryPartner' 6
.6 7
Phone7 <
;< =
newDeliveryPartner 
. 
CityId %
=& '
deliveryPartner( 7
.7 8
cityId8 >
;> ?
newDeliveryPartner 
. 
UserName '
=( )
deliveryPartner* 9
.9 :
UserName: B
;B C
} 	
public 
DeliveryPartner 
GetDeliveryPartner 1
(1 2
)2 3
{ 	
return 
newDeliveryPartner %
;% &
} 	
} 
} �
[C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Mappers\RegisterToCustomer.cs
	namespace 	
HotPotProject
 
. 
Mappers 
{ 
public 

class 
RegisterToCustomer #
{ 
Customer 
customer 
; 
public

 
RegisterToCustomer

 !
(

! "
RegisterCustomerDTO

" 5
registerCustomer

6 F
)

F G
{ 	
customer 
= 
new 
Customer #
(# $
)$ %
;% &
customer 
. 
Name 
= 
registerCustomer ,
., -
Name- 1
;1 2
customer 
. 
Email 
= 
registerCustomer -
.- .
Email. 3
;3 4
customer 
. 
Phone 
= 
registerCustomer -
.- .
Phone. 3
;3 4
customer 
. 
UserName 
= 
registerCustomer  0
.0 1
UserName1 9
;9 :
} 	
public 
Customer 
GetCustomer #
(# $
)$ %
{ 	
return 
customer 
; 
} 	
} 
} �
ZC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Interfaces\ITokenServices.cs
	namespace 	
HotPotProject
 
. 

Interfaces "
{ 
public 

	interface 
ITokenServices #
{ 
public 
Task 
< 
string 
> 
GenerateToken )
() *
LoginUserDTO* 6
user7 ;
); <
;< =
public 
Task 
< 
string 
> )
GenerateAllAuthorizationToken 9
(9 :
LoginUserDTO: F
userG K
)K L
;L M
}		 
}

 �
cC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Interfaces\IRestaurantUserServices.cs
	namespace 	
HotPotProject
 
. 

Interfaces "
{ 
public 

	interface #
IRestaurantUserServices ,
:- .$
IRestaurantOwnerServices/ G
{ 
public 
Task 
< 
List 
<  
RestaurantSpeciality -
>- .
>. /
GetAllSpecialities0 B
(B C
)C D
;D E
Task 
<  
RestaurantSpeciality !
>! "#
AddRestaurantSpeciality# :
(: ; 
RestaurantSpeciality; O 
restaurantspecialityP d
)d e
;e f
public 
Task 
< 
List 
< 
CustomerReview '
>' (
>( )
GetCustomerReviews* <
(< =
)= >
;> ?
public 
Task 
< 
List 
< 

Restaurant #
># $
>$ %
GetAllRestaurants& 7
(7 8
)8 9
;9 :
Task 
< 
List 
< 
Menu 
> 
> 
GetAllMenus $
($ %
)% &
;& '
Task 
< 
bool 
> 
DeleteRestaurant #
(# $
int$ '
restaurantId( 4
)4 5
;5 6
public 
Task 
< 
RestaurantOwner #
># $(
GetRestaurantOwnerByUsername% A
(A B
stringB H
usernameI Q
)Q R
;R S
} 
} �
dC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Interfaces\IRestaurantOwnerServices.cs
	namespace 	
HotPotProject
 
. 

Interfaces "
{ 
public 

	interface $
IRestaurantOwnerServices -
:. /$
IRestaurantAdminServices0 H
{ 
public		 
Task		 
<		 
LoginUserDTO		  
>		  !
RegisterRestaurant		" 4
(		4 5!
RegisterRestaurantDTO		5 J
registerRestaurant		K ]
)		] ^
;		^ _
public

 
Task

 
<

 
LoginUserDTO

  
>

  !
LogInRestaurant

" 1
(

1 2
LoginUserDTO

2 >
loginRestaurant

? N
)

N O
;

O P
public 
Task 
< 
Menu 
> 
AddMenuItem %
(% &
Menu& *
menu+ /
)/ 0
;0 1
public 
Task 
< 
List 
< 
Payment  
>  !
>! "
GetAllPayments# 1
(1 2
int2 5
RestaurantId6 B
)B C
;C D
public 
Task 
< 
List 
< 
Order 
> 
>  
GetAllOrders! -
(- .
int. 1
RestaurantId2 >
)> ?
;? @
public 
Task 
< 
Order 
> 
ChangeOrderStatus ,
(, -
int- 0
orderId1 8
,8 9
string: @
	newStatusA J
)J K
;K L
public 
Task 
< 
Menu 
> 
DeleteMenuItem (
(( )
int) ,

menuItemId- 7
)7 8
;8 9
} 
} �
WC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Interfaces\IRepository.cs
	namespace 	
HotPotProject
 
. 

Interfaces "
{ 
public 

	interface 
IRepository  
<  !
K! "
," #
S$ %
,% &
T' (
>( )
{ 
public 
Task 
< 
T 
> 
Add 
( 
T 
item !
)! "
;" #
public 
Task 
< 
T 
> 
Update 
( 
T 
item  $
)$ %
;% &
public		 
Task		 
<		 
T		 
>		 
GetAsync		 
(		  
K		  !
key		" %
)		% &
;		& '
public 
Task 
< 
List 
< 
T 
> 
> 
GetAsync %
(% &
)& '
;' (
public 
Task 
< 
T 
> 
Delete 
( 
K 
key  #
)# $
;$ %
public 
Task 
< 
T 
> 
GetAsync 
(  
S  !
key" %
)% &
;& '
} 
} �
dC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Interfaces\IRestaurantAdminServices.cs
	namespace 	
HotPotProject
 
. 

Interfaces "
{ 
public 

	interface $
IRestaurantAdminServices -
{ 
public 
Task 
< 

Restaurant 
> 
AddRestaurant  -
(- .

Restaurant. 8

restaurant9 C
)C D
;D E
public 
Task 
< 
List 
< 
Payment  
>  !
>! "
GetAllPayments# 1
(1 2
)2 3
;3 4
public		 
Task		 
<		 
List		 
<		 
Order		 
>		 
>		  
GetAllOrders		! -
(		- .
)		. /
;		/ 0
}

 
} �
dC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Interfaces\IDeliveryPartnerServices.cs
	namespace 	
HotPotProject
 
. 

Interfaces "
{ 
public 

	interface $
IDeliveryPartnerServices -
{ 
public 
Task 
< 
DeliveryPartner #
># $%
GetDeliveryPartnerDetails% >
(> ?
int? B
	partnerIdC L
)L M
;M N
public		 
Task		 
<		 
DeliveryPartner		 #
>		# $(
UpdateDeliveryPartnerDetails		% A
(		A B
DeliveryPartner		B Q
deliveryPartner		R a
)		a b
;		b c
public

 
Task

 
<

 
Order

 
>

 
ChangeOrderStatus

 ,
(

, -
int

- 0
orderId

1 8
)

8 9
;

9 :
public 
Task 
< 
LoginUserDTO  
>  !#
RegisterDeliveryPartner" 9
(9 :&
RegisterDeliveryPartnerDTO: T
deliveryPartnerU d
)d e
;e f
public 
Task 
< 
LoginUserDTO  
>  ! 
LoginDeliveryPartner" 6
(6 7
LoginUserDTO7 C
	loginUserD M
)M N
;N O
public 
Task 
< 
List 
< 
Order 
> 
>  
GetAllOrders! -
(- .
int. 1
	partnerId2 ;
); <
;< =
} 
} �<
]C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Interfaces\ICustomerServices.cs
	namespace 	
HotPotProject
 
. 

Interfaces "
{ 
public 

	interface 
ICustomerServices &
{ 
public		 
Task		 
<		 
LoginUserDTO		  
>		  !
RegisterCustomer		" 2
(		2 3
RegisterCustomerDTO		3 F
registerCustomer		G W
)		W X
;		X Y
public

 
Task

 
<

 
LoginUserDTO

  
>

  !
LogIn

" '
(

' (
LoginUserDTO

( 4
loginCustomer

5 B
)

B C
;

C D
public 
Task 
< 
List 
< 

Restaurant #
># $
>$ % 
GetRestaurantsByCity& :
(: ;
string; A
cityB F
)F G
;G H
public 
Task 
< 
List 
< 
Menu 
> 
> 
GetMenuByRestaurant  3
(3 4
int4 7
RestaurantId8 D
)D E
;E F
public 
Task 
< 

Restaurant 
> 
GetRestaurantByName  3
(3 4
string4 :
name; ?
)? @
;@ A
public 
Task 
< 
OrderMenuDTO  
>  !

PlaceOrder" ,
(, -
int- 0

customerId1 ;
,; <
string= C
paymentModeD O
)O P
;P Q
public 
Task 
< 
OrderMenuDTO  
>  !
PlaceOrderForOne" 2
(2 3
int3 6

cartItemId7 A
,A B
stringC I
paymentModeJ U
)U V
;V W
public 
Task 
< 
Payment 
> 
RecordPayment *
(* +
Order+ 0
order1 6
)6 7
;7 8
public 
Task 
< 
int 
> 
	AddToCart #
(# $
int$ '
userId( .
,. /
int0 3

menuItemId4 >
)> ?
;? @
public 
Task 
< 
List 
< 
CartMenuDTO $
>$ %
>% &
GetCarts' /
(/ 0
int0 3

customerId4 >
)> ?
;? @
public 
Task 
DeleteCartItem "
(" #
int# &

cartItemId' 1
)1 2
;2 3
public 
Task 
	EmptyCart 
( 
int !

customerId" ,
), -
;- .
public 
Task $
IncreaseCartItemQuantity ,
(, -
int- 0
cartId1 7
)7 8
;8 9
public 
Task $
DecreaseCartItemQuantity ,
(, -
int- 0
cartId1 7
)7 8
;8 9
public 
Task 
< 
OrderMenuDTO  
>  !
ViewOrderStatus" 1
(1 2
int2 5
orderId6 =
)= >
;> ?
public 
Task 
< 
List 
< 
OrderMenuDTO %
>% &
>& '
ViewOrderHistory( 8
(8 9
int9 <

customerId= G
)G H
;H I
public 
Task 
< 
Customer 
> 
GetCustomerDetails 0
(0 1
int1 4

customerId5 ?
)? @
;@ A
public 
Task 
< 
Customer 
> !
UpdateCustomerDetails 3
(3 4
Customer4 <
customer= E
)E F
;F G
public 
Task 
< 
List 
< 
City 
> 
> 
GetAllCities  ,
(, -
)- .
;. /
public 
Task 
< 
Order 
> #
CancelOrderFromCustomer 2
(2 3
int3 6
orderId7 >
)> ?
;? @
public 
Task 
< 
CustomerAddress #
># $
AddCustomerAddress% 7
(7 8
CustomerAddress8 G
customerAddressH W
)W X
;X Y
public 
Task 
< 
CustomerAddress #
># $!
UpdateCustomerAddress% :
(: ;
int; >
	addressId? H
,H I$
CustomerAddressUpdateDTOJ b
addressUpdateDtoc s
)s t
;t u
public   
Task   
<   
CustomerAddress   #
>  # $+
ViewCustomerAddressByCustomerId  % D
(  D E
int  E H

customerId  I S
)  S T
;  T U
public!! 
Task!! 
<!! 
CustomerReview!! "
>!!" #
AddCustomerReview!!$ 5
(!!5 6
CustomerReview!!6 D
customerReview!!E S
)!!S T
;!!T U
public"" 
Task"" 
<"" 
CustomerReview"" "
>""" #
ViewCustomerReview""$ 6
(""6 7
int""7 :
customerReviewId""; K
)""K L
;""L M
public## 
Task## 
<## 
CustomerReview## "
>##" #$
UpdateCustomerReviewText##$ <
(##< =#
CustomerReviewUpdateDTO##= T
reviewUpdateDTO##U d
)##d e
;##e f
public$$ 
Task$$ 
<$$ 
CustomerReview$$ "
>$$" # 
DeleteCustomerReview$$$ 8
($$8 9
int$$9 <
reviewId$$= E
)$$E F
;$$F G
public%% 
Task%% 
<%% 
List%% 
<%% 
Menu%% 
>%% 
>%% 

SearchMenu%%  *
(%%* +
int%%+ .
restaurantId%%/ ;
,%%; <
string%%= C
query%%D I
)%%I J
;%%J K
public&& 
Task&& 
<&& 
List&& 
<&& 
Menu&& 
>&& 
>&& "
FilterMenuByPriceRange&&  6
(&&6 7
int&&7 :
restaurantId&&; G
,&&G H
float&&I N
minPrice&&O W
,&&W X
float&&Y ^
maxPrice&&_ g
)&&g h
;&&h i
public'' 
Task'' 
<'' 
List'' 
<'' 
Menu'' 
>'' 
>'' 
FilterMenuByType''  0
(''0 1
int''1 4
restaurantId''5 A
,''A B
string''C I
type''J N
)''N O
;''O P
public(( 
Task(( 
<(( 
List(( 
<(( 
Menu(( 
>(( 
>(( 
FilterMenuByCuisine((  3
(((3 4
int((4 7
restaurantId((8 D
,((D E
string((F L
cuisine((M T
)((T U
;((U V
public)) 
Task)) 
<)) 
IActionResult)) !
>))! "!
GetCustomerByUsername))# 8
())8 9
string))9 ?
username))@ H
)))H I
;))I J
}** 
}++ �
ZC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Interfaces\IAdminServices.cs
	namespace 	
HotPotProject
 
. 

Interfaces "
{ 
public 

	interface 
IAdminServices #
{ 
public 
Task 
< 
LoginUserDTO  
>  !

LoginAdmin" ,
(, -
LoginUserDTO- 9
	loginUser: C
)C D
;D E
public		 
Task		 
<		 
LoginUserDTO		  
>		  !
RegisterAdmin		" /
(		/ 0
LoginUserDTO		0 <
registerUser		= I
)		I J
;		J K
} 
} �
aC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\UserNotFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class !
UserNotFoundException &
:' (
	Exception) 2
{ 
public !
UserNotFoundException $
($ %
)% &
{ 	
} 	
public

 
override

 
string

 
Message

 &
=>

' )
$str

* :
;

: ;
} 
} �
bC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\StateNotFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class "
StateNotFoundException '
:( ) 
ApplicationException* >
{ 
public "
StateNotFoundException %
(% &
)& '
{ 	
} 	
public

 "
StateNotFoundException

 %
(

% &
string

& ,
message

- 4
)

4 5
:

6 7
base

8 <
(

< =
message

= D
)

D E
{ 	
} 	
} 
} �
gC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\SpecialityNotFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class '
SpecialityNotFoundException ,
:, - 
ApplicationException. B
{ 
public '
SpecialityNotFoundException *
(* +
)+ ,
{ 	
} 	
public

 '
SpecialityNotFoundException

 *
(

* +
string

+ 1
message

2 9
)

9 :
:

; <
base

= A
(

A B
message

B I
)

I J
{ 	
} 	
} 
} �
cC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\ReviewNotFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class #
ReviewNotFoundException (
:) *
	Exception+ 4
{ 
public #
ReviewNotFoundException &
(& '
)' (
{ 	
} 	
public

 
override

 
string

 
Message

 &
=>

' )
$str

* ;
;

; <
} 
} �
lC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\RestaurantOwnerNotFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class ,
 RestaurantOwnerNotFoundException 1
:2 3 
ApplicationException4 H
{ 
public ,
 RestaurantOwnerNotFoundException /
(/ 0
)0 1
{ 	
} 	
public		 ,
 RestaurantOwnerNotFoundException		 /
(		/ 0
string		0 6
v		7 8
)		8 9
{

 	
} 	
public 
override 
string 
Message &
=>' )
$str* D
;D E
} 
} �
gC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\RestaurantNotFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class '
RestaurantNotFoundException ,
:- . 
ApplicationException/ C
{ 
public '
RestaurantNotFoundException *
(* +
)+ ,
{ 	
} 	
public		 '
RestaurantNotFoundException		 *
(		* +
string		+ 1
v		2 3
)		3 4
{

 	
} 	
public 
override 
string 
Message &
=>' )
$str* ?
;? @
} 
} �
eC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\PaymentsNotFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class %
PaymentsNotFoundException *
:+ , 
ApplicationException- A
{ 
public %
PaymentsNotFoundException (
(( )
)) *
{ 	
} 	
public

 
override

 
string

 
Message

 &
=>

' )
$str

* V
;

V W
} 
} �
bC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\PaymentFailedException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class "
PaymentFailedException '
:( ) 
ApplicationException* >
{ 
public "
PaymentFailedException %
(% &
)& '
{ 	
} 	
public

 
override

 
string

 
Message

 &
=>

' )
$str

* i
;

i j
} 
} �
cC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\OrdersNotFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class #
OrdersNotFoundException (
:) * 
ApplicationException+ ?
{ 
public #
OrdersNotFoundException &
(& '
)' (
{ 	
} 	
public		 #
OrdersNotFoundException		 &
(		& '
string		( .
v		/ 0
)		0 1
{

 	
} 	
public 
override 
string 
Message &
=>' )
$str* U
;U V
} 
} �
eC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\NoUsersAvailableException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class %
NoUsersAvailableException *
:+ , 
ApplicationException- A
{ 
public %
NoUsersAvailableException (
(( )
)) *
{ 	
} 	
public

 
override

 
string

 
Message

 &
=>

' )
$str

* W
;

W X
} 
} �
dC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\NoMenuAvailableException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class $
NoMenuAvailableException )
:* + 
ApplicationException, @
{ 
public $
NoMenuAvailableException '
(' (
)( )
{ 	
} 	
public		 $
NoMenuAvailableException		 '
(		' (
string		( .
v		/ 0
)		0 1
{

 	
} 	
public 
override 
string 
Message &
=>' )
$str* V
;V W
} 
} �
kC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\NoDeliveryPartnerFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class +
NoDeliveryPartnerFoundException 0
:1 2 
ApplicationException3 G
{ 
public +
NoDeliveryPartnerFoundException .
(. /
)/ 0
{ 	
} 	
public

 
override

 
string

 
Message

 &
=>

' )
$str

* E
;

E F
} 
} �
jC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\NoCustomerReviewFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class *
NoCustomerReviewFoundException /
:0 1 
ApplicationException2 F
{ 
public *
NoCustomerReviewFoundException -
(- .
). /
{0 1
}2 3
public 
override 
string 
Message &
=>' )
$str* <
;< =
} 
} �
kC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\NoCustomerAddressFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class +
NoCustomerAddressFoundException 0
:0 1
	Exception2 ;
{ 
public +
NoCustomerAddressFoundException .
(. /
)/ 0
{ 	
} 	
public

 +
NoCustomerAddressFoundException

 .
(

. /
string

/ 5
message

6 =
)

= >
:

? @
base

A E
(

E F
message

F M
)

M N
{ 	
} 	
} 
} �
`C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\InvalidUserException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class  
InvalidUserException %
:% & 
ApplicationException& :
{ 
public  
InvalidUserException #
(# $
)$ %
{ 	
} 	
public

 
override

 
string

 
Message

 &
=>

' )
$str

* H
;

H I
} 
} �
^C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\EmptyCartException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class 
EmptyCartException #
:$ % 
ApplicationException& :
{ 
public 
EmptyCartException !
(! "
)" #
{ 	
} 	
public

 
override

 
string

 
Message

 &
=>

' )
$str

* >
;

> ?
} 
} �
aC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Exceptions\CityNotFoundException.cs
	namespace 	
HotPotProject
 
. 

Exceptions "
{ 
public 

class !
CityNotFoundException &
:' ( 
ApplicationException) =
{ 
public !
CityNotFoundException $
($ %
)% &
{ 	
} 	
public

 
override

 
string

 
Message

 &
=>

' )
$str

* 9
;

9 :
} 
} �
fC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Controllers\WeatherForecastController.cs
	namespace 	
HotPotProject
 
. 
Controllers #
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private		 
static		 
readonly		 
string		  &
[		& '
]		' (
	Summaries		) 2
=		3 4
new		5 8
[		8 9
]		9 :
{

 	
$str 
, 
$str !
,! "
$str# +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= C
,C D
$strE L
,L M
$strN S
,S T
$strU a
,a b
$strc n
} 	
;	 

private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
( 
Name 
= 
$str ,
), -
]- .
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date 
= 
DateOnly 
.  
FromDateTime  ,
(, -
DateTime- 5
.5 6
Now6 9
.9 :
AddDays: A
(A B
indexB G
)G H
)H I
,I J
TemperatureC 
= 
Random %
.% &
Shared& ,
., -
Next- 1
(1 2
-2 3
$num3 5
,5 6
$num7 9
)9 :
,: ;
Summary 
= 
	Summaries #
[# $
Random$ *
.* +
Shared+ 1
.1 2
Next2 6
(6 7
	Summaries7 @
.@ A
LengthA G
)G H
]H I
} 
) 
. 
ToArray 
( 
) 
; 
} 	
}   
}!! ѻ
aC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Controllers\RestaurantController.cs
	namespace 	
HotPotProject
 
. 
Controllers #
{ 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class  
RestaurantController %
:& '
ControllerBase( 6
{ 
private 
readonly #
IRestaurantUserServices 0
	_services1 :
;: ;
private 
readonly 
ILogger  
<  ! 
RestaurantController! 5
>5 6
_logger7 >
;> ?
public  
RestaurantController #
(# $#
IRestaurantUserServices$ ;
services< D
,D E
ILoggerF M
<M N 
RestaurantControllerN b
>b c
loggerd j
)j k
{ 	
	_services 
= 
services  
;  !
_logger 
= 
logger 
; 
} 	
[&& 	
Route&&	 
(&& 
$str&& 
)&& 
]&& 
['' 	
HttpPost''	 
]'' 
public(( 
async(( 
Task(( 
<(( 
ActionResult(( &
<((& '
Menu((' +
>((+ ,
>((, -
AddMenuItem((. 9
(((9 :
Menu((: >
newItem((? F
)((F G
{)) 	
try** 
{++ 
var,, 
menu,, 
=,, 
await,,  
	_services,,! *
.,,* +
AddMenuItem,,+ 6
(,,6 7
newItem,,7 >
),,> ?
;,,? @
return-- 
menu-- 
;-- 
}.. 
catch// 
(// '
RestaurantNotFoundException// .
e/// 0
)//0 1
{00 
_logger11 
.11 
LogCritical11 #
(11# $
e11$ %
.11% &
Message11& -
)11- .
;11. /
return22 
Unauthorized22 #
(22# $
$str22$ =
)22= >
;22> ?
}33 
}44 	
[55 
	Authorize55 
(55 
Roles55 
=55 
$str55 2
)552 3
]553 4
[66 	
Route66	 
(66 
$str66 "
)66" #
]66# $
[77 	
HttpPut77	 
]77 
public88 
async88 
Task88 
<88 
ActionResult88 &
<88& '
Order88' ,
>88, -
>88- .
ChangeOrderStatus88/ @
(88@ A
int88A D
orderId88E L
,88L M
string88N T
	newStatus88U ^
)88^ _
{99 	
try:: 
{;; 
var<< 
order<< 
=<< 
await<< !
	_services<<" +
.<<+ ,
ChangeOrderStatus<<, =
(<<= >
orderId<<> E
,<<E F
	newStatus<<G P
)<<P Q
;<<Q R
return== 
order== 
;== 
}>> 
catch?? 
(?? #
OrdersNotFoundException?? *
e??+ ,
)??, -
{@@ 
_loggerAA 
.AA 
LogCriticalAA #
(AA# $
eAA$ %
.AA% &
MessageAA& -
)AA- .
;AA. /
returnBB 
UnauthorizedBB #
(BB# $
$strBB$ C
)BBC D
;BBD E
}CC 
}DD 	
[EE 
	AuthorizeEE 
(EE 
RolesEE 
=EE 
$strEE !
)EE! "
]EE" #
[FF 	
RouteFF	 
(FF 
$strFF 
)FF 
]FF  
[GG 	
HttpPostGG	 
]GG 
publicHH 
asyncHH 
TaskHH 
<HH 

RestaurantHH $
>HH$ %
AddRestaurantHH& 3
(HH3 4

RestaurantHH4 >

restaurantHH? I
)HHI J
{II 	

restaurantJJ 
=JJ 
awaitJJ 
	_servicesJJ (
.JJ( )
AddRestaurantJJ) 6
(JJ6 7

restaurantJJ7 A
)JJA B
;JJB C
returnKK 

restaurantKK 
;KK 
}LL 	
[NN 	
	AuthorizeNN	 
(NN 
RolesNN 
=NN 
$strNN 3
)NN3 4
]NN4 5
[OO 	
RouteOO	 
(OO 
$strOO 
)OO 
]OO 
[PP 	
HttpGetPP	 
]PP 
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
ActionResultQQ &
<QQ& '
ListQQ' +
<QQ+ ,
OrderQQ, 1
>QQ1 2
>QQ2 3
>QQ3 4
GetALlOrdersQQ5 A
(QQA B
)QQB C
{RR 	
trySS 
{TT 
varUU 
resultUU 
=UU 
awaitUU "
	_servicesUU# ,
.UU, -
GetAllOrdersUU- 9
(UU9 :
)UU: ;
;UU; <
returnVV 
resultVV 
;VV 
}WW 
catchXX 
(XX #
OrdersNotFoundExceptionXX *
eXX+ ,
)XX, -
{YY 
_loggerZZ 
.ZZ 
LogCriticalZZ #
(ZZ# $
eZZ$ %
.ZZ% &
MessageZZ& -
)ZZ- .
;ZZ. /
return[[ 
NotFound[[ 
([[  
$str[[  5
)[[5 6
;[[6 7
}\\ 
}]] 	
[__ 
	Authorize__ 
(__ 
Roles__ 
=__ 
$str__ ,
)__, -
]__- .
[`` 	
Route``	 
(`` 
$str`` )
)``) *
]``* +
[aa 	
HttpGetaa	 
]aa 
publicbb 
asyncbb 
Taskbb 
<bb 
ActionResultbb &
<bb& '
Listbb' +
<bb+ ,
Orderbb, 1
>bb1 2
>bb2 3
>bb3 4
GetALlOrdersbb5 A
(bbA B
intbbB E
restaurantIdbbF R
)bbR S
{cc 	
trydd 
{ee 
varff 
resultff 
=ff 
awaitff "
	_servicesff# ,
.ff, -
GetAllOrdersff- 9
(ff9 :
restaurantIdff: F
)ffF G
;ffG H
returngg 
resultgg 
;gg 
}hh 
catchii 
(ii #
OrdersNotFoundExceptionii *
eii+ ,
)ii, -
{jj 
_loggerkk 
.kk 
LogCriticalkk #
(kk# $
ekk$ %
.kk% &
Messagekk& -
)kk- .
;kk. /
returnll 
NotFoundll 
(ll  
$strll  5
)ll5 6
;ll6 7
}mm 
}nn 	
[pp 	
	Authorizepp	 
(pp 
Rolespp 
=pp 
$strpp 3
)pp3 4
]pp4 5
[qq 	
Routeqq	 
(qq 
$strqq 
)qq  
]qq  !
[rr 	
HttpGetrr	 
]rr 
publicss 
asyncss 
Taskss 
<ss 
ActionResultss &
<ss& '
Listss' +
<ss+ ,
Paymentss, 3
>ss3 4
>ss4 5
>ss5 6$
GetPaymentsByRestaurantsss7 O
(ssO P
)ssP Q
{tt 	
tryuu 
{vv 
varww 
paymentsww 
=ww 
awaitww $
	_servicesww% .
.ww. /
GetAllPaymentsww/ =
(ww= >
)ww> ?
;ww? @
returnxx 
paymentsxx 
;xx  
}yy 
catchzz 
(zz %
PaymentsNotFoundExceptionzz ,
ezz- .
)zz. /
{{{ 
_logger|| 
.|| 
LogCritical|| #
(||# $
e||$ %
.||% &
Message||& -
)||- .
;||. /
return}} 
NotFound}} 
(}}  
$str}}  7
)}}7 8
;}}8 9
}~~ 
} 	
[
�� 
	Authorize
�� 
(
�� 
Roles
�� 
=
�� 
$str
�� 2
)
��2 3
]
��3 4
[
�� 	
Route
��	 
(
�� 
$str
�� ,
)
��, -
]
��- .
[
�� 	
HttpGet
��	 
]
�� 
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
<
��& '
List
��' +
<
��+ ,
Payment
��, 3
>
��3 4
>
��4 5
>
��5 6&
GetPaymentsByRestaurants
��7 O
(
��O P
int
��P S
restaurantId
��T `
)
��` a
{
�� 	
try
�� 
{
�� 
var
�� 
payments
�� 
=
�� 
await
�� $
	_services
��% .
.
��. /
GetAllPayments
��/ =
(
��= >
restaurantId
��> J
)
��J K
;
��K L
return
�� 
payments
�� 
;
��  
}
�� 
catch
�� 
(
�� '
PaymentsNotFoundException
�� ,
e
��- .
)
��. /
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
NotFound
�� 
(
��  
$str
��  7
)
��7 8
;
��8 9
}
�� 
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� (
)
��( )
]
��) *
[
�� 	
HttpPost
��	 
]
�� 
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
<
��& '"
RestaurantSpeciality
��' ;
>
��; <
>
��< =%
AddRestaurantSpeciality
��> U
(
��U V"
RestaurantSpeciality
��V j"
restaurantspeciality
��k 
)�� �
{
�� 	
try
�� 
{
�� 
var
�� 
addedSpeciality
�� #
=
��$ %
await
��& +
	_services
��, 5
.
��5 6%
AddRestaurantSpeciality
��6 M
(
��M N"
restaurantspeciality
��N b
)
��b c
;
��c d
return
�� 
addedSpeciality
�� &
;
��& '
}
�� 
catch
�� 
(
�� )
RestaurantNotFoundException
�� .
)
��. /
{
�� 
return
�� 
NotFound
�� 
(
��  
$str
��  7
)
��7 8
;
��8 9
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' Y
)
��Y Z
;
��Z [
}
�� 
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
��  
)
��  !
]
��! "
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
GetSpecialities
��) 8
(
��8 9
)
��9 :
{
�� 	
try
�� 
{
�� 
var
�� 
specialities
��  
=
��! "
await
��# (
	_services
��) 2
.
��2 3 
GetAllSpecialities
��3 E
(
��E F
)
��F G
;
��G H
return
�� 
Ok
�� 
(
�� 
specialities
�� &
)
��& '
;
��' (
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 

BadRequest
�� !
(
��! "
e
��" #
.
��# $
Message
��$ +
)
��+ ,
;
��, -
}
�� 
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Login
��) .
(
��. /
LoginUserDTO
��/ ;
	loginUser
��< E
)
��E F
{
�� 	
try
�� 
{
�� 
	loginUser
�� 
=
�� 
await
�� !
	_services
��" +
.
��+ ,
LogInRestaurant
��, ;
(
��; <
	loginUser
��< E
)
��E F
;
��F G
return
�� 
Ok
�� 
(
�� 
	loginUser
�� #
)
��# $
;
��$ %
}
�� 
catch
�� 
(
�� "
InvalidUserException
�� '
e
��( )
)
��) *
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
Unauthorized
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
}
�� 
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� (
)
��( )
]
��) *
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
Register
��) 1
(
��1 2#
RegisterRestaurantDTO
��2 G 
registerRestaurant
��H Z
)
��Z [
{
�� 	
try
�� 
{
�� 
var
�� "
registeredRestaurant
�� (
=
��) *
await
��+ 0
	_services
��1 :
.
��: ; 
RegisterRestaurant
��; M
(
��M N 
registerRestaurant
��N `
)
��` a
;
��a b
return
�� 
Ok
�� 
(
�� "
registeredRestaurant
�� .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 

BadRequest
�� !
(
��! "
e
��" #
.
��# $
Message
��$ +
)
��+ ,
;
��, -
}
�� 
}
�� 	
[
��	 

Route
��
 
(
�� 
$str
�� 
)
��  
]
��  !
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
GetAllReviews
��) 6
(
��6 7
)
��7 8
{
�� 	
try
�� 
{
�� 
var
�� 
reviews
�� 
=
�� 
await
�� #
	_services
��$ -
.
��- . 
GetCustomerReviews
��. @
(
��@ A
)
��A B
;
��B C
return
�� 
Ok
�� 
(
�� 
reviews
�� !
)
��! "
;
��" #
}
�� 
catch
�� 
(
�� ,
NoCustomerReviewFoundException
�� 1
e
��2 3
)
��3 4
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
NotFound
�� 
(
��  
e
��  !
.
��! "
Message
��" )
)
��) *
;
��* +
}
�� 
}
�� 	
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
$str
�� 3
)
��3 4
]
��4 5
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
��  
]
��  !
[
�� 	

HttpDelete
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
DeleteMenuItem
��) 7
(
��7 8
int
��8 ;
menuId
��< B
)
��B C
{
�� 	
try
�� 
{
�� 
var
�� 
menuItem
�� 
=
�� 
await
�� $
	_services
��% .
.
��. /
DeleteMenuItem
��/ =
(
��= >
menuId
��> D
)
��D E
;
��E F
return
�� 
Ok
�� 
(
�� 
menuItem
�� "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� &
NoMenuAvailableException
�� +
e
��, -
)
��- .
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 

BadRequest
�� !
(
��! "
e
��" #
.
��# $
Message
��$ +
)
��+ ,
;
��, -
}
�� 
}
�� 	
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
$str
�� "
)
��" #
]
��# $
[
�� 	
HttpGet
��	 
]
�� 
[
�� 	
Route
��	 
(
�� 
$str
�� "
)
��" #
]
��# $
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
List
��' +
<
��+ ,

Restaurant
��, 6
>
��6 7
>
��7 8
>
��8 9
GetAllRestaurants
��: K
(
��K L
)
��L M
{
�� 	
try
�� 
{
�� 
var
�� 
restaurants
�� 
=
��  !
await
��" '
	_services
��( 1
.
��1 2
GetAllRestaurants
��2 C
(
��C D
)
��D E
;
��E F
return
�� 
Ok
�� 
(
�� 
restaurants
�� %
)
��% &
;
��& '
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 

BadRequest
�� !
(
��! "
e
��" #
.
��# $
Message
��$ +
)
��+ ,
;
��, -
}
�� 
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
GetAllMenus
��) 4
(
��4 5
)
��5 6
{
�� 	
try
�� 
{
�� 
var
�� 
menus
�� 
=
�� 
await
�� !
	_services
��" +
.
��+ ,
GetAllMenus
��, 7
(
��7 8
)
��8 9
;
��9 :
return
�� 
Ok
�� 
(
�� 
menus
�� 
)
��  
;
��  !
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 

BadRequest
�� !
(
��! "
e
��" #
.
��# $
Message
��$ +
)
��+ ,
;
��, -
}
�� 
}
�� 	
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
$str
�� "
)
��" #
]
��# $
[
�� 	
Route
��	 
(
�� 
$str
�� !
)
��! "
]
��" #
[
�� 	

HttpDelete
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
DeleteRestaurant
��) 9
(
��9 :
int
��: =
restaurantId
��> J
)
��J K
{
�� 	
try
�� 
{
�� 
var
�� 
deletedRestaurant
�� %
=
��& '
await
��( -
	_services
��. 7
.
��7 8
DeleteRestaurant
��8 H
(
��H I
restaurantId
��I U
)
��U V
;
��V W
return
�� 
Ok
�� 
(
�� 
deletedRestaurant
�� +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� )
RestaurantNotFoundException
�� .
e
��/ 0
)
��0 1
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
NotFound
�� 
(
��  
e
��  !
.
��! "
Message
��" )
)
��) *
;
��* +
}
�� 
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� -
)
��- .
]
��. /
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (*
GetRestaurantOwnerByUsername
��) E
(
��E F
string
��F L
username
��M U
)
��U V
{
�� 	
try
�� 
{
�� 
var
�� 
restaurantOwner
�� #
=
��$ %
await
��& +
	_services
��, 5
.
��5 6*
GetRestaurantOwnerByUsername
��6 R
(
��R S
username
��S [
)
��[ \
;
��\ ]
return
�� 
Ok
�� 
(
�� 
restaurantOwner
�� )
)
��) *
;
��* +
}
�� 
catch
�� 
(
�� .
 RestaurantOwnerNotFoundException
�� 3
e
��4 5
)
��5 6
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
NotFound
�� 
(
��  
e
��  !
.
��! "
Message
��" )
)
��) *
;
��* +
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' Y
)
��Y Z
;
��Z [
}
�� 
}
�� 	
}
�� 
}�� �B
fC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Controllers\DeliveryPartnerController.cs
	namespace 	
HotPotProject
 
. 
Controllers #
{ 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class %
DeliveryPartnerController *
:+ ,
ControllerBase- ;
{ 
private 
readonly $
IDeliveryPartnerServices 1
	_services2 ;
;; <
private 
readonly 
ILogger  
<  !%
DeliveryPartnerController! :
>: ;
_logger< C
;C D
public %
DeliveryPartnerController (
(( )$
IDeliveryPartnerServices) A
servicesB J
,J K
ILoggerL S
<S T%
DeliveryPartnerControllerT m
>m n
loggero u
)u v
{ 	
	_services 
= 
services  
;  !
_logger 
= 
logger 
; 
} 	
[ 	
Route	 
( 
$str 
) 
] 
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Login) .
(. /
LoginUserDTO/ ;
	loginUser< E
)E F
{ 	
try   
{!! 
	loginUser"" 
="" 
await"" !
	_services""" +
.""+ , 
LoginDeliveryPartner"", @
(""@ A
	loginUser""A J
)""J K
;""K L
return## 
Ok## 
(## 
	loginUser## #
)### $
;##$ %
}$$ 
catch%% 
(%%  
InvalidUserException%% '
e%%( )
)%%) *
{&& 
_logger'' 
.'' 
LogCritical'' #
(''# $
e''$ %
.''% &
Message''& -
)''- .
;''. /
return(( 
Unauthorized(( #
(((# $
e(($ %
.((% &
Message((& -
)((- .
;((. /
})) 
}** 	
[,, 	
Route,,	 
(,, 
$str,, 
),, 
],, 
[-- 	
HttpPost--	 
]-- 
public.. 
async.. 
Task.. 
<.. 
IActionResult.. '
>..' (
Register..) 1
(..1 2&
RegisterDeliveryPartnerDTO..2 L#
registerDeliveryPartner..M d
)..d e
{// 	
try00 
{11 
var22 
deliveryPartner22 #
=22$ %
await22& +
	_services22, 5
.225 6#
RegisterDeliveryPartner226 M
(22M N#
registerDeliveryPartner22N e
)22e f
;22f g
return33 
Ok33 
(33 
deliveryPartner33 )
)33) *
;33* +
}44 
catch55 
(55 
	Exception55 
e55 
)55 
{66 
_logger77 
.77 
LogCritical77 #
(77# $
e77$ %
.77% &
Message77& -
)77- .
;77. /
return88 

BadRequest88 !
(88! "
e88" #
.88# $
Message88$ +
)88+ ,
;88, -
}99 
}:: 	
[== 	
Route==	 
(== 
$str== 
)== 
]== 
[>> 	
HttpGet>>	 
]>> 
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (

GetDetails??) 3
(??3 4
int??4 7
	partnerId??8 A
)??A B
{@@ 	
tryAA 
{BB 
varCC 
deliveryPartnerCC #
=CC$ %
awaitCC& +
	_servicesCC, 5
.CC5 6%
GetDeliveryPartnerDetailsCC6 O
(CCO P
	partnerIdCCP Y
)CCY Z
;CCZ [
returnDD 
OkDD 
(DD 
deliveryPartnerDD )
)DD) *
;DD* +
}EE 
catchFF 
(FF +
NoDeliveryPartnerFoundExceptionFF 2
eFF3 4
)FF4 5
{GG 
_loggerHH 
.HH 
LogCriticalHH #
(HH# $
eHH$ %
.HH% &
MessageHH& -
)HH- .
;HH. /
returnII 
NotFoundII 
(II  
eII  !
.II! "
MessageII" )
)II) *
;II* +
}JJ 
}KK 	
[NN 	
RouteNN	 
(NN 
$strNN 
)NN 
]NN  
[OO 	
HttpPutOO	 
]OO 
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (
UpdateDetailsPP) 6
(PP6 7
DeliveryPartnerPP7 F
deliveryPartnerPPG V
)PPV W
{QQ 	
tryRR 
{SS 
deliveryPartnerTT 
=TT  !
awaitTT" '
	_servicesTT( 1
.TT1 2(
UpdateDeliveryPartnerDetailsTT2 N
(TTN O
deliveryPartnerTTO ^
)TT^ _
;TT_ `
returnUU 
OkUU 
(UU 
deliveryPartnerUU )
)UU) *
;UU* +
}VV 
catchWW 
(WW 
	ExceptionWW 
eWW 
)WW 
{XX 
_loggerYY 
.YY 
LogCriticalYY #
(YY# $
eYY$ %
.YY% &
MessageYY& -
)YY- .
;YY. /
returnZZ 

BadRequestZZ !
(ZZ! "
eZZ" #
.ZZ# $
MessageZZ$ +
)ZZ+ ,
;ZZ, -
}[[ 
}\\ 	
[__ 	
Route__	 
(__ 
$str__ "
)__" #
]__# $
[`` 	
HttpPut``	 
]`` 
publicaa 
asyncaa 
Taskaa 
<aa 
IActionResultaa '
>aa' (
ChangeOrderStatusaa) :
(aa: ;
intaa; >
orderIdaa? F
)aaF G
{bb 	
trycc 
{dd 
varee 
orderee 
=ee 
awaitee !
	_servicesee" +
.ee+ ,
ChangeOrderStatusee, =
(ee= >
orderIdee> E
)eeE F
;eeF G
returnff 
Okff 
(ff 
orderff 
)ff  
;ff  !
}gg 
catchhh 
(hh 
	Exceptionhh 
ehh 
)hh 
{ii 
_loggerjj 
.jj 
LogCriticaljj #
(jj# $
ejj$ %
.jj% &
Messagejj& -
)jj- .
;jj. /
returnkk 

BadRequestkk !
(kk! "
ekk" #
.kk# $
Messagekk$ +
)kk+ ,
;kk, -
}ll 
}mm 	
[pp 	
Routepp	 
(pp 
$strpp 
)pp 
]pp 
[qq 	
HttpGetqq	 
]qq 
publicrr 
asyncrr 
Taskrr 
<rr 
IActionResultrr '
>rr' (
GetAllOrdersrr) 5
(rr5 6
intrr6 9
	partnerIdrr: C
)rrC D
{ss 	
trytt 
{uu 
varvv 
ordersvv 
=vv 
awaitvv "
	_servicesvv# ,
.vv, -
GetAllOrdersvv- 9
(vv9 :
	partnerIdvv: C
)vvC D
;vvD E
returnww 
Okww 
(ww 
ordersww  
)ww  !
;ww! "
}xx 
catchyy 
(yy #
OrdersNotFoundExceptionyy *
eyy+ ,
)yy, -
{zz 
_logger{{ 
.{{ 
LogCritical{{ #
({{# $
e{{$ %
.{{% &
Message{{& -
){{- .
;{{. /
return|| 

BadRequest|| !
(||! "
e||" #
.||# $
Message||$ +
)||+ ,
;||, -
}}} 
}~~ 	
} 
}�� ��
_C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Controllers\CustomerController.cs
	namespace 	
HotPotProject
 
. 
Controllers #
{ 
[ 

EnableCors 
( 
$str 
) 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
CustomerController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
ICustomerServices *
	_services+ 4
;4 5
private 
readonly 
ILogger  
<  !
CustomerController! 3
>3 4
_logger5 <
;< =
public 
CustomerController !
(! "
ICustomerServices" 3
services4 <
,< =
ILogger> E
<E F
CustomerControllerF X
>X Y
loggerZ `
)` a
{ 	
	_services 
= 
services  
;  !
_logger 
= 
logger 
; 
} 	
[ 	
Route	 
( 
$str 
) 
] 
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
LoginUserDTO' 3
>3 4
>4 5
CustomerLogin6 C
(C D
LoginUserDTOD P
	loginUserQ Z
)Z [
{ 	
try 
{   
	loginUser!! 
=!! 
await!! !
	_services!!" +
.!!+ ,
LogIn!!, 1
(!!1 2
	loginUser!!2 ;
)!!; <
;!!< =
return"" 
	loginUser""  
;""  !
}## 
catch$$ 
($$  
InvalidUserException$$ '
e$$( )
)$$) *
{%% 
_logger&& 
.&& 
LogCritical&& #
(&&# $
e&&$ %
.&&% &
Message&&& -
)&&- .
;&&. /
return'' 
Unauthorized'' #
(''# $
$str''$ B
)''B C
;''C D
}(( 
})) 	
[++ 	
Route++	 
(++ 
$str++ 
)++ 
]++ 
[,, 	
HttpPost,,	 
],, 
public-- 
async-- 
Task-- 
<-- 
LoginUserDTO-- &
>--& ' 
CustomerRegistration--( <
(--< =
RegisterCustomerDTO--= P
registerCustomer--Q a
)--a b
{.. 	
var// 
result// 
=// 
await// 
	_services// (
.//( )
RegisterCustomer//) 9
(//9 :
registerCustomer//: J
)//J K
;//K L
return00 
result00 
;00 
}11 	
[33 	
	Authorize33	 
(33 
Roles33 
=33 
$str33 $
)33$ %
]33% &
[55 	
Route55	 
(55 
$str55 %
)55% &
]55& '
[66 	
HttpGet66	 
]66 
public77 
async77 
Task77 
<77 
ActionResult77 &
<77& '
List77' +
<77+ ,

Restaurant77, 6
>776 7
>777 8
>778 9 
GetRestaurantsByCity77: N
(77N O
string77O U
city77V Z
)77Z [
{88 	
try99 
{:: 
var;; 
result;; 
=;; 
await;; "
	_services;;# ,
.;;, - 
GetRestaurantsByCity;;- A
(;;A B
city;;B F
);;F G
;;;G H
return<< 
result<< 
;<< 
}== 
catch>> 
(>> !
CityNotFoundException>> (
e>>) *
)>>* +
{?? 
_logger@@ 
.@@ 
LogCritical@@ #
(@@# $
e@@$ %
.@@% &
Message@@& -
)@@- .
;@@. /
returnAA 
NotFoundAA 
(AA  
eAA  !
.AA! "
MessageAA" )
)AA) *
;AA* +
}BB 
catchCC 
(CC '
RestaurantNotFoundExceptionCC .
eCC/ 0
)CC0 1
{DD 
_loggerEE 
.EE 
LogCriticalEE #
(EE# $
eEE$ %
.EE% &
MessageEE& -
)EE- .
;EE. /
returnFF 
NotFoundFF 
(FF  
eFF  !
.FF! "
MessageFF" )
)FF) *
;FF* +
}GG 
}HH 	
[II 	
RouteII	 
(II 
$strII $
)II$ %
]II% &
[JJ 	
HttpGetJJ	 
]JJ 
publicKK 
asyncKK 
TaskKK 
<KK 
ActionResultKK &
<KK& '

RestaurantKK' 1
>KK1 2
>KK2 3
GetRestaurantByNameKK4 G
(KKG H
stringKKH N
nameKKO S
)KKS T
{LL 	
tryMM 
{NN 
varOO 

restaurantOO 
=OO  
awaitOO! &
	_servicesOO' 0
.OO0 1
GetRestaurantByNameOO1 D
(OOD E
nameOOE I
)OOI J
;OOJ K
returnPP 

restaurantPP !
;PP! "
}QQ 
catchRR 
(RR '
RestaurantNotFoundExceptionRR .
eRR/ 0
)RR0 1
{SS 
_loggerTT 
.TT 
LogCriticalTT #
(TT# $
eTT$ %
.TT% &
MessageTT& -
)TT- .
;TT. /
returnUU 
NotFoundUU 
(UU  
$strUU  N
)UUN O
;UUO P
}VV 
}WW 	
[YY 	
	AuthorizeYY	 
(YY 
RolesYY 
=YY 
$strYY -
)YY- .
]YY. /
[ZZ 	
RouteZZ	 
(ZZ 
$strZZ $
)ZZ$ %
]ZZ% &
[[[ 	
HttpGet[[	 
][[ 
public\\ 
async\\ 
Task\\ 
<\\ 
ActionResult\\ &
<\\& '
List\\' +
<\\+ ,
Menu\\, 0
>\\0 1
>\\1 2
>\\2 3
GetMenuByRestaurant\\4 G
(\\G H
int\\H K
restaurantId\\L X
)\\X Y
{]] 	
try^^ 
{__ 
var`` 
result`` 
=`` 
await`` "
	_services``# ,
.``, -
GetMenuByRestaurant``- @
(``@ A
restaurantId``A M
)``M N
;``N O
returnaa 
resultaa 
;aa 
}bb 
catchcc 
(cc $
NoMenuAvailableExceptioncc +
ecc, -
)cc- .
{dd 
_loggeree 
.ee 
LogCriticalee #
(ee# $
eee$ %
.ee% &
Messageee& -
)ee- .
;ee. /
returnff 
NotFoundff 
(ff  
$strff  I
)ffI J
;ffJ K
}gg 
}hh 	
[kk 	
Routekk	 
(kk 
$strkk 
)kk 
]kk 
[ll 	
HttpPostll	 
]ll 
publicmm 
asyncmm 
Taskmm 
<mm 
intmm 
>mm 
	AddToCartmm (
(mm( )
intmm) ,
userIdmm- 3
,mm3 4
intmm5 8

menuItemIdmm9 C
)mmC D
{nn 	
varoo 
cartoo 
=oo 
awaitoo 
	_servicesoo &
.oo& '
	AddToCartoo' 0
(oo0 1
userIdoo1 7
,oo7 8

menuItemIdoo9 C
)ooC D
;ooD E
returnpp 
cartpp 
;pp 
}qq 	
[uu 	
Routeuu	 
(uu 
$struu 
)uu 
]uu 
[vv 	
HttpGetvv	 
]vv 
publicww 
asyncww 
Taskww 
<ww 
ActionResultww &
<ww& '
Listww' +
<ww+ ,
CartMenuDTOww, 7
>ww7 8
>ww8 9
>ww9 :
GetCartsww; C
(wwC D
intwwD G
userIdwwH N
)wwN O
{xx 	
tryyy 
{zz 
var{{ 
carts{{ 
={{ 
await{{ !
	_services{{" +
.{{+ ,
GetCarts{{, 4
({{4 5
userId{{5 ;
){{; <
;{{< =
return|| 
carts|| 
;|| 
}}} 
catch~~ 
(~~ 
EmptyCartException~~ %
e~~& '
)~~' (
{ 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
NotFound
�� 
(
��  
$str
��  /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� )
)
��) *
]
��* +
[
�� 	
HttpPut
��	 
]
�� 
public
�� 
async
�� 
Task
�� &
IncreaseCartItemQuantity
�� 2
(
��2 3
int
��3 6
cartId
��7 =
)
��= >
{
�� 	
await
�� 
	_services
�� 
.
�� &
IncreaseCartItemQuantity
�� 4
(
��4 5
cartId
��5 ;
)
��; <
;
��< =
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� )
)
��) *
]
��* +
[
�� 	
HttpPut
��	 
]
�� 
public
�� 
async
�� 
Task
�� &
DecreaseCartItemQuantity
�� 2
(
��2 3
int
��3 6
cartId
��7 =
)
��= >
{
�� 	
await
�� 
	_services
�� 
.
�� &
DecreaseCartItemQuantity
�� 4
(
��4 5
cartId
��5 ;
)
��; <
;
��< =
}
�� 	
[
�� 
	Authorize
�� 
(
�� 
Roles
�� 
=
�� 
$str
�� $
)
��$ %
]
��% &
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
��  
]
��  !
[
�� 	

HttpDelete
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
DeleteCartItem
��) 7
(
��7 8
int
��8 ;
cartId
��< B
)
��B C
{
�� 	
await
�� 
	_services
�� 
.
�� 
DeleteCartItem
�� *
(
��* +
cartId
��+ 1
)
��1 2
;
��2 3
return
�� 
Ok
�� 
(
�� 
$str
�� 2
)
��2 3
;
��3 4
}
�� 	
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
$str
�� %
)
��% &
]
��& '
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
HttpPut
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
	EmptyCart
�� #
(
��# $
int
��$ '

customerId
��( 2
)
��2 3
{
�� 	
await
�� 
	_services
�� 
.
�� 
	EmptyCart
�� %
(
��% &

customerId
��& 0
)
��0 1
;
��1 2
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� !
)
��! "
]
��" #
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
Task
�� 
<
�� 
OrderMenuDTO
��  
>
��  !
PlaceOrderForOne
��" 2
(
��2 3
int
��3 6
cartId
��7 =
,
��= >
string
��? E
paymentMode
��F Q
)
��Q R
{
�� 	
var
�� 
order
�� 
=
�� 
	_services
�� !
.
��! "
PlaceOrderForOne
��" 2
(
��2 3
cartId
��3 9
,
��9 :
paymentMode
��; F
)
��F G
;
��G H
return
�� 
order
�� 
;
�� 
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� !
)
��! "
]
��" #
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
Task
�� 
<
�� 
OrderMenuDTO
��  
>
��  !
PlaceOrderForAll
��" 2
(
��2 3
int
��3 6

customerId
��7 A
,
��A B
string
��C I
paymentMode
��J U
)
��U V
{
�� 	
var
�� 
order
�� 
=
�� 
	_services
�� !
.
��! "

PlaceOrder
��" ,
(
��, -

customerId
��- 7
,
��7 8
paymentMode
��9 D
)
��D E
;
��E F
return
�� 
order
�� 
;
�� 
}
�� 	
[
�� 
	Authorize
�� 
(
�� 
Roles
�� 
=
�� 
$str
�� #
)
��# $
]
��$ %
[
�� 	
Route
��	 
(
�� 
$str
��  
)
��  !
]
��! "
[
�� 	
HttpGet
��	 
]
�� 
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
<
��& '
OrderMenuDTO
��' 3
>
��3 4
>
��4 5
ViewOrderStatus
��6 E
(
��E F
int
��F I
orderId
��J Q
)
��Q R
{
�� 	
try
�� 
{
�� 
var
�� 
orderStatus
�� 
=
��  !
await
��" '
	_services
��( 1
.
��1 2
ViewOrderStatus
��2 A
(
��A B
orderId
��B I
)
��I J
;
��J K
return
�� 
orderStatus
�� "
;
��" #
}
�� 
catch
�� 
(
�� %
OrdersNotFoundException
�� *
e
��+ ,
)
��, -
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
NotFound
�� 
(
��  
e
��  !
.
��! "
Message
��" )
)
��) *
;
��* +
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
(
�� 
$str
�� .
)
��. /
]
��/ 0
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
��& ')
ViewOrderHistoryForCustomer
��( C
(
��C D
int
��D G

customerId
��H R
)
��R S
{
�� 	
try
�� 
{
�� 
var
�� 
orderHistory
��  
=
��! "
await
��# (
	_services
��) 2
.
��2 3
ViewOrderHistory
��3 C
(
��C D

customerId
��D N
)
��N O
;
��O P
return
�� 
Ok
�� 
(
�� 
orderHistory
�� &
)
��& '
;
��' (
}
�� 
catch
�� 
(
�� %
OrdersNotFoundException
�� *
e
��+ ,
)
��, -
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
NotFound
�� 
(
��  
e
��  !
.
��! "
Message
��" )
)
��) *
;
��* +
}
�� 
}
�� 	
[
�� 
	Authorize
�� 
(
�� 
Roles
�� 
=
�� 
$str
�� $
)
��$ %
]
��% &
[
�� 	
Route
��	 
(
�� 
$str
�� #
)
��# $
]
��$ %
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' ( 
GetCustomerDetails
��) ;
(
��; <
int
��< ?

customerId
��@ J
)
��J K
{
�� 	
try
�� 
{
�� 
var
�� 
customer
�� 
=
�� 
await
�� $
	_services
��% .
.
��. / 
GetCustomerDetails
��/ A
(
��A B

customerId
��B L
)
��L M
;
��M N
return
�� 
Ok
�� 
(
�� 
customer
�� "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� '
NoUsersAvailableException
�� ,
e
��- .
)
��. /
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
NotFound
�� 
(
��  
e
��  !
.
��! "
Message
��" )
)
��) *
;
��* +
}
�� 
}
�� 	
[
�� 
	Authorize
�� 
(
�� 
Roles
�� 
=
�� 
$str
�� $
)
��$ %
]
��% &
[
�� 	
Route
��	 
(
�� 
$str
�� &
)
��& '
]
��' (
[
�� 	
HttpPut
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (#
UpdateCustomerDetails
��) >
(
��> ?
Customer
��? G
customer
��H P
)
��P Q
{
�� 	
try
�� 
{
�� 
var
�� 

myCustomer
�� 
=
��  
await
��! &
	_services
��' 0
.
��0 1#
UpdateCustomerDetails
��1 F
(
��F G
customer
��G O
)
��O P
;
��P Q
return
�� 
Ok
�� 
(
�� 

myCustomer
�� $
)
��$ %
;
��% &
}
�� 
catch
�� 
(
�� '
NoUsersAvailableException
�� ,
e
��- .
)
��. /
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
NotFound
�� 
(
��  
e
��  !
.
��! "
Message
��" )
)
��) *
;
��* +
}
�� 
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
HttpGet
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
GetAllCities
��) 5
(
��5 6
)
��6 7
{
�� 	
try
�� 
{
�� 
var
�� 
cities
�� 
=
�� 
await
�� "
	_services
��# ,
.
��, -
GetAllCities
��- 9
(
��9 :
)
��: ;
;
��; <
return
�� 
Ok
�� 
(
�� 
cities
��  
)
��  !
;
��! "
}
�� 
catch
�� 
(
�� #
CityNotFoundException
�� (
e
��) *
)
��* +
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
NotFound
�� 
(
��  
e
��  !
.
��! "
Message
��" )
)
��) *
;
��* +
}
�� 
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� (
)
��( )
]
��) *
[
�� 	
HttpPut
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (%
CancelOrderFromCustomer
��) @
(
��@ A
int
��A D
orderId
��E L
)
��L M
{
�� 	
try
�� 
{
�� 
var
�� 
order
�� 
=
�� 
await
�� !
	_services
��" +
.
��+ ,%
CancelOrderFromCustomer
��, C
(
��C D
orderId
��D K
)
��K L
;
��L M
return
�� 
Ok
�� 
(
�� 
order
�� 
)
��  
;
��  !
}
�� 
catch
�� 
(
�� %
OrdersNotFoundException
�� *
e
��+ ,
)
��, -
{
�� 
_logger
�� 
.
�� 
LogCritical
�� #
(
��# $
e
��$ %
.
��% &
Message
��& -
)
��- .
;
��. /
return
�� 
NotFound
�� 
(
��  
e
��  !
.
��! "
Message
��" )
)
��) *
;
��* +
}
�� 
}
�� 	
[
��	 

	Authorize
��
 
(
�� 
Roles
�� 
=
�� 
$str
�� &
)
��& '
]
��' (
[
�� 	
HttpPost
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' ( 
AddCustomerAddress
��) ;
(
��; <
CustomerAddress
��< K
customerAddress
��L [
)
��[ \
{
�� 	
try
�� 
{
�� 
var
�� 
addedAddress
��  
=
��! "
await
��# (
	_services
��) 2
.
��2 3 
AddCustomerAddress
��3 E
(
��E F
customerAddress
��F U
)
��U V
;
��V W
return
�� 
Ok
�� 
(
�� 
addedAddress
�� &
)
��& '
;
��' (
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# B
{
��B C
ex
��C E
.
��E F
Message
��F M
}
��M N
"
��N O
)
��O P
;
��P Q
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
ex
��' )
.
��) *
Message
��* 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
$str
�� %
)
��% &
]
��& '
[
�� 	
HttpPut
��	 
(
�� 
$str
�� &
)
��& '
]
��' (
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (#
UpdateCustomerAddress
��) >
(
��> ?
int
��? B
	addressId
��C L
,
��L M&
CustomerAddressUpdateDTO
��N f
addressUpdateDto
��g w
)
��w x
{
�� 	
try
�� 
{
�� 
var
�� 
updatedAddress
�� "
=
��# $
await
��% *
	_services
��+ 4
.
��4 5#
UpdateCustomerAddress
��5 J
(
��J K
	addressId
��K T
,
��T U
addressUpdateDto
��V f
)
��f g
;
��g h
return
�� 
Ok
�� 
(
�� 
updatedAddress
�� (
)
��( )
;
��) *
}
�� 
catch
�� 
(
�� -
NoCustomerAddressFoundException
�� 2
ex
��3 5
)
��5 6
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# D
{
��D E
ex
��E G
.
��G H
Message
��H O
}
��O P
"
��P Q
)
��Q R
;
��R S
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
(
�� 
$str
�� '
)
��' (
]
��( )
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (-
ViewCustomerAddressByCustomerId
��) H
(
��H I
int
��I L

customerId
��M W
)
��W X
{
�� 	
try
�� 
{
�� 
var
�� 
customerAddress
�� #
=
��$ %
await
��& +
	_services
��, 5
.
��5 6-
ViewCustomerAddressByCustomerId
��6 U
(
��U V

customerId
��V `
)
��` a
;
��a b
return
�� 
Ok
�� 
(
�� 
customerAddress
�� )
)
��) *
;
��* +
}
�� 
catch
�� 
(
�� -
NoCustomerAddressFoundException
�� 2
ex
��3 5
)
��5 6
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
.
��# $
Message
��$ +
)
��+ ,
;
��, -
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# \
{
��\ ]

customerId
��] g
}
��g h
$str
��h j
{
��j k
ex
��k m
.
��m n
Message
��n u
}
��u v
"
��v w
)
��w x
;
��x y
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
$str
�� %
)
��% &
]
��& '
[
�� 	
HttpPost
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
AddCustomerReview
��) :
(
��: ;
CustomerReview
��; I
customerReview
��J X
)
��X Y
{
�� 	
try
�� 
{
�� 
var
�� 
addedReview
�� 
=
��  !
await
��" '
	_services
��( 1
.
��1 2
AddCustomerReview
��2 C
(
��C D
customerReview
��D R
)
��R S
;
��S T
return
�� 
Ok
�� 
(
�� 
addedReview
�� %
)
��% &
;
��& '
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
)
��N O
;
��O P
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
$str
�� 5
)
��5 6
]
��6 7
[
�� 	
HttpGet
��	 
(
�� 
$str
�� ,
)
��, -
]
��- .
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' ( 
ViewCustomerReview
��) ;
(
��; <
int
��< ?
customerReviewId
��@ P
)
��P Q
{
�� 	
try
�� 
{
�� 
var
�� 
review
�� 
=
�� 
await
�� "
	_services
��# ,
.
��, - 
ViewCustomerReview
��- ?
(
��? @
customerReviewId
��@ P
)
��P Q
;
��Q R
return
�� 
Ok
�� 
(
�� 
review
��  
)
��  !
;
��! "
}
�� 
catch
�� 
(
�� ,
NoCustomerReviewFoundException
�� 1
ex
��2 4
)
��4 5
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# E
{
��E F
ex
��F H
.
��H I
Message
��I P
}
��P Q
"
��Q R
)
��R S
;
��S T
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
$str
�� %
)
��% &
]
��& '
[
�� 	
HttpPut
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (&
UpdateCustomerReviewText
��) A
(
��A B%
CustomerReviewUpdateDTO
��B Y
reviewUpdateDTO
��Z i
)
��i j
{
�� 	
try
�� 
{
�� 
var
�� 
updatedReview
�� !
=
��" #
await
��$ )
	_services
��* 3
.
��3 4&
UpdateCustomerReviewText
��4 L
(
��L M
reviewUpdateDTO
��M \
)
��\ ]
;
��] ^
return
�� 
Ok
�� 
(
�� 
updatedReview
�� '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� ,
NoCustomerReviewFoundException
�� 1
ex
��2 4
)
��4 5
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# C
{
��C D
ex
��D F
.
��F G
Message
��G N
}
��N O
"
��O P
)
��P Q
;
��Q R
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
[
�� 	
	Authorize
��	 
(
�� 
Roles
�� 
=
�� 
$str
�� $
)
��$ %
]
��% &
[
�� 	

HttpDelete
��	 
(
�� 
$str
�� '
)
��' (
]
��( )
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' ("
DeleteCustomerReview
��) =
(
��= >
int
��> A
reviewId
��B J
)
��J K
{
�� 	
try
�� 
{
�� 
var
�� 
deletedReview
�� !
=
��" #
await
��$ )
	_services
��* 3
.
��3 4"
DeleteCustomerReview
��4 H
(
��H I
reviewId
��I Q
)
��Q R
;
��R S
return
�� 
Ok
�� 
(
�� 
deletedReview
�� '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� ,
NoCustomerReviewFoundException
�� 1
ex
��2 4
)
��4 5
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# C
{
��C D
ex
��D F
.
��F G
Message
��G N
}
��N O
"
��O P
)
��P Q
;
��Q R
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
(
�� 
$str
�� 
)
�� 
]
��  
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (

SearchMenu
��) 3
(
��3 4
int
��4 7
restaurantId
��8 D
,
��D E
[
��F G
	FromQuery
��G P
]
��P Q
string
��R X
query
��Y ^
)
��^ _
{
�� 	
try
�� 
{
�� 
var
�� 
matchingMenuItems
�� %
=
��& '
await
��( -
	_services
��. 7
.
��7 8

SearchMenu
��8 B
(
��B C
restaurantId
��C O
,
��O P
query
��Q V
)
��V W
;
��W X
return
�� 
Ok
�� 
(
�� 
matchingMenuItems
�� +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# 9
{
��9 :
ex
��: <
.
��< =
Message
��= D
}
��D E
"
��E F
)
��F G
;
��G H
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
(
�� 
$str
�� $
)
��$ %
]
��% &
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' ($
FilterMenuByPriceRange
��) ?
(
��? @
int
��@ C
restaurantId
��D P
,
��P Q
[
��R S
	FromQuery
��S \
]
��\ ]
float
��^ c
minPrice
��d l
,
��l m
[
��n o
	FromQuery
��o x
]
��x y
float
��z 
maxPrice��� �
)��� �
{
�� 	
try
�� 
{
�� 
var
�� 
filteredMenuItems
�� %
=
��& '
await
��( -
	_services
��. 7
.
��7 8$
FilterMenuByPriceRange
��8 N
(
��N O
restaurantId
��O [
,
��[ \
minPrice
��] e
,
��e f
maxPrice
��g o
)
��o p
;
��p q
return
�� 
Ok
�� 
(
�� 
filteredMenuItems
�� +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# H
{
��H I
ex
��I K
.
��K L
Message
��L S
}
��S T
"
��T U
)
��U V
;
��V W
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
(
�� 
$str
�� #
)
��# $
]
��$ %
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
FilterMenuByType
��) 9
(
��9 :
int
��: =
restaurantId
��> J
,
��J K
[
��L M
	FromQuery
��M V
]
��V W
string
��X ^
type
��_ c
)
��c d
{
�� 	
try
�� 
{
�� 
var
�� 
filteredMenuItems
�� %
=
��& '
await
��( -
	_services
��. 7
.
��7 8
FilterMenuByType
��8 H
(
��H I
restaurantId
��I U
,
��U V
type
��W [
)
��[ \
;
��\ ]
return
�� 
Ok
�� 
(
�� 
filteredMenuItems
�� +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
)
��N O
;
��O P
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
(
�� 
$str
�� &
)
��& '
]
��' (
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (!
FilterMenuByCuisine
��) <
(
��< =
int
��= @
restaurantId
��A M
,
��M N
[
��O P
	FromQuery
��P Y
]
��Y Z
string
��[ a
cuisine
��b i
)
��i j
{
�� 	
try
�� 
{
�� 
var
�� 
filteredMenuItems
�� %
=
��& '
await
��( -
	_services
��. 7
.
��7 8!
FilterMenuByCuisine
��8 K
(
��K L
restaurantId
��L X
,
��X Y
cuisine
��Z a
)
��a b
;
��b c
return
�� 
Ok
�� 
(
�� 
filteredMenuItems
�� +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# D
{
��D E
ex
��E G
.
��G H
Message
��H O
}
��O P
"
��P Q
)
��Q R
;
��R S
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
(
�� 
$str
�� (
)
��( )
]
��) *
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (#
GetCustomerByUsername
��) >
(
��> ?
string
��? E
username
��F N
)
��N O
{
�� 	
try
�� 
{
�� 
var
�� 
customer
�� 
=
�� 
await
�� $
	_services
��% .
.
��. /#
GetCustomerByUsername
��/ D
(
��D E
username
��E M
)
��M N
;
��N O
if
�� 
(
�� 
customer
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
return
�� 
NotFound
�� #
(
��# $
$str
��$ 8
)
��8 9
;
��9 :
}
�� 
return
�� 
Ok
�� 
(
�� 
customer
�� "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
$"
��! #
$str
��# J
{
��J K
ex
��K M
.
��M N
Message
��N U
}
��U V
"
��V W
)
��W X
;
��X Y
return
�� 

StatusCode
�� !
(
��! "
$num
��" %
,
��% &
$str
��' >
)
��> ?
;
��? @
}
�� 
}
�� 	
}
�� 
}�� �0
[C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Controllers\AuthController.cs
[ 
Route 
( 
$str 
) 
] 
[ 
ApiController 
] 
public 
class 
AuthController 
: 
ControllerBase ,
{ 
private 
readonly %
ApplicationTrackerContext .
_context/ 7
;7 8
private 
readonly 
AuthServices !
_authService" .
;. /
private 
readonly 
ITokenServices #
_tokenServices$ 2
;2 3
private 
readonly 
ILogger 
< 
AuthController +
>+ ,
_logger- 4
;4 5
public 

AuthController 
( %
ApplicationTrackerContext 3
context4 ;
,; <
AuthServices= I
authServiceJ U
,U V
ITokenServicesW e
tokenServicesf s
,s t
ILoggeru |
<| }
AuthController	} �
>
� �
logger
� �
)
� �
{ 
_context 
= 
context 
; 
_authService 
= 
authService "
;" #
_tokenServices 
= 
tokenServices &
;& '
_logger 
= 
logger 
; 
} 
[ 
HttpPost 
( 
$str 
) 
] 
public 

async 
Task 
< 
ActionResult "
<" #
string# )
>) *
>* +
Login, 1
(1 2
LoginUserDTO2 >
loginRequest? K
)K L
{ 
try   
{!! 	
var## 
user## 
=## 
await## 
_authService## )
.##) *"
GetUserByUserNameAsync##* @
(##@ A
loginRequest##A M
.##M N
UserName##N V
)##V W
;##W X
if$$ 
($$ 
user$$ 
==$$ 
null$$ 
)$$ 
throw%% 
new%%  
InvalidUserException%% .
(%%. /
)%%/ 0
;%%0 1
var&& 
password&& 
=&&  
getEncryptedPassword&& /
(&&/ 0
loginRequest&&0 <
.&&< =
Password&&= E
,&&E F
user&&G K
.&&K L
Key&&L O
)&&O P
;&&P Q
bool'' 
matchPassword'' 
=''  
passwordMatch''! .
(''. /
password''/ 7
,''7 8
user''9 =
.''= >
Password''> F
)''F G
;''G H
if(( 
((( 
matchPassword(( 
)(( 
{)) 
loginRequest** 
.** 
UserName** %
=**& '
user**( ,
.**, -
UserName**- 5
;**5 6
loginRequest++ 
.++ 
Password++ %
=++& '
$str++( *
;++* +
loginRequest,, 
.,, 
Role,, !
=,," #
user,,$ (
.,,( )
Role,,) -
;,,- .
loginRequest-- 
.-- 
Token-- "
=--# $
await--% *
_tokenServices--+ 9
.--9 :)
GenerateAllAuthorizationToken--: W
(--W X
loginRequest--X d
)--d e
;--e f
return.. 
Ok.. 
(.. 
loginRequest.. &
)..& '
;..' (
}// 
else11 
{22 
return44 
Unauthorized44 #
(44# $
)44$ %
;44% &
}55 
}66 	
catch77 
(77 
	Exception77 
ex77 
)77 
{88 	
Console:: 
.:: 
	WriteLine:: 
(:: 
$"::  
$str::  A
{::A B
ex::B D
}::D E
"::E F
)::F G
;::G H
return;; 

StatusCode;; 
(;; 
$num;; !
,;;! "
$str;;# U
);;U V
;;;V W
}<< 	
}== 
private>> 
byte>> 
[>> 
]>>  
getEncryptedPassword>> '
(>>' (
string>>( .
password>>/ 7
,>>7 8
byte>>9 =
[>>= >
]>>> ?
key>>@ C
)>>C D
{?? 

HMACSHA512@@ 
hmac@@ 
=@@ 
new@@ 

HMACSHA512@@ (
(@@( )
key@@) ,
)@@, -
;@@- .
varAA 
userPwdAA 
=AA 
hmacAA 
.AA 
ComputeHashAA &
(AA& '
EncodingAA' /
.AA/ 0
UTF8AA0 4
.AA4 5
GetBytesAA5 =
(AA= >
passwordAA> F
)AAF G
)AAG H
;AAH I
returnBB 
userPwdBB 
;BB 
}CC 
privateDD 
boolDD 
passwordMatchDD 
(DD 
byteDD #
[DD# $
]DD$ %
passwordDD& .
,DD. /
byteDD0 4
[DD4 5
]DD5 6
userPasswordDD7 C
)DDC D
{EE 
forFF 
(FF 
intFF 
iFF 
=FF 
$numFF 
;FF 
iFF 
<FF 
passwordFF $
.FF$ %
LengthFF% +
;FF+ ,
iFF- .
++FF. 0
)FF0 1
{GG 	
ifHH 
(HH 
passwordHH 
[HH 
iHH 
]HH 
!=HH 
userPasswordHH +
[HH+ ,
iHH, -
]HH- .
)HH. /
returnII 
falseII 
;II 
}JJ 	
returnKK 
trueKK 
;KK 
}LL 
}MM �
\C:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Controllers\AdminController.cs
	namespace		 	
HotPotProject		
 
.		 
Controllers		 #
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
[ 

EnableCors 
( 
$str 
) 
] 
public 

class 
AdminController  
:! "
ControllerBase# 1
{ 
private 
readonly 
IAdminServices '
	_services( 1
;1 2
public 
AdminController 
( 
IAdminServices -
services. 6
)6 7
{ 	
	_services 
= 
services  
;  !
} 	
[ 	
Route	 
( 
$str 
) 
] 
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Login) .
(. /
LoginUserDTO/ ;
	loginUser< E
)E F
{ 	
try 
{ 
	loginUser 
= 
await !
	_services" +
.+ ,

LoginAdmin, 6
(6 7
	loginUser7 @
)@ A
;A B
return 
Ok 
( 
	loginUser #
)# $
;$ %
}   
catch!! 
(!! 
	Exception!! 
ex!! 
)!!  
{"" 
return## 

BadRequest## !
(##! "
ex##" $
.##$ %
Message##% ,
)##, -
;##- .
}$$ 
}%% 	
['' 	
Route''	 
('' 
$str'' 
)'' 
]'' 
[(( 	
HttpPost((	 
](( 
public)) 
async)) 
Task)) 
<)) 
IActionResult)) '
>))' (
Register))) 1
())1 2
LoginUserDTO))2 >
registerAdmin))? L
)))L M
{** 	
try++ 
{,, 
registerAdmin-- 
=-- 
await--  %
	_services--& /
.--/ 0
RegisterAdmin--0 =
(--= >
registerAdmin--> K
)--K L
;--L M
return.. 
Ok.. 
(.. 
registerAdmin.. '
)..' (
;..( )
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
return22 

BadRequest22 !
(22! "
ex22" $
.22$ %
Message22% ,
)22, -
;22- .
}33 
}44 	
}66 
}77 �%
bC:\Users\Nagaraj\Desktop\Hexaware-HotPotProject\HotPotProject\Context\ApplicationTrackerContext.cs
	namespace 	
HotPotProject
 
. 
Context 
{ 
public 

class %
ApplicationTrackerContext *
:* +
	DbContext+ 4
{		 
public

 %
ApplicationTrackerContext

 (
(

( )
DbContextOptions

) 9
options

: A
)

A B
:

C D
base

E I
(

I J
options

J Q
)

Q R
{ 	
} 	
public 
DbSet 
< 
City 
> 
? 
Cities "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 
DeliveryPartner $
>$ %
?% &
DeliveryPartners' 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
DbSet 
< 
Menu 
> 
? 
Menus !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DbSet 
< 
NutritionalInfo $
>$ %
?% &
NutritionalInfos' 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
DbSet 
< 
Order 
> 
? 
Orders #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DbSet 
< 
	OrderItem 
> 
?  

OrderItems! +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
DbSet 
< 
Payment 
> 
? 
Payments '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DbSet 
< 

Restaurant 
>  
?  !
Restaurants" -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
DbSet 
<  
RestaurantSpeciality )
>) *
?* +"
RestaurantSpecialities, B
{C D
getE H
;H I
setJ M
;M N
}O P
public 
DbSet 
< 
State 
> 
? 
States #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DbSet 
< 
Customer 
> 
? 
	Customers  )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DbSet 
< 
CustomerAddress $
>$ %
?% &
CustomerAddresses' 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 
DbSet 
< 
CustomerReview #
># $
?$ %
CustomerReviews& 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
DbSet 
< 
User 
> 
? 
Users !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DbSet 
< 
RestaurantOwner $
>$ %
?% &
RestaurantOwners' 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
DbSet 
< 
Cart 
> 
? 
Carts !
{" #
get$ '
;' (
set) ,
;, -
}. /
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{   	
modelBuilder"" 
."" 
Entity"" 
<""  
	OrderItem""  )
>"") *
(""* +
)""+ ,
.## 
HasKey## 
(## 
o## 
=>## 
new##  
{##! "
o### $
.##$ %
OrderId##% ,
,##, -
o##. /
.##/ 0
MenuId##0 6
}##7 8
)##8 9
;##9 :
}%% 	
}&& 
}'' 