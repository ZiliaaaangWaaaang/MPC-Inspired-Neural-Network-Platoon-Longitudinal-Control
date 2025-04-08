function [Y,Xf,Af] = nnmove_67(X,~,~)
%NNMOVE_67 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:05:21.
% 
% [Y] = nnmove_67(X,~,~) takes these arguments:
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
b1 = [-2.6761027730946724823;-4.2928819936387681011;2.4380948959751491678;3.3037890619269485448;2.6342295893343488089;-2.7874801917566593978;-1.3481684164314682306;-1.3005615285311562523;0.23820656431134704101;0.26606908878921026185;-1.1436576452496289846;-0.49311103881351320277;-2.4013700743726902331;1.0774867669629901723;-2.4270952077993910301;-2.937447081573101304;-3.4104327407674306372;-1.8663348021271550792;3.7036426700863942507;4.5202029382855579698];
IW1_1 = [4.2239809978114077893 -1.7907669610224612455 1.0743823443128046602;2.2913115948518991694 -0.73900758322213022655 -4.4480986647403808476;-5.0576733781970366621 -0.46825355299240961626 -1.6399600140908041634;-2.9824289336907807701 -2.0930745382395516963 -0.019839442246552985161;-1.9983209718496164342 0.068304623081126336626 -2.8986361816063705987;0.80475448787330505773 1.1901060313294846704 -3.6996821476297592213;3.3781693884441952314 1.8183380075446602397 1.7494394149925727167;0.48567526877698463661 -3.6844256514253199697 0.79347339776665781752;-3.7818499535614038543 3.5173297338046061178 -0.97661868428061926473;-9.8697067665651587731 -1.4902693353883897931 1.4270131190661543563;-3.3907001489851493758 2.8428561752387704331 -1.3264357557380643815;0.42504775113898957128 -0.28711205239107429055 -1.9099313902435666179;-3.0402183958377526629 -1.6587904714206145318 -2.7012630626708156178;2.756007199478688996 -2.5396989172280672875 -2.1338201593509715792;-0.94627659765670590897 -2.4106670567973194075 2.2396225144209629399;-2.4573511552840137107 -2.7532117365745798487 -0.1540998573737608901;-2.1651055504842156019 -1.8800718373275533413 -2.8297239220741139398;-0.54392512255543734589 -3.9175473893752008614 2.2706166313215905284;2.4597552070518138301 -2.6935239364846284005 2.0508182070864542368;0.99749228473758722036 2.1104116621396826758 2.1365337769418020208];

% Layer 2
b2 = [1.6462565300319393913;-1.0839263199348279088;0.55207075771566471722;-0.21367197358994607925;-0.69325387174656194489;-0.10569978369904906024;-0.59108749700417617667;-0.96651226024062653064;-1.2822690085132861793;1.4857683564272250454];
LW2_1 = [-0.65106904471392756939 -0.19654698078460272614 0.63432739513685421073 0.75788162661834901357 0.068721495992358549998 -0.23700126358733245024 -0.34115867789461729043 0.22549640757541833391 -0.34365383196105869779 0.14365005596707644542 -0.19257191403169848787 0.18741686356549436265 -0.21455244845488902206 -0.46264998509030336171 -0.10105128161592062674 0.040962964578497663981 0.11116589818129994638 0.029699278867764231093 0.57274608106278646069 0.52190938339621761877;-0.41794035666466378132 -0.31318421581821737076 0.24660725549835466053 -0.22126232595416944759 0.0097368512398526146923 -0.30164136966652332905 -0.023715044772275772206 0.88589483941017255209 -1.1862951614394279254 0.44606152924460884535 1.7035603458957218059 0.27905553593763482434 0.76715208870998397028 0.40822229848608748703 0.17425709925077217943 -0.60639539211955328923 -0.08133808277642914919 -0.060615454370377713778 0.27165996760402022492 -0.32895766228488554361;-1.8969017482806296293 -1.7450273044202893047 0.13621852972811612781 -1.3461210823572393736 0.11610787682829103173 -0.62433013147399329945 0.573360577062502208 -0.16603678344239933273 -1.281676189880293526 3.9208794365225707601 -1.2571620042288247365 0.16842218390645363746 1.6946204482664799507 1.5483662155611059852 -1.2380024902197166448 0.11964109021541663447 -1.1608104645688503975 -0.12408980327426531731 -1.4299381331511984428 -0.7869348539877757398;-1.3562716093468207834 -0.49293566008579520199 3.2050644368587715149 0.042167943586011044643 1.6551457438526042676 -0.047356369896650048201 -2.440234022032520933 1.0062544529446248998 1.580887801346386512 4.7025744158428981478 0.068843817817035274365 -0.20374832697402400772 -0.92961705776891168096 -1.8779732616396418443 0.2004034628881847524 -0.29955158054955627334 -0.053787721829404729068 0.10692249977092001256 0.0086359691746121444722 0.50845590579008126397;-0.38753008500111235657 0.53410288042595388536 1.1542693215757557912 -0.50571822412933231661 -0.73354719136093859966 0.40943179959807257662 1.508312544632175678 -0.24691852265646369036 -0.4556535179637732913 0.9134052870014512937 -1.0171411727082859677 -0.20501346754811983208 -0.51358126303571727256 -0.75113699983628401391 0.39446096800203289678 -0.22200275146814069105 0.044671200197898830453 0.8152573551768013127 -1.03165233484894725 -0.99375063550594167072;-0.20298389246226211657 -1.3540319865712882041 -0.21980303616218119234 -0.64617548709319760913 0.2849067039292532133 -0.3118200967523421796 -0.070480196169580316967 0.13633984281628822033 -0.38615016416733016769 0.89015862216937446938 -0.75332995360149457298 0.49603083431086980593 0.47910469049401971375 0.25467036327194131351 0.27234045766948378198 0.68509564742572093277 -0.97653103103288396714 0.28308973176125962201 0.019205384181523434128 -0.77048769321643550967;-0.55663347845244492973 0.48987778291412981124 -0.11960570631851005774 -0.085033854401028133307 -0.99749626775959121527 0.57748389105524822185 -0.1870110075922641335 0.18000008368318073937 0.01023748128051965231 -0.52132791909914422135 -1.5373622582121040381 -0.61206828259589096675 -0.40545438956830714972 -1.0666381922737813159 0.54228846038899147786 -0.24973426334527260018 0.37086049310496554954 0.57418933977566410931 -0.52378491714402986013 -0.36238182091920112526;0.56451047631385375958 -0.12066599081645701386 -0.61763011609285423109 -0.67907605137025894848 0.14494032133420231556 -0.38682008405826678876 0.014925153114599173931 0.83703204515760498694 -1.1116783448292335557 -0.26404049832914122664 -0.19264057761325883988 -0.87789797395215940501 -1.1201914651298781056 0.64548132232403676589 1.2124143965670937106 -0.34954712220383632459 0.22985180319420928097 0.52592307147726313765 0.060291369224349633527 -0.39385639295267571569;0.086296766662981500007 -1.307822882817061716 -0.23033097803932159331 0.67941578288825854592 -1.0585388834768914013 1.0628682541246894377 0.77913885037885588503 -0.91170301732568437281 -0.755663431357534221 6.5898062187055703731 1.9459889378879924315 -0.5241037463440033628 1.7640676217603374898 0.36648708512946470695 0.48559979634309741181 -1.4496156530269905804 1.576202071945012273 -0.9509326323531254177 -1.8035374084222621782 -0.37500354144291853098;0.093820725705073076961 0.09052565748092970821 -0.27935565157021308158 0.53066109815891870927 0.20315710549797827422 0.22037038791622465261 -0.020373046040661656891 -0.49912337108835269639 0.39253783583704576765 -0.27262904119993403018 0.11069713655821301901 -0.54812984705458167589 -0.31306569155245767 -0.24831270237078398311 0.18759602050697773978 -0.26366826930093212322 -0.024629792355830071315 -0.51902799860443671331 -0.68675250748910610099 0.61385166731687512698];

% Layer 3
b3 = [2.2830859900378808192;-2.0254591004792885656;-0.92391734690106686045;-0.68795948224980030261;0.59084751063434060026;-1.1177978689982008831;-0.78485036134709185163;0.66009462520127493157;-0.24319738223184414472;-0.12933376011075656264;0.44998004517041390038;0.36773180104169034266;-0.43936395234808595101;0.73791498469255301096;1.1825370975639475368;1.3657598935101114002;-1.4652296305013268185;2.3202356048459242821;1.7882216762938407673;1.9673810247304741594];
LW3_2 = [0.094534023019324953108 -0.34395887759465021416 0.21470894823793520989 -1.4907610918209739381 -0.59439600568112538337 -1.3249985536678379194 -0.91305353888692653008 -0.005392937965968356076 0.11281757292795051295 -0.42838305639959856075;0.29913469957656318998 0.39299518836807884048 0.2028038940702105164 0.38222650960968979073 0.74284678696510897389 1.2801421828865813257 -0.16989598064926936249 -0.3431685618284013306 -0.2408928692063870558 0.59076061695725179401;1.5398663816780855385 1.2600530510278808993 1.2488272075050463883 1.248719193294813623 0.82976356027166009444 0.75078959817589807635 1.5215058812282522549 -0.28837819618920346176 2.3888625882836018732 0.77941114980077641494;1.0698658092365813665 -1.4967080076884535789 -2.9904920259406622129 -1.9802942900552740202 0.89179850572229513173 -0.72574573961363619823 -1.0866732277708408549 0.099834301448614354291 -3.0885620699537885692 0.31547562292943909235;-1.0853652882442976768 0.10636918837183116648 0.085970349508079552114 1.2432629353135855599 1.8413773394183770016 0.58134098257058142156 0.89180166396715898625 0.25195538378428428139 -0.27806185224283191948 -0.74219882805984205287;-0.14258298447639147777 0.58672971200271861747 -0.2215705272392674563 0.63870097922296953374 0.12403854168139331893 -0.62991057215388990276 0.59921829360083844751 0.62456025955858540666 0.09127267102972030921 -1.0658169134603336925;0.78416103767484113263 -0.96742301515669371081 -1.4138770483322911087 -1.4656568220597427921 -0.80979421668933271317 -0.5478975895807081109 -0.49928303848708888157 -0.080959150396509360625 -1.8721714647095533124 -0.59526568163378601461;-0.26211569626030373215 0.042878124494417274581 -0.69085423476226393014 -0.12170274650189669141 -0.34339163665680422222 0.41105157160384536708 0.5626696951844313288 0.8449894354874777358 -1.3388980651126074495 0.70590515249506036177;0.82115168213391842578 0.73019622389119698269 0.70094625780983077501 0.9452733767620500327 -0.34019812356079437432 1.4908091742038829253 0.20036976499937583784 0.10439496806945157414 1.1936722862898945241 0.43757091860764674163;-0.99816142771158067326 -0.092921721292460068842 0.8448102495417967317 1.3218504572920879436 1.3998932264582635288 0.18332275441874237853 0.69964920423063059474 0.27718361289205839526 -0.28579483270819111551 -0.67580811969218335111;0.16001412790502264616 -0.059044160465485030775 -0.35213635187689890094 -0.13011791911680317679 -1.3745302549377904633 0.50475624503690441625 -0.88950132451551500168 0.36627282781657377608 -0.21004650305780839248 1.0174188740340810444;0.17668958156838868168 -0.81337608717825782279 0.097295330297274953968 0.88912623565791892855 0.69297556366353796342 -0.56126648515275168183 -0.74887957508840552467 -0.60018541998065888521 -0.27918507382842427944 0.068106550479925309638;-0.73044182534955370834 -0.64579827391367805589 0.49189000574649316411 0.016840401609769795055 0.69485342029081598181 -0.31749097261531916692 0.80615548638949963145 -0.81018461366783256494 -0.24016788794655263839 -0.69362915963549964804;0.8609897963784102215 0.0083059203374826195976 -0.42228809156716551332 -0.75674414618225283036 -1.4181542286620441029 0.38649970920960619036 -1.2598864135887934967 0.24745787901811791554 -0.19068236692248749509 0.36438239809864664265;0.52548374298054378873 -0.25175477831883225077 0.18624717896942660778 0.60680977701053251394 -1.0041499422242148309 -0.73943526774026480108 -0.53947379405088335957 0.98694719293477817246 -0.36198461242806534433 0.41353202273447137172;0.63498869541044655751 0.47979031444950070995 -0.44600177603112850511 0.30335052980924870347 -1.0877461118344740054 -0.15744975998996182942 0.201545816777875475 0.355662021463186373 -0.29366409134704379857 0.95332136321022276082;-0.28630068771709360487 -0.53303576418174292151 -0.81549491386974082285 -0.28128828274808359566 0.6003888528755123577 -0.76681571776893564518 0.53685563635476019062 -0.14957948500782450307 0.54680437617164512343 0.61821632265403692053;1.0213552639233203223 -0.32443590335944394454 -1.0184139915708287916 -3.3290601072262266946 -2.0119041528248975403 -1.1446854322065103116 -0.32585229113157349046 -0.20586142724904030188 0.18845037141685680449 -0.43597945061144038892;0.15016432687349531849 1.4515288915831934258 0.63762893628335359786 -0.093315512270377362625 0.39739961078868235589 0.86345809871846568306 0.33695355153736289422 0.010192014613820233465 2.0016173599899143021 0.34662555825155449973;0.44348039272251615905 -0.880863307272712448 0.36405565281421181645 0.14702993481469200931 -0.73470843601090563002 -0.43253415888856211469 -0.11044504216557224363 -0.79595636437183658884 -0.8289586728430171636 0.71581936150908265226];

% Layer 4
b4 = -0.34670687915861830852;
LW4_3 = [-1.0140834721396263518 0.3950856800719447226 -0.52673466642246469238 1.8192137842095414957 -1.2162405161112688212 0.16499964190084814852 -1.3961509192371852617 0.033628453652981109279 -0.13272827624666916346 1.1507235926318435393 0.18651338719388671494 0.0023887724057714532742 0.0051739718807755578217 1.0304135927357023217 -0.042701252949460338781 0.53748108795325677534 0.0011876021465028702238 0.89092593351459137274 0.11763681877266628228 -0.74216741407895259197];

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
