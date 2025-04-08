function [Y,Xf,Af] = nnmove_39(X,~,~)
%NNMOVE_39 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:04:39.
% 
% [Y] = nnmove_39(X,~,~) takes these arguments:
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
b1 = [-3.920736065064321707;-3.7361239937042456383;2.2822802020475987383;2.5467909200774041523;2.9769308698628944576;-1.1415453500641499218;2.0695321035872082938;-1.0134144518248511257;-0.29509865365962562045;-1.5702556357608430382;0.14442702705081725267;1.5269839204042734426;-2.0427052800796525744;-1.0337700911375757862;-2.2576880211265351051;2.2419766512371643863;-3.5895059357322267601;3.8611193499961191655;-3.6745143304605001333;-3.9188335485857161977];
IW1_1 = [0.43891305259049478993 4.4214153288526603092 -0.017373104387834202578;2.8146300678046363153 0.92267687369255713126 -1.7763179023182249505;-4.9822620912597352927 -2.0981616830573113219 -2.0216851079681377179;-0.15712785583926258681 -3.0692079502937241742 2.2251717667105577192;-2.0721899688574572096 2.35158751765565599 -2.0529656853616526924;5.6991123597278878776 0.79245409662676924434 1.487920675529682546;-2.2251897364074446628 3.0314714066612395982 0.55677140434617544695;5.2983022446664618244 -0.58912500637723552721 0.88722353075969151437;-2.7252853777781171907 2.3300561961768391228 1.9443749187897132469;-0.0046470331265516910679 -3.7254995820742040635 0.099702355656476240875;2.9431164932873215001 -2.6337464015451135246 1.1246876873011431019;1.4188140725322500035 1.0756034310005970767 2.8608452942737372382;1.7424951604788114778 4.534961924817349832 -0.62412596577719314794;-5.320092574562549359 -0.28077902583627739608 0.69913310197823985703;-1.2515039426670706568 -2.3821024051533372656 -2.2493163962052880045;0.21167805051045310294 3.9201516760015873153 1.5261182707358020849;-6.5476895702335120575 -1.1004072252182084402 -1.8688503563193905599;0.86741334387743018741 0.80290758606553846999 -3.860322464231941364;-2.9772168332972199778 0.36435564441068335473 -1.4500232249612607927;-3.1200101720402018124 -1.5892081740946690793 -1.8640855084433107791];

% Layer 2
b2 = [-1.7300930154554510221;0.89078339029364284052;-1.0752149381739435352;0.04841433718326154656;0.049215090793974590466;0.13288160664517797982;0.85293113872294645805;-0.98997860338411958203;1.6716800199860382126;1.826727019576418698];
LW2_1 = [0.35331488305694491725 0.33286711288542070175 1.7431846187890600586 -0.26662490204687294693 -0.59286446448012486421 1.458155125919375017 0.54007293007911705285 0.36210766086120638185 0.13754568241464756873 -0.65143960397480316082 -0.2777766726961681254 -0.24321384367034704077 -0.62121603870659647395 -0.36242678111014486886 0.21107186324064008964 -0.53535037245808858586 -0.6543144986293256693 0.012242714434948037683 0.32802797514963744074 -0.51373664203931124206;-0.51474327300355815495 0.48385914002306457116 -1.7223321347027940043 0.28517975494693503791 -0.91533954873074740988 0.762734959825849268 0.30003197264651360054 -1.4245912919038818956 -0.9052457032289497052 -0.59590447365619847453 0.37421506805101939497 -0.11861092413152891922 -0.061823226434142626584 -1.0112355531736296754 0.45503098343901854372 0.79067117022986210806 -0.46149749769886333484 -1.3269524442920088703 0.80041651313654449407 0.30942236763615105222;0.79345164822523928105 0.47464763170758694777 0.30672341154357024573 0.6237096086561388919 0.00032127907070625145308 -0.34666139946458107701 0.47475009013118929513 0.13616411071122441756 -0.60876375958848960579 -0.92026704682706539362 -0.66697698561231555381 0.27298903307808741747 -0.16523947297638724718 1.4472412677104975476 0.14284532040742600745 1.0157256289268954408 1.2948443738199775233 -0.036212056575735673825 0.22865016532787268977 0.30342180715478606068;0.17666446874897709374 0.76363443007031828191 -0.25699068891763093836 -0.82438369373563546993 1.2083611154802096355 0.012428256917738796788 0.88224938460064250556 -0.3201793035439388091 0.08434879974148318249 -0.61783972094828221167 0.089212816231362318531 0.21997979969000677758 1.6770148379393348126 -1.237589319345335559 0.29262102593164401876 0.21314775032265992349 -0.30641303597773444922 0.26364639946373963353 -0.021669106123789791396 0.61500608169996429098;1.4001515882986459438 0.26275082952338846276 0.0072034934653377562241 0.41933765530234312635 0.22216062164772715226 -0.46825733941168612429 -0.13924101410773073728 0.23740673865851658064 -2.4846606781705777856 -0.055026436817337660845 0.074245326489520160895 0.67108040357761489236 1.0888031666736377456 -2.9558490341583629757 -0.78419957612233781585 1.0313431335027536395 -5.3684968353958302245 -0.42385941408028371402 -0.89065500123018681577 0.020613141868965983994;0.46959483049547284805 0.0063035160052050242391 1.7676261740223857544 0.7386835713005889259 0.82947965835813219915 -2.8138574833336820191 -0.58229207538359950558 -2.4539703839206907787 0.99525166554476662828 0.5315961667754389719 0.65332167379377659167 0.24199919560214136482 0.055311765258433752412 0.89085858682693486177 0.65212493588919684395 0.041323321013566727267 -0.22205204724298793773 -2.2736371063484615007 0.0082854769713046165502 -0.16329150539231970796;-0.03300509995423921844 -0.8678225500351002264 -0.47968548459812626605 -0.97285178560907781264 0.083392597955390390663 -0.34175230809622153538 0.53035872802399774972 0.061263785331582339133 0.25682973610076964555 -0.60574842828110608828 -0.21440234642695837897 -0.059832976343163569999 1.699890290050083852 -0.2281926563864584423 -0.57277063883970702474 -0.36470121418258000245 0.37395712184848778348 -0.02644603130091868759 -0.15966861423460462777 0.37914224723110012683;0.16933340198921983943 -0.13275196011048806533 -1.6759962351615955711 0.34364472609146839988 0.312122086721708214 2.1948008450593810004 0.27787010219942753775 2.0280488683679847028 0.2436794173441355349 0.39448226058940655259 0.00098461528365977567245 0.28839941425619419757 -0.36355103168326430296 -0.24848562187385225819 -0.037015975979643796212 -0.67380129068158656214 -0.64334237361858537252 1.2829449216250905508 0.69272933170384276558 -0.26459170728672176676;-0.46024800091552153791 -0.01303125638998369959 -0.63517898356593505138 0.53246609118796262017 -0.28816679474104756054 1.4019826738882772421 0.65366089757605905231 0.31624537573627536924 0.43506146134303741446 0.21836530110858143328 -0.80926676413070519622 0.58911018308702178814 0.41621049259046544178 1.003183366265797849 0.554663854499215625 -0.28886864937370959616 2.3541677160949365799 0.48720954901438795481 -0.49758494650325957309 0.0048219009327743278873;0.092721096062176433517 -0.4872313799069561413 0.65995208910749569853 -0.18029751190064896571 0.24116607083030308645 -0.38033031622084478851 -0.22025407390925413886 0.29875274539261958973 0.14402448321295627243 -0.22805030747077434383 0.32917980352266013044 0.41726004935924509986 -0.14443376293594450965 0.5156205353540261882 -0.338223070859847319 0.36225559103057192178 -0.72387094254241501901 0.53430681008706759627 -0.38734576760073885504 0.39397260366666408959];

% Layer 3
b3 = [2.0060526029589462738;1.8630585441209963626;1.5984073757189953824;-1.6528211967594055309;-1.2354950610475672335;0.85927425947876501233;-1.5000658741913559524;-0.39940213263677470934;-0.22033087160368108881;0.11614276382999451365;-0.11969170000519921415;0.1354219806887762001;-0.5634917555797115396;-1.0535973458083212062;0.53972844794333130203;-1.2824914827318589783;-0.94849670189987100866;1.4828097996267555203;2.0836376563039906706;-1.9164718632692125944];
LW3_2 = [-0.76445701736646431979 -0.3541114701302384149 0.64986634697212786183 -0.53490212004925696831 0.7119645233905846915 0.11064806514490463374 0.40578497863198564888 0.44539431651086425212 -0.71254592229037760909 0.86036491421176242156;-1.0332469616525314926 0.14909974588820701369 0.60230203959782713241 -0.33338337260229966574 -0.050140623738724389435 -0.25409978389614346073 0.21856076275781219365 -0.72256979839317547754 -0.24288247400515231011 0.94606144532017566462;-1.1927437033051169202 -0.14143717069184466584 0.5173743683267488791 0.74604358016565419653 0.70789868090240537502 -0.1217015663216520216 0.35696971815830802477 -0.35305720733005091505 -1.2152770673739057283 0.89851738244863410543;0.79262139990549651536 0.53761231172677026446 1.0578233707983577538 -0.50288328926111469652 0.18890068829874237522 0.0005420999357161077753 -0.5397506192059253749 0.61205155299830216187 -0.025419562540591748162 -0.022275341643467446578;0.65525995133075476407 0.53599207413395333344 -0.77836659774470107198 -0.22256976017589849559 0.79354472949825916039 -0.8082534311579301356 1.20506777996225245 0.10900947587441170428 0.76558134417381429326 -0.32011291950324294309;-0.38239216773404838268 -1.3497966970873114256 -0.038761915093278573319 -0.80233698912823858684 0.42497140791215137767 0.21233614220900154379 -1.3844671348383059684 -0.37813423164916876162 0.29394317532988228914 -0.39984418867469184722;1.3341579376297163506 0.74290977445544892355 -0.30870038340246824804 0.40177925572233808005 0.79235710986917673448 0.20441963374094673789 0.38929311357522977666 -1.2281026086013073773 -0.43376954775552695187 -0.071441911948141811894;0.78355490028244845213 -0.35570660393198644256 0.44817510084643680246 0.099562864181665558516 1.1709342762575396524 -1.7040988310693345742 -0.35545526342862016067 0.69293393011040071983 1.6089840777546176032 0.4523161141299562038;-0.20327998393367019414 -0.010439769605965104268 -0.097024337974740901269 0.15026795724712865843 0.20187767050190305596 1.7768255194835336219 -1.1732701555967928186 -1.9765024480102602045 1.1984065778500365695 -1.0233481333384637502;0.098067951932573824148 -0.40337511478086224281 1.006954361594127656 1.1829902143466488607 -0.52457055658530049591 -1.8580091760941248591 0.15895484845639512583 -0.30729309124258180619 1.3072896591877225525 0.83360347000577816878;-0.22737897865260192631 0.69016187546848350998 0.68557097130848820843 0.78564634051951121041 3.1320528368630169425 -0.55555632607600824446 1.3045476530496542544 -0.030809686409255389317 -0.15244123552653413012 -1.0654010078789450944;0.061080856052953887148 0.48840110227118438413 0.87923538560504166384 -0.46527312703684475803 0.58215431553163454748 -0.90668743516570216023 0.75071286859368580036 -0.29189352057408096686 0.075828414697485038709 -0.80424141196777521046;-0.97370678415602240907 -1.0055750064618025341 -0.4831136560495168375 -1.1088028597435028999 -2.4213009595081786962 -0.69108480932878313396 -1.3232010642161655678 0.43252388763180754649 0.36306838562633314549 0.64865738504352876692;-0.02434207020636958152 0.72637863404350144769 0.0058558427207557901123 0.73678068839963284375 -0.89354120042164197901 -0.51006842544625141667 -1.30698393778048505 0.083255034966104382588 -1.1065899925222135725 -0.50957081461890274543;0.41455024001236262521 -0.1854728547980305231 1.1584261104789379537 -0.318237192588069151 1.6247468551701653716 1.5412285232455724682 -0.75253058898550606592 -0.21563537504960242353 -0.031737598483275925032 0.13359967605527112156;-0.41662148370262647168 0.50234345009670866578 0.28081330002185822536 -0.56328575501339106513 -1.4577428205702707142 0.28747749204552847102 -0.026083219571877175325 -0.14372679337825994272 -0.051702450886070283609 -0.27358003783517675922;-1.3298851717302633269 1.726381072871630673 0.84038983362097374741 0.0033932611027132934464 1.0273961160792670633 2.2945446385628893715 -0.41880138972505925876 -1.8772119247003422604 -0.42650002536027503686 -0.20179690096624505746;-0.44802346491125899508 -0.41479232546383087987 -0.71386502965173015411 0.39074068699261194082 0.89270903722817773751 -0.27590537532122072495 -0.092772871332296502622 0.63451614618489537989 -0.1560047314327582535 -0.33526284490004970573;0.23639511210600541724 -0.50784946783484874455 -1.0149202938932511131 0.31726387566682079378 -1.1748413756289772802 0.32875388787924625378 0.32217474763329978504 0.71549379559756820512 0.13589700144067423659 0.89588575600852615732;-0.59317385581459214361 -0.33401081553566069893 -0.14664231800187799148 -0.26158000121438201857 0.13822961941132702601 -1.068000890665116831 0.34889474389286384559 0.45111748451562339035 -0.58417647207802858578 -1.0543310591101666684];

% Layer 4
b4 = -0.32276091804586304335;
LW4_3 = [-0.37376972989650480983 -0.13013508884332145032 0.67719597551640842159 0.82953820108197562355 -0.69884696465548656885 -0.47044679783257653538 0.85234555730213423796 0.51033596918598989056 1.2581795800443944522 0.359390446432914068 1.0575072396779596762 0.023242803882077073957 0.43360173309017419063 -0.66343526839263156081 0.77631618742189667515 0.28664668672658971671 -1.7257188994097978352 0.68439135695642228097 0.97637684829818360832 0.23114721969660570466];

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
