function [Y,Xf,Af] = nnmove_15(X,~,~)
%NNMOVE_15 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:04:07.
% 
% [Y] = nnmove_15(X,~,~) takes these arguments:
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
x1_step1.gain = [0.0638195875959219;0.168202204644631;0.502184479042526];
x1_step1.ymin = -1;

% Layer 1
b1 = [-3.9052954087617064438;3.1698414295692494136;2.9177562078424377212;2.5045725523003854462;-2.1515235001607959653;-1.5457437184409739128;-2.3750440757051443086;-1.0688575382699434524;-0.80790879787848568494;0.24833020486790266523;-0.62946279899644308475;-0.82932712709378775262;1.3765873759352089678;-0.96674187615448436972;2.0453645160518423296;2.5838862718541659724;2.6347627078499389341;-3.0148500792455625863;3.048343920769067239;3.3072169250075953428];
IW1_1 = [2.4828803578628289017 2.7991061794629632509 0.078703997792818849999;-2.6493294664368685076 2.3922820634607768753 1.7119582563252202512;-2.7155928995857552266 2.4306306837417550604 1.3985902545452026935;-2.8179516799993300502 -2.2382921037802909758 -1.4474245510725050057;2.5698363965961790178 -0.41870780256698270083 -3.1912208976621867507;4.4786473331973351009 0.26088778451401051228 1.5293438596721993239;3.3154473899238916523 -0.32652032207131043151 2.0129890549349078732;2.994274002253851652 -0.31654584572565624967 -2.1581296239041258822;-0.46727858763680180099 -3.9578817835807673653 -0.94863987788752668351;2.4092381844151806725 1.1975461587171929434 -2.1984596980169666125;-1.516941864140514129 -2.2584876027518361319 -1.9894819168130875031;-1.5979650508997118585 3.9518095238204216102 -0.63811324486035525538;2.4320141875209118076 -2.1048577689593699347 1.9252928547917391722;-1.2927420788825880749 2.4640315004926582887 -2.7117593667618020703;1.3328802042669811723 -2.0346517327605679881 -2.7291662073822875456;2.6315833411904807626 2.563264790851632835 1.9283770428660380603;3.7104178473810351946 -2.6981175363966380942 0.32840603139050172921;-0.69262453260424117207 1.435146859341002834 -2.9922210164956704048;2.9548528006988492578 -0.15154060715467204679 -3.2565098583719329639;0.55306127130476079312 -3.4986517540589603392 3.4033342769784895587];

% Layer 2
b2 = [-1.7304818169534015304;-1.3056635883299096967;1.1410592876310172716;-0.27169432762384965185;-0.25106961482522238693;-0.16773900148764395168;0.51123255029392844495;-0.99818934625897870472;1.413774405420253677;-1.5858253271269426854];
LW2_1 = [0.45821956704372840408 0.45262578607033931988 -0.52275698393172809197 1.0342924790316276873 0.5797297688574034602 -2.1550797692194385569 -0.89514845960758360199 -0.0049226794299741518865 1.0959921534051728642 -0.67377026264867478922 -0.16276793754231758116 -1.5523258263090715658 0.66537169486636749127 0.21313510426297671563 -1.3000267393743358824 0.57499233661925419625 -0.33156081722805208489 0.39220345099925857379 -2.5676505737921360151 -0.14028474784336492087;0.45171951054795772551 -0.63060980930921617382 -0.57863352486742236636 -0.63562227599172549386 0.31518256767207286639 0.6922245346535228494 0.16752608932611909309 -0.38891528788816437379 -0.23468203424082767494 0.23211386944748754746 0.040640219151384014695 -0.1259183844464621671 -0.34562548433839884732 -0.020106843516861098303 -0.17072342928866826584 0.062156943285430130142 0.064992682031989476577 0.17486570421166083844 -0.049243948697590307628 -0.41287201584087340756;-0.71520940766956764278 -0.3124487860770321368 0.15820289281530156011 -0.17518649018027182551 -0.15233820045562482259 0.41311634877718833581 0.39311923978537949287 0.52418830542958638752 -0.45559999646073995327 -0.95387793743917459466 -1.0662158908025365367 0.020415846536664207511 0.1201868521729450856 -0.28572136417616472714 0.42883337713902330846 1.094787156854346355 1.3339401274674560494 -0.65934286990379475935 -0.1582334384697400842 -0.68905439260819145719;0.38470722091921216723 -0.37780488626429259424 -0.40816189309737865853 -0.23784303639180254253 -0.65353239397375695319 -1.4806388213042589452 -0.86166061271733540572 -0.13602255871290386269 -0.48567678663259444827 0.52936263141244099817 1.141639161892317178 -1.2082381353976925364 0.69595136905516929993 -0.61356507525677483894 0.71176715581854244075 -0.26104518393818554323 -1.3925966179144124713 -0.43243396487144153406 0.11202713637779565525 0.91621049910854801546;0.50467527673498113749 -0.10789516965666874626 -0.66089495165912881536 0.008547603371323965471 1.2234277480297619523 -0.45126536145747964124 -0.139386985719992057 0.80389681998615947212 0.23924543477210144515 0.81500132492580534826 -0.50443108337719944068 0.445252523962844593 -0.10454934519607866905 0.10542759749562417848 -0.039255405797463345519 0.96921583513969811197 0.53420265697955071627 -0.0021924754093928830283 -0.20813073229570938638 0.10831937723953262431;0.37387645301421629229 -0.26452404570650245308 0.57856181898955916232 -0.16924731617087340751 0.82402881881650036355 -0.43849084270622235016 0.63451507293422892975 0.84357516235536955662 0.0050401601895957931845 0.42741032960759123283 -0.086246787382244768927 -0.20847983475055140157 0.20655862325329568674 -0.27313826482396103001 0.26732203025406969799 -0.65487075140151029817 1.2571706757964813406 0.1594003740154307236 -0.57248036746275432485 -0.72429648969029158945;0.45315667260508424308 0.19848087380429654814 -0.066301686619994582017 0.35439007723011434203 -0.37806656947784988976 -0.12062614315347466865 -0.37882627981029681763 0.20076205821638842819 -0.85585206842892591617 0.23339929829178035492 0.28904658642891001286 0.82139592796107452344 -0.53629712531644113671 0.42115024329644218382 -0.393686471639754898 0.50280740578334381929 0.39326328031617940884 0.51183562265055759788 -0.61477070234486452804 -0.2004318391571089375;-0.39067748700647508819 -0.32871798183727218845 0.20537827245775452933 0.075729295222280515465 -0.0068489263430562066781 1.071078625208345958 -1.1347293596456657916 -0.10976248529388057951 0.72184781194720226694 -0.16878211892574845887 -0.76415284295701113582 -0.50420427558323388517 0.23139762941138858343 -0.23085227393187923717 0.19374629807355922551 -0.21351014089325962009 -0.26809221654272402668 -0.15064056537471623431 -0.28540716363044477122 0.66932897269751712166;-0.16075602057064231065 0.53036545017662029 0.60021313221510308455 -0.46627080559706896024 0.19345949300257114789 -0.19692342132035181579 0.13735307818917300016 -0.73288330757558450834 1.2728028616932904882 -0.71265687502754637705 0.022377967695271533399 -0.10212013024852063803 -0.41271108928654293146 0.25529723817634897287 -0.050566623096814186655 -0.091108376011193911714 -0.77138993642258280037 -0.61711956810689838626 0.48324864680150614316 0.94052705769515632106;-0.26830773377029509819 -0.025553362994925579027 0.13198312315699614605 0.3045809471063860574 0.0678032481020223593 0.43240146880270097229 0.64405629929975694026 0.22309935750771672791 -1.7988969402207737325 -0.059210601845722694858 0.46948959673944329341 0.3138162067670901556 0.29756308489171101606 -0.22154147039566396415 -0.68813262395856766851 -1.4574971616598877411 0.20389216787037431344 -0.37641668482228279879 -0.49195804040661789136 1.1902345374626106533];

% Layer 3
b3 = [1.8723711092292278924;1.2935618767818959363;1.4889663236347763231;1.3476641694706852359;1.2336109927441127887;-1.222811356021789031;0.72823149133005449229;0.48618722795044660989;-0.44792886172657314647;0.014588069113525690967;0.15616932848878983808;0.15430147924938164561;0.54134134701619396335;-0.6098242366597043107;-0.38969065915012152113;0.86711017820607405593;-1.1796532147516312072;1.4722263455475246285;1.5591681262043584066;-1.6897737874036953265];
LW3_2 = [-0.73828882792758288023 -0.94171435375979162252 0.16579916251310786168 -0.85622753922214978051 -0.66112088016207859464 -0.062951844935873038644 -0.27426541237374912896 -0.29631454030839088354 -0.80237404240585019632 -0.32150658347913768642;-0.074650042922902337672 -0.22421096040743659916 -1.1439021002417149031 0.87506102585509082381 0.96605275948230728833 1.630858015020476115 0.11289462220196488929 -0.38004317607317478211 -0.75789631657559497491 -0.85334353338626633967;-0.29048714463638469763 -0.48347877627823970803 0.8018590553336785165 0.7846261662183853236 -0.52338147813895508076 -0.74556391878947103624 -0.36381972671810669517 -0.47965140936070732591 0.42661878911809575365 -0.77908056409902037842;-0.47398597459862384929 -0.59968943776296057546 0.5987993461276993612 -0.94126151397491897299 1.0267567420974650361 -0.009847997245071769129 -0.2162335586976832924 0.60115733147893846144 -0.42746756725097295737 0.80657700484999150792;-0.53980713644276845375 -1.0993704209270949157 0.33784260072778371509 0.42537583739906731362 0.40643308338801431567 -0.57106727095806375516 -0.14489673440483838429 0.72099370837767962072 0.76671185072383307713 0.030991496363736558556;0.90713664652726422322 -0.035164636261124461447 -0.14248881548103978223 0.69227492655195477234 -0.39196672815917904531 -0.61856963332610237494 0.028366471167511654594 -0.78218640613238510362 -0.47893108517994154028 -0.31485343109919339266;-0.66850061066783139641 -0.8803097001528907839 -1.2468755361218184508 0.061318375236285041496 0.73594471861899712906 1.0096432549519396282 -0.058868223216542919785 0.22946999823804095642 -0.15555221951467007591 -0.091730760032322139486;-0.93379767796960622128 0.56114533213418671398 0.65868063507446272808 -0.93937195949996921129 0.088201290546927782477 -0.47543181632990177965 -0.13167622620272029232 -0.019688645105154174708 0.40953464843275094731 0.60272333252128584835;0.77764641691686919867 0.78222766149633993216 -0.96522137547487418807 0.025305457148705187004 -0.37351163258185565708 0.96755164383932013017 -0.44480541104005399955 -0.19995304809408123714 -0.39513433574977818719 0.076896847153528624652;-2.9594782218778945548 0.9101976399786915195 2.2742354965745659179 -1.9015451225740844787 1.2375791405053062633 0.87145533976820810373 0.00096348085775478154759 0.37757094356438225535 -0.12406570937565883361 0.96199731858716153177;0.2796883620639200041 0.44906230086378379207 -0.47385871589521272318 0.62557233215950702743 0.59390704365897739603 -0.74094008672354116918 1.0760907958806449347 -0.29206702024883579583 0.19882466978197671503 1.2751360536563083325;0.47799268805378625213 0.021041138007964189233 0.0039587922849366151412 1.1459383937933664832 0.79970743664090382374 -0.42676650684004069358 0.024989394362410068812 0.96551521515871097101 -0.32869583779792427292 -0.50067277220705852514;0.40155487843272835713 0.80678758135262873541 -0.40578302577036934329 -0.06571506841152623124 0.84375069449347983586 -0.055174123893165546995 0.15806662078984129449 -0.25509704991654136297 0.75811198236760457547 -1.0384955387788452619;-0.62091687993693489567 0.14149143780802514447 0.49231751520476779715 0.58179563091401553798 0.061536065157146851989 0.65850799221775024872 -0.93010666826332522028 -0.87177586420226627073 -0.76336628540615880656 -0.77550797284808492549;-1.5166484127298578422 -0.070947220652247289241 0.90407200739508175591 0.3123463772471776756 -0.65539004280404455915 -0.60266316010328324637 0.0088050292815711125871 0.18373484717077759321 -0.409186347231603742 -0.58551738919328788491;0.72446014341486164589 0.69455234833287105012 -0.30066053099046846642 -0.27800843951541631682 -0.36501525541598606184 -0.84165201485717056062 -0.38179469963139966993 -1.1296110119607716271 0.84024726072541711108 0.41767948866319754009;0.025305038219416129547 -0.8395701088007581081 0.1734679190200345833 -0.93808606071660560755 -0.74369903948926174841 -0.084875212154100543316 -0.016560984390780377623 0.75599159778406177512 -0.25757686332558155096 0.3465050816794363886;0.10590070615381444452 -0.85620312488628114167 -0.23226458613700587397 -0.32154567403809625192 -1.0405814899665621898 -0.17981667413659396804 -0.22912014514192324821 -0.73754460467706006721 0.67373372178287505019 -0.68338510846696731704;0.63400100778254897538 0.23837343117889708832 -0.86212504299981129741 0.045937260589745836092 1.3974806394157015532 1.1699658158725172452 0.12734462330781887163 0.48998632428676391903 -0.17177414028876203389 0.0043333060962871886024;0.59171508011033158159 -0.23765141558949129386 0.87300780125892130101 1.8701282421965057523 0.15841920156491087757 -0.57938051551036828801 0.27870046230799799813 0.40101975223810976123 -0.59594123151515132619 -0.19812103071771364204];

% Layer 4
b4 = 0.31001119476242067208;
LW4_3 = [-0.39682531208016252888 0.44821230674148559991 -0.4477904050540207348 -0.50960471063955692372 0.23416248080936882814 -0.17145151780460884949 0.44338187299834541655 0.48453956447686830078 -0.22594537453721902365 1.8223787500167238917 0.041312882972803839643 0.15374866799809777662 0.21122805164758556851 -0.19263314294557265516 0.26645879550633899679 0.31843079542241886637 0.27445007266166104865 -0.14364318731846947852 -0.41296511013179781902 1.0231452191207131008];

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
