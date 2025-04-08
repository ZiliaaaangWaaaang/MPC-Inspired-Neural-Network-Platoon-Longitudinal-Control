function [Y,Xf,Af] = nnmove_66(X,~,~)
%NNMOVE_66 neural network simulation function.
%
% Auto-generated by MATLAB, 09-Jul-2024 21:24:13.
% 
% [Y] = nnmove_66(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-9.8820989364874;-4.17631009264064;-1.99999468395731];
x1_step1.gain = [0.10151410520026;0.238096945954224;0.50000722551666];
x1_step1.ymin = -1;

% Layer 1
b1 = [-4.3763433506898961056;-3.4097718901614131326;3.2281501944536814541;-2.8900714504410194294;2.3528180524106807603;1.4395760940575954567;1.295333576756786842;0.6161019579493122178;-0.70885862750084827066;-0.19217725282323605551;-0.17013031395599897966;0.58369250358373936383;0.29770100007991262547;1.2481119236526974081;-1.752637343448108842;2.5686921891490985814;-2.3246230413247692681;2.8449094205833227456;3.3133962783793546869;3.919795928735370083];
IW1_1 = [0.63376041337169697343 2.0036006817765183996 -2.2772938205396462408;2.3833404635759132262 2.868612109485822792 -0.6330067676879614913;-2.6261867104891076785 1.5318440540004738537 -1.5034956199495093099;3.4963509269365413701 1.1480035324245252415 -0.73590586656038292634;-1.6715914817377297563 -0.81677053758459716715 3.1042848775834950281;-0.90470062879230839226 -0.17809387831127765356 3.6831671147868436655;-2.5336919379823195086 -2.714308093714211445 0.12131988969462020878;-3.1214241601411929494 -2.7458534099692339936 -0.082060658283542475822;4.5738490801533018271 0.90219924602764967059 -0.025006564419612728467;1.8606303591155088917 0.81261444898394741276 -3.137928476500968511;-2.0450386822827040234 -2.5752339797216481365 2.019253188758010964;1.8924675680303257863 0.58645357763053906908 3.1820857868714118588;0.76138616607828135674 0.83979664448567725721 -3.6516045412952125027;1.8253846556713912985 -0.58020693751411944739 -3.1973551209311086296;-3.0469225848541965362 -1.9866641621342076007 1.4648426672910621615;3.8442439959585743559 -1.7737638243382034542 0.24329518502899952215;0.25257200713008376436 -2.8586471903029977426 2.9406056802854014798;0.78310446787272947056 1.8582452322230815778 -3.2158337511820551669;0.73984598069170304235 -3.6677689470776217995 -0.7383708148355311307;0.22031083568075440771 2.6328244809196905685 2.5549467587733283302];

% Layer 2
b2 = [-1.7831638584408981973;1.1819126060401856648;-1.0651200890800440746;0.75239431139760448719;-0.03073664707330301879;0.15209942059786463187;-0.57582023448588426362;1.3447180182674962623;-1.1522126957666332103;-1.4078626182987492577];
LW2_1 = [0.55092034734654160566 -0.10259378377191681608 0.0073961849467113682452 0.63727010757385715856 -0.19267522525332075878 0.34837657019263623681 0.15000842736890218632 -0.35364855741153133906 -0.25641929185345990749 0.032794951144641919238 -0.47967843046714081501 0.29584373627832599718 -0.72544152562914887561 0.39038437060665354128 0.58026025956443105791 -0.10117741517090747538 -0.079461483109699110328 0.040299896502434408296 -0.00081272632410820950643 -0.36951429767237892188;-0.33570751663094844375 0.50387236846548155711 -0.15789828744717010478 -0.021984476335504168909 0.54061633394967001376 -0.028058883127628071047 0.034739720724308149891 -0.68350077299021561039 0.71310442663349937753 0.30775360215914138173 -0.5438597478195718038 0.9004840073421532809 -0.14950776984333336017 0.40104699505174667973 0.53456748371495788064 -0.72995513622457086633 0.59163369905936569193 -0.66277118238306131914 0.027353473368493988471 -0.31098041130774123353;0.15035060059525609533 -0.20157824111073624485 0.63444159856882209603 0.44995772376211495835 -0.34085259952415997153 0.028073339732219856901 0.23884375152010747789 0.31513956038009255378 0.48434525235100428509 0.50673291261814357167 0.40904771072257362086 -0.49499070502620562406 -0.085406969817103634002 -0.13647741884691677594 -0.46829959832038259293 -0.5809206473871517673 -0.59857846351226551285 -0.34319336911781128663 0.0067427281998002257593 -0.087064778487089281023;-1.0103330125653553484 -0.65128363858421156607 -0.15076543601354985835 0.15451879760193401592 0.51424225548496560467 -0.2483012240666607473 -0.33123887165029608504 0.21549217674924009414 -0.17538407524242341506 0.22515774672323787819 0.12164762300922074556 0.2687727644717616271 0.50132496973718498889 -0.70574450817947909087 -0.062196677052700696797 0.0066310566515826634484 0.29056576385707033605 -0.66395802842214335371 0.19774767266913267916 0.21106672494847214527;-0.23268419612119353723 0.21449549039974427633 0.39746267954552044754 -0.33257618847599818013 0.0025624633265595112702 -0.55388873624406465002 -0.19433237472320935568 0.037231973448507704738 0.48642813900054515663 0.67387002996563816204 -0.008837421613795727604 0.33932896179669141956 -0.21911668476238807535 -0.15493669795657860622 -0.41566398768246204387 0.23363569653878141219 -0.67874651179714706739 -0.069517836195102059027 -0.5452968047463209178 -0.10466028037929812899;0.25796725330207470606 0.72002399781397929956 1.0058704089924894731 0.048144699074148450402 -0.62027028224595970318 -0.090298271056467843687 -0.017053542794178123965 -0.56312197506526429081 -1.9292587702680505934 0.034220200266583747362 0.92397192990483001385 0.60581677188298022063 0.13350190781921492111 -0.087843258937196883052 0.66921916782542034685 0.519519436752774455 0.67162771823952749362 0.401589720390106375 -0.2892473670635645755 0.16811496308786261222;-0.20843813782270409485 0.37024721034373009321 -0.18368125279342215062 -0.4534005070573192131 0.06255841055103132653 0.2888104632671929517 -0.53640239839493164542 -1.4370147122079270918 1.4215196254743927007 -0.19616136190838767694 -0.54971031518907831348 -0.1023978570841734409 0.035487639741223743484 0.42919437242899716178 0.86793830634385626954 1.9122118100116942685 -0.25788795361331945388 0.64588467988040210166 0.90597902118933815174 0.18884603199936184081;-0.24368322865549282841 -0.9765862485903259449 0.11580329735026850813 0.10222396993270380094 0.19887766674507814657 0.23291111642503364854 -0.25140850319326324414 -0.073737754737229432855 -0.72851310480929509783 0.65678841004266941273 0.043334901417505400367 0.04474845325691152037 0.45981065531340914454 -0.58665702818976717126 -0.26842847948322146046 0.15976834007741722021 0.030023071799467004883 -0.57358665605562597634 0.92087909594949124426 0.32979053472286995463;0.11021411545351399164 0.29938859402243639396 -0.55472048878511870385 -0.36736647881023426487 -0.43043160126453827719 -0.63391713109470004817 -0.10999804510987304385 -0.27737056255495790014 -0.61361650615066087866 -0.015184070389325289921 -0.23472185941105974671 -0.089151274942488284436 0.34499888772378078938 0.54681855748951269103 -0.063195796750502936101 0.56821332227687826322 0.11300995082329119701 -0.09040060812098549281 -0.47832066327087130464 -0.0023986573729369011984;-0.23180348098183806149 -0.48531269368963997346 0.47668174531334905897 -0.032338696320113151372 0.067338152133908008024 -0.57665635082109067966 0.58177230486913100727 -0.39961220729008145591 -0.64008203835668320281 -0.28515831417303405537 -0.44319565952589934366 -0.69633654001609834872 0.31516557692162350257 -0.51630644104966327834 -0.42794973827621696216 0.25867051579669603223 -0.65185035677582237046 -0.0058489499864853985653 0.48858363051163999913 0.070797918143283761205];

% Layer 3
b3 = [1.6959095059055036003;1.7391911529825072602;-1.3441490242931508625;1.5188985454846377632;1.1178283409433185103;-0.97945036254347861426;-0.64150816785585740298;-0.58828289093124186415;-0.18531558961279923081;0.052412285892539225984;0.12612756579077505359;0.27910871831740896587;-0.027959513251680369328;0.61724400814963886752;-0.58247608658893534894;-0.97176142357690620255;1.2752434472026885626;1.7919519389730103054;-1.7344135803756517422;-1.9155341878109246601];
LW3_2 = [-0.32293466656478714283 -0.93469722892455042729 -0.57363470223267687409 0.38503266822515591628 0.51680783005445851686 -0.70330605499775755707 -0.19625496564385030984 -0.55482166891182538304 1.0898878366924813488 -0.081708010565246777523;-0.93667310051680963134 -0.10226866102118087332 -0.53212412235581230124 0.81893865419422118279 -0.49379075958157259141 0.61839647522080998243 0.2627064744762254711 0.052487184922430152323 0.40565882133645092544 0.92092857084690904479;-0.12478550307200950154 0.49503149132156881729 0.60514007842694550465 -0.10320099669263063658 0.23401213456602590335 -0.78167256692814623964 -0.27290642261814584968 1.335829158117752602 -0.43897511298128244484 -0.94784214375567132915;-1.1244961855036414988 -0.069110441164296460004 -0.42532584367415221527 0.38971658018573429594 0.71560290146009286616 0.53577832374746581223 -0.31807360034210035993 -0.44407387729845754221 -0.4934979023552918953 0.20141730610417424296;-0.10700877874141891122 0.76711237582062585805 0.089806162394363300838 0.59852952011404947363 -0.87227380014499522609 -0.34552299049994994462 -1.109478447352564956 0.81109471549444822625 -0.79523539957636657505 0.22064830395447718181;0.89148214956127624919 -0.76417913164751749555 0.76479607494640899912 0.75436997157974827743 -0.665972657651231148 0.10528839119853643236 0.028611725481543694855 0.10539454801734655931 -0.17047728025523797846 -0.1970095765815623734;0.81243056892909504274 0.80083572639851430264 0.62425423102237276307 0.25882182423927480031 -0.70104032029881413468 -0.66948184875066707455 0.043821005482832887934 0.28229936122294829737 0.43514018138855081741 0.47609001329019201565;0.83364602013452715479 -0.070848743443593570346 0.78757941969849376562 -0.16557166072536322332 -0.54495663876288968908 0.34988567695666239477 0.34344490908517166794 -0.6394904457810763887 -0.36971436320051836999 0.99696802063620793;-0.44818764193437526933 0.61485571390938609238 -0.13131719663248445085 0.40145564650931975237 1.1923736984864345967 0.0040229612207883583275 1.3294850579712025329 -1.1856376140226911886 0.4337239584326986197 -0.47715970321408540666;-0.43286479206149203192 -0.70486812602469306466 -0.89988394090449286278 0.036843742238263713085 1.0839616913089686889 -0.43858064485060627158 0.82432776708971755575 -0.61791085308021009848 -0.20817979232004849011 0.12874634696645462228;-0.90217838389331517224 -0.43175415740046418911 0.20305987318765764127 0.79008020272125900618 0.56374226254806947267 -1.6220151267540405815 0.5031540453703742255 0.80124381018031576307 0.40192851113637390048 0.85276151509007991347;0.59538290483751954429 0.66717584674844043757 -0.25322566972766152871 -0.90676309307223090794 -0.054873617081697557973 0.46286376289492847658 -0.34646404107827855068 0.64419097276832737453 -0.30394193508748484911 0.88487855029460127376;-0.58300203128671468367 -0.90489458866768890388 -0.081794136802651212781 0.52068546459492093259 0.25186371979960392453 0.36897970963600951189 1.0290619867269936716 0.54792370802147016828 0.42464256636870040262 1.0112160826934331048;0.41994836112956901442 0.99189254136408555595 0.6235984968123827743 0.87942103644394720163 0.18891857199784117816 -0.61433358242666336047 -0.71417237558460300306 0.063124634639423096716 -0.89316262450381123106 -0.13618274815007763712;-0.85399345606989029989 -0.11230664829591506526 -0.1578744528703299177 -0.10463134010598607038 0.764581953167695616 1.5128425232266962119 -1.0999812507954935814 -0.19028614505407523416 -0.86374225794657466526 0.30374021660352068519;-0.44832449207541191782 0.2056292995491822706 -0.82768277882650709287 -0.25837018012501278275 -0.91126639757654381846 0.38493412154350425958 -0.47686341308776641901 -0.77842040460024364279 0.22310027287441291932 -0.91230792854492526178;0.14314451735681996136 -0.72845788381101872488 -1.1913236881214144258 -0.24422075365972475969 -0.58399342628842854097 -0.18680719988632615847 0.58088783224480444733 0.83413692473675649097 -0.0078091075722911415871 0.37453499928651096118;0.63682279172535760647 0.12359653563071185123 0.30810663442622487906 -0.4686449684572712715 -0.061398378103266669503 -1.0104479951587657105 -1.1375859089441449079 0.53736551853480230001 -0.3826699750484728324 -0.49139157433273550346;-0.34961506507399092714 0.87537529223754406704 -0.44360475127596399325 -0.65378633470400993044 -0.14216515916426630817 0.89243552656651936594 0.58293065528020382438 -0.44285711840736574629 0.2903121044477097179 0.47541306174822944852;-0.25336847692979225233 -0.3443371439228798403 -0.47774749305990543702 -1.171629496434340334 0.42050484983211822154 -0.53184937386109598645 0.23368516088818561127 -1.0864413685288762945 0.15943223566562447768 -0.32233672150017078639];

% Layer 4
b4 = 0.18065734758873758237;
LW4_3 = [0.56549369397066195919 -0.62632448386532957318 0.12661878248782193479 -0.035512311465747278816 -0.83358637109339295268 -0.51699988560241605384 -0.8037498556474631517 -0.17262865287946152493 0.45981041672630301731 -0.40601856603719888028 0.93908730165511633547 0.11929521486290696475 0.085451373950195572138 0.49488572583826967444 -0.54741011109465365081 0.71327901533798387934 0.038423344702084853697 -0.98890441567627207498 -0.65187225516102842438 0.70934036358072083406];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.499999999999991;
y1_step1.xoffset = -2.00000000000004;

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
