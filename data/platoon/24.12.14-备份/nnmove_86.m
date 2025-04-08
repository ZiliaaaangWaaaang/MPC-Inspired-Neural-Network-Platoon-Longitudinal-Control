function [Y,Xf,Af] = nnmove_86(X,~,~)
%NNMOVE_86 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:05:59.
% 
% [Y] = nnmove_86(X,~,~) takes these arguments:
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
b1 = [3.9483584585088142838;3.0612868003917022008;-2.6616638003031183324;-2.2365733429894465445;1.7949319753311425707;1.6524770691317094418;-1.4894462062293116755;-1.1058031496164404395;1.0518658534518230407;-0.57037281034740017205;0.16671234611890353716;-1.3621856561325684787;-0.92746590279758400754;-0.97718892550552005627;-1.4602141704980295955;-2.600324952768036546;2.8459302487793562975;-2.4848165578930161423;-3.4710269312691721666;-3.9399555436810533848];
IW1_1 = [-0.67433066110703765439 3.668218511110818536 -0.43806653693005265238;-2.7894886839528969524 -2.1809753800708802096 2.0138917115659786816;0.27020000281174871848 2.1920504542327168274 3.5074925013226616599;3.181668087784006449 -0.71977932977129277514 -2.3747049563693831686;0.2909767724901867747 1.3194972647713834046 3.5723193332396983024;-1.0014917365592859166 -2.4575346767023158456 3.0431091885294363486;2.2386014008417349785 2.9236464125860357477 -0.98633372577700606509;0.71237601537807970775 0.25152737034377997682 3.1639648172890226796;-0.91359677645487702424 2.9410552685977435772 2.0872584808378302768;2.4472171051471778291 -1.0636119936381189799 2.890239291666298449;-5.4993965717112702762 -1.7210496200109148823 0.18781019214859331901;-1.5345148476431946793 1.3952090161073287256 -2.6265613435362924477;-0.4432631322055222145 -3.5706182401506540991 0.15015483467822698938;-2.790249291361450279 2.1070917133217226258 1.5470706156913878182;-2.0272033213423545916 2.0474340395261263481 -2.7213853740076898724;-3.0737641366198169557 -0.44066191443525110083 -2.2335020230811259978;0.46699926425723564671 0.065693739757349697839 -3.9519191406595748361;-1.0877432424340884864 3.0671771275236832111 -2.7019965289225331695;-3.0962193871156178382 2.1032580894787242798 0.19137402452851878798;-0.50841068676590916997 3.1483169645218884725 -2.3671551502322629723];

% Layer 2
b2 = [1.7148549396016972146;1.4979418099827184196;-0.63691261865448212109;0.93892870215441603943;0.097695031600200751831;-0.18873569375418233762;-0.60361095586049939854;0.92831499572125208974;-1.4501537986019055193;-1.7463133537556894126];
LW2_1 = [-0.31664807083169083102 -0.23017896589633851656 -0.58079029873927034977 -0.38196902011982802883 0.28565255587739168952 0.54723361089897393228 -0.070709467200275433196 0.18702910557231300359 0.50458171648347138749 -0.72328036698716646757 -0.087875990255422156694 0.3508274093033119656 -0.47343400380185202136 0.0073401716205863543757 -0.36808571332919970409 0.42742185560060558247 0.26594888026440138828 -0.38659420324670906721 -0.58817645379161365149 -0.30462508547045891172;0.016870162427475576816 -0.093232316863417069586 0.24471852991545756106 -0.70232831097106296347 -0.55610175532173578006 0.13070768312611055761 -0.70649994067637722495 0.102567604213074412 0.53062200205514831186 -0.062609104171214749468 -0.52189537275335795563 -0.08501352262070697996 0.18425926836535896913 0.45236528092100630749 0.042966951629177588257 -0.54892337959980441742 -0.024437037871438912345 0.29184302364586645062 0.28669833777985836987 -0.7471036946144273827;0.69719459110351356124 0.65191965745211755134 -1.1319775289155544762 -0.020746241026662677609 0.38196609635574996222 -0.37696808287339855781 0.16075344871618135745 -0.49634857486271588556 0.32439742358836720637 0.0017872878353886942349 0.66496041779284764672 -0.14571083817075108913 0.1152054556114402023 0.27979634883827197989 -0.65781943610557513935 -0.196320752320811448 0.44789945179535151087 0.50583506429655422654 -0.091815123211185373231 -0.62892391829152349825;-0.63688201997604554361 -0.51528616537627469629 0.037848414814900158132 0.51050416185327029961 0.17662178594961971956 0.41651465648992574975 0.47084462496123896669 0.39134037015700651185 -1.6365273612217619004 -0.98823014706619860537 -5.0202159054024670937 0.47963407064756863329 1.5222575423989745946 -0.71444113727725822027 0.97177183761592844657 -0.54780991338970619342 -0.94115372794220497621 0.44302880464558014317 -0.53655936582164498461 -1.0223306076388820607;-0.15208311815643957288 0.044409988278311378351 0.17915746133218835023 0.015361000350953798663 0.3606489027931805702 -0.38029499070295719187 -0.17146635898180351276 0.80660941764597393622 0.04691856201642142371 0.4853595844772841672 -0.11920438618877650383 -0.65781570217906559783 -0.1621370577214246711 0.025935127639787877718 0.54649014894804692766 0.0073039904282325030654 -0.41760337373420913787 -0.28028743521948401574 -0.026428501615535608671 -0.3885397749425991698;0.12433692643477754769 0.32155730733698051349 -0.7144656157157009968 -0.27155087309734360357 -0.38711119119056469629 0.073496131920103943691 -0.44304313267587586145 -0.33353969316997200689 0.40319154411771163105 0.70052713457668858155 1.0540543473457204549 -0.15161071170889647841 -0.31292993556741888206 -0.22724305082862578109 -0.2599602323829354189 0.26879870033993030765 -0.86338465525683094626 0.31286973277177404507 -0.010537433199139963763 0.61986634189404787865;-0.2440974285371110275 0.46299649748439453134 0.39118370152205056423 -0.65776655962033447889 -0.45978030811440240289 0.75630498513181509956 -0.30087713567934704084 0.33292254972766388565 0.0012346941756430770618 -0.62381471650539443985 0.34850326811258452997 -0.46189002063879158744 -0.012141106809317046139 -0.0065918043992270018705 0.17661123138280007683 1.2838763673756690142 -0.26204125004081307848 -0.059086782909572505007 -0.001508603871170789007 -0.21494031723670739553;0.46517760261051277482 0.30952776533601128461 0.16399397564679352168 -0.25098257179572136533 0.17721251151607084195 -0.1128344381506704297 -0.38458481116597287297 0.10483866566539357112 0.35928495581633324019 -0.21604608595284510719 -0.41833355912427794276 0.45073217097647760854 -0.41660514454705466214 -0.09015084610759876993 0.067453552338970837465 -0.53137400313337490587 -0.051841478563552111092 -0.24350640880286097967 0.087574579914288630533 -0.63316309391474778767;-0.24649373640187677292 -0.63302961235934440687 -0.67652736129412172073 -0.74159242077106568569 -0.31053436115614879709 -0.058269433698925669762 -0.33432826382124702924 -0.270398198609708873 0.47996719425776218637 0.53563964590219437234 0.79816036081934960134 0.325541831546170779 -0.19647118723039175281 0.21008234621658608554 0.12568288573517072404 -0.72566263648596507352 0.14339530728919555602 -0.36729379342836704359 -0.56060253464432396875 -0.10116949289259426215;-0.81990176424108174302 0.32400077357339235329 -0.27347031095420898383 -0.37513859952145967025 -0.49031572604130091442 0.055367014336528651286 -0.32749004069644377379 -0.18853066322497175067 0.22574732382522857965 0.067810821054345257752 -0.52654777199151336919 -0.29554247449235332423 -0.97529208424452895621 0.055667355562353200427 0.068334006491180043774 -0.18246420310634378636 0.20916595623987815911 -0.73113068596664043675 4.9480458401484489483e-05 -0.40185404716813377668];

% Layer 3
b3 = [2.1118505012627579731;1.307737111347289316;1.6130813279082980571;1.3641428339406818093;-1.312860893008117591;-1.0140367904340752414;-0.66083520326650713184;0.68839547831237168918;0.42324525033607324209;-0.14055741731025608865;0.094889352625892126047;0.084691948347673434716;-0.61962157968924658213;0.64069446170390642603;-0.8023210179850842616;1.2633285925947996819;1.5076399415471406495;-1.1927366658112386055;1.8700075295852311985;1.796547441616851648];
LW3_2 = [-0.60632961492782011526 1.2601662159740207869 0.43086865592874828979 0.44640593223515040444 -0.55816632418807532456 -0.76293246431838757093 -0.55720201009768799416 0.4537049940967614603 0.17884473460682201451 0.16888595647912058029;-0.80270296193525192407 0.05522471529125709544 -0.082707752401749518034 -1.0060251756396267897 0.17299945533704819134 0.64602688966649735036 0.85376661625263539079 -0.97226191788058280441 0.34030971610414545436 0.2028235842434574776;-0.93749852313793424763 -1.0228593698510344279 0.35056531618890340862 0.15946068620265074767 0.46950091884515993135 -0.53359711166883794231 0.047816633618852438792 -0.93726449490247831786 0.19834047660015136083 0.062652830056670716363;-0.7797462767171118303 0.78583940606530333639 0.42356524327984301781 0.60552770990743765012 -0.41839982355136134951 0.025667797631465604641 1.0985887396428948293 0.061127410926563797988 0.2960678279269292057 -0.22682258217746259499;-0.17241116453814542275 0.65420777070703173273 0.47051361214248582643 -0.09570088150201942756 0.26137237486542341802 0.96066629495078137424 0.52543909248930797951 0.67571167529472142554 0.83764279642752870192 0.012142243238278262185;-0.19079557306609840062 -0.18685103932074068056 -0.28933803317833178825 -3.4822273745660736743 -0.35710752606768858541 1.0994546241893867755 0.22928731965574589147 -0.72896953573842193652 -0.85545946378332471394 -1.0363896819593225729;0.91601899055576074815 0.7099353886670650704 -0.34178892831626711546 0.2566310589786765517 0.28564029979750565902 -0.61020585575817609669 -0.7150618672395877562 -0.56989595734153264406 -0.73518394835859612879 0.36875973312605281329;-0.64855837370860691671 0.3877702073210704814 -0.70766166032898392135 0.24758348510361669059 -0.95641503180422371422 -0.61903303717401381157 -0.76833504362438542756 -0.19786905311785185635 0.28589042604911385492 0.61718829639889860594;-0.17610959779789273072 -0.63755469314319634933 0.82888607515632140021 0.36393479610396528567 0.16500025708411084069 -0.36506733758922293998 -0.55568874971544102159 -0.11473135999670358576 0.99088539017044974244 0.69805873358862513545;0.14180947441333685566 -0.66091471074503593819 -0.26642908024823491742 -1.3588368685420080251 -0.4907282296655844922 0.63716257200538117811 1.5219415388943013934 -0.53397657166314449473 0.16863677226997333958 -0.97288214417973084558;0.78111224083938779472 0.82783693638031918827 -0.75841939210565234575 -0.44909693689461249733 -0.74606136620580298935 0.57541255086927556306 -0.17494317310858473191 -0.13246844386399667104 -0.37526390104245116452 -0.015224433381808816224;0.017557174197577709446 -0.55937632201088038908 0.57595099162989527031 0.036836118684157120873 0.43958291582303715694 -1.3382957710925906802 -0.11193030820054866714 -0.036712468021520928974 0.89104107821000921863 0.23097767044345815513;-0.47169768996546929118 0.60226719944197848466 0.70050169352662905453 0.3053063856645402141 -0.70284465152294572921 0.82530101919863740889 0.76499604797170672743 -0.96923457501983023565 0.67556520500779837501 -0.022232365714264831769;0.61769959444874766863 -0.29759281025073902605 -0.0077760290777805461671 1.6049825870247655946 0.3998111260287458002 -0.39287403929800973623 -0.76980272376766778475 0.66831018997310709384 0.028504802801665084233 0.67825674050213036193;-0.085916660082904564022 -1.1009227759219928355 0.94944758317443156415 0.44952895604490511472 -0.02541333502653427695 -0.78735764395077778577 0.18285679318392056292 -0.60369968763637527065 -0.37311534299473281262 0.14908719322774940941;0.66256539045635209906 -0.77897264620110162614 0.76165116201494498238 0.30182649916783732547 -0.078574353034692068221 -0.8135541195730955355 -0.16972284186370203973 -0.44823543721782599381 -0.35702183103065543435 -0.49319367890401877297;0.91241368177137915918 -0.065672012549612704402 -0.064542283146016260487 0.48450487448149326397 0.74236205208354366647 0.48935489543437166171 0.10044913729803674196 0.87558439743668570188 -0.41570992790515626236 0.1518368945165505246;0.13285696231444615867 0.9989028338671293028 0.56401822981379279298 -0.45467889224895302602 -0.044586034246815904603 -0.67356637593746226944 -0.93335514077418102463 0.93749468193368357127 0.19391842314141907733 -0.85413544747395786505;1.1654736530871532274 -0.14226153434583732604 0.043750591202034214144 0.50566892281193498437 -0.78699635878481066786 -0.20319845837405395295 0.70366403547857803158 -0.58199819851658673997 0.075561547857332711509 -0.61486421547169145541;0.17503220271262265317 0.70644819367578981506 0.21679797242851381323 0.63573972360925989911 -0.82771341451413826817 1.0147510709957767716 -0.30048882117601366515 -1.0156265170160563294 -0.21288988103924819106 0.57518102442333940427];

% Layer 4
b4 = -0.068437899255491846384;
LW4_3 = [0.74123523704360816389 0.24869172785498708245 0.43611370297807339202 0.31328164743906466994 -0.10730571258479554286 -1.4946060894183743617 -0.13888507842304723128 0.1035187165153045874 0.15031232444579525898 -0.73673589255548610488 0.012696866565735346818 -0.29323287130303671288 -0.34720570080081403219 -1.2804242303815451809 -0.18881763404545989782 -0.088075547463581621566 -0.62235763112565378741 0.082483292253195311661 0.28086281990138478593 -0.48802491027156597037];

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
