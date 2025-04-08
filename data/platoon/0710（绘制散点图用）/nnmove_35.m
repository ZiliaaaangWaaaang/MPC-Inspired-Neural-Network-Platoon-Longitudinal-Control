function [Y,Xf,Af] = nnmove_35(X,~,~)
%NNMOVE_35 neural network simulation function.
%
% Auto-generated by MATLAB, 09-Jul-2024 21:23:30.
% 
% [Y] = nnmove_35(X,~,~) takes these arguments:
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
b1 = [4.0479085341396725539;-3.7566131224636118979;2.7032324373977489884;2.7261800963696565248;2.8663117409973155603;-1.5610550432768033335;2.2895467256761943275;0.98932637323403671559;0.23341304891433736768;-0.37604013676358594154;-0.021335004608590238395;1.4020515913256899054;0.15519257166048402996;-1.6429475015659835702;-2.346389271031062318;-2.0195910135006305275;-2.3479953252960878984;-1.9467604991740636855;3.6487424611058214552;-3.8688979201348252523];
IW1_1 = [-1.8567902293958460369 -0.29096999829514968994 -3.2847987243346095099;0.21150001134260321134 -3.361057371599843524 -0.85529627363580706945;-4.7822232290156678758 -0.5788225067037708893 0.1303059335282397424;-1.901518728281226478 2.4341186516926014427 2.119168042919441497;-2.5302267612153186427 -1.7910003097284354912 1.6900721730679528765;1.4525811927565732695 -3.6939578935132288962 -0.43776551466298330162;-2.4369737255830754563 -1.8277878216178884418 2.2333106515996483665;-2.3748126655094479176 2.9680254301951585205 0.32279565310623298258;-1.2206685120058922145 1.0455016097335341207 3.3917223470998427715;2.6180853922122659938 -2.181579682405268894 1.0262909911418129916;-2.5526506280015017758 1.6536186288102519004 1.9299610396518187549;1.2162205871637647991 -2.8264618382062081103 1.6180051676079105771;2.6709065767401796165 1.3271404473374530664 0.1481337019969971025;0.068628640671731674927 -3.1599241196904586104 2.0313305763402227377;-3.580989643288272184 -0.50515073133764765156 -1.6396405091891186334;-0.42021250360371176225 -0.18796646368206801347 -3.8606299122128109325;-1.0944632225354453681 -2.1231407713189920372 2.8569825661422112439;-3.9963252930836126176 -2.1298179257830862632 -1.1163370174929723166;0.10852961002119836109 3.0585264024973581876 1.7574710823127586146;-0.4182485270269934996 3.9041123745581947091 -0.45988734682116194641];

% Layer 2
b2 = [-1.3671865308438988507;-1.3283466185284515948;0.88867729242258652889;0.30756119623275274266;0.2141485954549216808;-0.3108488145515983514;0.66814933634027928733;0.959154965402789772;1.0708096554893991037;-1.5714251244032531041];
LW2_1 = [0.83250018966698624556 -0.36702970941670698402 0.0011414920971380550056 0.33154613331509952268 0.04937828317458414773 -0.7428925910640461483 0.66859504094288213505 -0.41406758689842398935 -0.0058941766240201811169 0.45484338108275967905 1.1173096979168046783 0.47784407532152850528 0.048562233624994649572 -0.14809900804163600441 -0.19645904584819545713 -0.9718925890902440079 -0.33415493597285012006 0.019672208449351677451 0.41480163968776595507 0.37648807074625068037;0.19862085625528155819 0.72012905020814277357 0.37021858390950296291 -0.14906610536995376637 0.54157305779499653742 0.37529616747314442637 0.47770832306053601091 -0.95814705742043493331 -0.50459153137020507085 0.67845233314859687557 -0.38162186998632480206 0.41577478896239755679 0.41910727328097180377 0.57234419844378670028 -0.22128668518595717707 -0.040715741965922445933 0.27704929707364067681 -0.3227737644276025275 0.51498645092635153553 0.2542311004781827033;1.1276417790960231446 -0.14249069729334595813 -1.7254325054580277321 0.32824152232429287812 0.48679053774780811636 -0.29597523243328727194 0.78580609832304570972 0.04583975154239655625 -0.17603304218862972363 0.98290555193864681538 1.4481406220308017385 0.29300167124681453235 -1.7860581014175425096 -0.22324160584770724736 1.9585125141125518944 0.12835710020410948107 0.052489409487496974105 -0.69828555134376257829 -0.26374074572007710771 0.21782419227681562579;-0.78907500183866474686 -0.19894875619305493752 -0.24415934516777468288 -0.43427442368162877395 -0.11352292387944913632 -0.10606581684627740259 1.1704273039585999516 0.48784492520440692065 -0.55973913314117018647 -0.95707595707840242838 0.13096544585875696809 0.45612529318352695862 0.92517523562868753118 -0.71672244857618905289 -0.8472470590052241235 -0.96758936641581194671 0.9189401780520527474 0.10165238191275532964 -0.051233879582840910483 -0.038280477245485514115;-0.06230257112775917927 -0.28128181619875108899 -0.42544348513152197011 0.51905995578955332892 1.0458093371617431799 -0.17197771804183159539 1.0617398738085546128 -0.41768633137853916626 0.097857914841139398421 0.79996121070565295863 0.60144953992513006114 -0.11132051504265488839 -0.21460788328791274848 -0.49101015055559704692 0.83775769079916451165 -0.62525558736116881864 -0.5217976621279456495 -0.4051439157464489238 0.23066545592283679844 0.55102326607653207002;0.30921236654700312574 -0.11170903838919682416 0.1344888128802833871 -0.82808915858607745619 0.48728799918394027912 -0.48436094564884607516 -0.14839995610536504955 -0.0063815280176321553113 -0.11053852428884179682 -0.037578581812534629647 0.25542013060072149555 0.3846792071689912329 -1.3437452476196680706 -0.57570484239244967828 -0.29849725822010603205 -0.06712153629174175129 0.53515322486326588614 -0.68387819065291355347 0.090299801561161005536 0.35335016212893166632;0.74142463330046148862 0.30187014145221546801 0.43344076643136475457 0.42697144597180269887 0.32668596183578579861 -0.43016295979589214138 -0.30467438342867497747 -0.50678837731789028176 0.29973696324445148198 -0.44893089502057453855 -0.33703232357089935034 -0.24678439582143482656 -0.49549773434302779584 0.22455868443894669295 0.035936970214812527513 -0.27394553300465351864 0.026946548010662312034 -0.28870532912655566538 -0.024573369706822511399 -0.46366862680356607518;0.62241028610256032838 -0.649787024898161647 0.46756366589723924454 0.27558480951205488463 0.34726870654803365657 0.3881108300825608648 0.20956190240364794275 0.38064753173660142993 0.050462746069518699121 0.17739512711037891401 0.17326141365465747013 0.56600543505083089624 -0.036334116656659504185 0.19208419954362940252 -0.21642163891881485704 -0.34217388977956314511 -0.43214682117849095855 -0.50872080332050406692 0.24720035125971981382 -0.14142876569336373938;0.23508055127549346008 0.56526770477812582349 0.77324687807896552716 0.43211346553942076021 -0.11256810317299487112 0.30545059032913962627 -0.71581335983105554011 0.42435632331709016718 -0.26605548523522282167 0.77838395465654475203 -0.21345228218997439051 0.64729127000799246971 -0.53499862886713656085 -0.47473808378103954375 0.36267629710195797843 0.74098371672563145829 -0.90387277804873733533 -0.29890155595022266377 -0.45806130448110082831 0.16479994047937907009;-0.12362996163290825014 -0.24854971415392210221 0.64782059776815814622 0.42950578045189635734 0.053616263203598607534 -0.87359950978426370582 -0.95644117703159525767 0.058686243987679492795 0.12619394482949677916 0.050867704913878424022 0.29872650407854040022 -0.29768476450551228929 1.0065264525082040503 -0.084881544294565250408 -0.53254080363596556502 -0.093776365090867924712 0.066921284327667585057 0.25355213296117024013 -0.32498559882116628827 -0.36239250822811813757];

% Layer 3
b3 = [1.889233477714723719;1.8774792916753020311;-1.5527688139893676134;1.4321375458656522284;1.3679756550878026111;0.78482954104069280188;0.53856022897019473206;-0.39187011863828125069;0.064432402523654924709;0.36719222419152891534;0.033620755302277059717;-0.16943757631949513121;0.51759077022792232547;0.63689815027707596951;-0.65228995115144194905;1.1778876045369242043;-1.0806585092679594773;-1.617196573782184954;1.9592571959238158641;2.1521635794127695895];
LW3_2 = [-0.98444128488415627576 -0.063637612197758236521 0.20261567951773432061 0.4815942329215895934 0.87795009923747291403 -0.72659793165899289047 0.55797953876127359685 0.69997431055990011473 -0.10002965891469917104 -0.45939209003141467935;-1.1261017172479510506 -0.12385546010493633795 0.15647415620655427682 -0.31742029028335055907 0.033361710549955694849 -0.13371181304802945422 0.5963870507602802018 0.55157115577643822668 -0.92555209161234408555 0.57449236269520276288;0.41016623869156021431 0.99929995067040522372 1.2238588506523981891 -0.45138718405940464473 -0.64453854516859876433 0.90606023915133537816 0.15847077253446670286 0.36675034798011363346 -0.96053540877783283314 0.87064260794076808736;-0.36085895721146155068 -0.67909812342097064519 -1.0897568587528978501 0.12963909338232804114 0.1221649380689591724 -0.60690731750145676671 0.80253551527427235968 -0.46081945093340004327 0.93256318831050188933 -0.36847144736724585234;-0.062499170681536556082 0.48640272382376809057 0.46914935168548344002 -0.19131195909730530635 -0.33186470468126827438 0.9327481117883880124 -0.63922649548282828302 0.52418630846731240069 -0.97321740408039192349 0.6840183307591527484;-0.60445908273606541172 0.82490931494508756838 -0.72524974267631125979 1.0126453385362359505 -0.36129393436523282723 0.3238304948816882467 0.7978088364036832747 -0.78930647003493803471 0.40947213866966802875 -0.18981304742030385979;-0.92408079941568788129 -0.70000851312922884873 0.41498079854001901356 -0.2031652659867469457 0.12385590688884455524 0.33788947349680864551 -0.038072827956547664052 -1.0560636704511381367 -1.0285806657844627221 0.12489927387895403965;0.2671084818218237289 -0.04621483815098166581 1.2011662354678389608 -0.40402310596175194934 -0.50746073270190528159 -0.99193659476322459945 -0.092904797371916522652 0.75003847170585136173 0.66384897293951750097 0.2798694994698305849;-0.6723519145602768754 0.35800219603859201323 -0.15582589859617076988 0.30513280600374398377 0.6924805110434224531 1.2999922843291467078 -0.28551955506658011075 0.2480099801830077666 -0.6230358597683952615 -0.20383511583223973274;-0.37283728801031096323 0.55818510627746742436 -0.46211919512661370213 0.60354825249127641573 -0.210444900905490756 -0.01082243115118788207 -0.022951364365539302093 -0.62461153011706549432 0.93396776906981371358 -0.94977585400383546244;0.19737719361719616162 -0.92629633968216418261 1.1301079740567170351 -0.53272260471240773239 -1.1538812378546563497 0.0083784849049061867199 0.89657270722254445161 0.38014807178524900877 0.20196667936611997773 -0.71678622058793173277;-1.4752424966060468936 -0.028783753728374779357 -1.9241730040134683577 0.75768922948656147742 -2.2639222483015264409 -0.47906713955601337718 -0.10212452480536890476 -0.2659164232554238616 0.31823536229486892868 0.83386303877551271047;0.71322532519117709526 -0.030628186164287692778 -0.31965183822615023113 0.42035937384476151912 0.44615912394193213419 -0.097429927311857150718 0.84944233855444772896 0.59382596210810500992 1.0637815466454367819 -0.63217668091500467398;-0.034089601387317848558 0.24039618502118292875 1.4593976111935325068 0.40922969091507094275 -0.37616053030471341412 1.1884569329035088447 0.82080876630597454646 -0.54788305227434297429 0.14587386205247571125 0.39825264495481643712;-0.48048141140518463299 -0.82284863229555849085 -1.4638079006049837805 1.4370963551192759144 0.3184222816276293111 -1.1709969056594198289 0.17871890221665731602 1.1301606839806177529 -0.73793530199645018808 0.45930637407618868373;0.33254453140949402634 0.19325300500024975014 0.084230128453583477666 -0.38766645280745642976 0.8739397233182640834 0.93333820013121160386 0.026556298488198695762 0.91062262488847256492 0.083711916052703352897 -0.69327197381303384827;-0.73768715042019150641 -1.0325488679091647803 -1.3031866946920438455 -0.66775165283050486043 -0.52774158089329792354 0.64101224350423535725 -0.51011523597302688149 -0.17416707889348206906 -0.20661363666444362841 0.54612925072020790385;-0.74541212669377521216 0.65641403710329615517 0.23990077931723216564 -0.2501008065440341599 -0.32352688789438899253 0.55150448909677052267 0.36757509153552786474 -0.84675537401815215155 -0.91575749523354088577 -0.33803027808943791888;-0.068673473933460515983 -0.27338313956298293528 -0.42676331324723948413 0.47595483627825896367 0.66510555388648906483 0.10389164416372452526 0.25531868386378830937 1.126520789352509766 -0.54885244163120483485 0.66472048451808851688;0.13006118712840086804 -0.69483935340951463733 1.0669763076222125164 -0.35189141286393543773 -0.46874700054738321908 0.046433650520164661268 0.66195867285324971885 -0.1571992790998743561 -0.37279792076813295099 -0.8702124966561544106];

% Layer 4
b4 = 0.50670119247588762956;
LW4_3 = [-0.070939862581854737367 0.044324909615764802873 -1.0675169006052727116 0.72040071396648097668 0.82283090583178131183 -0.40120985532254749284 0.093635960519631494803 0.41593900567289793235 -0.58303533732559786884 0.76309173177082123551 -0.95973540246266253462 1.2322091163325248342 0.19934647177634981507 0.68239483881953910682 1.0660320432349563724 -0.81060079405463736357 -1.0426252713161670016 0.19076708478958143145 -0.37810394849692352537 -0.90714462878457424733];

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
