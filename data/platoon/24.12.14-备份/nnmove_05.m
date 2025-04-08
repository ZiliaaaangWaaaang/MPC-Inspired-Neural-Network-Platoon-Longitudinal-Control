function [Y,Xf,Af] = nnmove_05(X,~,~)
%NNMOVE_05 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:03:54.
% 
% [Y] = nnmove_05(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-13.2925490923537;-6.70139767883548;-1.99417344577799];
x1_step1.gain = [0.0638195875959219;0.203130617198869;0.516841642029496];
x1_step1.ymin = -1;

% Layer 1
b1 = [-3.4281384497633764497;-3.4368430138651100414;2.53757625593155689;2.774686615457133243;1.5855420988925372772;0.97306979172751240093;-1.6364518550331526026;-1.2318239149480272321;0.54013438342600950115;-1.9517451300012469417;-0.40007389579683710901;0.74190275528128590832;-1.720246353086924751;0.72129554359823400134;1.8630922705001249362;1.7454485065201148508;-2.6415290784942584423;3.2083148542752670807;-3.2602571188269813263;-4.0184162779836372081];
IW1_1 = [4.7837628299389649555 -0.17848524261806242297 2.7996171816849346747;2.9712273586982123064 2.1406049995529503605 1.0707049436286328881;-0.67034730579548540419 -2.041594315944233351 -3.0787804901150832571;-1.6377968332822849806 0.63985807174788922325 3.1723051857603685733;-3.318505814695359657 2.8555498272462180864 -0.91285656643576285063;-3.1839763672266538919 2.6637912679201103394 -1.9842993779749860117;2.0405653243139729724 -1.6359361168181112411 2.6185145360022614724;2.0797365066226420893 -2.8642233385806488144 1.4592192050207062337;-3.1080664789449357066 -2.4238297333462663907 0.43728608918213179857;4.4980653000500199212 0.6887915946840398318 -2.8988232622435270436;2.3963581273631233692 -1.4105930132563442303 3.0327081918435139229;2.0103257956002265061 -3.0981744601367129377 -0.75230032781074984705;-3.4334390708284403537 0.56676733773710241682 0.63296162568698421946;1.1232743344405218267 0.32623675237889848688 -3.4484612478847531669;0.15227521564822676936 -3.4769343722106853534 -1.8006456031945790031;0.22136185380162121117 3.0379787011370313898 -3.024551421441739496;-1.384850154669869271 -1.4960691815033344554 -3.1223641845802285744;1.1962909258806613266 -3.3145702322020853536 -0.63976053406627131359;-2.612156158592311872 2.4682960214981943814 2.3744970702287635511;-2.005702443928673695 -0.461752670297737422 -2.9471391195974532273];

% Layer 2
b2 = [-1.4963924550781184664;1.3079441324845024752;0.85375899247888531463;-0.17084268028948643159;0.040443131457619359292;-0.27631481118796413776;-0.21337601979072268188;-1.0072391989161939563;1.455666193026845745;-1.5920491373449321415];
LW2_1 = [3.2551614563421895632 -0.60073558641732571761 -0.45995700268084471762 0.52100774011782280404 0.070800382928790692172 0.69059524046946230147 0.042351499481044940776 -0.95971271283317816092 1.3896257238470710593 0.1265087518081121909 -0.30337641653615499138 0.13021073411769584771 -0.132122978423041465 -0.59185893889474971985 0.49417279699727778564 0.32502404866599793332 -0.42596061212371227889 0.49619240186608443155 0.86005137160549671727 -0.62262948483011548717;1.3491460883959951467 0.14608313159870092712 0.18593918915526241875 0.33974494702057839168 -1.9655463326820541425 0.40455647419275508891 -0.32317483756762782621 -0.37549934850768779127 1.2802052566674746448 -1.2759431370501508329 -0.65270723152653875587 0.15965029762870169838 -1.4451853204277935738 -0.35998500614567829903 0.3097054902935613141 -0.13868605246114476537 0.16549085409963240623 0.2754722074491035011 -0.66946676558367734788 0.17107648677667799952;-0.22566785980016418334 0.2464469752274090486 -0.0035749658911262871715 0.2181747534475370065 -0.69787758493401197413 -0.28305927697435273593 0.9458356300103359926 0.59513156097941144473 0.089987711232823341945 -0.37260795337346197531 -0.084918076073615247901 0.23140177882774579099 -0.013692661569797880822 0.36201672385071692606 0.40397534595780831834 0.27768739854013185786 -0.069485909904675915993 -0.29763189955472246773 1.5024329988444622419 -0.61341194655621222864;-1.7664229270702980212 0.46833431035118355812 -1.1095674510666255763 -0.43659766681874223604 3.7313137562171090345 0.84093403920293519072 0.45835064948732751056 -0.1096115100120832464 -0.045364527954143037125 1.7220124089335313577 0.61975507527909423633 -0.056964528259476641947 0.643162244486552237 0.28538599407268061547 -0.46041322096327519375 -0.71597929755940514784 0.21442678407139645347 0.43156849310571132605 0.76439141752333461532 0.38969213838098770708;-0.287675438509329362 0.8056421343203856722 -0.20632767992404188462 0.1634493677930855815 0.4820377242800601425 0.59700737426336647484 0.21876107970809996472 -0.20471180322426052456 -1.3909900800106456131 0.64277402008959849677 0.68777885586897624659 -0.063011572347290101259 0.10756297566334777072 0.17066730788522135875 0.048535927751481112991 0.72196586032673104594 0.09628990347424709606 -0.10746129188347773586 0.078375047172793713135 0.76026049338488776996;-0.52281260541278840037 0.030654837739840189864 0.030129028416672441748 -0.026249433295032102015 -0.4874265151235748772 0.1779533845259486935 0.39830400287897738121 -0.50350499801891313023 0.30505993674406922667 -0.27765380083427759761 -0.090145722926970248134 -0.49542593681611662992 0.50847638532170991166 0.29169399928887140838 0.27516671269695075486 -0.066275824205722075333 1.1781122070031737614 0.26164882279813617139 -0.092520133865125142592 0.82577698360241946762;-0.035494302364969060326 0.88167701409704979376 -0.73451432183425269251 -0.24640363186045069477 0.072777461387089459333 1.004538114024529083 -1.0878648309039271602 -1.2528918399594781707 0.41461992927709384604 0.92005119297509629916 1.0320241491127226663 0.029039890293738254701 0.60831792345859991844 0.72493281698970180038 -1.3181229572748864864 0.52892159797257765064 0.56177124932178568173 -1.4772809233725816558 1.3967987393264771345 0.061599457224036334446;0.065819621346030671161 0.15377270305686283058 -0.5739207415305895843 -0.51778753401601118611 -0.10227533608099170781 0.48700729741350046176 -0.09380809067823479841 -0.28073305104521822928 -0.054596557901937625701 0.40962474821079225551 -0.08108633395087912199 0.67181511571459029408 0.1591091216211116266 0.10124863017513177632 -0.44034844306778614387 -0.21830250121893876591 -0.495085071907137797 -0.18729545369714567515 0.42471550592090329124 0.38461584622151340218;0.52308849461030104688 0.13602944309865766526 0.12308873782528191587 0.5320102871890439733 -0.26945887063550760798 -0.23978899076001736201 0.33110033235113450756 -0.19871748519499829455 1.4183459209430817616 0.17421314464557471902 -0.12079336792591162386 0.14288404785396877084 0.45866469552167776769 0.071865763471683705155 -0.5898229501001160946 0.33986693079697805064 -0.015213660880138557899 0.11397082513008889582 -0.14268206019529958151 -0.54282204267855072022;-0.062967516706483109279 0.35198096509457937886 -0.061525411350250185094 0.467288029495141366 -0.50771528541990507133 -0.4084235095616914335 0.85791018036750121833 -0.4165567079237860737 0.21693945697247943305 0.0010665566120931300586 0.13564514542163599864 0.53340686827633487788 -0.28376692880237375238 -0.58036641892857454561 0.44547211718756868359 -0.44922456550477696258 0.085572547676365934288 -0.61913967945535774984 0.019657663345240643932 -0.020234763586292035115];

% Layer 3
b3 = [1.7145987741609267641;-1.3817138256267729179;-1.3411968814543282491;-1.6245738214726468396;-1.1494402661749529848;-1.0189744144389523139;0.66977269401454075926;-0.28741767964972564364;0.27091043234413381136;0.020581338334849999527;-0.15512293299847373929;0.42273993616958666086;-0.68626525371100610684;0.66953442367069726515;-0.97410419944098314282;-1.029593868815930735;-1.2936789076987071923;-1.4545339007978979051;1.5451341094385908637;1.7376332679422583638];
LW3_2 = [-3.3307867993719129096 -0.2457570768303367903 -0.98994544359994551819 0.43694280327588502777 0.66909783086342167202 -0.37109585510563675159 -1.190876050291932442 0.07291905228072427525 -0.64055157170839693848 0.18040831770862747474;-0.076032533014942851879 -1.0622655874217219463 0.51804645478554556259 0.475891012666500135 -1.2847485740853092917 0.023341590007651801669 -0.55166326050928771174 -0.26300087767776719749 0.88653302114915077947 -1.0310426483263583908;0.2599033782860324937 -0.51755146983811195494 -0.47267849086977148376 0.4584968354119324796 0.41270625646237635298 0.29063865344335848562 -0.84214551444086704901 -0.98787279725197030267 -0.71109216698513633137 -0.62920451185429637775;0.45411548929169209821 0.23895412605646526583 -1.2338668618075501193 0.28068933519662109255 0.67369808119313845385 -0.55757892178298396058 0.15331449806381935996 0.48038461600562948339 0.094705964977183004772 -0.94596519219176289361;0.1749880524272861837 1.2947569878732305693 0.4728291275672712457 -0.023151394388233801497 0.670935045143139841 0.47215871652821833626 -0.93368398223490678411 -0.27334940100917476391 -0.97995662552503681741 0.15567070189208595532;0.80941048898242162757 -0.6184285347733635696 0.47245505453540859175 -0.74524810187534229478 -0.43420794834189319067 0.18566468712136705022 0.9290743093972497757 0.63484310044284641972 -0.051197632231926269719 -0.050260858901214802708;-0.14069355608345221476 -1.1992219017826768468 1.1369445783729064114 -0.11521266490086641554 1.2262182491236051085 -0.64025742927706319474 0.10641831750252030153 0.92678542357505511173 -0.29379152934286761889 0.12527366475991530415;0.69592423422831795055 1.1159955475885046106 -0.07127403902041311301 -0.36150372880073949888 0.60478738420851974045 -0.84051363209132956555 -0.32710849617465243 -0.061571645094774661577 1.3103693465575863009 -0.10126207166586567721;-0.38070687881599352131 0.083034181865224612751 0.61797611507195171487 0.55759484996556440972 0.70456041468599350797 0.48218555607981500311 0.068255573162198476811 -0.75611611195226346993 -0.79275066376774305787 -0.85647783459754589508;-0.098203879660692702802 0.55521371744310910046 -0.59162290598198319369 0.61653307027758297298 1.0600449815143671017 -0.30331152551969681186 -0.22720395980946236913 0.11112782657003254794 0.5163184403950069612 0.64579886961237653598;0.3727740554232013559 0.73991121556313954599 -0.68909189309244334165 0.18130516644528568704 -0.74070867888879710073 -0.10130870434435086669 0.69563821958561655734 0.036112230360831207299 0.97234613586109164274 0.43175152597902227702;0.86510962728674878353 -0.21993270483790630654 0.88860242986062998316 0.30416474509207869215 -0.89945304103703738186 0.73653243741168017422 0.62911660532376645349 -0.15576771960498475567 0.58158573711399486061 -0.72165071168286487602;-0.40499358901331544702 -1.2934141354646413458 -0.074295806673238956597 0.52874237653735867148 -0.14590935642735544664 -0.42875026539051164232 -0.63555315755475749739 1.0319868093314581436 0.508560681558495431 -0.2702554337253930683;0.022916444120741539386 0.055377250155635701634 -0.1323564574857718501 -0.24334515319127969502 0.28805488348929492171 -0.94739267326894283094 0.89889520986911142231 0.66484128767388772641 -0.93275147589884532806 0.18273780603036315906;-0.77391308652761192644 -0.48409884495068927768 -0.59405782250632921393 -0.40834760121674817945 0.67056830910231035592 0.39152010699805434024 -0.77589736566100320214 0.66791036501264877678 -0.36423930377743574116 -0.62206434504593199897;-0.15588265254977196062 0.33120851907480586274 -0.96829595491771791593 -0.51593669124215801869 0.072761687716455317188 -0.86550288810488806845 1.0226388433200306327 0.78346333206229934465 -0.041433123734462257159 -0.14223771738635709871;-0.89744978674138753405 -0.69370099979770194487 -0.81351269024176420253 0.16398967645199050147 -0.022483944752243623794 0.50590991972434284918 -0.65849890104231145749 0.57492983028328659145 0.55019667270744521126 0.29292529463765454301;-0.71511774819012552395 -0.2537582546041569076 -0.61298888972080622928 -0.79939956898186803613 0.55977308305776463104 -0.36653739826564901705 -0.77593358727950945131 0.60388350435325122145 0.72298375181768814723 0.37091123594722341661;1.4158131215563212191 0.95580968129449639381 -0.92729273763884900728 0.45831076112593849281 0.10692997685462700408 -0.042195630051762883506 0.0466122601200492509 -0.44621812029023638635 -1.0477247141174137468 -0.32847483172663538564;1.3697119504293107095 0.057867107103464210383 0.56623063928524508537 0.87748637548436336786 -0.36306510250101481363 0.14497258426227271899 0.5878493500972561403 0.45957178832098394272 -0.2867662105204460965 0.66140364396930895197];

% Layer 4
b4 = 0.7739442082284354596;
LW4_3 = [-1.7227662297785146794 -0.0061070774140205529024 0.10327280190402970961 -0.89633235251184595338 -0.66747444277907652666 -0.084920925973197405878 1.2268565685353576278 0.94041060888999628009 0.19350068076323961863 0.18937455998882637975 -0.30246119974729479551 -0.62310171403585112859 0.79313142520468782326 -0.057180267386053182377 -0.39584544172454444455 0.23665230835035724888 0.33043943653704843655 0.12663227971531368365 0.41051296756052341186 -0.55315693217186301389];

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
