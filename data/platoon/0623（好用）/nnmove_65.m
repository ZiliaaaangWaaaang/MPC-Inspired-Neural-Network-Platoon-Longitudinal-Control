function [Y,Xf,Af] = nnmove_65(X,~,~)
%NNMOVE_65 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:05:16.
% 
% [Y] = nnmove_65(X,~,~) takes these arguments:
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
x1_step1.gain = [0.053913604005474;0.149967019141203;0.50069484362843];
x1_step1.ymin = -1;

% Layer 1
b1 = [3.2304122675131226039;3.1778550000444583112;2.5892319725617523041;2.6735957582936773491;-2.6987042142041350878;-0.99853293761869876821;0.98252357208470597616;1.3493631132142818174;-1.902941232410306327;-0.059550181164803712985;0.568220161703729576;0.47424825008424720263;-1.0545157506232150091;-1.6950309773061520424;-1.7082362172505576314;-1.6519461991333757034;2.124642132386842075;3.2088773197926898639;3.6513224573949991658;3.4037958285848408657];
IW1_1 = [-2.2541048680976167873 -2.887538433890975309 -1.884941400432226688;-1.5181135038700972473 3.2817214526697053856 -0.70873079065589383863;-3.2291653409560372445 -1.3743057107013327833 -2.4764914828751276588;-2.8039920626885548316 2.7053699591000768265 0.68926922888593222805;3.0671607865731416176 0.98262248645835770233 -2.584497601306505743;4.1134382117248904365 -0.50311464959305063349 -1.7966640937285400792;-2.3494459835305452344 3.2857573186592725634 -0.84183207425098283139;-2.1148051214591547797 -3.0294545504109544609 -0.64089862105004780091;3.9788395956398527886 1.0023267761614325089 1.4242771738284081273;-3.3280557789977094352 2.4812792446054308115 -0.7276582564566720368;0.58836216016614839575 3.9545052128702473659 0.15352477960887384034;4.0386537817075245371 1.6984036438507006395 0.42842618832507756155;-0.19440784368840133278 3.3664008725772509578 -1.4102234511676385864;-2.380649220960310064 2.3006405594213599208 -1.6220699579110833266;-3.1412689052970712567 -2.2797194344733173743 1.3431623477742209438;-2.7642346764437668583 -0.39548793087086137055 2.5871900109769954135;2.9392766068045617089 -1.9075048905764655505 -3.1516977625254130047;1.0024726576626035168 -1.349563396606335175 3.7226796639115593557;3.4312874376360644746 -0.33964734769843579754 -1.0226844065372497905;2.7659342100077140003 -2.8550904246757013993 1.8269581820689457796];

% Layer 2
b2 = [-1.6121911113883133915;-1.3637080312649700886;-1.1160067255532228891;-0.013115030321266912122;-0.30384922134380731862;-0.21094507741116066968;0.69481170463749741817;-1.0887736627563651126;-1.1859054573984089131;-1.4772150283403089333];
LW2_1 = [0.55558935730651781704 0.32815594262915454005 -0.40731491398185432073 0.03247650063937490561 0.27394340276170769943 -0.34602147185945836272 -0.30041617199410991512 -0.098813878246367503611 0.58463934864328392926 -0.34543376483310100911 -1.012338297273402743 0.49422980730698151675 -0.38655684066311413183 0.19432668473384190344 -0.29406175668472034346 0.67117871584297816856 -0.30815394108941018825 -0.19640612694525100279 0.45244444689089069467 0.04442538333112828336;0.1390509074983538873 0.45951961657950496365 -0.047434055758645017609 -0.042567445680136810349 0.28196408662156996483 0.55743012445578288272 -0.0087521923645125926372 0.24687940009643735695 -0.29542735395740193916 -0.30245636838993150697 -0.45933679300101004639 -0.027079935072565789606 -0.2038170172628484822 -0.25575716389851765875 -0.034636292349660938172 0.46368263931668818323 -0.52298088210628879136 -0.61057524147053154895 -0.20892382983830093401 -0.72908237402598152777;0.2247418437457520124 0.46975706853480625469 0.26948430266053124971 0.6388871442348553753 0.12985408351859312193 0.58424742270157792312 0.53534392191528479277 -0.72760245425295699828 -0.2050310722403255459 -0.44044276034800711184 0.55610411711145468772 0.84014436660134594881 0.2995669102960161756 -0.0069519631725726855481 -0.1221090274976072837 -0.25120336561131600961 -0.48657160273984456644 0.53747627513960050116 -0.35710463501145106591 0.42890249672085389854;-0.77136329272998582773 0.52159344599544332777 -0.30143353708008957526 -0.31652032954081088523 -0.039107598156813951074 -0.85221786996286141846 -0.6123399700162691639 0.029200751966237510626 0.37227035907957817251 -0.74873528905333652794 0.20820896445056108481 -0.3331787421213687761 -0.09732578541919795212 -0.16463786880215364183 -0.55447586351165445429 0.46801257870919965587 -0.50121744308916382771 0.20336816153394199347 -0.53360706486036235674 -0.7063079606048248138;0.46208074598133797029 -0.35997345123173613013 0.068087687858945880603 -0.24183178862699697409 0.76504611444604786463 -0.8006865988723511629 -0.21259987658218637563 0.53073812463257574734 -1.3250349872209219448 -0.07635889816511795547 -0.64303646682907378285 -1.1190273164386186355 0.12118609006194029643 0.15130002172761081169 0.74498652477373039638 0.19353866535350813805 -0.027569204503455940064 -0.65962571909513179058 0.10246757830104744058 -0.0049562748630175628914;0.14226734645551233904 -0.61567227819215053497 -0.4157945754942580785 -0.6842929624616190809 0.70055106633428909646 0.37357162025391899007 0.023810182875890300441 0.10483161062950066555 0.21852916865730248608 -0.30134941289397249031 0.39756027331361987187 0.34706518653384133 -0.46009348935965599381 0.2713386296979124479 0.66250925143283334595 -0.10893828243177738901 -0.35179955006828650399 -0.10341251736857778876 -0.37526735248554016211 -0.55576903870257732265;0.19837898058502081988 -0.18487409671009660816 -1.4425949851278685454 0.050754484796855139916 -0.14032045719732019751 1.6470073755226017909 -0.5756051549641075793 -0.85328336044617514311 0.9022236473093990794 0.52830588884176954423 0.41653492363354427397 1.6909916001398366259 0.70481619682544782712 -0.01631362384960427514 0.18565953261632447968 -0.39321557958896929952 0.86571315135441007094 0.1767893462648407743 0.18633757310615770009 0.65914333772703825876;0.20369385265414591268 -0.81512110971728490849 0.23439157812502980915 -0.59080720920188056766 -0.522434099928125395 -0.049014181578155707752 0.47080144025330306068 1.1218825835423953396 0.2923109317600769419 0.40632729787740079486 0.22593422511600236291 1.0026601588467807247 -0.83389296658113776228 0.27893843423676373261 -0.41221710067091937857 -0.28419209603910433604 -0.20748620558614766507 0.36141741425975976165 -0.13311060285629525146 -0.057508510960098555009;-0.3775444354114886325 -0.45253700528995993713 -0.54537796191732723639 -0.34066427821309813728 -0.061854996943203989501 -0.14570269211078512583 0.19142483886428748874 -0.49753528658961548858 0.28405244847960720023 0.44422808391206081158 0.42011293956526168936 -0.032097340646396875508 -0.54760232502917416397 -0.26008302520951437353 -0.041467182461130132343 -0.10407582303119593259 -0.022072177590228059252 -0.26932496063162347788 0.11197095166137975564 -0.11253585163442401951;-0.36282158085478227738 0.45503090821742164795 0.97930969037390269705 1.3312271649171174559 -2.0265876086349430274 -1.0783713017948146629 0.16063422676355679219 0.13171081014276150856 -1.9921055924775659118 -1.2912838803548181144 -0.056987959040113486675 -2.0793772411015769563 0.63512816043775366381 0.45835174729329386523 0.63514987151919932717 1.4647098144136823095 -2.0751461158643929039 -0.91588180183318179672 0.40380216613269692694 -0.92771857973121074625];

% Layer 3
b3 = [-1.9043403449357800827;1.6470650982432486487;-1.5977964879424513267;1.0145572542246530379;-1.2028203081364350346;1.110787045625183378;-0.81676680614912788858;-0.3050669118340196273;-0.28915105875309932149;-0.3080120100570808428;0.18315216311248358472;-0.0089483187373115228441;-0.35243398154940730471;0.82965841998140765767;-0.92874469402968340415;1.2190566808551324129;-1.4057142331278345004;1.460506526193572796;-1.7539845905261295389;-1.8912680134138273313];
LW3_2 = [0.79621490498980951322 -0.3008544565919267777 0.94635410048079959822 0.0096065137786186388658 0.52326809263960105678 0.64972323181753177668 -0.94672452635619874783 0.11540397602096999496 0.44661436607712340363 0.37327564188386058719;-1.1611801391707374798 0.2082114090481221591 0.17292245303052097838 -1.1154049148700508898 0.82653826126068141722 -0.25626286691553501473 -0.60147498743120664244 0.37464096601904101069 0.48719186007901083002 1.0134273072688066986;0.019160734871333857943 0.48993927286348815109 -0.85272816079463387151 -0.35442915772061850399 -0.60375987977195322287 0.71225087798257435967 -0.8922377337971978406 -0.6309356928599733072 -0.59519782177092517284 -0.32490364500548479798;-0.40149833158835557256 0.39791861569295250423 0.030779967976448378841 0.41521430905019623969 0.15099411733817996728 0.5578922719902008609 -2.0687421877758978006 0.48105517999238067706 -0.56476721016347097848 4.1723846086437745839;0.4462118470707174267 -0.34166983559516889146 -0.43037504984473307079 -0.75285825168326692136 0.064911228023416159272 0.79563915546344798901 -1.3538090573924055349 -1.1162053960535005537 -0.28531820896950749189 0.17790554941861880245;-0.2741562226183405504 -0.137111753408004855 -0.81600481334947805312 0.15197185583018482657 -0.79733872453643794831 -0.053389398510677109344 -0.027458171863900628085 1.2011038374962041964 -0.060651668225071529716 0.93729319472703642724;1.2222281059727140295 0.52228952255525862292 -0.51870417850238836888 -0.85518828826671022814 0.61698659079231454871 0.064239125673665867233 0.85561085001034786757 -0.81558615069951989618 0.83110786437473083144 0.34472420893666338992;0.084700317829047619411 -1.2309690559041823743 -0.13852782343078903771 -0.61961311351383285828 -0.73415870556961115856 -0.96235666835300148758 0.16736560668778832639 0.54074708268100390995 0.0068868688490566834504 -0.26690755985312319964;0.7240301266214984599 0.94067876562729735301 0.085467006010937471294 -0.1695430723489960434 -0.55542820608805654192 0.97929400511382713734 -0.073720433518980443832 0.51968154715992720405 -0.51657160551774294888 -0.18212797126464624897;-0.067281055741674242188 0.67219728728691519049 0.55882121112933469398 0.68910471390088867683 -1.1877397701142839992 -0.052355115294334550469 0.068259479226943794994 -0.28278411605412234753 -0.49370333098917934533 -1.1192712922444758572;0.11735317771178768731 0.80286458184487230483 0.27940507416668447505 -0.50785776757017830896 0.36806991587936016552 -0.8729409320942357331 0.56806868690760226048 -1.0825404912164051652 0.19995503908574915886 0.34590161438930638882;1.0622773032355208311 0.42224663268392043092 0.66652948671006706505 0.07036912405011168381 0.65914430171778692902 0.52357456279242031716 0.30707936545115899207 0.3285027327303336464 -0.50338895209107326068 0.67967027822587111618;-0.77851266003921626435 0.81104253077926780069 0.90291077306651335022 -0.20762581695445425645 0.056540762880244073429 0.33129661714438585207 -1.1551707571688984988 -0.0039603905203529701784 -0.91982476780765143332 -0.26255688946425986829;0.50265796950639796137 0.48995678742631953995 0.38353373245863997543 -0.74690840127368396395 -1.0254879993986871778 0.5118754149661465247 -0.41855563798446460133 0.75477047325113555409 0.20948003489777036745 -0.047019192106960219779;-0.33487686671416039275 0.45304998100364080038 0.69241922278617695774 -0.7181499404734118519 -0.44248197959731855322 0.54743118201867135841 -0.20198977618659322286 -0.26202823647217632352 0.50464203939478169403 -0.8160175391672470635;0.47955674729906599962 0.099943705602504942509 -0.011553859832606249228 -0.070152859159044386739 0.76362412458123707371 -0.02178703074583095492 0.91487579273032548777 -1.1588031704832773006 0.16937065528714678742 0.64406045656229293783;-0.26227536628914138728 0.17086506676556162398 0.85201258212872854614 0.3322884964076893155 0.056709194232431966998 0.89778917546383385506 0.77894873906334005653 -0.071969033974588397795 -0.42402997810832371295 -0.54633286531876268377;0.50291973596330885599 0.54684507461111753202 0.16276258530707896077 -0.32318861618528582635 0.13822600112086055879 -0.63450119880922206672 -0.61261528202894899309 -0.15060681149588797667 0.98969421890323217017 -0.21504145395659496343;-0.89785462197809273732 -0.5463502481201820693 0.9368270418251645193 -0.60907134723534861465 0.36695640867553092068 0.25332136830255519433 0.78849690319396503746 0.5912459010356529987 0.26430507882178050361 0.35472547494601236462;-0.95130464916512158524 -0.61313213413561773457 -0.58908462989138221655 -0.59942854827737068746 0.80187839273279071239 0.17308266694396187702 0.14415863596956465797 0.55368464967966501966 -0.83631198874172296698 0.69154763279137676513];

% Layer 4
b4 = 0.685341004527074249;
LW4_3 = [0.2868599527439647523 -0.58257669087276919839 0.34251110835509535057 -1.2407774226994836564 0.4359886837224723477 -0.41861538311732265916 -1.0589180745031361308 -0.15628879872394166317 -0.23075284521222824696 -0.46113327017766853055 -0.037528805487949040698 0.20563256584170755414 -0.28385077652355211741 0.17365596957323992111 -0.051555467747714196769 -0.062074004167040376656 -0.35654804686771318645 -0.24284852313447238825 0.85541002543576583061 0.1946952031577354747];

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
