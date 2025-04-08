function [Y,Xf,Af] = nnmove_101(X,~,~)
%NNMOVE_101 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:06:40.
% 
% [Y] = nnmove_101(X,~,~) takes these arguments:
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
b1 = [3.3297120300629883261;2.0663765756584169253;3.1488185322103294794;-2.8229088418734100685;1.898258278850062819;-3.5928225530857096359;2.5186073419313768085;2.9137637299246788025;1.6745248309321427715;-1.4181457109796045124;1.1834214303479400066;-1.6319884675604994229;-0.63225506640775386291;1.4465895281947864781;2.0630802421631417864;1.9882352763705650744;-2.8478387190050362676;-4.2272542518039575299;-3.7870765350634671975;-3.7322946839777761951];
IW1_1 = [-2.8995225989611719264 -2.0749992699234898197 -3.0006923705156749449;-2.5524405543365400462 -3.3450903545911234716 -1.8164915852293237464;-2.9687185111323146636 -2.6028815221378156508 -2.0188261473455018091;2.9160820683071144721 -1.4129068130124680103 -3.2149218380115969218;-5.7489276879285666766 -1.5303772146123839626 -0.88813253368216626971;3.7761304445185643885 -1.8328557057537977482 2.3528369810284890384;-1.3953920775165771229 0.3489323513593671211 -2.9249306200987374993;-4.8103512604056541946 0.31984057070297006176 -1.9039011883466387953;-1.8416222516239639795 -3.2704159298593631355 1.7460324190130676048;-1.1838866974288331235 -4.1292678514408454049 0.17606329854031649296;1.8016704881408731609 -1.3681257007372789047 -2.3737957264124212031;-5.0453212003193241841 -2.0688774467603687768 1.9040518253609646226;-3.1971416063875226499 2.3230478714223976588 -1.474911062429126396;-0.98327010914020973598 -4.3150450355413987324 0.34488702794138054175;2.8069061752075810112 -1.3756114561331473922 -2.1937859635145073867;8.7503539747839003127 0.95193001341373129076 0.81509290075033213885;-4.1826609595817068055 -1.4060091839235724365 2.9820083911022225998;0.65961003812380558653 -1.5476656439596638837 2.8083125784802378533;-0.38782915169139503542 2.5174594766574407423 2.4075567497810559381;-1.5385387497871316764 3.8035843576373880026 -1.8789668863560251566];

% Layer 2
b2 = [-1.6800003833523093899;-1.0320692182451591812;-0.091240856227889882701;-1.427280306634282514;-0.24930693378457094433;0.73926787725679288243;0.28716224395325229413;1.3033580286701984541;2.9393295768769402976;-1.7488501913646625763];
LW2_1 = [0.12442323788201282986 -0.29262639954215935445 -0.55143329814778618836 0.31055995517807166717 0.3886729884477416741 0.6236049023198548813 0.38573987301132228733 -0.14504501427426017002 -0.4276959161557172262 -0.35632651417312971587 0.35820876450266836422 -0.18640344267427017 -0.32011845369937064198 0.36602833894926450897 -0.3522116617729464938 -0.075761298947068525522 0.50740395863990817027 0.31931526049793068633 -0.10804571709708349347 0.33061058948622856768;1.4276563929237655604 0.0094329201961301373247 0.94583198601136975192 0.39939007644993818058 -0.29898184797250748623 -0.89134017536878540344 0.13122213215851974422 -0.15167629776347482662 0.31911099479679161384 -0.015493190803979451156 0.068265821016187749892 0.10548271491356280005 0.23649687155546778028 -2.0681357450298576417 -0.94562740672865741587 -1.5868397896385317836 -0.09053594874488687938 -0.2211938676742445653 -0.63613456983466243333 0.3455408112893491035;0.71110462046522082691 0.38553641344763023291 0.51998980068930844567 -1.2737996822144581621 -0.85903218702801742435 0.47902588742720475512 -0.49147585503477542179 -0.23169615679357774551 0.0249197159259273264 0.40255644862232609071 -0.46618205619964103725 -0.38251600484826114856 -1.7092708749473184415 -1.2677025066923743868 0.27055005874121990095 -2.145489630816011406 -0.2505507736764115978 -1.1652474787591002858 -0.80322815681494097451 -1.1528066785483821466;1.1053297982347389805 -0.66838601701720501413 1.3187309362990924377 1.5842024464138930728 1.2386796976488432254 -0.0015064968621831299755 -1.3236653078119591243 1.2202512448995073147 -1.2652357015013191432 -0.79448255039752635476 -0.1570662346054939873 -0.32556664447888500336 0.0022266085733271580305 -0.58434781776409583376 -1.3872395689856029666 3.6071125794485343619 0.65560820785116502574 0.95406376683446181275 0.44740618755726091482 -0.19273515686181744155;-0.42541840637771727307 0.088557468775402492511 -0.52574917147729549605 0.72188669346641665125 1.3726295809783646273 0.028948354529917667832 0.41977511022700381149 0.61522872696223929179 -0.60299514882092031254 -0.6500216615403449083 0.56737462344978295548 -0.5269937435937191994 0.30909531137435458659 0.19009012268932462542 0.1881947320860733186 0.82820177266587768905 0.48152294179417653996 1.0753272765008654588 0.11820523929701751142 0.87754698294727806474;0.85771653138111869641 -0.44739267020266126895 0.9662962196140041371 -1.6300905049408784819 -0.33175963775482503193 -1.0210089426793911294 -0.50701246287243251221 1.1911912226036522888 -2.0072192588724853124 0.83643368308836518743 -0.6156816658114521168 1.3828188110514625375 0.74240677853491154892 -2.1656878363622262818 -0.030743630642003198089 0.31565571876312781274 0.50845627195984588464 -0.80897941494916969507 -0.49820357715090762829 -0.62274604836352476234;-0.11684047443860082205 0.39930697671294790307 0.14182569497697550265 0.92667696892489248572 0.75735276978568633055 0.62324134069737946451 -0.0026827222859917027736 -0.11451446339165619048 -0.5113619105770252915 -0.087636611287817953175 0.27594650585167701529 1.3171178352217256524 -0.83121573378477919825 0.27954295740605261678 0.39248058379276362651 5.4663731701829592069 -0.12771691530221207511 0.13949694774688226051 0.29699288222753139621 0.54461817491685760029;-0.27365412812264811038 -0.52686405064927288588 0.022008328329303501747 0.19710351983973556367 0.23708194315867714419 3.8461472475412068484 -0.14672922028248464033 -3.1124776092434056629 -0.41604026895001822162 -0.83622756983099588712 0.59256942753481534059 -4.0267888145820487367 -0.11903591085781015102 -0.83949260520513369066 0.25980985337551593117 -0.077229109514569849182 -3.7686921157390687043 1.4430255853708142677 0.46289299109004705679 -0.20025211718291807683;-0.4398999667928923385 -1.0033284326342608583 -0.31294182733691650045 -0.35940288710182932697 -2.5523431162308058973 0.062128168161948466031 -0.069604502745142099451 -2.59457973587250601 0.26241926849681684875 2.1556838031294600633 1.2480440800304419824 0.26244443888464852321 0.77143744524074508995 -1.8127432114482486814 1.6171540376237334424 -1.3740772320045950838 -1.0386014674589132412 -0.72824441601427047921 -1.1479963697236816866 -1.0469052033703019067;-0.1152890537028927187 0.6621602141478015735 0.15061447857331830558 0.51750151050835657696 0.32740524731221565258 -0.61618387703260402155 -0.80723433484595819021 0.28528507308746725579 0.62419592382062971669 -0.095101298998849351229 -0.52974924780232168775 -0.52837586806454550636 0.11941078253381985641 0.61172830816198431325 -0.1667617325558247432 1.1053564353950433574 0.44993603104164681117 0.21381898533206072921 0.37773560040242903924 0.62785913102523016605];

% Layer 3
b3 = [-1.9529885195872291881;-1.6902867981022873245;1.6637627161778805185;-1.4037768855635606169;-1.1398986184180814885;1.354979995132148618;-1.6781048242000844439;-0.37231652445533847118;0.32237943923756129383;0.03269244876169703079;-0.60912926378754694845;-0.084436046898320168963;0.42801371158832868247;-1.0043525344511028408;1.243785325631708405;-1.1281353034032681748;1.6613127347755827223;-2.0299577878117243124;2.0908102517952142918;2.2090816271613200605];
LW3_2 = [0.68096337255624816986 0.7085855445800861574 0.94259415699357995688 -0.043196914922032259021 0.76047095886903814943 -0.73844103502360525226 -0.14514896379518155145 0.29856250292745728503 -0.50796459363939239218 0.4451452990074546423;0.80664029491955480111 -0.7112933599496117365 0.27425073191103094272 -0.9248556016416263903 0.90413940618047061726 0.77936828072772246223 0.24262838754246329742 -0.34530212141943400495 -0.3118695112944336878 -0.66543404701051822592;-0.92749425437343091527 0.36935179031377562975 -0.57666085254320931242 -0.29527668635106812944 -0.71899828112245989242 -0.089012107050571484534 -0.0672764486688546548 1.2478899013902566839 0.56068857841367358841 -1.118633614870558457;0.77038051608302493545 -0.14050598632257213505 -0.67108692795223401362 -0.30042837658826987424 0.55673222801557409323 -0.63557798196072756713 0.22760815807158055191 -1.8539956720868027151 -0.96618650881617740289 0.093843341425262655209;0.97932261290599020853 -0.19625424275958708309 -0.38084006914920021103 0.8752914483106530863 0.2916002079878447506 0.2440680578874816764 0.78121330146294043484 0.29906892175007715462 -1.0682819080957719482 -0.22008350584925939764;-1.1232798147175147019 -0.51976743482518783512 -0.78797326949800472473 -0.74252362846194552848 -0.047854738401335958353 0.30643631137453380964 0.50387820161923468909 0.073670003775813841518 0.24941767104070958205 0.12339723133246262299;1.5480215265394376978 -2.0156502643709615086 -1.8660143231429391353 -2.5063075174833220338 -1.8996225911418920251 -2.989337996690279553 0.52890226434051812454 5.9341008582703711483 0.18661031466305558202 -0.39383182132666877395;0.58360177738975005379 0.54819458880499738473 -0.18282998434456024239 -0.47619661005258873132 0.48388288078124458425 -0.36955827522475453994 1.2177583573031440789 0.12422457985682257287 0.74402929664848915792 -1.0379985462437137933;-0.81765751209333625837 -1.4012274659363286311 2.4272579272753938007 -3.2472474277104379503 -0.16198985914190253133 0.31845386613523818387 -4.9528849167206470128 0.24251685319990728962 2.0338176555773497256 1.0755764249765569218;-0.6375139241765358511 -0.40545397979079472739 0.77212969815299492549 0.89278135183802942443 -0.46127627500759338375 -0.46958882864322315509 -0.75685859337639305178 -0.43596863549222319989 0.44571687234162615798 0.33818280921628823821;0.41386422879227557914 -0.53913816825688809509 0.17572466899831612475 -0.8647908470614370513 0.12875192172565358417 -0.087296149095305336507 0.69248218871169542332 1.2756977697206293154 0.48604819819250066892 0.91372550308194133706;-0.73240355485633001908 -0.25644598682314911908 -0.15952188439556527766 -0.84472729161897563976 0.11829841757968524718 1.1895509613856665165 -0.33338459093158456792 0.29103061834879323522 -0.60599525112461682941 0.64163302660659971011;0.40409090984494960841 -0.92660628714298254316 -0.66015261211923459417 -0.73532328073928654444 -0.061751399024592618092 0.53883408902609508662 0.18068255462559729141 0.29637801431866195312 0.50622306407401485018 -0.74623973073038907255;0.10139775202392987963 -0.20457968398015463629 0.72695872026498586926 -0.62138427859884282078 0.43319028667076159289 -0.19608003776029503396 0.48036842111856387083 -1.1140194306438269134 -0.56841425882102836198 0.55312392354187345234;0.093135993124948995847 0.42643438335332045641 1.0824502127815998076 -1.0286957338630320358 -0.68824822710350375132 0.02643160358111619132 -1.3998290364187651047 0.46167875418673459675 1.9277048061424568726 -0.97516693593141456908;-0.5427096224891284626 0.20858573635712751582 0.25078453608501566352 1.567868187548833836 0.30538031676497001676 -0.33820244466288629237 -0.30164765292945927566 -0.032447836611164793119 -0.59676354662174402321 1.3647001118236306016;0.25110300231150123329 0.38992164159396747181 0.94792219747197825619 -0.77905333281869626472 -0.35753214224351265171 -0.71291463552782785573 -1.7784084244212561288 -0.35728756618682477875 1.6331297862100897511 -0.59400607793148796354;0.2767598644939057162 -0.3643360984284195192 -1.669975934313062238 0.035257389033535709022 1.6622667902021790454 -2.3880280794402821698 -0.1338620623593744785 -0.34568471280932494549 -2.2743245191703151953 0.35088905268315245811;0.39059964077769077084 0.43392040794227043632 -0.96162498578834765262 -0.32044497374693464709 0.0042805176837183017691 0.73586219023873977729 -0.20786973039869421909 1.0905132424960435333 1.332286767598356958 -1.0578746157527405547;0.068736056111087504017 -0.92777526549867628258 0.69468858281242151786 0.28510612310128047309 -0.22931536278595809897 0.16953626271895094746 -0.40616292344459192787 0.36709792789514733569 -0.32477648186907576155 -1.164656528622648457];

% Layer 4
b4 = -0.011095959926915123506;
LW4_3 = [0.026603100926203174237 -0.0047672068768751223872 1.0660050491324915001 -0.53079144790326360237 0.90362017768311841959 -0.78810175625973655222 1.0238108554305400677 -0.010702880223863167272 -1.004315978834633416 -0.0081875002715681727966 -0.012542479235164169862 -0.0019665165031572044534 0.061739810972829448077 0.036263814410678336941 0.50822535910187738306 -0.48571648566828701243 0.26169903156910317987 -0.74378808946931596058 -0.17331454852722297244 -0.72312502370077336167];

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
