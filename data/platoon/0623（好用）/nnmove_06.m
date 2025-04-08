function [Y,Xf,Af] = nnmove_06(X,~,~)
%NNMOVE_06 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:03:55.
% 
% [Y] = nnmove_06(X,~,~) takes these arguments:
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
x1_step1.gain = [0.0638195875959219;0.168202204644631;0.507944388374899];
x1_step1.ymin = -1;

% Layer 1
b1 = [-3.8033809838084127186;3.5248069572079945289;-3.0127185969664811438;2.6988896931596886297;1.9674865607666829348;2.409223902552350971;-1.2270317433822992559;0.76949372567130047695;0.7682247261238807079;-0.53765070655551805423;0.45323535560640759723;0.39028347546654007516;-1.2954057728840207009;1.6092317129373892026;1.6419215122498418413;2.0706280417732187971;3.0143526376092175667;-2.6982902879511416749;-3.7105050433329558324;4.5528721042173154743];
IW1_1 = [1.9210164508908520453 -1.5373641714756098864 2.8598486582405380219;-3.5114637788297113907 0.49603705303921225012 0.95660195738701792045;2.5791888016466186784 -1.8871081342508180256 -2.0618311821623573898;-2.7262084702315685369 1.9106800989165408922 1.763811064665766537;-0.050961781900291408531 -3.8845232367133246676 0.9385388999841451918;-1.9459801876941484888 -1.3753900107480256931 -2.5967100747911557868;2.589527608367272471 -0.9107735051550599481 2.6091693789669161418;-2.5518673340636919278 -2.1124293220555072637 -2.0303966131171797826;-2.9595149931253468267 1.8883250883702047407 -1.2741873915413672869;1.1174203492537171378 2.0417245749358650109 2.7544729136563490535;4.4221710582967386216 0.87795239471005492859 -0.22752975920101053964;1.7615166319530528583 -3.4965483282914169294 0.80057590484830398747;-0.14934527612248396644 1.2530503944589044263 -3.5548096329079901246;1.7083264517058465159 0.50898692422903835109 -3.1762527155173256865;2.7188846543697833269 2.1533211290059783849 -0.79390665687045947063;2.6126102516850910895 2.0284521993890178848 -1.8231462146341872455;1.4127121117836571873 2.1506424139726441069 2.4336741093245199963;-3.6287858628944746897 1.9375251658028482815 -0.057931986518451064616;-0.97184570202295350594 -2.2489985250630146751 -2.3708210005498528972;2.1569868901840014708 -1.5714778422869091212 1.3656032070344534812];

% Layer 2
b2 = [1.5072911981337471232;1.4537439146691386593;-0.89436134986570758887;0.76914040912519943127;-0.11183023939703079508;0.23032167643138232171;-0.44165855035520690253;0.53961323558820872837;1.1409323610581587616;1.436603559239816974];
LW2_1 = [-0.03819286864628778505 0.52119799565119562246 0.29298423314477417545 -0.0014796792255455017834 -0.023824869260691217132 0.32454195277867026181 -0.43146484838170717779 0.9152357817246731253 -0.26461248859930491806 -0.14288857867469464957 -0.29684774019210413698 0.19919742340187590601 0.4590560599652403484 -0.06190974292767188053 0.035504557514342796609 -0.033321155303321525754 0.52154343148675597064 0.23550936386869639194 0.32263015937775041397 -0.59749552569723507478;-0.23277244959241091826 0.65275521763810739895 -0.34177015396111509737 0.15089504829862027124 0.0079648508583356515678 -0.7456992563537914176 0.085492862652872064766 -0.54234486255314418024 0.31848412394028097205 -0.40457442641572299857 0.73100261770703367503 0.7875825614731839508 0.062630887444613203563 -0.02691811766854393384 0.85170954911499863194 0.55403466619198649123 -0.14646719989264922468 0.039112684337299127857 0.17234384299182806122 -0.54069513328796170448;0.37832212007691673472 0.046891008904449096861 0.54476052332069646589 -0.17804438463626748312 0.24829935013166914981 0.20532353848654980033 -0.025080537344928394844 -0.16869836278617433845 -0.21252066100706851204 0.19597491151139997956 -0.93283595432246768642 0.36703422609887570438 -0.38354541710367484608 0.26602980656896724199 -0.36333092855069537563 -0.13533140155503167734 -0.21446357227369253207 0.050351770698773973267 -0.15061536908279948843 -0.23762095524009854697;-0.14096996801384920062 0.55826687969974686521 -0.72105760777517524662 0.50892250383734793928 0.26790926455906483028 0.10314468439092334962 0.51588651712418520656 -0.16483294794383818171 -0.15102941848678486103 0.49875268305190856299 -2.0667873394043176916 0.25705307081095785104 0.25725543083479807116 -0.66248062142631047866 -0.19409425338836097663 -0.58589441720356894017 0.02476249436857819522 0.64221133443893951842 0.28782222179408739615 -0.050221673519266402108;0.0036859408658824095728 -0.30516097514105616773 0.2538212694605064268 0.67098873920798940418 0.30468367115157724001 -0.63945670133940701874 0.30652822025506415438 0.00063397162855492739109 0.54590631758160412801 -0.030678555081144323613 -0.58538767198377272827 0.071173175262909976757 0.043398360198958610412 -0.69560224066083120587 0.42007205997009866572 -0.036274243695308613922 -0.30825880152363310804 -0.73023151565781496686 0.12783094146879919739 0.02903908035355633882;0.030398234357361310354 0.25348517553718979967 0.53032704762395044273 -0.18736897587458722914 -0.18250348845130953679 -0.1352238433564583453 -0.21561543614747860631 0.56963774265918321049 -0.10937725772107372013 -0.23774950989897858378 -0.90984293873160648758 -0.30902166282887710835 -0.56472411148639500844 0.81041175400072607005 0.18088497716377074931 0.77937337665414652133 0.37370163530905620153 0.88129559468177021131 0.061766422987201780037 -0.35864437117586200898;-0.13657077075432380586 0.45580439163523139845 0.35376631653035339742 0.39683901200677818011 0.24949495062452589633 -0.31499113837485126499 -0.016212385232117220574 0.077031758247556758601 0.37590384334095461316 -0.3327982724001275483 -0.19550937394960293814 0.34482343873523046973 0.68403715374447926489 -0.49354326594524983163 0.61911731828492866381 0.33266679092311246535 0.046751272048177916485 0.53115083180799693707 -0.05422984235907283429 0.91440259296883441564;0.73269154978390838018 -0.32718563624351704178 0.33763710335279567554 -0.17439445996099628422 0.43276654013549287203 -0.37811450449541400554 0.15678986587019699828 -0.66285755330364204418 0.56864703810892569535 0.18072494574435479797 1.2010052426787627411 -0.6670230075173102513 0.35440517597396881122 -0.74370441829472910822 0.20310788220794132042 0.61175880161140927527 -0.38799963657395114547 0.45066225956106109596 0.40914524277938357777 -0.45065714072712659277;0.16191692886630881798 0.34909429046027645738 0.24624326626323042588 -0.50183251630415159905 0.88367519558227902721 -0.43874187706387840491 -0.40546085555429428604 -0.84251373168117915657 -0.19121724955834326631 0.054800982649021681703 -0.73021984367518544268 0.074915870673726431272 0.044366894722616970204 -0.56227672265324468714 0.10866994756368220099 0.67048986047034520031 -0.32053404057874929078 0.10707983532382052416 -0.49700398460273892409 0.14058520802622775925;0.31422550957072187261 -0.65388274832788761959 -0.17732924762263560514 0.3145894998771273654 -0.65149687276303358541 -0.025745311606793545856 0.063084938718146785219 -0.18609106604373443217 0.14221045385411007489 -0.31612805025540302584 0.82000714932637186472 -0.81532000820581906897 0.15169002484917021301 0.64923765162498270342 -0.07230204953338287277 -0.56339683111579308417 0.0079170067100323010534 -0.13429796343632374733 -0.2377825582535288973 0.38325291489799684364];

% Layer 3
b3 = [1.5274171365704838355;1.6110444296023453958;1.2356568544268504706;-1.4714832067754113343;-1.04611534683588836;0.50149131226943977069;-0.79426885605550656688;-0.47691185901375099387;0.25451626049665393436;0.10623575095649297195;-0.06163372458922365682;-0.075230053475504932159;-0.56308050788305430423;0.68748897130357988772;0.76456561538013423363;1.2454819288811673772;1.4294861794845645786;-1.6902207343670039297;1.6665703439328349855;1.9240006266566562765];
LW3_2 = [-0.41245251828822343532 -0.55240187235292181889 0.76780474683018251625 0.88799096415964995366 -0.071565034537854926855 -0.11591986663571350602 -1.3116686994754205298 -0.23229055097713247058 1.1074961636409874632 0.1638199668982734114;-0.39795911998047028835 0.33507784526053790986 -0.46861844237847466443 -1.362213015123783455 0.17265066358268227331 -0.75889227686254390193 -1.1584536873536439572 0.45222313038973260824 -0.23807935167002527987 0.41287014956197687354;-0.52354963782103303149 -0.85063619830476711048 0.60525072713298289084 0.56309345930021248439 0.19375500328751743551 1.4947915800878617265 0.54924359007550582756 -0.26682388530599621124 -0.11340763059990391359 -0.18388761359508132287;0.40362330006014635053 -0.9078090431045247044 -0.5249441393204172801 -0.81903341435582843744 -0.83107303879736704744 -0.13097839944342318241 -0.41753154837734940408 -0.43749009100908037295 0.54937844906890498375 -0.63879134420839112085;0.52912652165855822428 -0.15322732657012685942 -0.14623871168093019457 -0.12609369894843291959 0.53706112390199212125 0.054815592288533561416 -0.16532300477060238308 -1.5181469515669860915 1.0258789309112230637 -0.66342678759963935597;-0.28827216241007475039 -0.88613200949260761963 -0.44965665097085361079 0.0047032338895795430811 -0.5271491995197896685 -0.28091321270047270309 0.63778675073534329965 0.27297896442275709772 -0.97731238124881292251 -0.92250455835478417654;-0.02661288049384322521 0.50641021686838916249 0.9251156576841930157 0.62854375965566811058 -0.1537003468521452032 0.97523633442638901769 -0.40188444075437651515 0.74372623851488428581 0.58020681641085525282 -0.20792381655723518596;0.16710358630648841638 1.0875430733825264262 -0.36762612809216815846 1.1976417348474337476 -0.34987715645774297712 0.0092270160747021552627 0.48082205365670688257 -0.052720561850647551516 0.071278694764298988762 -0.77447475438183299712;-0.58018011374269273794 -0.78921046237409053781 0.89680824877817399976 0.13734086889020025168 0.12001835943322580746 -0.82288725288012465331 0.41497677211366784666 0.56958760355857607216 -0.1104450480106855953 -0.87498541546591113161;-0.73243574085664797657 -0.55713585390755815396 0.67953129076565943478 -0.040797090180784693902 0.68926280476416923459 0.52029770698043431576 0.14924497225154281788 0.73260785668978356533 -0.75955132947376824415 -0.61416857888120801601;-0.16325890996513547915 0.72652558240284670354 0.18874875745551611406 0.54575014046506675758 -0.26184891635172358182 0.045697897563094350137 0.55822908953103966834 0.44105050043493682077 0.79291183245730323392 -0.43804480784602289889;-0.23803244002194479112 -0.096325420580158235828 0.62641912361515794672 -0.40305641173539974442 -0.6458970318965233659 0.45904168216743629349 -0.047741743458432156499 0.50975066983527372866 1.222227152407873163 0.19102512698446891259;-0.87629458781529190325 -0.88506688639310782118 0.40194962028826536349 0.34253815019566058453 0.82087350898087030338 0.27071156452267713943 0.66320959809190127565 0.62344924884478658544 -0.44741715117533992219 -0.48741677925884668854;0.75023505339908869161 0.96769653573295044691 -0.053206735552813501366 -0.45847856414953691573 -0.23905098127267870867 0.23532371791853212706 -0.56242320147881463832 1.0449663646158211527 0.75036151947817475438 -0.071094085246042840187;0.99575657711044740505 -0.15897232328283361635 -0.12696954807377858199 0.4731371423110639074 -0.26499301580433753944 -0.2868872800085559005 0.85135322224428811033 -0.4821099022334452977 -0.44349557823019736258 -1.0722533079619136487;0.43347933314733805288 1.2199885388776807726 -0.96605735876932929962 -0.68858118836477544278 -0.96048531043583951217 -0.007456381165534570199 0.43535280628265510261 0.71444697148291314015 0.1603426866657952643 0.54868095979559761144;0.82486651690509549262 -1.0561299051866948062 -0.66804602105579768967 -0.0094174026474028258576 0.7553384689771461824 -0.54489245968279542698 0.5587442718257357166 -0.29335652877062240451 -0.2815541821499935593 -0.27541481207474394211;-0.34456625838368065695 -0.054038949906853379901 0.11078531118018350443 0.86602639973954131936 -0.91927579981125073783 -0.22129342333895904438 0.39800845262349948683 -0.31723406370308776525 0.58041749167594614001 -0.63986338758859673259;0.082081307137178052824 -0.019263084537449858685 -0.94819568705750989501 -0.011955020652499506045 -0.85657320090149569047 -0.74505459601493861932 0.7685747749662816819 -0.65644899674806223011 0.18304996476154278273 0.5686040124415033814;0.2319391255051475309 -0.63501267745593792391 -0.49022072907213987136 0.67560152739810985789 -0.72777718224212284426 0.46428636345393808904 0.8370913837227381693 -0.32456005711568963745 0.89036547109809494049 -0.12447962688051801561];

% Layer 4
b4 = -0.69963912770083691584;
LW4_3 = [0.5711211105538370747 0.80909272336539916903 -0.095082776787597717005 -0.027684712088099576455 -0.39759594132342185313 0.091248462670974542221 0.069804811921440154676 -0.065915452743687000248 -0.36925947127716002294 0.08726942296633452556 -0.70488965732125241637 -0.019710842238205197874 0.50782353276454872404 0.5733566169157675585 0.30854725198787374962 1.2874611329360172718 0.30217102581707050435 -0.21114851349848309803 -0.69432175711993660006 -0.32746866544207636762];

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
