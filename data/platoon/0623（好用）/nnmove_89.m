function [Y,Xf,Af] = nnmove_89(X,~,~)
%NNMOVE_89 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:06:07.
% 
% [Y] = nnmove_89(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 3xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-19.0505965768031;-6.70139767883548;-1.99738196042707];
x1_step1.gain = [0.053913604005474;0.149967019141203;0.500604127399131];
x1_step1.ymin = -1;

% Layer 1
b1 = [-4.3143434924685521992;-3.9290057185171667342;2.3486369856088478159;2.4678499459912304204;-1.8877990603596388475;-2.7007496382950897384;2.6751643878451587533;-1.0195083413881362855;0.81075344564020290772;0.86870249265961418939;0.38471943390662338702;-1.8736461699371567136;-0.094151264722546063046;-2.0846787062289369175;1.1674819344498377216;-1.9307166174961363225;3.4211930898332454376;-2.2821030888621716137;3.4014591347283120726;4.2917729905168817695];
IW1_1 = [0.10761435682601057373 -2.8146210260962556404 2.0007433429404661851;1.7773658457753498396 -2.7007798419115092159 2.474246706167772647;-0.75788804597189651791 -4.5612262155817751008 0.59654009427854970404;-1.8070855130261034294 3.442576340720801209 0.98051599357978325155;4.8710455900282010333 1.0216572364259464134 1.1915458085748238393;5.9249429975167826612 -0.3075978465468843237 1.1901144259349052401;-1.6917386398136209369 2.2691157724316886046 -3.2942946058643469698;1.6514907644706326995 -2.6468586048600895033 2.3138984619487601435;-1.3797224721521319513 -0.58934633160565752519 -2.4375598531360136434;4.1528566570289697779 -1.0141072117919605056 0.15945458629464703826;6.2716554091541949489 1.5411677953724651768 -0.41250141683070756793;-3.4385795835106534035 0.69214320230692349956 3.2129254736202499387;-7.0991179380346220995 -1.3686169510092407453 0.80623280392547735929;-1.9876228992445572619 1.9511075569631328719 -2.2872968052668971595;2.034753242790894312 2.7454584269734638724 -2.5024404945572036318;-1.4732367766321805558 -4.7563053727490753886 0.18464897314718620169;-0.48521467120751776703 1.3901736900915306894 3.564423324141582583;-2.6070774314233613467 -2.6026068669655284538 2.0093655133945955704;3.6187844668154962591 0.3884484954504635601 3.0863909112137934976;2.8982985792970663574 0.1121700163207103168 -1.7368411763831037575];

% Layer 2
b2 = [-1.8097636936473864289;-1.5794155832839114062;1.3484099993002605089;0.15594128571867013622;1.0862295661398004842;0.19176353067836168775;0.19515746644569992307;0.15553600841406808875;-1.9945793871918298112;2.0148207251817349395];
LW2_1 = [0.73142568042502253967 0.52719643190439380298 -0.68472622003454819417 0.56140241679732627578 0.50732675482618172502 -0.20533491295884614969 0.22576466353893592798 -0.019071235555705119691 0.20763869150529379315 0.32999061124848577675 -0.54072091482877493451 0.45460923736767383518 0.27581983648431762646 0.38055902500783295173 -0.36355402450500595712 0.32337369024598194844 -0.15855910512797158352 -0.30237316356845056475 -0.13523468144074007879 -0.55926549643448808524;0.55102484941072304991 0.061046486276201641918 0.14573904241163840312 -0.43095352717673829357 -0.16807917482399739595 0.22737432019584810639 -0.26315162971159083982 -0.10134381609696324622 0.13880708389640245004 -0.34696998968745534908 0.17175957503646199775 0.30416035176141198448 0.25449985327281643421 0.4756839576119868962 -0.22358431889832430794 0.39711255699691655474 -0.25137964420768993401 -0.32136617481145590691 0.020253506151736017094 -0.70165572311777490988;-0.55923039696961207579 0.41961787343742190659 -0.40260447374202751325 -0.20138576950189221448 0.93479976693277111455 1.1515956355004872691 -0.86475414173214482094 -0.052346883733226726165 0.131497645523652118 0.78664435291796475092 -0.28639023130582008658 -0.7517112029929372552 1.1651083670370667722 0.48197980692747166565 0.33422630188371588167 0.5300334005672031612 0.65258026448148342968 -0.37802151330848932087 0.30792228324414960827 1.0589399645726249588;-0.21992751034846483305 0.46606546137358101367 0.2620559504995185196 -0.60266033143833064312 1.4347846301228772692 2.333722431563069577 0.86892700673632994324 -0.26180864374967804942 -0.9512496971772319565 0.16512256736417285641 1.2964563460228593073 -1.510001667583612317 -0.92001771943841148538 -0.45283125217348807467 0.51819144743017386823 0.20552887185128226877 0.12695980716025614954 -1.3787145140713610303 0.32820440684871454717 0.089146829307009872734;-1.3003205738197360919 0.39013243012834758483 -0.13719470400871416893 0.18688064256493172599 1.6843957832618534631 2.6728036192295951956 -0.33245703526488856738 -1.2032951705748233806 0.11397902158100732539 -0.27311936421022242616 -1.3514489203642476856 -0.74977714476650336728 -0.025836656966706929295 0.27420771682659805801 -0.97900298999661938826 -0.70398609163549685785 -0.24787942229943965566 -0.97856220428738660555 0.14667161639433395903 0.68174721031459428744;-0.66355392036382054854 -0.58761920845607884534 0.78683771541040548048 0.37427002627439853732 0.0067260728987427777226 -0.68595628294726895824 -0.15516952572051412318 0.63439891362781031248 -0.26519706479816596012 0.20785701536675371681 -0.064828175670788662499 0.33641895963819534732 0.067905624414888884899 -0.54318927204522260421 0.35220099974228352702 -0.35773248041694932775 0.71962308143868813914 -0.051252658923195623664 0.28036127338480676396 0.43247729784344807191;0.34986225449733598936 -1.2097372025351194047 0.76541083252301023165 0.10049987244131856901 -1.2488864826952972287 -2.5135247540255227783 -0.42537898476646412993 -0.10295574377813465627 0.13977027345618872611 -1.0321989886645464018 -0.82654541080296839439 1.5770280390416142602 1.4310057682220793662 -0.060729024066880493704 -0.28877202266499885086 -0.040612734934098379536 0.81295894369132215562 1.5417047793504159436 -0.80285368426509229334 -0.87398476657132395662;0.75149662630098768012 0.38846987038261909797 -0.43672518584856767632 -0.50125363320698645975 -0.56623869055069009359 -0.54881394350054890641 -0.0099643447101669720828 -0.47727075848860689433 -0.10327826695249470168 -1.1275940150069978518 -0.41920192794350885634 -0.79860806446907606215 -0.3164009082128240169 0.4818964982728629054 0.16639937561410431122 -1.0589962774711834115 -0.055409815837053372212 0.024254446861513949407 -0.48909473146380744168 -1.1273282592379672007;0.43649534290527325364 1.096223999227876611 -0.41179750432516504244 0.60091328162606205687 0.60829535232234555053 0.34528410199550441106 -0.058426326386484747633 0.041124051217219077803 -0.87735629500437672945 -1.3132982537662367672 -3.833833516513858175 -2.8112797001194889113 4.1394679558196436631 1.0274573627875789317 1.4924583178877421918 -2.1212326094473774596 0.32896107571187804819 -0.38022308661365861182 -1.9002170763998609271 -0.37048861832571694519;0.56238995454929663342 0.033538527013212318661 0.16984042526023920838 -0.68705022492829559422 -1.0870143272793781897 0.13559045030399397014 -0.68454979543405181097 0.86118751465865561734 -0.65002349635991607535 -0.93014447605247219109 -1.9622128914655319054 -0.50963311246840570234 3.1560132626926309385 0.24324296530168376673 0.40551697564715105671 1.9655404139652268292 2.2799068565425946176 -0.77134627318052995104 -1.3827599628470637061 0.97319251879937529459];

% Layer 3
b3 = [-1.905476686475635395;-1.6977453877566921481;-1.6566583697178112189;0.82241092876569199532;1.3318648968675717015;0.83457274979187467956;-0.81950913982895468024;-0.090072847488155818874;0.45741584565794074502;0.15723568750916372405;-0.4773906889207826798;-0.18816271109100785042;0.20515048735220992038;-0.3710471278126979966;-0.6154125474277238883;-1.3041660185601318123;-1.2657958106000357645;1.3110771193908774546;-1.6266956440077173784;1.6528505629607472827];
LW3_2 = [0.92901307732672067097 -0.72840112033548809478 0.56727028004930168947 0.21597406495369569912 0.52871767030734073689 -0.43146293058609380688 -0.21144604535776090337 0.92746836764447604384 0.22570165150751408945 -0.66900213346683667925;0.035903238791832069177 0.8061327501639223847 -0.40737511492879080466 -0.3459308626388188368 -0.69579050154845145659 -0.74270803195968027044 -0.84908994367105217194 -0.54655300012761665052 -0.44490065151333574311 0.54790595194922742106;0.53544395706532088575 0.24672830319439711944 1.3495247950238975498 -0.44880779039859663992 0.40571849723707120727 0.61743717289942812165 0.96240802972301187079 1.8432915928135240602 3.3301263810107863961 3.9447944777673762395;-0.047143682091801683565 -0.71319213646902934745 0.42094413801691671351 1.0804277737879501853 -0.64760756373102101868 -0.96072936798360331068 -0.082432552843982848101 -0.19753111550466057045 -1.5955247432568830934 -1.5211337367690329625;-1.0774656771616304418 0.7311391868218453105 -0.56495967958862569613 0.78904741683911838734 -1.5069070345890338558 -0.32024615514215731826 1.3932724602800325986 -0.48188405162272041071 2.2119736167573020857 0.39109998723170907864;-0.69918485268597496685 -0.71225353935773327851 0.63702073039087758755 0.54082092534994141708 0.082100689462066930857 -0.40764003751592869929 0.062516383118439891597 1.0696443131481867539 -0.38631652001898469928 -0.44581863080946376732;0.9096778249678605377 0.0079548380256020765483 -1.1597920769507559235 0.21557999333689703558 -0.036333880781527834458 -0.55946392647746867599 0.885453652774121025 -0.52688879099950736151 0.33674432531786385736 -0.41523632746364808055;0.59700174051112442353 0.14060241472577481026 -1.0503750214076852387 0.68839914481061204032 0.52466298555897816769 0.1886260771556868554 1.5417240681351715992 1.3230297505189312357 -2.568861262357503783 -0.44604767844591680648;-0.48820481392077752503 0.57792041671394622782 2.1471550067342808354 -2.8840924829027105858 -4.0056288047566654953 -0.15385382939305217165 1.9362867277867203963 -0.74277407631366720864 1.2139765055626703383 -1.0325100443578216769;-0.30840263996607153452 -0.81738861324340617021 0.68864621429781680551 -0.29877038925451770979 0.62950236253192659586 -0.28109527593534766599 -1.2587846019419404175 -0.20166509824020412145 0.10806795248148978739 0.86772612637654100709;-0.39309765794796880378 0.16973121343285510476 -0.05509119015554680282 0.50226698325881913298 -0.2096173632504312323 0.2609567513571710573 -0.25790316116563133386 -0.081900393832149573359 -2.0910077707212568754 -0.60255534782724362586;-0.95597280916807358953 -0.19938665158923282728 0.72368914899796088491 -0.63497323575116382255 -0.11812873341815749439 -0.29941357368626764224 -1.0593234275137626277 -1.0345126406117499673 1.8108832948562629817 0.57072694962232684013;0.52732288814699190826 -0.56163567371802514128 -0.5910971804810954966 0.15096033994515783982 1.5639675303668036932 -0.79526000729230217345 -1.3370004193063971254 0.35761029531256827152 0.18100346072238110429 -1.0216435166986772565;-0.83271880745232118581 -0.88327353110319906104 0.28598022864829236722 -0.51358389505944579412 0.76128541716572839526 -0.53326065741058714664 -1.0879360731710041588 -0.69073065162676006157 1.7152823215818004954 0.28204609143484593581;-1.0369219802443998546 -0.53630844255993403991 1.7141276397738178794 -1.0310544210603220794 1.0694816742547434973 -0.050945197273535455795 0.043751544629583694057 -0.43883740678750338127 -0.75569193299290271515 -0.49153878996634209342;0.15114428830848877783 -0.20617833792388037817 0.46687441091156084427 0.92308086028324576322 1.3975070978535204524 0.21968194808911964411 -0.65314386386767175896 0.35692687736264383513 0.57489220552493414118 -1.2445010224501853457;-0.47771196870486110075 0.76632512905824445859 -0.63762326674037372864 -0.45880072565599683276 -0.15336417423636938828 -0.78116050014038251881 -0.69269746806444554288 -0.55989919260002396495 -0.28565039714560347406 0.6792209952904403325;0.30315742042568066816 0.74966003462208385955 -1.3222586510603642207 0.28403889417870425982 -0.91151925338987971337 0.56216538539603666536 -0.95011262652994898925 -0.42701069881907810499 -1.2577231562714172863 -0.40902907037340435759;-0.88954985660816476845 -0.55949827322773038052 -0.31912746785412998696 0.41395942256171675 -0.45614271023825769813 0.62449369742478144651 -0.079480181672630309531 0.84864433763623914331 0.68321986444083537826 -1.35378050756104229;0.88050107238613894989 0.95646304669616044603 -0.47866360958865161734 0.10981634932085822254 -0.73225893562006771909 0.14517307051394229278 -0.62610871847830062986 1.0834221528980847449 0.91616939046817247316 -0.70289388205956426781];

% Layer 4
b4 = 0.27385998014702789272;
LW4_3 = [-0.18516014132705069239 0.080849362529911678044 -0.78162595457683414768 -0.38738322444469369676 0.52488994563222990397 0.0090779584566479266244 0.42133268395064576994 -0.98763670023631455752 -1.0761888076378089973 -1.0342714272457860236 0.78753480374708406675 -1.6704205245431178462 -0.48015022011241836886 0.63915058365720422984 1.2476927059326539116 0.44310980274505135101 0.23418453228346897133 -0.7313684040487757887 -0.26307129608729257209 0.22451951790491467276];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.499999999999934;
y1_step1.xoffset = -2.00000000000028;

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX
  X = {X};
end

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
  Q = size(X{1},2); % samples/series
else
  Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS

    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = tansig_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Layer 3
    a3 = tansig_apply(repmat(b3,1,Q) + LW3_2*a2);
    
    % Layer 4
    a4 = repmat(b4,1,Q) + LW4_3*a3;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a4,y1_step1);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(4,0);

% Format Output Arguments
if ~isCellX
  Y = cell2mat(Y);
end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
  y = bsxfun(@minus,x,settings.xoffset);
  y = bsxfun(@times,y,settings.gain);
  y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
  a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
  x = bsxfun(@minus,y,settings.ymin);
  x = bsxfun(@rdivide,x,settings.gain);
  x = bsxfun(@plus,x,settings.xoffset);
end
