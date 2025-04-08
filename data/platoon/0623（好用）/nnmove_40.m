function [Y,Xf,Af] = nnmove_40(X,~,~)
%NNMOVE_40 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:04:40.
% 
% [Y] = nnmove_40(X,~,~) takes these arguments:
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
b1 = [-3.9421129537082797434;3.1436646426604637483;-2.8365308880776818334;2.838756764151834755;-2.7610364805842806391;1.0917695701477794223;2.0828082780758880865;-0.8549259624232586896;1.1750399969887026508;0.50004913634423409086;0.32886760060282876905;-0.69714648306527626787;1.630765568059556303;0.6556172006171980815;-2.3516151864518772818;-1.7023710779902634371;-2.1634650927177441204;3.1684497972240137642;3.6461999932446409467;-3.8947618064410449712];
IW1_1 = [3.058620151750707894 1.9959631789054148587 -0.68163543625183475871;-0.95520512375019028806 2.1685443779068105385 -3.0394985988382776654;3.5956875740648333029 -1.5319153461310035524 -0.62778428121834572995;-3.529573704032735737 -1.6907172039254385609 -1.4299507686958607966;1.5371846764050207668 -0.023898835179313168697 -3.644917204304564784;-2.265497746240558552 2.2136256759423775797 -2.2456316181957536315;-1.7410343709858613348 -1.4596246242004549121 2.859009069551787352;4.5626914159070919297 0.90803240591404332793 -1.683827226196147997;-4.9799855881612762332 -0.3181372966761066845 -0.9318708594514687471;1.5393920247805827906 2.4398030697478483297 1.76699581479709944;-1.4692748895785681107 -3.2165341224019838862 -0.30481767057888331518;-1.1403459997351792499 3.3380762823795868677 -0.94038125303074127093;2.8672180354982250705 0.46002132241155851977 -1.8960241432290347863;2.5182547168272910731 -1.8092672369825657519 2.2247871369384695228;-1.0828588330208943624 2.9633614220902173564 -1.3736073334594787188;-1.1739642805805656778 3.308861926427018485 0.6188738340720353337;-1.1179797211237421095 -3.4497414895337423779 -2.4921942480409438048;2.0568453544536740019 2.9124281491645009901 0.33905268575492164551;3.8480749013105342016 1.5158962986739572543 2.0825795574712162583;-1.8467527780775874202 -3.109564912045480245 -1.1036674144654590179];

% Layer 2
b2 = [1.3607199022822340506;-1.2484696667222989763;0.33332519516019204486;0.72005402755541159099;-0.77977666931242162196;0.070518885643423748211;-0.49327907620608435479;-0.98035285673272110074;1.2403373616228170473;1.664484534125266979];
LW2_1 = [0.19160065405707929487 0.64193328819927930606 -0.19165217143708068726 0.50599994284440952264 0.61598586255360665564 0.56844281993318190871 -1.3439502074423126388 0.61449795947308816224 -0.37816344585243577558 -0.78540380605756454635 -0.070220380570991058899 -0.020068547718838196381 0.84414260125080875508 0.051434021051016479142 -0.61277262575436253211 -0.57060859310957567914 0.79504022636096849386 0.14528111719757835774 0.15343110744651003441 0.35307692511767185817;0.20681497118948960479 0.25058505928345853331 0.060692712284340276374 -0.036273255634052245511 -1.4195851963471557422 -0.58428005083899181571 0.35654533523606835033 0.45601748338321312914 2.6933467948480331877 -0.43955156375195864049 0.084303364520043097552 -0.17121710639826273614 -0.3000338385425282417 0.25023192448283315681 0.88307759899661231184 0.44832714688853397833 -0.54609183135786021346 -0.044311012278182196344 0.07145165663325618588 -0.20398801990440637577;0.45597509679772552094 0.16270664695213021833 0.90473978140230593148 -0.71250532851204950724 -0.073224234695566325914 0.43223841330313478304 0.40101131296438519147 -0.22862297099073286555 0.30201615360730749149 0.41345671232988023824 0.24545940996560125513 0.34991983644095725481 0.17735008542409497201 -0.6622213933759610871 -0.49562619579370387202 -0.13423237087186321026 0.55898289669040468475 0.3577057496405589565 0.017164300398546616239 0.53454258418110756068;-0.68973875872896928119 0.72835514713974780499 -0.31534533421320748436 0.64003009741884042683 -0.18273557481409261061 0.23478573874268934829 -0.69507781525931144895 -0.30393463085815664027 -1.3476200599026268989 -0.827998761443549669 -0.4861597282976458656 0.24986190927972923292 0.71862287677805092301 0.048287268523983059576 0.21311783549813312355 -0.50677523944103031184 0.074400919103042362224 0.01879211718835624087 0.024823867557789012356 0.16362143779789603548;1.2172046904442208604 -0.11756610693799415812 -0.34802994569057804641 -1.0699607764370127061 1.0994770735778336412 0.43396960182945076845 0.22805474883902135397 -2.3605103599751906529 0.3032707630423348566 -0.89617417411703470531 1.0680827910436649919 0.35201736803379146679 -0.34178192564655879293 0.66700941215593034794 1.2597102615285966642 0.90082236873073684436 0.071414217402459331807 -0.093972791875103392489 1.7123827150974695321 -0.17673708575936955545;-0.63322442383454968784 0.17844407277351495567 0.20542099979485972661 -0.17137003199818334753 -0.32417583723040932497 0.26469270954659812611 0.12853678105254048858 -0.27965822727110256629 0.21629626435901985748 0.57174919196282525391 0.12979295480259753215 -0.15362074738938702456 -0.85774181260322079901 0.8665391754619822251 -0.031945656106646305727 0.26592405728825757594 0.7913859590995621085 0.074598711322198515972 -0.19907573708491579922 -0.52846362033639771028;-0.088459743155015868599 1.1780328083538667006 -0.24418113848485670236 -0.67469758355148057305 -0.23805438796885661223 -0.21295067417161347989 -0.41859162440530212068 0.43158862802504333045 1.3233784559870964692 -0.36727581250502233656 1.1640840839924588845 -0.13388003808797602212 -0.23891373344944397128 -0.10010257186320839495 0.22464602672925937377 -0.1107655293145485137 -1.0017508037294047263 -0.29743581819666298216 0.20723079571055291748 -0.33021431820813762492;-0.056634486718173220055 0.85005625501084747242 0.47519419679046592808 0.38710122344137987138 0.19571771259006162658 0.55691621079334785449 -0.14782897731526584151 0.51911699271616640328 0.58316260482616777416 0.50356413665823163139 0.19216813384946349053 0.41889664421908917591 -0.73892672788199709188 -0.27587042340545481212 -0.041142553204584458859 -0.4783211695191148527 0.92821620561588702447 0.56865029221025498174 0.11502841533247994132 -0.10056688734214047631;0.40667779062258341272 0.025781107587356258404 -0.2484700939180235213 0.83900468974734343508 -0.058939566344281525689 -0.35797917354528380196 0.026515932149761119174 0.35715020990607865281 -0.34732956239821316524 -0.053865907769210623346 0.21964095732034372155 -0.37199970533062742817 -0.58814790220961910006 0.10698998703879389338 1.0747172948947429916 -0.15080831645976042199 -0.32840339614172403548 -0.027451778077424347779 0.62336519064913831212 -0.27492861554001263302;0.308000807500326379 0.13028071981895519849 -0.076506888791079696865 -0.22462895260461737679 -0.47251664975017743098 0.33015404851038260281 -0.26188430989607680566 -0.77893633431203723738 -1.0772534902983628147 -0.32702590832286643208 0.43563523498335104955 -0.36772293948701123556 1.4877173430180652414 0.17904822642996337523 -0.3894069126771082523 0.75097555741835364529 0.45230350077807612852 -0.10801115889711164486 -0.498539947623225288 0.34601720278059855396];

% Layer 3
b3 = [-1.2115942039452061163;1.2929852938335422152;-1.6267739947598021111;-1.3399741629219992234;0.80345312255185186157;-0.78453701206266091006;-0.9012450210031769382;0.36636985785619413658;0.28185875031544621594;-0.012393889455449542611;-0.27153781790940467733;0.064580739807110765227;0.93279197530008106654;-0.52530660001860940422;0.39222672197483993139;-1.0237210996903534088;1.2343600967431609394;1.2251316701417656052;-1.8212302500854031795;-1.6585249312746968009];
LW3_2 = [0.75139728743757283613 -1.9954666970114662838 -0.89012840105247370559 0.12198594262130559029 -0.71569541208728981729 -0.51065137439776464579 0.019477661481925822445 -0.080126542171346931687 0.73459479174254849188 -0.64918404662264506122;-1.2314261348416641884 -0.65983991024071142473 -1.0377045613323776507 0.0706860748179292675 -1.3537379202519055355 0.37790263112382721511 -0.51562653528283597382 -0.49459708383594153114 0.71460676976869019761 -0.85721158091324545225;-0.1662479107975785575 -0.64134583789718757618 0.45949462575807709097 -0.72517370350281695757 -0.097680245248844499439 -0.16830558978504980838 0.89466262326252987691 0.77687778081549607734 -0.73970242375389150258 0.10848166919604310121;0.74504079628660102586 -0.79409304106947520285 -0.25673420062931384678 0.11243440841124782703 0.57280929329716667731 -0.72052629980338178672 -0.12149191836782928522 0.36460219995855269737 0.37865020682558897525 0.66866959610226883726;-0.6076301851750974814 -0.30685929788757443371 -0.73539218614135204444 -0.053025932956727181433 -1.8828864556553832621 0.93487033209817416157 0.29802426113839991517 -0.20522083905342489163 0.26330258790394661661 -0.37279120199766152544;0.18653980765889241478 0.58055909970252217445 0.26932101678608921791 -0.60398949254210154702 0.89729506567035388631 1.0038028082945673614 -0.80545676088256823455 0.34115213878381828172 0.40679329695538463119 0.29464931044344333522;0.75911598695592819031 -0.2388140615251011234 0.32705308769105356781 -0.54282882284554379027 0.59764944952144150037 0.1171180040615263096 0.17144863644463481656 0.3267106887564694695 0.07102163741943408326 -0.46762534481050260782;-0.56140201442385928576 0.43161593781471047082 -0.14994271960597108095 0.85796829583113587425 -0.38817504870538099837 -0.96535016619549418593 -0.35582082931347480681 -0.58889589590990198964 -0.54946031186108335032 0.31104930811539444058;-0.46789206113086501126 -0.47566724487609213234 1.1831738257618751309 -0.48603380786376770839 -0.31975194154167752014 0.91520245358721130646 1.4747831198584491208 1.0993371302877346096 0.45240599915126267216 -0.27433939313304034346;0.54703884737182673081 -0.44714430796209536645 -0.12490856293328071736 0.92602132052890351321 -0.60892672285909821284 -0.59740071343294665063 0.42577538149645655086 1.0147690956218895497 0.36964798077361288309 -0.5216057666702914597;-0.41420766101572475959 0.55983432543117306324 0.26142830665164318305 -0.65091707068993343022 0.37646290129261267277 0.11525167945133965586 -0.72463159426089007731 0.64350107738605133445 -1.164295579291543925 -0.21357477573181446462;0.0027973986089441160371 -0.00038120593962165426685 0.12526263303779702762 -1.4800220722871757495 -0.90590001959687760369 -1.6030870016357987584 -0.33019224037449784737 0.50359191019070170814 -0.076310713302279176151 -0.94670638225006376043;0.2065385816787464468 -2.3032837376284200914 -0.082167257502201204722 1.5118133960300170759 0.18087151585774316476 -0.53566692285675387986 -0.63491013037193122504 0.23557071915405838891 -0.17469074119788541299 1.3432299130877718429;-0.41737373752422596285 0.11016866589303153656 0.62369359610727792553 0.21091483542697689324 -0.28676639782470664253 0.026164464139426059364 0.80914390506296862693 -0.66976247970803770571 -0.33931595250549356768 1.2831273945912262668;0.36535717902443265448 0.38418382465117567603 0.19773026830080361882 -0.91630368758917102312 0.92822832735356963774 -0.55005596200631601267 -0.29487248720796804813 -0.28348071067010904844 -0.82009071319877868689 0.33999463274248142852;-0.7811871786337524215 0.3555693058526095407 0.20901360065580787406 0.011709083168001411732 -1.2356671158091871998 0.16424542941533123996 1.1974537346485818468 0.77027875008185198169 0.27620299657840369223 -0.96322664086620335411;0.16245991793668629333 -1.1324509454056039814 -0.57000932164709472438 0.6546485259434801085 0.788839233612439239 0.023206339788625903603 -0.30784181266944909972 0.10494975729559194444 0.46688395131931786919 -0.75334714321185547448;0.33096138646589479126 -1.0910164785397480358 -0.34246562150449022521 -0.87098506071216097446 -0.74574770417518221333 1.0178077788769051004 -0.26691000990362268031 -0.46444971273808860479 -0.27572804438386799841 0.24024003739202839935;-0.83305024553873019411 1.0055807379451122685 -0.52967646300071180576 -0.9381299040918125165 -0.12558848617373499779 0.22138718263656106955 0.43374800024836446255 0.42657602616244599814 0.040369244531409109733 0.75120375427121677259;-0.69943100940795255305 -0.2123247569401621182 0.11873975157431135297 0.21452265773307832575 -1.2482301562329756184 0.34086754752557096859 -0.85370112891604421623 0.26043238875658869524 -0.56577811938907485168 0.51078609191500856657];

% Layer 4
b4 = 0.31726238454059790817;
LW4_3 = [0.14644277326851132259 0.91222497219770604104 -0.36779539013724160679 0.4483230948144211192 0.79609491309667923531 0.99908886688594222836 -0.71718872838337188735 0.69843010098596469692 0.34882586712758545389 0.093688774859521262162 1.1003485692247176875 0.63446264931440421453 1.7763434358256890988 0.20728886513978006523 0.49295675398760291364 0.60404232169218396997 0.61701931229905315757 -0.39908111547633229321 0.73256389949686784302 0.19146973658795046758];

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
