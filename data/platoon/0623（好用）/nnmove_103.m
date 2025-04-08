function [Y,Xf,Af] = nnmove_103(X,~,~)
%NNMOVE_103 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:06:44.
% 
% [Y] = nnmove_103(X,~,~) takes these arguments:
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
b1 = [-3.474464653944718151;3.8646299294551371695;-2.0787323246964386492;2.3408027997856963864;-2.4779782825405214375;2.1275365697437220724;2.3475342353422545827;-2.0243573317460912264;0.69873790730885454447;0.27085634346627773805;1.457159471157988051;0.54684644888359257298;-0.20651849031859675909;1.7807654166852375788;2.3464641537480974698;2.0950933592749643175;-3.2513928218337220244;3.4216849431869191811;4.2779886661825941019;-3.9828203142880802545];
IW1_1 = [0.7013399805357599659 -2.8856096114804525854 -2.8457173990799238261;-2.386446317655986693 -0.58784642584333202109 -2.6256534215423585898;4.1754084461634590753 -1.1042134308398483533 0.87573259271750902855;-0.68081824087517184285 -3.6758141534307329223 -1.1572014498815976768;0.43403548141321912635 -2.2710826321170274333 -2.6895243689508521179;-4.6928704110139429773 -0.84491657861959101883 -1.2967991595128307569;-1.1514204228916256056 -1.7593374487726509692 -2.6589614801041712155;1.0022421524459230735 -1.7019639917914195504 -2.9104042515379440204;-3.8590814470882333076 0.88704966695585052427 -0.79754709369751686232;2.2265946065901780493 2.1949301705132917562 1.3588647788723162702;4.1224207623694990588 1.3710602554757260751 -0.87492164141982231573;3.2092342952550652058 1.679583078425314735 2.4146301690774021331;-3.5754856816867675029 -1.9043075313858213171 0.095317450046444207601;3.3225462542151831258 2.2871773046368253368 -1.5321581179752408186;-0.17750098110004999818 -2.0908471803320543003 2.4340037398762395249;5.9627386045070043252 0.94220934103016429351 1.5758568658635740967;-3.603933302941839667 0.43035695986009042668 0.11726891374607445462;0.9499116639351012914 2.6433496307899346789 1.9051659838894321464;-0.12579795362766132971 -0.31880090687366674507 -3.2126225247615209923;-3.2485692317710106458 0.87029631202501112064 1.3054175771417864116];

% Layer 2
b2 = [1.6288585533581001474;1.4325840368177742423;-1.0831973390896942888;-0.5502548608772163119;0.35732895204896819585;-0.33426226992120317005;-0.61163756866933394196;-0.79469809381377587432;1.5214561353799453958;-1.6474288196710789034];
LW2_1 = [-0.03641417104681935607 -0.12392401214270525045 0.84710829432587497756 -0.15381299558305691622 0.55248335040133100815 -0.40995433506759620945 -0.019534968761546585986 -0.34595218605349292718 0.51379251435132922143 0.22473743941366147725 -0.19346650668952686258 -0.90514235368160889106 -0.47031558093752373617 0.030238893173170161566 -0.010436948209268954307 -0.10013129212727703288 0.49454795099315967954 0.11999455136684199219 -0.048998453095293083293 -0.28627570944578267786;-0.2793918153530506876 -0.57713793869198704023 0.91829131328744328933 -0.022224432240723519805 0.44693376768650278086 -0.92502472050847950324 1.3544700558905846677 0.16680127700092223231 1.3521492980801161909 -0.60447736371155158519 -0.16858874949004001853 0.52940942964315396146 -1.5528021677612962037 0.023404283022843620776 -0.21275131776339245571 0.29406635128148056468 -0.28602698172857976555 -0.067166984842750007689 0.46212951492597398317 -0.18668173316762565195;0.52963815415135562237 -0.56567587791328133306 0.36243628497583141312 -0.31408118471501622615 0.069607008574667381118 -0.097733827976100931534 -0.36918497839031710894 -0.27742567780326377047 0.26518662948021964887 0.1264888875559848358 -0.40783346048892576974 -0.32387698178583140818 0.43176190727551844173 0.32763539983303041625 0.33858512622759168176 -0.15944222560839776959 0.073575003707232800032 -0.44370280290306868265 0.18767777776255958888 0.61813123349862686418;0.59937402612751444764 0.10896660497325956485 -0.04477052856683170351 0.34899524684552396536 0.33538713511220474839 -0.1339142353013749176 -0.41373077722434031811 0.11092355224092112498 0.4269207743351832729 0.20818630145253314012 0.10283031245519803909 -0.3722867241641331093 0.7183864263163848296 0.51784352105109598963 -1.2129708318800906941 1.8058592782362259399 0.064903612510523484014 -0.60641111504199163296 0.34677701175846736836 -0.0055718107947085931606;-0.5532707783825141501 -0.42061942423510934042 0.80624585882423205341 -0.10962548883528863697 0.5745568768042809138 0.1825125402301955857 -0.3204460902007612022 0.085754549202979785116 -0.67050151639670330095 -0.38468651526858815837 -1.4326044983252603782 0.6148543734164305663 1.567034923645849176 0.45062347918552819737 0.90405225203007633095 -0.0048969921343490797894 0.081624066228300248826 0.49946935511111878458 -0.13650781652753726791 -0.49826373975407645123;-1.0461638082680555506 0.32291939397644320309 -1.7277346191959328525 0.91848723989784275545 -0.51465510202710151866 0.95724619566087576494 -0.73532218534624993467 0.15774350536105968823 -0.47354544804193809959 0.44023805214640343575 -0.84689001645785388916 -0.47803360532221506052 0.66814871579349588426 -1.322197761850777642 0.63758234867754315367 -1.1956766132369662792 0.67648634182778988322 0.031657444170450591003 -0.18687034612951655688 0.20928150168785092378;-0.013500231841577954583 0.38458597241696956814 -0.64585109075516600186 -0.19760853179194548535 -0.37066207300092557375 0.54071396760774381729 -0.014809089413019498049 -0.10174368539231729014 -0.12431681370527861152 -0.24655235912020595501 0.50292938338067516568 0.78198337269151951823 1.333061216530574189 0.27028426437154295936 -0.1899771286012646998 1.202151656819973935 0.076193050572955903221 -0.34591538055896142723 -0.11593007100780534924 0.066380504979046170422;-0.44703376591822829855 -0.29635646719183167397 -0.22587692310786147698 0.23720371681764648719 -0.60196422241879987691 -0.66079200827167539067 -0.31916852641297843718 0.0081000463756974588891 -0.33657099079713531653 -0.4866979085155296314 -0.14045594697445423771 1.1151181722829828225 0.43437850926465448875 -0.15857334420201865677 0.32643087782981250466 0.20764887511574464662 -0.099482588243254191362 0.037973954042507848672 -0.33536111242936628152 -0.29444450868147570288;0.042075677006851879003 -0.25778436201220517043 -0.99451775048442658811 0.09627879395400938678 -0.79962246194684893918 -0.92308266270553129829 -0.64045711712440156482 -1.6448967753785552759 -0.19908643073422099823 -0.10205567445399586768 0.13792607117091812419 0.037349671047531299295 2.0267730434460875522 -0.56627271899303310843 0.10383166228362042394 -4.4829980942283667034 -0.27667359256926638 0.42957634650927067899 -0.090850099827255392793 0.23914562314714818414;-0.64516642039905958139 0.089914021967738275154 -2.7634817531939268598 0.13626448521187478624 -0.071274866978977710619 1.2927001528478372361 0.19388260362543588422 -0.058335464802744388391 0.32568193595919286976 0.87902461364032347113 -0.83107447356735886235 0.38761965478227711213 0.73277939826574300941 -1.0983616871563313122 0.14439089250630310346 0.12717010157646080337 0.73559918433355131473 0.63871098254817681994 -0.14153910684130258102 -0.31673417405648224277];

% Layer 3
b3 = [-1.7991844621600927567;-1.3758390531113022792;1.2178000301518736581;0.68087155841449120697;-1.290337530867467164;-0.90552907312634389747;-0.5180497543907820468;-0.7170041195676435386;0.94595204082668693513;0.33621894241170591222;-0.044740349016973351981;0.29858115852555505709;0.11215799373310278431;0.95382529299638985076;1.0254417020769310831;1.3550917846140480005;-1.1848391700924010284;1.7730320017374232577;1.5358324669988281386;2.1950100310992191055];
LW3_2 = [0.53248627670520676247 -0.90390417373199560824 -0.64648979885248059052 -0.87263488202878780609 0.59039825880811191983 -0.88209409719108067272 -0.16981119875101832739 -0.12324635217258984865 0.41282302954519572991 0.51258633350639204451;0.53069499881011006348 0.68352883472119463359 -0.61940326740413587103 -1.7410597226092126011 -1.246281911438885226 0.73427271489138201677 -0.49920500003122436627 0.7203836760339888956 0.53111137232457750201 -0.86354465382205169988;-0.29012668366498756134 -0.85540017126606537889 0.76518935261015652571 1.47908656140779593 1.1225297756069476662 0.3964663076813080278 0.52484217858544957025 -0.99357712891107785591 -1.6946375748800404093 0.80174830790766205002;-0.70574217004928307961 0.75702005892544810273 0.48620762343466866762 0.30508984042571246631 -0.92601876242500602565 1.0662856657211465805 -0.038993735965940364008 0.30332608634165875161 1.2075476705762040464 0.61644439712806886611;1.0726872459023122364 1.9837314370275411779 -0.16371091863655007348 0.098623215758906104811 -0.14916345757714855047 -2.074284676434437813 -0.65668723913144366744 0.68645365786601708624 -2.2536895580992140076 -2.6087763601194389196;0.45283851282942760852 -0.0068966095622817443281 0.79008401341765766013 -0.12131970569906588842 0.19282331423165033346 -0.83164983255545177343 -0.65322771433713422429 0.82603981628568767803 -0.77983876409530406004 0.19856733124919667688;0.54029266168243883506 0.20015341447462667301 0.40723866197658009636 0.7699313529485759533 -0.83350258117764886023 0.29198612735845141941 -0.095134557148111281721 0.98973795658137930786 1.7386177692442223996 0.055963642126901316787;0.19600258812416271326 -0.82069111608104128308 -0.42953797305510682536 1.0649970942989841483 -0.63150993704329727585 0.8276211754190404557 -0.63663595085979152177 0.48792446354168278466 -0.46841726943347972156 -0.29203656113001935646;-0.50523924745532111658 0.32060475538466887135 -0.55972462759187124881 -0.33164526997898252647 0.84608388537270395879 0.14497906538649546482 0.44950148503665926514 0.53162379108832957808 1.085921181755664211 -0.11541558294220127801;-0.77922132947254296731 -1.4188102263964423866 -0.39265785149303078505 -0.27390868774885723802 -0.52538777798246039108 0.45676912790402973696 0.30489259874043478371 -0.31721671768112891243 -0.18570118093512785751 -0.70184812089922454792;-0.82083469368804273802 -0.34999979045143914114 -0.25961156557281223067 0.19964604153788095831 -0.98343663175377848962 1.1725712259054976716 0.0052698668066458904946 0.76626130627752997437 -0.27422157965517268696 -0.53140941532858965157;0.31807305382276573891 0.13268110686268272391 0.59919228866446749837 0.92185684971082626493 0.95679673136742127149 -0.29488955154761564703 0.43510966044428434074 -0.0043081096546424037241 0.86056036115247325213 -0.47799342855098186922;0.81490786662196079693 0.80062429658585765324 0.083123839656792250508 0.21376317164257455095 -0.35849692173718333832 0.2822599476093324844 -0.89575903227125452943 0.29505538517567414525 0.29102424560280171217 1.1981273830964820348;0.063814461686025628073 -0.4268175754319400439 -1.1364639505837850209 -0.75190788261511565249 -0.49806171453809411354 0.064405596235618520207 0.11931148658258616813 0.75077205461810525566 -0.57312554387195280281 -0.074866902020475703528;0.63142882716340464899 -0.96318973200816127012 0.47659956752230403509 -0.30158951095650082808 0.55413182402939220594 0.55380246380086484148 -0.49489703369484805417 0.1381045119123613385 0.69380614303693988187 -0.20495020460897389603;0.63801483279316240083 0.092765935420512049547 -0.25507923697033002552 -0.30621202434278876892 0.59345454699623823025 -1.2631735012973028809 0.099763542949658029491 0.8481661835976345154 -0.15073933232719236019 0.36760399502894741675;-1.2093541825048885752 -1.3776088499427066036 -0.047484954110111152192 -0.24316508912278694821 -0.50356053441197456966 0.67414070564369421579 0.46150534483973232325 -0.22866141767388684092 0.0033387079865234634002 1.1955157911809861648;0.55290390169890479832 -0.1620101247384637122 0.29136573993656716963 0.34676471512500073313 0.048875391930173761601 -1.5871428248793304494 0.61598686139327007982 -0.04232107936782032731 0.98563261863889706227 -0.79383272068425214663;0.40905101332110510581 0.096292567914380511329 0.17862989496004250123 0.2639810854145119845 -1.04017137307374119 0.23612339053021286217 -1.1204703150116499533 0.59137116987139004554 -0.9179293983371494825 0.54465820884357263321;0.96661917218589255008 -0.66790576496109532734 -0.33318003500803433647 0.453658913013316345 -0.58946793630247606988 -0.083893471195914032235 0.12165186139357951622 -0.0028875095108418409595 -0.95260296376590414269 0.48054816875135908383];

% Layer 4
b4 = 0.0769370095497717843;
LW4_3 = [-0.15931650870661320796 0.92599516909093382289 0.91961898990867618764 0.23831928733267163101 1.3047132490341319944 0.36777232606431792261 0.52768042133200376842 -0.57547463686895106161 -0.11648333805641850058 0.56199987833039799501 -0.20067816065955976224 0.34400863027443423503 0.20760227676712925127 0.27013896013465776846 -0.19136258741246328641 0.41701719489262178975 -0.34722907248425616267 -0.4862558102301695051 -0.15056805733212935694 -0.36640438067726049942];

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
