function [Y,Xf,Af] = nnmove_62(X,~,~)
%NNMOVE_62 neural network simulation function.
%
% Auto-generated by MATLAB, 09-Jul-2024 21:24:07.
% 
% [Y] = nnmove_62(X,~,~) takes these arguments:
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
x1_step1.gain = [0.10151410520026;0.23976556688107;0.50000722551666];
x1_step1.ymin = -1;

% Layer 1
b1 = [-3.5656996279457757737;-3.5768568867524028754;3.0223876456355114328;-2.4059685162747741494;1.9546788458548105538;-0.32067257912286528665;0.36181715190885366251;0.84852563342168729754;0.9009962420412134243;0.87627093071407546887;1.6341531704814418191;-0.10528207879947645842;1.3088538338257520444;1.7473687053189377316;1.7425223190819896235;2.595465298169562729;-2.6647693511439363157;-3.3555560132454869127;3.302801375153053165;-3.9734098941339315303];
IW1_1 = [2.3224864728732823593 1.4716236248543670406 -2.9310370479360874363;1.3922950916696046342 2.4678996632048058046 2.1864656230165229189;-1.9613726028691378378 -2.6869610517206892197 -1.674696690607604177;5.4736233073737645682 -0.47530520143243520925 1.1492295967482020203;-2.339509412548071321 -1.9580477988269897605 2.6143088286895128647;4.2978203935078624909 1.077419361242450746 -0.75131775273542200644;-3.8653424543186036821 0.63906493613850579028 1.9944454585376651945;-2.2287713983172139365 2.2101296999631703244 2.2884156985470514023;-0.77180889555513032541 3.2998246517247045162 -0.854275871676743348;-2.4935488793151834308 2.0190099042090148274 -0.90691732468311481163;1.8894759525570488101 0.55386888892534269502 -1.9746672203167863202;-3.7723073654264891452 2.3529979339399256233 0.046904758893104636641;1.0857930588483075685 -3.4023520737791397295 -1.8079132504720862862;2.8275702717393453867 2.6674678999303820248 1.2357521591949223172;1.1646722032946561498 -2.5610438920382554429 -2.9426140476442252947;3.2173527003863289231 1.0026615278918409313 2.8732879629907599472;-3.5193016112171116028 0.23398046838672822978 0.8270527948517615302;-2.0984650905297521639 -2.4145164945139248047 -1.4614548461260317147;4.2131799330921904101 -0.76799240963364423518 1.0119384620145921438;-0.81906016101652678874 -1.8209365170704547854 -2.9517893082009485362];

% Layer 2
b2 = [-1.5013542150863963265;1.4290847683938063817;-1.1696201984345635516;-0.68688232700633411465;0.50937259025957470904;-0.050389098967496548376;0.35378256184197987011;0.81685028925218083895;-1.5497847525246748468;1.7709250899407271707];
LW2_1 = [0.59447826693303063017 -0.35748668760034379988 0.70269485860075475703 0.55604150331336454904 0.61782468457897510294 -1.7098037748151340143 0.74143407861211363397 0.63969039950321215926 0.32133990521927346951 0.45892569321624981926 -1.0777932903718108193 -0.14865032667945218825 -0.12244427190815264372 -0.07752248068162774508 0.35794102022426632637 -1.347137059969637729 0.046364990261198182897 -0.45402148130969210982 -0.57499452959193964041 -0.46135564420521724127;-0.00096651690511070659922 0.24287364405010586355 -0.78374316947534772293 -0.12494415753901830235 0.61710237435373282988 0.80708737935327523605 -0.18067545100329471253 0.28707684470037392321 0.11776565065147630296 -0.099801067497405179796 0.53949463076821613239 -0.65194460039798596274 0.49789914051352041069 -0.56474043270130047656 0.55585190653285720952 0.90242277509108625999 0.014827643734960751706 -0.1720554541076105004 -0.70937616092549193869 -0.70889363373719027628;0.68373963620021338539 0.16918227939448218788 -0.33674466847310585704 -0.15828421276406440255 0.16424081293654019253 0.85839856555986038256 -0.030086083594087716098 0.19979821664115146596 0.11571339107233913346 -0.17702732369804990986 -0.39377874898000292392 -0.26962438190617182832 -0.36335072656543820901 -0.98413107915597786146 -0.27556901056795651828 0.22723310867688772952 0.20215655211809405167 0.63174312376831998073 0.25206143211506654156 0.16115932963325435567;0.36645774685612036992 0.63594915821568431813 0.23749758725753480904 0.32191276640726895764 -0.43142057511608933318 0.65889433611014747161 -0.56103472915306684676 -0.37446309521102244533 -0.10190676735812057019 -0.4633304300234633577 -0.75193913165940184928 -0.45631045895248045774 -0.57676468211730647084 0.24067215513048387243 0.01348542730573968132 -0.50514923884245677144 0.097142179694469199536 0.7741653994119601645 0.19184657876214902816 0.54263170785842862465;-0.51741028465865335217 -0.16194617178640907662 -0.29964597556673699952 -0.60072664408486720067 -0.26105889925907110882 1.5952154331062120551 0.37773683275457031749 0.0392761655804941337 0.16906492411110679575 0.43223605988489388618 -0.76167452923433875966 0.88130624462095430438 0.012199974959057365356 0.002181691852159259315 0.63437243212633942502 0.25028907719779491803 -0.09377096455723665791 0.4994587846112328311 0.054747602474148469864 -0.67667065497144529562;-0.6041713448872572112 -0.17137877922768160466 0.20075067309824626283 0.31729449394939274187 0.802264727705375158 -0.64271252420775215608 0.80346038705414080106 0.12683159874015123569 -0.084198250114896996954 -0.66437626021683682254 -0.097755680719957424585 0.22209798505446964878 -0.025045113989831932488 0.027280614452585172369 0.33501747939787474007 -1.0884026122106083001 -0.51472234004067118907 -0.10181699034403937643 0.26789263084620218436 -0.14134102477341825566;0.13851805267563532809 0.16036635449760147654 -0.47378544836432529008 0.13739726831337834012 -0.18904871131132466866 0.80530595768548185465 -0.3598249043816606485 0.26868776406067490514 0.99482689799868140312 -0.60356690460127793152 -0.8276015819126600892 0.0018785277203875591287 -1.0536775292706379581 0.83236369364814899452 0.64683079130376697208 0.35509646187520266247 -0.27063834804640835019 -0.2892198700980904702 0.4499041000121499212 0.39658454238072032849;0.51599271290158243986 0.64802551627361903996 -0.75861528700747704601 0.14960779702955692705 -1.4265315244563741004 0.22956103788415591072 0.51501622656134227185 -0.48036358374429183327 -0.21280111001934359782 -0.017810782974909303289 -0.60287968701380190151 0.67195337524952736263 0.087486809769789231073 0.46300217314240482702 -0.35194756781717606575 -1.3300927618521520834 0.3007078535636570904 0.049194842088071420727 -0.075411078141880028003 0.28994601820763199473;-0.13948195788041578558 0.24978963030609710461 0.160719376612237147 -4.2107336555451375659 -0.77447544784291377784 -3.1333684233000069774 1.8675896394453845861 0.043739042005048626993 0.010335765455735307361 -0.67506808153521735694 0.42722970002757937324 -2.2243899769671466871 -0.076173668616995121594 0.1414015338078042916 0.94746749488555259688 0.34870383738425486664 0.40385215881741581834 0.36471422508258150019 -0.88121788184900895491 -0.081460480305828350533;-0.090113047915532457077 -0.043819591220169894219 -0.088082581147297514534 -0.22050558280683354995 0.42025942834555146677 0.012373202444239882539 0.062033736868625399818 0.61415428276919936668 -0.64795878510199522715 -0.36998159456882301344 -0.18010487094886559745 -0.7484626804575499337 1.1650961297786881499 -0.090727380891582679046 -0.29346333187295325917 0.42371641590512643116 0.0089185389570284410304 -0.48885970623480279329 -0.92171874548533483384 -0.13606628727166619752];

% Layer 3
b3 = [2.0478684129669328939;1.7603539567633663676;-1.6322279025426267296;1.3370133299924007453;-0.92077473935337883493;0.78284788641453006974;0.88680596659012544958;0.71603734513568861875;0.61839593500872092058;0.24157459695219271611;0.046346105456377309495;-0.48360423994434686978;-0.48738989549824945913;-0.50591248681091616213;1.0209807151303755823;1.1270608795185450557;1.5097582119604879836;-1.3344272341441798524;-2.1255825821335778691;1.7423951470000156316];
LW3_2 = [-0.60794459051249905013 -0.35014744177695122929 0.28307438350196928445 -1.1084137313555966209 -0.26748193800628827788 0.18422238438620630596 -0.16236343567086838902 -0.91352732787615542609 0.86300051413050338223 -0.24662149302291322406;-0.39270248112769950977 -0.30065199274428838772 -0.96298834671272726116 0.84282721251129522066 0.44163695568183358731 -0.31095487030580470922 -0.90178106442399663667 0.323405160243127765 -1.0595095208884655058 0.51811795149151862461;0.23414834950358645593 0.21431246247239477132 0.067880736271268379833 -0.74977515718609832884 -1.2338679042200935143 -0.56525365605001709479 -0.32179445750970386841 0.44160915413012663544 0.74074482787566864328 0.14743746237560187429;-0.74830573295790003829 -0.882831275894241152 -0.30913859365705653737 0.69782725924142086082 0.67658440568955791061 0.48524290405526465664 -0.66858003732592619084 -0.40077889832809859838 -0.184443276563761277 0.56475692857753934106;0.018931872669789955033 -0.65309650569296517908 -0.48455092726921622504 0.50362838560814704447 0.3393237324689117318 0.088685353966743818432 0.12921399227245150554 -0.95033143937582398308 0.44156797556047444608 -1.0233869062348968093;-0.88773498642473369635 -0.81088261495778335419 0.21987394061431564385 0.66570534799128422421 -0.74862682093642518577 -0.26171622391504245631 0.17841058327566719499 0.84208934934109525017 -0.69249663278950679413 -0.61227884370317953167;-0.89007248071496725128 0.85466342478452017595 0.08005644200783533504 -0.36683765004558099854 -0.54255100492285457392 0.52474564477547269714 -0.28429744222803332576 0.61446025612223831303 -1.2184007423291978167 0.95137780615616074353;-1.5090280697037468105 -0.61450825957386423504 0.02075056174855566607 0.12933914608328955786 1.190341247496348398 0.40638760937941575957 -0.65166842288983140019 0.50833724363470089713 -1.4186617463371127279 -0.51580731484859110303;-1.0505771090683253544 0.47707597364488579794 0.43792655276496200711 -0.62196219975084177101 1.0462503326613561416 -1.2039497545528137223 0.58115403490827544086 -2.4538569228286757351 -3.5652501225733472801 -0.072194969568090155976;-0.65155601873987334383 1.4981937000859157916 -0.00461201538789963051 0.13210706017250675726 0.3039272396041012847 -0.55699690348621233582 -0.34316301685802236277 0.64719619196341637846 -0.19686860654111609792 0.35907367546858859342;0.63447376739004412993 -0.2739012265978675309 1.0714672446369970515 -0.15694051530216643342 -0.80814087040310222942 1.1628135613923176184 -0.54105192358537856911 0.30602918092792313898 0.11641045103020863927 -0.40695840486477879994;-0.55893827381171024005 -0.49295010558929858169 0.26923318654866196242 -0.61941574900352158739 0.44866913585395207242 -0.42809762973953746634 -0.67098759912289174245 0.96489735857648106787 1.1223626853748258636 0.93684710793903736015;-0.047642874100749500743 0.70486762926787593919 -0.25745831531729512776 -1.1329286340438493585 -0.25261443181329901186 -0.19647033407404262961 0.0577163113166671779 -0.025314005137790668298 -0.53869630932786682909 1.1127020544185366457;-1.5055893026281599312 -0.098696492323259124579 0.44584911729300374938 -0.24227744857912414389 1.3686761866750221106 -0.49188416537256246519 0.57638984330508613585 -0.69701877744224527422 -1.1441683341798762896 0.057796368733647289495;1.1027158553272511377 0.54219277664546394746 -0.72303237295869327017 0.11243550072294461462 1.2931838712158021387 0.53139627028367464323 0.99444103608237610636 0.05894871873242993332 -0.69235009928173474325 -0.086416169449541085923;0.71311986031019136689 0.82008944562295904568 -0.11131916547488504565 -0.53875446245143610025 0.16880965852736168342 0.95063938721612406546 0.54963183857382058584 -0.41326964410139033212 -0.67485913213097503682 -0.598919695387543638;0.61929538527117533597 -0.69531066707095179336 -0.80646926926386475198 0.6095824771295395017 -0.34750691612097661665 -0.52657323228981178787 -0.12545805468751286549 0.036601739166850499885 1.265101048961357888 0.5094960683101832366;-0.98463454219597501549 1.1215584617566101144 0.22372806187539842626 -0.20568794780398744204 0.22982889288071198242 -0.14368542361784933381 -0.37853669659226563127 0.35997747792623691065 -0.38013987677301491752 -0.4594445358320205508;-1.1889299919410407647 0.31640002020890323209 -0.373549963594262735 0.69229201814238194856 1.5222677486898650301 -0.19987623551100516806 -0.91475815675777683023 0.50566021616406564565 0.89064404523020213045 -0.43456404966031403347;0.79920136403625130495 -0.24945963268827836545 0.99527396650339505779 -0.71174334075380418785 -0.86905089146042924231 -0.14363491828617699908 0.45982481649509332478 0.46209627121468549449 0.088537572541836168094 -0.12812600498567511265];

% Layer 4
b4 = 0.43180996611196953427;
LW4_3 = [-0.053127389884928211128 -0.87223384658350333609 0.55003496228906323395 -0.11352966012647314198 0.50817282487915538258 0.35634485327982240443 -0.68967724436177901826 0.90991754373962863145 1.6806937665540462312 0.69825992389960600537 0.3725827810328434242 0.72485190704098034775 0.94038777507657012045 -0.91712767034713404968 0.52336143003130286555 -0.5320545614874310214 -0.19369402041046424046 -0.18171320441830143833 -1.2858091166624003865 -0.020890234490829599767];

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
