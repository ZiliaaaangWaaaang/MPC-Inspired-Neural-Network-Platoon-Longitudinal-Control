function [Y,Xf,Af] = nnmove_53(X,~,~)
%NNMOVE_53 neural network simulation function.
%
% Auto-generated by MATLAB, 09-Jul-2024 21:23:52.
% 
% [Y] = nnmove_53(X,~,~) takes these arguments:
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
b1 = [-3.5022379667454748287;-3.0280627702581544014;-3.9101275669416994951;-2.1069926589004235318;2.4390576117243822907;1.381251680838321283;-2.0978323975203982954;-1.6579184751230111594;0.57839089883892624844;0.46264742182667673021;0.02069047616700587372;-0.45431266752147675403;-1.5961564253553843784;-2.1809307979631022967;-2.2552650462033541068;2.3130755931597883901;2.8138916306582761884;-2.6629219739676037726;-3.6625668352738913747;-4.0973795797697132315];
IW1_1 = [3.0908607878704632554 2.5012622226720329088 0.81491984007407824997;3.0797374689177092755 -2.2510602110746118498 1.5717538272415305656;1.9835932053343501291 -0.59795408874196409599 2.8823148755496297291;3.2240628700556857034 0.50086712264698052266 -2.7086343123234599695;-1.8877282030465580842 -1.2768573827116593833 2.8947836312952479609;-2.2708321889532272486 1.7703613130029682843 2.2235370272327736885;2.3707617104085700888 -3.0678702499096877077 1.4728802640368892085;1.0252505753340521721 0.33189967380080070969 -3.467429458682438792;-3.7061904559131280124 0.79426282640215251085 -0.67191345462905016639;-1.6095641594548373288 1.683062821034855272 -2.3808845722276510415;2.0868020226967867181 -2.7787772957447622879 0.71209420174831605799;4.9128748162675206501 1.3614862633047595253 -0.45005907496406316604;-4.0720293994814067418 1.1801933365548513688 0.47834460556876445825;-1.9339162386123907034 -0.48266274768450001531 3.1207713423523903984;-3.6016241710513061669 0.057210983694180456149 -1.5430079792002633354;1.289081130185419255 -1.5317491761453818633 -3.3363702712190326238;0.3170174936015651701 2.3552151656436084437 -2.9976368977051364162;-1.6339122394510314784 2.9521258149933777837 -1.8158452292535762762;-1.5582814433662661724 3.0060498637761026153 1.0479008974000876275;-2.0096867440084102974 1.7113098197363980635 2.4422055678758787245];

% Layer 2
b2 = [-1.5909817966245791698;1.4109427252633115479;-0.82176543066276752647;-0.020940195813276399339;-0.62265938973080281471;-0.20034698747656617956;-0.016170616964654715986;0.85532539701630494466;1.2098232360512499728;1.447094185824912671];
LW2_1 = [0.4770305732356310835 -0.16766851454979767033 0.30456763710467460449 0.52629096848677425768 -0.5171774035772915834 0.07061348570354492038 -0.422311979088265399 0.27972064994444983954 -0.63307736506242573427 0.32762908423597209007 -0.19857790475313241707 0.036349938751075845655 -0.57414295882651389391 0.080558821931193014265 -0.20921544948895326455 -0.5958720331950837501 0.067434385491314807748 -0.37262956695211374436 0.10307891095383220348 0.13694648808102766191;-0.71294976436672230502 -0.54266674548266735645 0.19131288942988994295 0.68818363764395695803 0.29858595719665076418 -0.13640709695284991554 0.3305126973179525196 -0.57942809395983663201 0.72560209087945504169 -0.12023776740070730995 0.17609891792789925113 0.71734665450598211756 -1.4908163558169922336 -0.0165213628042118095 -0.76332211957795848001 -0.57310838345763026602 0.021069011552556179967 -0.65972432849685225253 -0.081236591058540599808 0.070000762309861921939;0.46127215913743269127 0.31405285876974370352 0.61843236660818667882 -0.16820095385862418591 0.53569164324163709434 -0.31214261031740392349 -0.38096910074604156682 -0.37063680879583649208 0.43958982383167111152 -1.131713679846536813 0.69498947096504393173 0.50696193776039955026 0.50032020625087159083 -0.8942923000670403022 -0.43107968385008088585 0.047323778225301038614 0.81205229708891635276 -0.3838545410601054142 0.012929243734952557132 -0.14308390931976441851;0.66514337758072428208 -1.0888219733663673239 -0.27041691454738381317 -0.14786920112473275757 0.13378405109693794484 -0.4402023695402154102 1.4695434927263224534 0.33161147367285859211 -0.2200153813288226734 -0.44159329694223942164 -0.84980951199557119846 0.19348249110826898356 0.36199351051439287996 0.32707077885955293528 0.92015769252230283914 0.55270122350228945152 0.020914272305371382071 0.40132413438181541165 -0.78673203439419958638 -0.66744310039208631924;1.1213438851760111348 -0.84348117851444548432 -1.4132185972065645085 0.4350804538872682925 -0.18837273863693648757 0.016118663669111389647 0.058356757590021471338 0.41760556328855313879 -0.57165606978309602138 -0.32627350241763647398 1.1268179213077107459 -3.5473082430508879881 0.23047986153352459371 -0.31372852202251810816 -0.35956194351523823594 0.12015699934355457412 -0.14282439489259032839 -0.74919310573734865244 0.18203995841274941969 0.24071728330378333593;0.82527239649382744258 -0.22815336151588608282 0.046938626617089397597 -0.082441745578273911699 1.0977530677565070505 0.40038971843329534961 -0.034537254023191722718 0.71019662397659655273 0.46172694332978331255 0.32844955703147632464 -0.30296960085672908214 -0.69353354571716785415 0.93511946284725744327 0.19769713253627441141 0.47768974251506413076 -0.38116473717941523613 -0.21653304438891099459 -0.77221828672877279587 0.4581030365757239875 0.23319087720120118545;-0.55232421306654422288 -0.31773892679100362857 -0.81317019411827773379 -0.62480173161278607097 0.27101919914407879286 0.24421536555426326398 0.75201601468051937349 -0.20775532390540105143 -0.12304274852639551785 0.58280418741993567089 0.24841253824133704975 0.13706041047736408633 0.58109735890301972283 0.66031306289448410407 1.4542690597582534906 -0.14011880116118388684 -0.28415065823904650522 0.17783058714239227682 -0.14920241699173014682 0.27146255958405612896;0.61061028100918990358 -0.12501502333125139033 -0.36921361435750238433 -1.1211350726882309825 0.6887111398328858991 -0.34803271773801380817 0.27781239601502161207 0.25783250447406830252 0.064858777939236875176 -0.062134804726210267345 0.61586011843587895598 -1.4046499592081209684 1.3187062774385240882 0.60969017752329934812 1.4966081320336306337 0.079623704761403249486 0.3384540351191803742 -0.41259429052169027674 0.50478922548680504878 -0.29197370828327456893;0.10090166585414314659 -0.26579023612167324009 -0.21799285179158467418 0.62593193566129445848 -0.093473141670871326414 -0.25580205434228303618 0.55726860082112883443 -0.57629476663178469398 -0.67833500509997124439 0.062620355953086542788 0.15657964547795230614 0.67325947290551046986 -0.82529014274847611876 -0.28070294741279189221 -0.075258053191917140268 0.074028692699115827835 -0.10147219786914707385 0.093536660854636896612 -0.49786387336837134576 0.53292927671930612199;0.30934610241967419597 0.16905044271636984754 0.54529445227265760376 0.4484758995915661961 0.19750358405479967461 0.12976566468289013612 -0.70053980066893117851 -0.31921343112395061947 0.20082913545226521723 -0.019757100491300038508 -0.66557174410453179281 0.91960911285991364661 -1.2584602421451411836 0.64542147549832862286 -0.62859325673625743303 -0.75636682106315367147 -0.30713168934618245709 -0.24986645701790388685 -0.12100830634183877554 -0.27379079240135095752];

% Layer 3
b3 = [-1.8488230750575929129;2.1286209744993151993;1.5134088670313674552;-1.0708174384176900595;1.2652694631925556212;1.0577392702300902894;0.85112281355480612355;0.91168414897578542444;-0.35157482907270715122;0.26093037009738889731;0.051924665872445048553;0.046538558081149525303;0.66615823459902856474;0.91038436419889035012;0.72041491776312249762;-0.82789035391242304929;1.3095833511971479712;-1.7262471360340840842;1.8885950061252358978;1.9554109820172571599];
LW3_2 = [0.2768183023723283509 0.65865180274515444658 -0.7516842004314743253 -0.65612181798785351727 0.55751698975731134311 -0.62200827517036183512 0.3797705345243215791 0.66951116041165292803 -0.36069851182497941755 -0.76698042734271065779;-0.9360502290758268007 -0.21658267257220079061 0.61172230485298562108 -1.0530574272982142769 -0.84058190314807590404 0.89632799077457159242 0.27861043562647347382 -1.20521426106169538 -1.3461586990174458922 -1.169028427218206323;-0.76761294463708706903 -0.88784348059717987933 0.43184090202288355487 0.61724460140431836042 -0.6645070119974730849 -0.73546649472828951044 0.50138108443210194221 0.50671960577936292491 -0.49487731538329438052 0.080618989792614198509;0.23578765139738402934 0.41326533296282225161 0.19601541938148955846 0.15920429204373645615 0.2863550091342281223 1.073674065882882056 1.4812277446055894803 0.21407056242013100533 0.81336394131410350017 0.013073978103279919327;-0.39347304578398295538 0.78818743534889490476 0.35226998709282303368 0.51329044554185743188 0.47918314043009591074 0.11423476870471249711 -0.49652770818344399428 0.087989026194331174113 -0.049424201632778635984 -0.94349078538258113191;-0.65674681256592226664 -0.58029561763565096211 -0.9483978277924132172 0.84116718029310688642 -0.40771168165963489471 0.11480455078307950922 0.23365270803764476293 -1.0296247021530253729 0.56841002786513850076 0.12675660872370766996;-0.79052712484826814787 0.20988079749514679251 -0.48435210023802049983 0.067617737316246401269 1.0762137683333630189 0.81269693155681277386 -1.1510762494194468619 0.28006107515623879234 -0.80562013790338315999 0.014880415505205586701;-0.84037069851004131404 0.0093183555165108171436 0.43156472452614214053 -0.11490489910650648897 0.17123688935970343694 -1.2123351058483238241 0.35235724242639965276 -1.1275804339409047916 -0.21782759303909507431 0.11266053228585916346;0.24802595148947753634 -1.8264799206401205467 -0.43147205039491010048 -0.11848462682419626246 2.2807410343126321983 -1.5832639448819778583 0.87141370487760461128 1.2563888086866508154 0.071209021454660695327 -0.68156958220110241964;-0.54379948712112513576 0.97673064352219907125 0.98399643845104045603 1.0351432533587672236 0.31254693134516886577 0.025700534081762493183 0.12048440247647690393 -0.2229243897193711188 -0.79176700701981850283 -0.089142672266618580568;-0.76981695748505563071 1.4133874319236285899 0.93238491695833647377 -0.23613755953196019499 -0.36602362306921876201 0.085068752114130452568 0.25202388694209887365 -1.1262913416992770266 0.33223026491878981936 1.037200252468954087;-1.078989480770348619 -0.64686874856326193051 -0.58862600220188687761 -0.22407645697112787975 -1.208095307503755933 0.50401726991678197365 1.3273331842203788256 -0.12202137338715737802 0.36699196741628264951 -1.0159328187754106398;-0.07111272076773973716 0.18722197289987313473 0.4866231469348896721 1.5442165952782924698 -0.83996176394257160425 1.0208927708380457489 -0.38229183919591991359 -1.3317967702037942779 -0.81158257260609134587 0.60755545047080328214;0.76213500496670705253 0.55832280164722103422 -0.053570074432865343039 -0.096608635209722265591 0.36647882952109861465 -0.50154036302942461845 -0.74055374197274226322 -0.54694647811785213065 0.8100045680967202788 0.92752731558834300429;0.42677328277595666384 -0.45480238637066577878 0.19431196725752636345 1.1579818439829370202 0.92495038997552325721 -0.76925325725369297913 0.43879767008117287475 0.24101701238583281284 -0.83712950730721946702 0.30901080895260873982;-1.4749054776655605714 -0.38142590397466769048 -0.8821024782435726852 -0.085102286637646532008 0.21250111012843958536 -0.58902801773142166031 0.28217958214773219972 -0.0082600918206404659594 0.8127377693649567858 0.081462157286147182655;0.20358771976642175972 -0.40231429383618327877 -0.42385502876315628296 0.27717287623698028121 0.51474196158535301393 0.59182417890655780734 0.68425625833130798714 -0.67946991793349709177 -1.1694824600791788871 -0.7194024634438668242;0.15677453783636460805 -0.58560280157274002821 -0.4678878501411568025 -0.89016240389482703677 -0.59218496509812201811 0.84513233555997357982 0.2071936478095147971 -0.04352040966373896258 0.70117071218533666421 0.033287483129243476687;0.30881227569744529315 -0.69084339523070326106 1.4785538494837677792 -0.21547459188339843084 0.92516696913702844984 0.25357551331539901485 -0.80225780762816045755 -0.13851549298186630055 -0.65844152702584823889 -0.67473569043177028526;0.77650197671689946688 0.3772538976698530111 -0.099823957387896650184 0.48756925163800840517 0.58221602417051054879 0.78259561454127912761 -1.0181585524255147845 0.71621133822740568053 -0.33713029682024725497 0.48850824181868129914];

% Layer 4
b4 = -0.52335823818419136;
LW4_3 = [0.1088227761897672119 -1.3232447869979706567 0.71096459018039581679 0.6393688120049910717 0.36289796801418172656 -0.4882631795463291402 -0.33161748093128984305 0.87407823237009052431 -1.7422822463537184223 -0.62707973386905702107 -0.60128564226807001969 0.57546125347444021525 0.53343243719141930637 0.023542502639170806433 -0.43284108799229875642 0.72086039548938907195 0.27256897698218751636 -0.34155530737450062739 0.58877091115705382229 0.47355421191651414503];

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
