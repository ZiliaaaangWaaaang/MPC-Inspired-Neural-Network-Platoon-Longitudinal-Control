function [Y,Xf,Af] = nnmove_16(X,~,~)
%NNMOVE_16 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:04:08.
% 
% [Y] = nnmove_16(X,~,~) takes these arguments:
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
b1 = [3.9431942733121294609;-2.6911299215906345772;3.1047068895526672705;-2.3713577213296872515;2.0162626121086728581;2.2865381799709236788;-1.1438542703571803472;1.0777890354566217468;-0.91828808426509078711;-0.19923133941021314852;0.34580026830504523305;0.49418737174853971661;0.85385174887523251908;1.9574077395953717318;2.3407544836213785011;-1.834277595149928386;2.7365753943731014886;2.5474399026752947428;-3.0505311810489867952;3.9117292804341925461];
IW1_1 = [-2.2723350830901409836 -2.6822413767889679015 1.2269182552863806546;-0.16891909738223670479 -4.2631039051787382732 1.0292047008466143065;-2.7585449674782203111 -1.9376005243311342774 -1.4571261969476110298;2.8601503842256379428 2.193308367220292876 1.7478762620162964225;-2.2598684554059560448 -1.8697609318561829728 -2.4675450797655416046;-0.80417454370785401707 2.8297166380685361275 2.0828010875932583268;3.7958122565682002048 -1.4550646988342832433 0.099546564018545738439;-3.0671120315634810005 -0.36627801937434883994 -2.1145832249273315284;1.9855105886959167893 -1.5362723891578626834 2.6307582085641718628;2.3544149341146081156 2.1688282608748958857 2.0802937958308915789;1.6349291054944730117 -1.0133462587306221181 3.3068882213800057102;2.5494102466935024687 -2.5182391820969090013 -0.67615274570792816;0.67553159391870543082 1.8650243931798167196 3.3885500326628457124;2.718955446166138934 -1.3495347914900219788 -2.0109986311508629697;2.1351031473537402938 -1.68552009188217089 2.4413877772022356538;-1.1315023330759379494 2.135299597542987815 -3.1353538407225203244;4.0530115720102024568 0.78387467659240317452 1.6535973011432962831;2.0481673742192989529 -1.9183737257181254776 -2.9761247015764427104;-2.7788243848604210484 -1.6088705622417682761 2.4058501986734235345;3.0906640196471077964 -0.2302250996524390636 -2.074968993015355867];

% Layer 2
b2 = [1.3387473531524469728;1.419097295263415992;-1.0010285066911857044;0.71696519838596084462;-0.21726399662844861349;-0.16352671983153296842;-0.84940421680822575379;-1.1218760118130359782;-1.2227745790221438149;-1.4861781923203318811];
LW2_1 = [-0.56357330180823572707 0.76784419769444500758 0.4554680531026661372 -0.086919262002525435329 0.32999682642737299121 0.064314921672542185727 -0.4030920881728050631 0.32023278137065486204 -0.25638770068598099039 -0.286195782436014734 -0.3331292851411634115 -1.197757012854760772 0.38183229594971035414 0.90763128827301098323 -0.38428557084408171418 0.11854062273271505357 -0.62913386544215377238 0.68267540731556275446 -0.26859626793686497415 -0.765045957337019078;-0.37616263961376356084 -0.074852912097146312442 0.35628872386633170244 -0.49728063797687455105 0.80998022804814184816 0.67397907336557261182 0.43070604539688461809 0.62043100318090393941 -0.57208555299501606672 0.27856686967819865863 0.31468925460845803554 -0.23751983595417205941 0.38757990642415096616 0.012876802411396871123 0.0020716978058750385241 0.038871400681487075501 0.013316881573914895673 0.21291754461065928727 -0.64041430050650172134 0.093511074316705883325;0.61360146937744097784 0.015283539864328312546 0.21806974758164257566 0.3835764943771042268 0.4321247902737688773 0.080956751724757317068 0.01333362453820918607 -0.50296275856318928277 -0.014682577775880539112 0.11519302400259479047 0.39774945583974524732 0.30971293383865333704 -0.45929471467044508115 -0.067177954241029860794 0.79692474628873710696 0.42499403197399165943 -0.7364485953010694308 -0.05513671721379430346 0.46890531414685449052 -0.38988617658593499593;-0.030605667614899609991 0.54589527802709170157 -0.013298491148309596332 0.71883504280363552663 0.73604687728570328265 0.68441949324664186349 -0.68927935600311718289 0.36663815889698853079 0.020699949219673892398 -0.43555061788107973797 -0.66784845506867340781 0.17601873817881250051 -0.10659565117759589592 0.34273590966796368962 -0.27469197451835369872 0.24145982607015223365 0.68246056412991085161 0.029949860059585990679 -0.11452972284989661189 0.50692419913052833014;-0.50817277570900765138 -0.0085609828769709767071 -0.42784545287559200277 -0.55786355569641787877 0.55302458355996042538 -0.20713583522594233854 -1.111744120529197577 0.46487899082934980299 0.21333245935665606785 -0.17192161448242848643 0.81346808916351065477 0.31345322435082517698 0.49014593297873010336 -0.4608236993731498754 0.25056797882902387409 -0.55083160555169474737 -0.34854085878603130455 -0.89190916844215195614 1.4411342732458887195 -0.12541671726658534802;-0.25707340017376967278 -0.45881703255963862675 -0.54240130021792321013 0.43307614594649995743 0.3468365021562390127 -0.2975380893501137769 -0.59753911998416409102 -0.11205496027840923523 0.4828048854817331148 -0.32269103580351066185 0.59116975584727782245 -0.82057303203002185388 -0.11746127332874971294 -0.33487245085473893447 0.20634016826253159804 -0.25926868101629546581 -0.03904107058279872311 0.22869993660286913606 0.17205261156870385597 -0.38359533648939342365;-0.7009750985317716454 0.53345562262825985123 -0.33652157883947386718 -0.68487981897031613432 0.30754120505178411671 0.11688479963972150943 0.3045707424014401643 -0.13635901757255425304 -0.71665231418027364185 0.53518238174654009232 0.37909924859629395844 -0.28771622689062631428 0.34290591986228730059 -0.53625466962930412596 0.10018356105376342857 -0.65403568943099266164 -0.34800199364642209199 -0.14023917709817379507 0.56775158099540978807 -0.39422607541638632345;-0.55668718180896359371 0.69489988781648559524 -0.31932845556967232037 0.41417508400118141498 -0.44947489882615182522 0.32464052528485815019 -0.23745793068730916553 -0.27448751182256930781 0.15993930142740669931 -0.12468216904845093318 0.69796868559459168679 -0.016790965484272731001 -0.11037954993490438349 0.16782091412271324393 -0.15986311350207632609 0.25264225720349370308 0.022372923387018552044 0.16031688528787740866 0.68571431231003543427 -0.84172662606994796963;-0.14550149657330679887 0.66041563576644302103 -0.012654130681461399008 0.17637359383701906035 -0.33545341187756788637 0.3418818768038612288 -0.3720630003233773575 0.11614178686540568841 0.13630379918049648214 -0.79953481849099317103 0.34203999355941089311 -0.53186628948537373329 0.2058101240025851375 -0.51117138082615987127 -0.053149283501889840742 -0.23544070166796471355 0.55822120166239652672 -0.27245292110433716459 0.14528580363560300581 -0.14655308795623017692;0.026962938760446371333 -0.52023138146233116608 0.13879877406753279856 -0.28137376319162121785 0.19655308127793938433 -0.079745732509095321183 0.0081657176917145669892 0.66275309891910161308 -0.15231556137788218597 -0.79430099945182941479 0.45149112120258449998 -0.36213015585362773319 -0.30792052544773129696 -0.44748377704100639196 0.91954018182023955497 -0.26157492035802165642 -1.6828212484272349059 -0.40320105990521865058 0.040246616833541748459 0.39972252089318599522];

% Layer 3
b3 = [-1.889065147571091785;1.7559721415184590398;1.4915227404612307893;-1.0493017128828536766;1.0657309003826054283;0.8584378657005941049;0.8803555637883260232;-0.54939411027331264137;0.38135299570541913994;-0.1651103882221683361;-0.003215972579165893297;-0.24756341017502966895;-0.39848405367969608193;-0.71912135842587121548;-0.99075677765534697627;1.0718390448908814427;-1.1136512009452135263;-1.7744161909560172141;-1.7036398358634554651;1.8443852291234730245];
LW3_2 = [0.60522132932861527621 -0.77741514816892820505 -0.30415852306068819066 -0.71869843193509796997 0.81540938400363627281 0.24577702621311597886 0.86534035623908689416 -0.51406452559087489895 -0.42261048493906872014 0.26718066755017483294;-0.20905396636692069601 0.63420168290181400117 -0.63014526421165795167 0.82781160130847564194 -0.75579480478138238997 -0.89342724105481863273 0.18237929935793820158 0.03500092810333835236 -0.055854561838190784628 -0.78031397673067071086;-0.53627727441575112621 0.55571001194058422534 -0.33882465547501755543 0.60348505392296569738 0.76758248023531472359 -0.61307017660223528388 -0.23109289030895066586 -1.1773498222066982599 0.053678913026818465826 -0.29266645203930197194;0.11793903494270042975 0.77261207017483557458 0.51896283456935343725 0.76754172017580579723 1.4032577714557943338 0.69427081151297387329 0.1224307611837611165 -0.24337804068771506927 0.38734349819726582309 -0.48052049768556648335;-0.78638856192399786416 0.95695918252395784087 0.46280321580183153563 0.92806511268311120411 0.081723730159731292066 -0.067801184572982758914 0.40912459116107624535 0.04571091375133412571 0.59273392792450385613 -0.67060275615944098249;-0.81373859629415068451 -0.74279791152715113345 -1.0309913759824493873 -0.42220933935054805186 0.044808465423803678362 0.1142844005383667344 0.49340841802863666388 0.1272804689235614295 0.16064657805462306817 0.87772155737190582503;-0.46063539556911603512 1.0122742780831823772 0.70347451964953289227 0.29189817369459064578 -0.46191864391794379419 0.3520556154639770674 0.040116562182858854502 0.26715522382675316315 0.018176116188037227256 -1.1072830171521630405;0.59708374521532692203 -0.70823066499494469195 -0.16629658390570098425 -0.48922806330549944986 -0.60465873466874842102 1.0484583248349472751 -0.33330723323745481412 -0.015007552827978939275 0.92740059985863942948 -0.034203582602047741257;-0.78961921872334228656 -0.39376848222469412741 -0.20847048330297762719 -0.38302278761772040605 0.21629663423393388766 -0.43933044472027671379 0.90391061824445129158 -0.20984679172385431456 -0.65268330686411790698 -1.0358848734554431115;0.080553546633508957275 -0.75704134452980764713 -0.48521508192585910413 -0.7093236680340150313 0.026355216404221164239 -0.76724140645369087732 -0.36178946691033037064 0.59230414247398677219 0.75580310253975335755 0.63134183360935025586;0.21233982055929995214 0.18836423967073895325 -0.324769706482633147 0.76399585654277757385 -0.44919334574733110754 0.77768470050354765455 0.47577676980968469644 0.9707746418998638438 0.43809509400175972171 -0.76393598114864980086;-1.2867124618730536589 -0.32554318635985535213 -0.1418369472779168472 0.87727410266555372331 -0.57468981784483441633 -0.27725906093932450869 -0.009346861971739128111 0.2627535950974770329 -0.75395882826948656952 0.25594240468005791111;-0.45707584669447381964 0.05241161984957811576 0.51980549959965349771 0.82914551193261809559 -0.14806771920328098968 0.79615336638111200429 0.064067152509812111405 -0.22113897242832530887 -1.1037055494291019286 -0.26347643611139731634;-0.045034754133835432077 0.29636209745188107911 0.89465056192744341068 -0.08515418936372051717 0.44484726565417503918 1.1031526080101752285 0.46474511142090246807 -0.33332205013601218235 -0.86036622603054835334 -0.16212856394784874725;-0.30002195098630640713 0.1249960553870822777 0.34343882069176945304 0.49630300230581031462 -0.37039842894183244715 0.0085876465795458184482 -0.91216404575586318426 0.2636324967056851154 -0.94368267152454732294 -0.83128375066341053667;0.46896135763120472273 -0.053879066678726224293 -0.36344426937211599116 -0.76067769335627788418 0.59281208025320031307 0.88919579932961645419 0.68428476926937364944 -0.24253516261763483075 -0.50815276501543693577 -0.44935487630967496653;0.10601664127075639821 -0.59422722858452836636 0.21148635523819769855 1.2541229616455487061 0.98585789159510006652 0.46612361961130477361 -1.2297379259195000412 -0.62927386235243532031 -0.42667319030573019889 0.94170675778909029852;-0.76876232037350311632 -0.73047337708498261133 -0.040685213105604793593 -1.2188962415872255374 0.53272899406049556426 0.26376450615240304431 -0.62537995209203778302 -0.59896633443277591535 0.60082798630555134256 -0.3618357842852343853;-1.0342443841435129404 -0.52784367059357284457 -1.0537858170968465998 0.50255670222250814483 -0.18181638129025814998 -0.48593360588472811479 -0.64056533214950150956 -0.54806603573742729285 0.063488240960682937319 -0.2879997245091473479;0.90130943100734384199 0.84343743914628610536 -0.068001196538936145575 -0.9565513023513503299 -1.2825189808563555172 0.76910876525529292547 0.60830502348200599094 0.33532678260087717126 -0.41662821706234015595 -0.15836613184340284088];

% Layer 4
b4 = -0.57369680391932753594;
LW4_3 = [0.053995617270465430526 0.72681815886076950317 -0.15146750110765277997 -0.80295820187312183513 0.20444481094890351591 -0.11052634357115316555 -0.57947422622488986566 0.26363164709337910674 0.81531309406510787952 0.23424745815618630562 0.45118465118128558977 -0.52071303313458172646 -0.17828944594886733666 -0.50085206223219636001 -0.66097566866813028952 0.10360418198650302168 -1.1498400822836498669 0.49573104856263883189 -0.4168409483644901492 1.1618328145360823367];

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
