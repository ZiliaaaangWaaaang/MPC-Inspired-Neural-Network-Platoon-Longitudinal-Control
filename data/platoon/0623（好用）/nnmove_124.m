function [Y,Xf,Af] = nnmove_124(X,~,~)
%NNMOVE_124 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:07:35.
% 
% [Y] = nnmove_124(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-19.0505965768031;-6.85918092085871;-1.99763696099884];
x1_step1.gain = [0.0522252737181727;0.148213484472979;0.500572177293996];
x1_step1.ymin = -1;

% Layer 1
b1 = [-2.926730138620861954;-2.980387558679628679;2.9960297861045006584;2.7869544747437151599;1.3537377857418877447;-2.3253447238586080204;1.0523859649738929178;2.7492422205886213327;-0.52707566245188175458;0.43325878856201177625;0.21229636019764946964;-1.8305656830988248363;0.96013083814584487818;1.8441049640888202976;-1.5829482908858387713;2.0948615946092177253;-3.0274195260533915963;-3.1545246150569332677;-3.5383029401590144758;3.5657390770745927];
IW1_1 = [4.0677403633870374833 -0.16234198964208138016 -3.5716774705784808397;2.5673894940424895061 -2.7582406325815620463 -2.1611428507735519489;-1.0033224278932986184 2.8751480280433714398 2.0874230179099226845;-2.4005115145142696953 -0.75568252042577899186 -2.8283108781559844758;0.18282859901160600224 2.9808629394610015595 1.8504166342553611813;3.314941987216958097 0.67812369886287759968 1.9531395809099230121;-2.5806402520040174764 -0.84772336726552977026 -1.8562691267453448329;-0.84677830512606222513 2.3690636846617416644 -1.2966974824140240496;0.89265324682074442819 0.441583050357537088 -3.3495539484903611438;-4.0214215495739376038 -1.1548488201904205663 0.66310110578193126596;-3.1746807819481737134 2.1932446320911282989 -1.3393965193455026341;-2.6953954537969688765 -0.17229358378725712075 2.731345675237858206;5.4147160211442999511 1.0595132571827450274 -1.4951850625990632526;2.4309824987833601462 -3.3807011939861477678 0.089055084832780559423;-1.9724221236764825083 -3.1435489172038759698 2.4102360067701655844;2.8779917521310238726 0.82332954129872648608 -2.3769415241838660613;-1.5370088373074721755 1.6117727453896646406 -3.1444054742656066814;-3.0000025718555169973 -0.86874348234663734125 -3.0887736296400780667;-3.1121395045656887746 -1.6487528366270065572 0.14801911353791266657;0.74316221836227802644 3.838534351617750584 0.87628795649289015213];

% Layer 2
b2 = [1.4208948773870446747;1.4975709322412440461;0.40786079359956617374;-0.69889349808188849789;0.11210184324125796462;-0.10598424568049838457;0.36350010737405669126;-0.59984922728410272619;-1.4352803366800555018;-1.8017335373115066499];
LW2_1 = [-0.7433375543451483658 0.2696397259960519599 0.33776528298861779875 -0.55473582152550060531 -0.30936724949781341243 0.36647279608764166126 0.33210530779767788445 -0.26771801455022581351 0.5049191996093305157 0.57734076121200450515 -0.18408767343922072257 -0.52783837115708154286 -0.10468926092051061838 0.25468086572456372085 0.432487460768626375 -0.46341135347366224639 -0.5294980304019947237 0.40088138805311629431 0.27128554799215137683 0.42662341939226144927;0.14690134361403769936 -0.40740259316945837131 0.26048591734662429609 0.40542470724161899787 0.50603801185118668648 0.18273229398181986549 -0.44799411470012323599 0.42664239455984048766 -0.34921880300864910351 -0.97202134688723429434 -0.012214943820280431061 -0.18511970680702449776 -0.59935173970808952593 0.90890913751979940383 0.2086766500557934445 -0.36505889917251960197 -0.62146121314018631931 0.11653438490887846335 0.17360150378268368598 0.065934741229907653515;-1.0752889130309055687 1.3245381702617720077 -0.098352581854378215431 1.1903769256242366925 0.53663015800468227834 -0.9446667903179065684 0.57587308367038558821 0.85136261951630454181 0.05475049280419935771 -0.071558305114779591216 -1.0237801961534673811 0.55376105659372532042 -1.5396398932984032282 0.04495281124073229051 -0.93686359834967813942 0.090370611299560477114 0.51019584150664631927 -0.85099401193574053526 0.67106976845034349566 -0.1730235502509900325;1.6266271422372837741 0.26342130828922782904 0.20290784985367021909 0.7400592575874493928 0.85480189190498168106 0.026324488034543729043 -1.2096378909740563845 -0.7982666329449652487 -0.11930058274392045525 -0.51983983543626610668 0.49931249314715336896 -0.68504800247466979268 2.4185524162208595911 -0.020513093313808142271 0.095400670383107857853 0.65774551478264331461 -1.3189629396775548464 -1.2114275349609373578 -0.087876417538182566291 -0.66677208265582643687;-0.20842008351886467943 0.5591327179675013026 -0.086537411105044065307 0.38055435277313931497 0.55963837986316333772 0.50745191308536596875 -0.84157697142356568953 -0.3121454907966159098 0.19974782528520473868 0.041791729046026210304 0.62623216495053335429 -0.089951171404285185096 1.3755655591956938988 -0.14046853132235423423 -0.76384477922488791535 0.16095314050787204452 0.5666163732737602432 0.073549810436661561264 -0.40555230479574577718 0.96686590352473333887;0.86005106463461378219 0.45373464312654004926 -0.13784787410995677504 -0.053869063441995532204 -0.046771040929182355894 -0.96065601107036280304 0.050171664764271303727 -0.28169686385000958229 0.0009403087781152449226 -0.99083630719534443454 0.70052052798739661288 -0.38977378415021429747 -0.12449092136550499177 -1.3327508936916778737 0.34987370254646737999 1.0111026987358486817 0.023895489683031588546 0.46166098395539822974 0.44731616601033202807 -0.016369370647695610094;-0.42160509621583652784 -0.11699793447414590097 -0.2074064196431348317 0.46447589259970067932 -0.42105412837763106504 -0.90625188075681184507 0.19487692661413177908 1.5884069370233364626 0.026061434881178017348 1.2192422228460955136 -0.71178970152059051202 -0.17039558186404851758 -1.6698902947312916911 0.60789647123392520633 -1.3144933826066802496 -1.1814405410157104992 -0.27351232966715871564 1.5835497088966770107 0.27591313274432710534 0.028270700983896522585;-1.0656817203682993345 -0.85434220483549172531 0.73794007469305156199 -0.030749442724562633944 0.50154890473186497513 -0.47929896217460160601 0.28362636231750903981 0.098362838377742664586 0.047194015074914386076 -0.037002590580572425338 -0.62501963295430951195 -0.53186999976708049243 0.96786984568797385098 -0.24945092641091831664 -0.46128046018312207632 0.40606471297798024667 -0.52431759945811173829 0.15182040659935436278 -0.99607632883393160128 -0.098825341228546484396;0.050319113257482742108 0.19597528487681231679 -0.037621098617274369158 -1.2440873448876414997 0.21983183753043905595 1.5923749697758156074 -0.94200258723689456186 0.31475545934538701198 -0.11116433274278050836 0.69942981917885005405 0.36454167651679147966 0.78137008455640077909 1.8544365450853730337 0.27148996490017385241 0.87014125394643004885 -0.70216042467171335684 0.58413241568174967266 -0.2551436790907295471 0.61967096683253308775 -0.47526172073428663012;-1.6455340278215331296 0.73156891418328451326 -0.15767831032800544433 0.051288101989933394809 -0.83558700087120474365 0.062854038859461877631 0.49574937885576092489 0.38558436295845838204 0.23382217593427198632 2.5467758681575318747 -0.23580847164892040912 -0.2140153391539929284 0.50834134660644347825 -1.7712675611078867455 -0.26708368941486598791 0.040111524167489788495 1.1439565267307636454 3.059412280594342004 0.49705771720968683347 0.042142746138130640632];

% Layer 3
b3 = [-1.9547422638101068504;1.9055418235702425989;1.771407968920913456;1.4811106329400343107;1.0171303119622292499;-0.70691033358654764562;0.81053096952565339972;-0.58597329250109697618;-0.29000417610944173585;-0.030227527361187608163;-0.15285579151579997692;0.19717602526564864673;0.68107491152343735408;0.99052644819721324954;1.2605018326890014002;1.2201212796533482674;-1.4939406742939220774;1.5365393430094032023;-1.637669353219417534;-1.9575423115425474307];
LW3_2 = [0.67578417827045467181 0.8326546222060460245 0.19662137154408576567 0.8345371795679854543 -0.76104407231329018746 -0.51177144247864914117 -0.04395712893337461874 -0.58089504086264620586 0.27958693921217786515 0.32263863044982360462;0.087006622999788243988 0.89304680836210792449 -0.40643719156947960558 -0.58074369264068326224 -0.066238867839808854288 0.092898407411797404021 0.39856964967199581817 -0.68752767509449530525 0.30983073136777672385 -0.93036540157331626411;-0.076265997096872151229 0.27036323559864977595 0.86028221031819618325 -0.63737678069596248598 0.15122705002647016115 0.98408243943644935214 0.17957295222477209773 -0.38306931317356651689 -0.95068228324608261559 0.20936189064006469063;-0.043811162551898236162 0.9548289773978163586 -0.3181824642019885907 0.5324418880514220076 0.70028226782205127421 0.20374508981017142029 -0.60936272338761798828 -0.15108054773576681806 0.22988992483770007147 -0.66504281820488164723;-1.0079261682491755803 0.28978317581061041608 0.32656864804530266744 -0.87399844358742140304 0.010095337144842774293 0.80303140354411062241 -0.36969491131721204935 0.44618867592516792131 0.7892561028384418309 -0.035442871270170761555;1.4350275627033470816 -1.1874833760202818667 2.4196397238598712498 -3.0998446295669905837 -1.2397699848251044763 -1.5775913970535411224 2.855830198863947178 0.30053230339171060903 -2.5053152785567109895 4.4931714510810074614;-0.062139525031638186137 0.075628432739711870525 0.66830713580742096003 1.0562144904328665262 0.30044925830755375706 -0.33046676195887253469 -0.88466779301274678371 -0.26071115438178238399 0.26269936127350118626 -0.41674591078225164953;0.67080716516448024578 -0.60260563729890248563 -0.016504199083496189776 0.96795513688143453024 0.058410712864125663435 0.48649844446531337327 0.43364501163730656552 -0.7288822694973162708 0.78947278667516274098 0.38904009493643487705;0.068718325875460783969 0.6447973242106237457 0.28909987236323420046 -0.16924539638668806285 -0.6318396011082534347 -0.70525077992992801779 0.80235019924467809727 0.10381597567930533899 0.374731717775628137 -1.0395993233344968942;0.34725511960482197127 -0.42451702990445083774 0.32917888876460438263 -0.99774790135390933887 -0.65936618878875818961 -0.30927482304798686874 0.53811574001232309605 -0.79642956378278173535 -0.74554835949363151837 -0.4927123161099730142;-0.045299853061280169475 -0.031883366078042096881 0.60354671868858611461 -0.96071722953460747529 0.99265786135285671854 0.36091050106412203569 -0.24647643981594408169 -0.22029369878737373178 0.37061169961795897843 0.77571454403643136377;-0.045164755202200687623 0.067159753675020361641 -1.2473746271971810629 -1.2088228700440490915 -0.54602996885433818797 0.88700429920582490873 -0.35551428200061840901 -0.36697404022400675894 0.036480283660005642654 0.091210053483590625145;0.95206448736425819401 -0.44258790372466805252 0.28786141872529669161 0.2327504037524404934 -0.31016384860691120773 -0.47009138420686247262 0.42717512776358629312 0.31963758136593045656 -1.0606157665472615292 -0.75064914681793837303;1.1106540151041663922 1.0675276948735257232 -0.16029370665968892262 0.32133951468975424648 -0.31755947528204964136 0.50504147168173596505 -0.57620382544978465678 0.28331176068688596059 -0.83481365682666719419 -0.27125485702447016401;0.67196790152253305095 0.97269940012435673893 -0.49507195607997889208 0.023302138484487609771 0.78272640528081227629 0.35178320734338841547 0.65213909716652551651 0.44848291120611694094 -0.35176141837328145368 -0.78646895441784525627;0.26457740560756665138 0.75529363138810790002 0.20446730602565485468 -0.32393954993078249993 -0.76198593004407633167 -0.68658504684141274943 0.57203278302137294808 1.0380160473200790161 -0.27876813078403350765 -0.4370149179963712105;-0.71386034377464024914 0.13647130139379745617 0.82038758791818189309 0.21681876004247524481 -0.91333623537877028919 0.2245976159401308625 0.20362270438216142909 0.8940937206643806423 0.58504390268754047355 0.35977570715801970858;0.87445185167543160176 0.42096541806230247662 0.777120777441544619 0.14427728736582104418 0.6566172929978342232 0.18855869900723723487 -0.35892002204092188222 -0.83538540116021320348 0.57196167260989994041 0.44433452945469065209;-1.2721835315051979176 -0.40787783572287411582 -0.59436950597222193426 0.0023215624662281976465 -0.021190476864317679684 -0.10156039379055052663 0.86873717625620128224 0.667367272244454246 0.28751299295124765898 0.16154013258528276964;-0.63244377085322245335 0.09411580894676631337 -0.60701088489642152091 -0.8459567549420339283 -0.3406297112756613843 0.70056539392979666481 0.57158998842748642844 -0.15555456167887787844 0.71657836843763655921 -0.70239013031450359126];

% Layer 4
b4 = -0.19879042538767932591;
LW4_3 = [-0.0064772652119864278231 -0.081656319120773507292 -0.0073903758621514520355 0.027028955976268607964 -0.0088378971405763742664 -1.0572600625915438144 -0.0097170988477177158704 -0.033302321800457959644 -0.008613900991807211735 0.065208482977170675876 0.0057730498756646438097 -0.011096713605007508738 -0.068646663399638568892 0.33827912479852023653 0.72110043498326326095 0.15363375184283867281 0.052233830321069318892 0.036056570690775870125 0.49983217255389450484 0.40770211013791957111];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.499999999999931;
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
