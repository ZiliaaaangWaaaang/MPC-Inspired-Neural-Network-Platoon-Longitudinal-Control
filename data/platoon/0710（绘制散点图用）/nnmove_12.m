function [Y,Xf,Af] = nnmove_12(X,~,~)
%NNMOVE_12 neural network simulation function.
%
% Auto-generated by MATLAB, 09-Jul-2024 21:23:07.
% 
% [Y] = nnmove_12(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-9.27187740505682;-3.65799721531803;-1.99999468395731];
x1_step1.gain = [0.104758804509858;0.259072168169289;0.50000722551666];
x1_step1.ymin = -1;

% Layer 1
b1 = [3.9593247769484549714;-3.8324815859252647776;2.8482954252227439262;-2.6528204188196435886;1.8491249291747409167;1.506818420042220108;1.640760867736222206;-0.86657609062083629237;0.9819250461853804568;0.61739185683851549591;-0.3169585199590086444;-1.057350072331411095;-0.84069295680753042266;-1.0057303341229151261;-1.9148771467330785168;-2.3068640341878463573;-3.0025807463709131007;3.2525158481288793944;2.3871351834253227153;4.098194458361300363];
IW1_1 = [-1.3795066042249648497 2.4273443061681270194 -2.3059202724973872911;1.8422528752886284664 2.4691631882844187196 -1.2012602193299468656;-2.900016868707147033 -1.8939858439249404043 1.7452767322663833571;1.511435299825151235 2.954621216716088572 -1.7268344682163188075;-1.8093475961106944006 2.6451196596846853204 2.2908020119488941013;-0.29373357317489856566 -2.1187235107238833187 3.3199075197008371951;-2.0291528097683091403 -2.7875055207548773417 1.0553438692029186718;0.44052949797703100376 1.2724322234625209393 -3.514092842224300739;0.18656338796165131133 -1.4707388424069263166 3.4961427536003668592;-2.4315036264184684001 -2.8923012074204073052 0.016851029190921941459;-2.7828208961563727364 -2.2537239214852826663 -1.1841126778980366474;-1.9952635943897669701 2.8867292779485365095 1.1701248822421370654;-2.2103599157761433247 -0.67561186694691466315 -3.0404899792720447849;-3.6912802111030109664 1.1894121480246571121 0.73191073311850884942;-1.572471890412418194 -2.5307202191883870768 2.211312451372054344;-1.1186531618912376462 -3.1669452272993008357 1.7730409800309785417;-0.812901806965597995 -1.0724287893053201515 3.1082115335427160652;2.7012074867778257392 -2.1039287047311967527 -1.301116715396889445;1.0692366984323729007 4.4540328906734334424 -0.52777772188521376862;2.899407123149990273 -2.0812219798803499593 -0.5759940356020945007];

% Layer 2
b2 = [-1.5402153319438496304;-1.7383593049326540037;-1.0570353957473979101;0.97625437892870903234;-0.058981535942835429387;-0.11957502810962751527;-0.81391554362350604368;0.80884218925195716654;-1.0072292626416547989;1.5918357035429153701];
LW2_1 = [0.10220604922009957072 0.41059246052048586906 -0.40025941240668855281 0.6867451231708496806 0.006729844572272913536 -0.18197536891869015019 -0.54443302303902041395 0.13530384362093539341 0.37151555888774567826 -0.4070433669241767527 0.27251163392932015173 0.040029449382656949463 -0.014247807354746339428 1.4399766715161421704 -0.61909411712647433035 0.16343003182136547902 0.10363691284002285453 0.11744172308868293386 0.63297586877702838315 0.82177177649484378641;-0.056484084636270304181 0.40654988829853561105 0.25894801473378992185 -0.29227660367917185358 0.40415636646327463 -0.054671391394587466606 0.4193890449873336479 -0.17795537820477091984 -0.033443496569374932259 0.71474373240994815148 0.19669692155934045963 0.17350870140268642716 -0.51310467732925924 0.21151191926398557608 0.21348395197540903645 -0.0062740998779242489192 0.19045588641339505909 0.59475968946260182602 0.55968693250353396262 -0.68152098284236828363;0.33628245252760319284 0.40166335832698374375 -0.5197729509233315337 -0.45112681482289090917 -0.76449024409005894576 -0.32438841787388394966 0.80004716851605195416 0.067153520162112609326 0.57154913987013422627 0.10124903280824934515 -0.38754140049015806113 0.11941481167933254426 0.071089994657312416404 -0.35030494341929263591 0.012733062747269888182 0.30502791441565063613 0.80613182767199065282 -0.27176270731384322143 0.19233717197712985048 0.30102942056915416025;-0.13463725443554272476 -0.13180386879375222131 -0.34588804702347397679 0.64229092526037678823 -0.20070716220955814313 -0.28050508006525004534 -0.72994897033197858605 -0.022044316773828096651 -0.84700939282762544025 -0.16861241440330743124 -0.62751369362060305246 0.15801660834582964554 0.63564580094273748223 -1.2476628190599083901 -0.22555846651402244873 -0.90119388971524916343 -0.18717922132671535596 -0.017712431159680446652 0.25090959530128814636 0.47778050102791252973;0.38509648274355856579 -0.50511394247892393849 -0.53440852189438725617 -0.38904669101977035206 0.36842719647391919402 -0.3124579946707671807 -0.10896371958151870873 -0.47125125180201576924 -0.11652588662707258349 -0.30800313931961764702 -1.2042223873727719852 0.037945275453745749838 0.27488435398016719535 -1.0493448319951059755 0.32078738472030798867 -0.078368803615581281163 0.38774144030080520684 0.27973535895569551224 0.24023039722361411163 -0.54507051536546524684;0.22693737112816234069 0.72609382571012293095 0.44664207005939371431 0.73232967083810440734 0.2044853786716743782 0.29989635431838740365 0.51461887857303301175 0.27072731967912017081 0.63799383732203551745 -0.53140212249096885344 0.15479973308729366721 0.024204617455379176527 0.19791121348501100607 0.052476040227910317193 0.13123377170665959102 -0.60335280298953564149 -0.31341591248925221302 0.29161223436432220923 0.71184489353895097352 -0.32061672488624565203;-0.94501228080612020843 0.052090828414256579171 -0.59245224445964106419 0.3743846046653149795 0.28442852459677203658 0.25676105159899659247 -0.040174859729596952562 -0.68944659298222266131 0.12607240617430021112 -0.23943008682943317522 -1.2575150483319628147 -0.51097534775038488952 -0.4005842452648288865 -0.56318192586021353918 0.13303583619678599481 0.53151239347098433452 0.7279153212082197788 -0.19256746018659237629 -0.44503960988879415206 -0.32062795998530924102;0.4313252142494717889 -0.38367739643867354582 0.13110735806250287117 -0.5029323067883533227 -0.23502276968351801245 0.51839501441610691401 0.093614127675446967558 -0.50145738845397347383 0.68365169240812706519 -0.059772302280815314823 -0.21206027869249144402 -0.7781268114987506257 -0.77482156795266932114 -0.59123193857319911171 0.059368405418973417553 -0.29475469145092553225 0.20583817769287848787 -0.36704716254237867989 -0.36758353134954074859 -0.072315447751888514705;-0.39629011643985057045 -0.55833169200453158787 0.42323340606320891677 -0.033586043188706185547 0.35324245655140451561 0.29883441923990272659 0.80505577722003573982 0.14081952525488153349 -0.32645051724667872861 -0.89575061428580216027 0.15641228771283616217 0.25253319873785179395 0.11805622371432711315 -0.17893001085348095303 0.093932087610679823597 -0.45185072844786217106 0.27407560710343381594 0.24124463739745816149 0.44678598303226152444 0.53197628113627848379;0.60897078101767754266 -0.20108821486222103192 0.32664274221494332684 -0.32003424108008260429 -0.042320702459025007214 0.84573010627660583083 -0.45655009033313453948 -0.5489363200152650446 -0.26207188013277155081 -0.13528625556260448493 -1.4270375394455405704 0.053640001367931462728 0.34063144573536385806 0.21627524825958152621 -0.085521267458961158781 -0.22273865655714794598 -0.47447835140851818414 -0.43762546857055223404 0.38492280642205478625 -0.39161497398538158698];

% Layer 3
b3 = [-1.7113602166052819253;1.6017866678690635407;1.5159657356376703419;1.6090520446368905549;-1.1700404563339534825;0.73020680218934219674;-0.90883203397140344126;0.10916332681260723647;-0.2396442288793873554;0.081030571676898560662;0.28635527519454012646;0.36454650445013991877;0.19853486593029368024;0.91266935946618421571;-0.71810236294359075515;1.153076539852199156;-1.2526545572598934974;-1.4676248589246587706;-1.5467077036813845492;-1.9308156296178702327];
LW3_2 = [0.43018300792450631098 0.69285594769675451499 -0.77607013930132995316 1.0229048901563562168 0.30223675942956185203 0.0081914090831607146159 -0.5842974769030019333 0.93401842941269619391 -0.22782251140552717272 0.27916873267281405724;-1.0156555170588228432 0.5648349387126186949 0.86481251404670733685 -0.38292363492277287085 -0.70961622383962130733 -0.13810528605013444592 -0.024740734058731509576 0.74026246574984466697 1.0508270211399162175 -0.36407159893416729535;-0.69922579144954410957 -0.78125480778708222829 -0.57819157058658632309 0.26113666830515613881 0.28107398009283512952 1.025042466125376972 0.35752396634214228532 0.14300777210759119118 -0.16796393303954090803 0.84217817196780797584;-0.60484288972664845829 -0.73127776482776418732 -1.0380426504223987383 -0.26578335542802800084 -1.1692869742871183636 0.49752214404713779317 -0.61483437176034094751 -0.31681532598224265707 -0.48614297100902742477 0.31669671064458154719;0.79563590467430600484 0.7205149050951784595 0.75093038775235465554 -0.6868727039301747439 0.11286835777965843752 0.56187420438364032993 -0.11916363197872929802 0.048256113472104421314 -0.71044184112474595416 -0.46294742829965451758;-0.33282618917692741167 0.18894725014048383005 -0.70908486074138921129 -0.056198279688464046477 0.35227998509689101292 -0.54375158996338734951 0.96203819618095298694 0.66746137735475541408 -0.91939836974580368967 0.90231890052942931302;1.3915228051551575827 -0.35096443574738395155 -0.71059631883013085751 0.59964681627395799435 -0.60113408541540314101 0.01797911446694165985 0.85116102129029425072 0.69946336944813169989 -0.2281485573912482856 -0.13481364508164422888;-1.2719740004757631446 0.38269459266571176359 0.081621090022384421014 -0.75504065056758429275 0.89111271443740847076 0.19669998608751709801 0.70348309123859575909 0.65153828399792734771 -0.65759161443499791755 0.55272894972040798045;0.59601706708323920481 0.16081872554752910109 -0.21350426071004813267 -0.22038453854345577132 0.68373772489700035404 -0.50681954924315641975 0.81721459303733401391 -0.47839130519740719061 -0.88059987203847045478 0.14102480362963634719;-0.52903276699962820118 0.62018478965371837131 0.94458973467521945011 0.17447221028323700587 -0.24697601348087183659 -0.07881698226305813848 0.62089850627263087901 -0.7322474130037068818 0.48487299758516505532 -0.75240820414518605475;-0.4303368025869716007 -0.43852447857047199831 -0.72960284745535242124 0.4767856393497064138 -0.48164467941427341335 -0.79246850085506115313 -1.115334983627326082 -0.18461266455938027398 0.012524559204911585308 -0.74754150161987920065;0.034428521635143052859 -0.34521698858607086091 0.087206683276447816144 -0.050300051245710464265 -0.73689892062194495281 -1.265033355546896443 -0.08046892969186103528 -0.69422464689303864382 0.45267056056191057323 0.75293949058092879412;0.94274898222103364898 0.84788468053818510928 0.1893089983372315821 0.60301390208343474963 -0.29200080941573958171 -0.39207376529876375448 0.421583700163766395 -0.23688017754684051464 -0.52093685822600888091 -0.86513117315436616206;0.14460874832104661514 0.45381060963663860663 0.25722409104022703197 0.59276684642510635292 -0.88134020516562594505 0.1489123951068670737 0.063162982061253369892 -0.2932114067578682759 0.56574641901846178804 -1.1101061839120609509;-0.20844347212625904953 -0.86818961312777354067 -0.95644171534384447853 -0.34881775025446382088 0.17993369282830068423 0.79223870500208981582 -0.97022895859039948174 -0.48715780790662194244 0.17978481850921196328 -0.68271711954014169255;0.64103199975899405327 1.0664297973008225462 -1.0241065409073428771 -0.010753875066631637253 -0.7290003715022922437 0.19232843624455941978 -0.30706763104978251899 -0.46358840761986075396 -0.96098207532264900976 0.72950812331410663791;-0.31819978382316271848 1.2317342956752630467 0.98022296593101687634 0.2286584307426626772 0.23435526234223480468 -0.46818804923784240746 0.56151754976787016105 0.39812335565668605097 0.20988478917585445815 -1.0685509524946643634;-0.91578369982723095699 -0.32611159748719226181 0.63921754455510815252 1.2149234345145407676 -0.11585603157243032357 -0.22128966410415129573 0.59409399093962056426 0.61139227029778597799 -0.62921402586130503742 -0.77034018862441089315;-0.98638051301889917433 0.30498657499450249064 0.36276729658165590697 -0.062754535907430519792 0.97453934289599153384 -0.28333500394198818384 0.32191216268788391819 0.52412426320246552347 -0.89477362455187969825 -0.6531218803251936933;-0.72841988862633488822 0.71269554411410873662 -0.71213031810187266135 -0.23318895410223872133 0.51492013526826674319 -0.31593886691462802485 0.98107792802677973309 0.8193613904243468582 0.6779399057042366783 -0.17567577476633894351];

% Layer 4
b4 = -0.33344242029820625461;
LW4_3 = [0.53861867791197148847 -0.54997279507584106994 -0.12629700074588925962 0.92514128560979369542 0.51119598399124843713 -0.039079357245300441748 -0.7099919440622673994 -0.53681270217480803186 0.45980992653485369681 -0.083956258374796088884 -1.5044973017713825225 0.021051099070380590444 0.15301424938046859214 -0.73627924382565201888 0.14652763311485503261 -0.96220305221457391731 -0.77652981956275968223 -0.39044634289311225261 -0.011387159382199514221 -1.1233183380168039189];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.499999999999991;
y1_step1.xoffset = -2.00000000000003;

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
