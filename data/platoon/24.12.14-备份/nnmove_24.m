function [Y,Xf,Af] = nnmove_24(X,~,~)
%NNMOVE_24 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:04:17.
% 
% [Y] = nnmove_24(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-13.2925490923537;-6.70139767883548;-1.99738196042707];
x1_step1.gain = [0.0638195875959219;0.168202204644631;0.502170423671263];
x1_step1.ymin = -1;

% Layer 1
b1 = [3.6909186522594494839;3.1431694409516448552;-3.6485069864429697795;2.7312848567462242322;-2.4650175827358236091;1.7648834842222915764;-1.8173158664102930793;-1.010336643506747123;0.086255329495154423047;-0.2220985543312144761;0.29264487382870219001;0.090454226854347008491;-1.4366353307318326937;1.6524300700354803695;1.6929451203982897045;-1.9304524567545380265;-2.0982764060545426865;3.0643007137295943387;3.1333951764248246796;4.0470101195548489059];
IW1_1 = [-2.5783202787340142592 2.8858704726007160524 -0.13364387858048193403;-1.9992262252052597216 -0.097478531353459435538 3.6983593444060347544;2.7162080205736649496 -0.743123936621295611 1.532888232883539148;-1.5289848667966619011 2.9654571000054321672 1.9442650539211143723;3.2974844231103319636 -0.80293443598727709531 -1.4731897222560144112;-2.5541601673809579687 0.82909387343509577395 3.1989004493352575231;2.857259379839517166 1.6876271827863071895 -2.1715672901479829981;0.24689758867365052541 -3.616171980788825735 -0.55561577780497717338;-3.9884641946937580137 -1.8294182528677436217 -0.6631625103573869362;0.25914603036786043599 2.552121939458394273 -2.3463555968165596965;-5.1971539838484464013 0.65280804636598543933 0.34927414504383941241;3.0646452475218448619 -2.4275705335560604503 0.46572073962043536444;-0.68516572327052438496 -1.8959883557280858835 2.6134076318592494026;-0.11332939649468654064 -1.8619432808869764706 2.9722438078455293287;0.62494543752737308218 -2.3610319678090241347 -2.8467807001554081836;-1.3094948505186723153 2.4029268244004691191 -2.5712030422891327675;-2.3696969735457638073 -0.40910055281902074631 -2.1834939373123525286;1.6395154234312898645 -2.8076430899651096951 2.0226640604174788152;4.1044417888177386899 -0.38165311638556559393 1.5788043227882679886;1.9414413235969800731 2.6887810796512829903 -2.0252196841438361297];

% Layer 2
b2 = [1.7621856852484760747;1.0996999033006968904;0.95445920006327500396;-0.72417239255112031415;0.19171338960443154442;0.025468760906631120883;-0.63955497571025354819;-0.91610989068392756351;1.2332063489664353284;1.1993579533082170396];
LW2_1 = [-0.2655937041079494132 -0.1946355627546963174 -0.44393663911012942735 0.34996059847398436338 -0.024041125824800755467 0.20720572599492292909 -0.44691107374108468564 -0.18010191182609280869 -0.60377391022741533355 -0.40937119013589423622 -0.11069169188538371951 -0.48336790072692797926 0.97647732961215438774 -0.42496227933604097116 -0.27198129414149091465 0.1968439666750446404 0.29138132903329766465 -0.50534295260616779455 -0.11523166195852357907 -0.53596688410345882936;-0.4255897733586304077 0.28159888188675608056 0.065433339720063959932 0.41550279107006043988 -0.035891694370020647831 0.9677781591330378852 -0.66467130825437426012 -0.054684261047608755113 -0.3660335959374749204 0.14541695119217937227 0.35619603791218978905 0.010597278627016828989 0.11549972247886283738 -0.39896527610883364412 -0.4503720736298426619 0.31328250967764437185 -0.60383280737893640921 0.39847258421756409641 -0.96440436511431137934 -0.82333397595960411408;-0.38483019250134797851 0.36158697577240717091 0.32648715105674908088 0.34171244157119751161 -0.50513872851823404808 -0.78330417650273997943 0.20890713248142539493 -0.08680686067635237646 -1.8627019287944437398 0.089070668955275877909 -3.2493562900734720422 -0.82284309517449294447 -0.2791831371229377412 -0.042072140325649244608 0.23247996721830607725 0.83206446025113056653 -0.15435439754499863385 0.19902092020014691687 0.26578192434090397445 0.77316984986473391572;0.084192543081494777835 -1.3167027890164479942 0.71977794671219608169 0.33491143272442142065 0.10509368757920713178 -0.73568458455258145534 0.41553553314007252162 0.34374094624859014013 0.63425310903603482338 0.11874733214241170454 -0.015454135733291424898 -0.36450678736309527483 -0.5705590533270604725 -0.73540989665638178963 0.37473136380676264068 0.49861354643902267014 -0.32568961890507225343 0.053998242022183229327 0.82788829691031584623 -1.1325055668312067336;-0.093760862287441654184 -0.018561035221114345617 0.48896496353996343753 -0.44288714718924571123 0.37077314823716184256 -0.085915379951402984227 -0.043402790766718019055 0.036122456756865747862 -0.92635377612835823058 -0.18184430696965914187 -0.24205073967540158275 0.097666311390287890992 0.41552212765731255661 -0.17815875968374303429 -0.84093366666540347865 -0.2586064108402411077 -0.50871760347738514962 0.22609020215237110585 -0.059860537334668714737 -0.42464752022162777223;-0.082869732584696417788 -0.088012613997695221535 0.62467968747692870224 -0.66009281803229280516 -0.054229797517465649914 -0.029790187973565071533 0.34199712635538770389 -0.2033488806388116521 0.30314906097829497078 -0.0078486631495712153028 0.2866483205013861113 0.45369609837010688169 -0.067552395358398700798 -0.71589197314993446852 0.11696330597156134878 0.88921818294738219635 -0.17499604386500433595 -0.62258271484102334359 -0.84883624065701479555 0.3330044448097991272;-0.62187694353156219851 0.32432420223319929908 0.718269319536590789 0.44635320169309972149 0.5904997586142672894 0.044395661345182191315 -0.15147435143396234536 0.22186895221104169229 -0.38252159952793918229 -0.025845564025060274727 0.65317975863251986901 0.35144683765610129633 0.32138809726948697199 -0.09707190149670066881 -0.19250722057841740398 -0.32566373084228522616 0.179801164430341609 -0.014349715131260636775 -0.47469699994410952115 -0.29440735967918496563;-0.3723730931042077974 0.3069232510652608048 0.25050331058252744976 -0.49581623759754595016 -0.059295163359938569958 -0.14848014733268136145 -0.39112718988592992675 -0.97097330363866385383 -0.54342838644600510722 -0.67954395611061857441 -0.99393952780246919154 0.18565701553750363351 0.3550253735708552294 0.17234360262899414695 -0.83261777456803398589 -0.013756179568140495043 0.11274808514209996857 -0.10644060892548659614 -0.71503554906739830166 0.36384642013876539179;0.38404008881424328559 0.60866981569221534354 0.13925912802425310932 -0.071996858997109877687 -0.41983882679074252531 1.14538751875134448 -0.44627533424920651228 -0.15988158440001090654 0.41300747347703797852 -0.55102964862576508942 -0.03071185790777719235 -0.15161178313628115299 0.49309658875910700182 0.24055879902886753707 -0.21866046739500327734 0.22451905260664062336 0.0048260167820400505859 -0.35620772012074092272 0.55979660831735633675 -0.54817614846587414679;0.38924635007717289792 0.43586002717393551587 0.21991778912093040699 -0.12104353505121615009 0.79541347142238294499 0.47677585597213378854 -1.7328907810871343464 0.045235731372394734351 0.73157733019162274335 -1.0469261944668251108 1.3145006417746911698 0.15539162818498020169 0.28869171056945203135 0.1689060799628669951 -0.8098286367273661579 0.40564078523074559302 0.9359793760158209297 0.185698619033879464 -2.409509519356812568 -0.62828970915708826084];

% Layer 3
b3 = [-1.8180125376290308115;-1.6508364687563019668;1.3302992952724128628;1.4663987263572211273;-0.9560651591834032903;0.78408525208523749406;0.59067666786125883061;-0.73020501233805779062;-0.19986750562496757855;0.076447464980558543779;-0.10727707723149429442;0.40770494730896095215;-0.47482897585967265286;0.94386123147403022671;-0.97304934536676401802;1.0815920205339506488;1.3347981343710035862;-1.5275128331406040427;-1.6964447984672970104;-1.420885774507008259];
LW3_2 = [0.80820414315235422631 0.47080015063575769707 0.6812529440956816007 -0.99573224961319328763 -0.49680375321559372415 -0.30870993999589452228 -0.024424424407189063851 0.82278462661316131843 0.42321484397379516285 -0.82999013160692192148;0.35638358502908495939 0.51492658587902295775 -0.90443092728699159277 0.49557715468429791583 -0.62123933227978112015 -0.29051316032909191289 0.86631514331647441196 -0.77139101078441574266 -0.41208919291292234188 0.50106561081610923036;-0.20055432666898739824 -0.40639095357466359371 -0.71494863162958244285 0.40869499066635800455 -0.18280640725751240439 1.2563074850195736776 -0.69150228774673661025 0.16552392968770465731 -0.36881968018724597957 -1.0394217150597890864;-0.42941742132011517796 -0.23454712985897374633 -0.055843000390471748962 -0.75776412149413963082 -1.0101306481416851835 0.58344321920762653999 0.21988448000391352943 -0.55002957764735449508 0.9144362325991745033 -0.19119892115319520043;0.98985019347647507093 0.59386196526042056565 0.99716204315780865297 0.17680802786916188785 -0.11294023757620524906 0.41667285010977522797 -0.82181554600502981778 -1.0059671081150676208 1.1594871487993900772 0.039455706012640576197;-0.60931483697010035971 0.4559184841847180869 -0.22150263245300977344 0.093821752748334902305 -0.56842824174460471198 0.73382568185157881491 1.0517183363069400048 -0.23367800814760761319 -0.51431020149903006189 -0.809734777945934181;-0.62935958675495673464 0.67159292447054130815 0.93870928524147889682 -0.68650883547129237794 0.31548945743176531886 0.61728863172747105992 0.2001927255516482429 -0.54584520299980299196 0.32108841759064032928 -1.0460688032973379791;0.91469458323604602157 0.21550043449659994632 -2.5577749151028714714 1.6567880358328490598 0.74842428241735836636 -1.5283513246927635798 0.52994312227350603983 -0.55268880851839929935 -1.0562460282175092363 0.74364714720229152523;0.7883081709024049033 0.16436505514152069396 0.77261948768729915571 1.0232763146031533807 -0.97722504334320992037 1.1329597205721784192 0.50273456734859989226 0.60700003374684119439 -0.17656799476213774769 1.761318499144744365;-1.1067089306306892027 -0.14182463896386074409 -0.58589591227212756142 -0.093451629931007473839 -0.44617346681291192301 -0.77102355934303157259 0.10778364161917536324 -1.0106176964822717324 0.09924955119777847945 0.47906846582277406998;-0.35766026909950254797 1.2486751910706979096 -0.16722052950684063166 0.30470196795452375582 -0.27716290862623677027 0.20630450917825221557 -0.3921723090331610817 -0.16610132243059858026 -0.1535239115326864634 1.1582062323399240356;0.44781448577613303108 -0.67988206147863505802 0.66255291248391467995 -0.20396880836190534048 -0.71798664908232989745 0.32314531708569071977 -0.74333621427257223768 -0.65553762858071606967 1.0411191902390479758 0.09031938652709765869;-0.36383934703904591279 0.060402164313064589385 -0.1426119263607656118 0.16787273320871592963 -0.7589935885442876673 0.72119635999863607179 -0.85116639515878389499 -0.35479821014302537208 -0.88495505842009203334 -0.79795040715643628104;0.40339989143718657516 -0.42912468847876039657 -0.55703835492278042096 0.25084298091471435299 0.37941114931482744499 -0.31352791171630894906 -1.480246460202069958 0.058645705294610474267 -0.38622766810957215311 0.038802222115679262104;-0.17872101671944062851 0.045751082557790791194 -0.2383635461617619189 -0.056527157703385171039 -0.50306985049701136159 0.61154826740969925325 1.226658315107539643 -0.08087747853829636846 0.66930372489101419564 -1.0951225197081813079;0.55999239937758993335 -0.66261377304921453835 -0.39027586741341541154 -1.0477038619101022299 -0.37044415325141050177 -0.5693988336613275969 -0.85861792291562666346 -0.53939963149898373374 -0.27772841386332902669 -0.10937520972331395142;0.76478300412364574878 0.83850479567163471728 0.46130901155577402895 -0.36631156700735845178 0.26696450414804184792 -0.49835190642372528824 0.094753380150106009117 0.77525493295243963487 -0.42883085411095617223 0.7855793186647270776;-0.72751073372087815549 -0.46266997817586436037 0.38395144362140465333 -0.15759795953609936903 -0.59970407715997409159 -0.053511202248430998762 0.63433871342250036651 0.96664196783977462957 -0.13822068348565638707 -0.94435755598177761883;-0.46151279305355336069 -0.062786816480087881409 -0.48320345268425485274 -1.0969434266149169499 -0.6039757576757117663 -0.049146011163126009091 -0.69500593802437971025 -0.36960693450755111034 0.75179879267135230059 0.21340643232179445921;0.29538778366571372125 1.2600301556314885687 0.19181168122377378893 -2.3288108084804726161 0.5839120718471082494 0.041060290846295352529 -0.74438162569692112314 -1.2815191019548124451 0.79430464633277197972 1.7152596239591053617];

% Layer 4
b4 = -0.30294251017718781815;
LW4_3 = [0.29487629884559585225 0.23333181615040426982 -0.12324571932783823236 -0.18074856236933095621 1.059194973799953976 0.2063932403431117113 -0.93932757990968973605 -1.6554703901232548091 -1.0532519226782175448 -0.098181681428619826946 0.010399334908374807326 0.51251834138381902051 -0.21274022678898149574 0.58610068475204735172 0.42254644275200187176 -0.27756499020860797566 0.061437201160547350032 0.020314111953865891802 0.18308710285290341613 -1.8930995444352878287];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.499999999999945;
y1_step1.xoffset = -2.00000000000019;

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
