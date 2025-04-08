function [Y,Xf,Af] = nnmove_38(X,~,~)
%NNMOVE_38 neural network simulation function.
%
% Auto-generated by MATLAB, 09-Jul-2024 21:23:34.
% 
% [Y] = nnmove_38(X,~,~) takes these arguments:
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
b1 = [3.6988934179949155556;3.8056824086832987675;2.4525697365325669352;-2.4467664911721738186;2.1942527791119790237;1.3191987556604651832;0.46788078551460710042;-1.2246854326453635586;-0.5397900737463584564;-0.74396797258175761947;-0.14477862495644017171;1.2113786613069472686;-0.72366970932120744386;1.3532405605430755102;2.5082630190658918856;-1.952288739536003348;2.8888774083684798377;-3.1948888582742123177;2.9688555613621363527;4.1719767652538983782];
IW1_1 = [-1.1249653104766517142 2.5853032927794039608 2.5683426312499282318;-2.3328789913896370578 -2.4865307288954152654 -0.49824254221717073632;-2.0944169150825544534 2.9348111811650596792 1.7422204239860614727;0.13687539040437976534 1.7619130240107681029 -3.6013038899143809957;-0.25946117613021629777 2.6605802903616182498 -2.7128579208308218895;-2.6398713907146911239 0.73883637311893568533 2.9628201910075917525;-3.6926429326230851835 -1.606360502194644102 0.55534649284255865886;2.0318348281001594735 -2.5061446256440702562 1.6411041675478650337;2.7640416590611289749 -2.7868199283420946877 -0.45565335132556672448;3.8052964599228387144 -0.30494091979292642369 -0.59831188735970519676;-2.5302603547771682635 2.5381889112370603634 -0.26308224994440138067;3.7268037037025751879 0.34108417609240082591 0.56322386950989333787;-1.367108301299235773 -3.182499858151094152 1.6697459266638494668;1.087968477528893585 0.14441430108639197183 -3.7272592402190767302;3.057142467807759445 -0.54072369902238681671 1.8358535269188143157;-2.8035283485684838745 2.3961529098028284679 -1.8442598300704191594;0.3396335028574523629 -1.1694685484458253732 -3.2318614777751757394;-2.452136303364876202 -1.6610086629515026235 2.1798143823524318563;3.4906332944514386618 1.2892938564656784006 1.8662350369586637733;0.23491872738648758578 -3.280348300723428423 -1.3122554482898096673];

% Layer 2
b2 = [1.7219163689438359288;1.2787813376641585794;1.1988207541609650075;-0.57994441864101320405;0.15713205545749836523;-0.23138120860772126708;-0.031160161385149841295;-0.77498944487929088965;1.2659969857512580749;1.4499285207877212756];
LW2_1 = [0.037206447243065224328 -0.37292149186925588333 0.26597614587830714639 -0.40548692566489097366 -0.23514060342742332255 -0.47039703333749682823 0.1426404026220665644 0.65518909318485096804 0.53007209926768605879 -0.71072851041088014323 0.26506123583795848653 0.5446727994076414614 0.44470439369590941681 -0.59783184204637074277 0.33425158350318229239 0.16711848770972870248 0.30982109876978186636 0.0029036915742321443845 -0.081484654452655957968 -0.31781253658903230175;-0.38026934781180421474 0.081096848733493764882 -0.96449164686695343374 0.17398758133470690335 -0.16167721436997001261 -0.5335459459880385058 -0.3760334349386290631 -0.24236208290042346447 -0.20196940203241897649 -1.4256805465584094783 -0.7560936522737315979 0.57271818580025357637 0.23866678069238908555 1.0559884443603453352 0.50090476516797710627 -0.21060046735744175628 -0.048979738423160189276 1.0461939517301059865 0.87102747343949538106 -0.55138590066552539692;-0.1717007895211961066 0.29460947732755160544 0.57402561140471874968 0.38363849016859213892 0.5589533114308432582 -0.150403737411754862 -0.43220076856874894977 0.24492005945362638197 0.34541313451329741513 -0.51394055989819409369 0.39819511778728733375 -0.23996586396506536243 0.19233276474330560091 0.64729605898888320503 0.12707417164603007631 0.33419110330750284588 -0.20210690625902952289 0.040852114805602440795 0.71268798490780216337 0.093081758651943138916;0.74173451255381406266 -0.0071878784981538046406 0.19309392318420359747 0.84893076064213712772 0.12762315641252677811 -0.42273574088466081555 0.50098935371519992543 0.2051302133457657273 -0.8352473904502399904 -0.37924049027049971938 0.24583422031527010776 0.27947718045833847 -0.061735388258546422535 0.61328916371697683729 0.4216742244495354508 -0.31629474683149572112 -0.027969005980316850174 0.26578500373889940578 0.31497679327635186297 0.17900838822418638219;0.43192203295172032496 -0.0684296934055818179 0.28036580197191007802 -1.0254092621799575369 0.728371266149165697 1.6732288894135418644 0.84129401364784461848 0.46857445186563601025 0.39738866863043553757 -0.51485642924137642318 -0.4687517256037753155 -0.5656714346262166071 -0.48756424957236049744 0.34829436883332831609 -0.2226859430512266036 -0.070487204852638332686 -0.53309326107431986852 -0.028000088199816565437 0.15200313511670890398 0.17548764278653292137;-0.18244173463304991234 -0.45333861950156845166 0.0003322313304995119787 0.21014996535913332831 -0.31290039897865756791 0.28815179829586123894 -1.191380911046664437 -0.092269433040618631381 -0.8944955918675290274 0.028062087750949978732 0.37925951577084138222 0.86486551687629309448 0.13739331314073593981 -0.073186417844547310696 0.8538891422437407952 1.0083430963484592002 0.082281978034620437135 0.26860493813086433468 0.13637012207772422623 -0.36029322179686912309;0.12972657738734566513 0.5865666402479809971 -0.085393452705834843597 -0.36236499898372553918 -0.34395590912642648451 -0.019520763171899310762 0.41482945689214412166 -0.31831134184762110984 0.45479643002075598179 -0.11380084119896824446 0.24086286831466333092 -0.35923804646648421768 0.46314996433063593262 -0.19472943825171940002 -1.3238614424832433336 -0.1769123257908459812 0.24784826620545996612 -5.2479892003600564498e-05 0.61539797015846287032 -0.21656822963723784681;-0.21600057333626943024 0.60704634129186385572 -0.14457189225938019139 0.48634835550774563329 0.47826928690746561834 0.25262258448783886378 -0.037498496073649426052 0.0008883384298298060977 -0.43706410871941997476 -0.41244149887870912297 0.72655858970620479376 0.067405862437862854031 0.027138548556375888254 0.074876925612642558638 -0.18674011379833166391 0.09466257691324476975 0.29785002423519330028 0.43838254962031591999 0.62239176558689979224 0.2779140652075812179;0.39241127624527999407 0.36118360397027582387 -0.10463773687530951439 -0.17261123312165627119 0.55933198679734608127 0.32020649789869465307 0.49474134063699604091 0.1940248347298475784 -0.31378454066713284965 -0.46793609833794841402 -0.0043387598182793420468 0.22329600242953517863 -0.46673596722643467816 -0.64360595217153937497 -0.36508468562054791073 -0.22202144549392421879 0.21268297560586607586 -0.61118415177186635745 -0.10981123833480795071 -0.23564734698273059887;0.30694389691254736485 0.29716957900362378497 -0.11612357446532083072 0.042962260079947876823 0.36847091278824989358 -0.34923452234681973128 0.48876128932469514732 -0.73555172464256757259 0.23318274940773511816 0.04468498795028848225 0.34202956214934127077 0.36809366799712067708 -0.35089806155276248578 0.35829813159584017468 0.3096386843933445765 0.74935561929485128285 -0.31422259210205427671 -0.63839285578151061529 -0.14280120637065127354 -0.11058418800271307969];

% Layer 3
b3 = [-2.1885569932976127738;-1.6935031414245862447;1.549224675820528363;-1.3958450958948107612;-1.2850105872634496329;0.87867123621217246843;-0.39948163009394010992;-0.38041104917407148056;0.50252325164226474552;-0.072733470858204432585;0.16498561473875369976;0.058855991274169544569;-0.62803812831296834673;-0.62523727600036138607;-0.83339849494489970372;1.099171811894646078;1.3549255887191715697;1.5300991438865099159;1.5737774486230329263;1.7546631701187789254];
LW3_2 = [0.5473934969226994518 -0.11304281384769723773 -0.35132545622912741967 0.90930806737804914519 -0.86076719019042657877 0.23582766151675146893 -0.5014759815696493428 0.024261479701956963767 -0.24377878598876637217 -0.1920458194719975864;-0.026725004583233361033 0.55903912162612601211 0.88905560795902915938 0.17673826728945293829 0.014320241367573826458 -0.11859877042645829148 0.92742737836944233454 -0.5805832985322040285 -0.73756216323450907169 -1.0200188869591126917;-0.62329401956212460156 -0.48617253003148958035 0.34212825118219603038 -1.0139143518438022973 1.9976847091959415437 -1.3212355894419722802 -0.32690250719795982404 0.0088929424338752942336 -0.39965463667443223983 0.12863761368835066601;0.33201263893700388996 -0.28426560731409650229 -0.45999903822630133776 -0.32685189319120128149 0.33945142376686809893 -0.37914638587536370062 -0.77552949420320937968 -0.69631963255986784045 0.65103391254135445365 0.59782030905185923331;0.52928749338161273919 -0.90717462120282033045 0.75038851157896069299 -0.3339260971196195138 -0.6710067109085424697 0.68685555310952306485 0.87403826898339243012 0.61227450899761315384 0.062206108512865086746 0.42777385367014142403;-0.43678182846173996268 0.70599094732251788109 -0.55890305160303233034 -0.85874700056858210839 -0.92583646375878303481 -0.16678557230980167736 -0.23800205194601573022 0.19957895583082069235 -0.84785536212080714336 0.36723856904451551708;0.73661531048370332275 0.36263992975719644418 0.52901951924050816256 -0.92755613370670220164 0.18737120132208401335 0.539048738770356195 0.6593994518329715504 -0.72041401136316285392 -0.17303937322903589768 0.48645626468172187273;0.36526089622818519453 -0.77474274732938197552 0.57609582690701033325 0.2292638332642770449 -0.026634343475921511829 -0.92363986794159003146 0.79810903615189832117 -0.34173176627152052065 0.78768222071249860416 -0.55668440158573750942;-0.15560507970750819817 -0.59197075979976820914 -0.18581294893430602699 1.3369331309627594528 0.22118827903855742267 -0.10390099136422530079 0.10769227561273207738 0.82181544391232153046 -0.61470986256658821656 0.14582712894139931992;0.48896125510358134925 -0.00045738108759080242649 -0.20336961396331199037 -0.76915169166684660418 0.76075515623882250527 0.83888189703431736977 0.16341655692904991093 0.5899767801073410034 -0.63215006146550289934 -0.64550138669302892236;0.31494108296143058512 0.02289029476095343768 -0.62326291593250560119 -0.70335445800220353085 0.3383634501554940166 1.361581958400952086 -0.30461858826183746407 -0.73856121776696737058 0.057498147382960447527 0.85302494535973560907;1.1692696117781382625 0.49477544303950871107 -0.33518538872881847857 -0.39855815754201490142 -0.48969283372399941001 -0.38458655857315904303 -0.33189541566329355815 0.8386214504268479919 -0.60080496634453561811 -0.75143041546846922607;-0.65079132757943936038 -0.49217348016706269354 0.28643601574002208743 0.10789826280547323845 0.78924456355794814222 -0.34413608253987970631 0.82322409818896669087 0.14215774631633326663 -0.9484091348475098826 0.74409655717081379933;-1.2974337052172491003 -0.22599243451006723049 0.55516768251409942536 0.36433644693493416611 0.4234862971513304597 0.48306980858814568824 -0.62357993399970090831 0.15666469569991861577 0.17408140596589294358 -0.48613962135442867485;-0.25718158534263541037 -0.92886089843057695337 -0.15846873113438153524 0.31231268581055371403 0.49906138939282695954 -1.0994706131430009854 -0.21860869049628497973 0.33462325936971593077 -0.41666846186703387911 -0.66504577532288400299;0.86905402607808956983 0.38369100181549659068 0.31728506715450682796 -0.16791460414660414058 -0.84853240875577440328 -0.44281233308978434904 0.6412938609731849704 -0.40341583026799682221 0.66577625650138261282 0.77164582295912020893;0.76419793031898075597 0.0027015553785114327159 0.60453595649883518082 0.73777129614639813671 0.015884940976866261664 -0.57654881159398707613 0.30209014926496791098 -0.42710611484840904639 -0.79697131774475071797 0.89510801378299165165;0.28191123377229071467 -0.88662346503432132305 0.09783287106447344228 -0.12599391907511078847 0.56230714761317157624 -0.79543709837991360967 -1.1269348717719214203 -0.06468444550587668096 0.54313824482137706973 0.31837530938262598168;0.22145483763020989976 -1.4245849390887574959 -0.086203700697120744234 0.18746104766974680533 0.55496961076207917962 -0.15467810271581289294 -1.2404042156386358986 -0.30313126811289781148 -0.93281428985390801856 0.38387638018446623711;0.3154808633856470701 0.7610334753618006598 0.52388186495510458141 0.56953074037265050134 -0.37005898457507641064 -0.10479995926933480255 -1.0048802585105502949 1.4539549227584311897 0.26865578167031861634 -0.39920125086776347967];

% Layer 4
b4 = 0.53604885746332542329;
LW4_3 = [0.51779079283106022036 -0.91825853421930136999 -1.4374685225465331229 0.43330758397398577708 0.43124505940491286715 -0.10712186913828437851 -0.31325544749191830407 -0.16114756048152528711 -0.12311923397870519481 -0.54793033193441098572 0.25629642420194859165 0.42627755620563895222 -0.24317428785772401967 0.32501129282761126449 -0.85730209907422072479 -0.020740657658514915357 -0.35934973866469321901 0.45168342941782180233 1.5472745860009071706 -0.95669071425874974146];

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
