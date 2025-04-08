function [Y,Xf,Af] = nnmove_01(X,~,~)
%NNMOVE_01 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:03:45.
% 
% [Y] = nnmove_01(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-7.24533041879789;-3.48140040292665;-1.96096032723111];
x1_step1.gain = [0.275950975977266;0.301846502519312;0.892135563782715];
x1_step1.ymin = -1;

% Layer 1
b1 = [-3.7958347130959859683;-3.4134678229279495909;-2.9332241235757678943;-2.7146332730097961772;2.2221315791733933231;-1.7770559266775745044;1.4742342807865522758;0.91792140763469054487;-0.58874655603136316628;-0.223202050237816918;0.0015740237585600905246;-0.66117265315605711073;0.96548102876570640607;-1.4926795206941378957;1.6336744349385241559;-2.2038543564211572345;-2.5906653204372673827;2.967848913317342241;3.5397689333351420871;-3.7804193399012504528];
IW1_1 = [1.2468119773449251042 -3.0931104423485393795 -1.8301701156732013143;2.4458845249949598966 -1.862586736038019497 2.2200593789083638008;2.8085953916076427106 -0.45534529792810307658 -2.5823693895221313532;1.2568755001247371439 -2.4174085295399416751 2.537638660937731494;-2.9646441031973553848 2.3389867398609469618 -0.31982718154172479208;0.36331400453426959674 -3.1618236043491410037 2.1081979333750568983;-0.64892023523217778891 2.6800701656918266558 2.6032375954969761978;-2.5228453500716705449 0.73506461629399333368 2.8079470669859967202;2.0126836134260566169 3.0207576268995053326 -1.2868274748057553225;1.7934661637118991528 1.9638484738541253094 -2.6544063788471090604;2.7481054838043070809 2.1375739320392082021 1.4033758334510975097;-0.40099455638504716282 -1.2973106421732421012 -3.555328522287209303;2.3546182709942802269 -2.2629145366838692155 -1.9273954695778663382;-1.4208637210543340057 -2.4898340327649153281 -2.4597297448680532916;0.49797715778856627145 -2.0692057272196171525 -3.2238353097811693893;-1.8220599289293273326 -2.6974931145878375816 -1.9460193605502777991;-0.36846670099430950396 -2.7127487692063971814 2.6278637350262821215;1.992583242841878377 -2.2127532155146267812 -2.3942837930156999349;3.5675330215627738539 -0.041518634936068853081 -0.77213217635664244121;-2.4436990461623695481 -2.3113116033828617901 1.799241697358847869];

% Layer 2
b2 = [-1.637568915709255668;1.2491255491989949888;0.87906585847704443726;-0.61756680354235227171;-0.23716013306866884358;0.16212469969020584792;-0.57125473048103470042;0.88228822199145728877;1.2013359872562445751;1.5056006918884337065];
LW2_1 = [0.39201108115346677829 0.34233169350670678011 -0.12258327559905507487 -0.036138315756943983903 0.19582415897470481503 -0.38441889834653847347 0.27326665932116173119 0.3540422955059491783 -0.75337616383699168576 -0.47331832945107332744 -0.53767211247446500266 -0.31071976843549231617 -0.38414008932859783352 0.098084714123343311187 -0.45873682982189900592 0.17369771808755740672 -0.029127002609060835547 0.049425570008759155127 -0.01780695022426372412 0.47213191311320196197;-0.089353306557559949996 0.24093682268826155379 0.33041661985081155484 -0.21104011133497027619 0.32323236046441189417 -0.2496510779964330462 0.57223030140562503032 -0.484832834904249943 0.31680312558339573936 -0.11187260408595783856 -0.33632287026194612745 -0.10480159930743519758 0.57872344945574627495 -0.22841596250661083678 0.023204855521142889185 -0.25564304958337097373 -0.21398336432292580644 -0.0080755026089652827415 0.49627471942139450567 -0.57233509723402076208;-0.31968863391372470684 -0.50208419184943098301 -0.33496790715342650291 -0.19622047677076803751 0.39982553960102185098 -0.56270153714506376819 0.28119720963293454163 -0.32638131595914954275 -0.46634394603037210292 0.35222701180750382033 0.25693723143101016015 0.45206985215496714448 -0.49963575010731553494 0.17687757267203019218 0.43738818964965209268 -0.17709104382373438979 0.016182856896900722765 -0.24017826824966315158 0.0040250047141213007168 -0.19239863824014413751;0.64365161515693769534 -0.38916374998420760756 -0.18489921840570688882 0.29102648510088685585 -0.64835505572880425262 -0.14753108392429006845 -0.41006308590683915316 -0.17019507774331632532 0.078764638778823253817 -0.55625740929689326819 0.41001387639591102552 0.11142832431381369251 0.052565862147669006887 0.28779409342302514352 0.060458856073905824224 -0.18993020716901892753 0.14609934419209047451 -0.40820484520848304699 -0.15703216016894983031 0.68707364646656510221;0.57257724397840847885 -0.5335957464318723531 -0.34250686199326024761 0.11132279903030618817 0.053187782106469183585 -0.004431348850456511522 0.093239837844454179216 -0.38796058684589462828 0.50023889355800232881 0.023771700359088217269 0.1145255246670395799 -0.61141815630054596742 -0.58589207525360909035 0.018304472289031720883 -0.10001080697176370493 -0.027152103791004675304 -0.37615699832656918078 0.14834769821147908431 0.42665521426295133223 0.702545426991765809;0.55028329199674796968 -0.069832200191426066493 0.36296650457450740923 0.273113354191127089 -0.59653712764822131032 0.29334712883957536622 0.44183891672342157086 0.5617671314961798501 -0.48534168546354089502 0.14857203767402271666 0.22607325233356920235 -0.057615191942798592295 0.1932207395622615731 -0.18182852433498289391 -0.43023015806029019092 0.51275811359117318133 0.28196872528210487063 -0.14703144211309315814 -0.36687518648157368961 -0.16896328716796490954;-0.51451686999300094705 0.37449634890410288257 -0.14979415043083868508 0.39035159005663494503 -0.013211994367322628385 0.42830034646984299629 0.45541887284351684206 -0.55919388771808964389 -0.33647200523741305211 -0.35325435835990126598 0.24681621143374499194 0.10609045129049914091 0.2856037303349466816 0.18389906175222581197 -0.28559356695421711514 0.58414062487701401416 -0.019898617866125269116 0.32004461856622468119 -0.17207634678252986538 0.11513548399466631833;0.2666615424152872782 -0.54289644755609511861 0.077768311524599217921 0.25687184479888403033 -0.34234528907927386232 -0.32164900492195902526 -0.3617467260011069663 0.60807841675766149958 -0.57210337543509170999 0.080278589074058367969 -0.10708320501050891393 -0.70372899030653435215 0.27704163933602549141 -0.16341460298872689805 -0.38063343829341855784 -0.36277301741306250404 -0.43518296160090352842 0.38950202212948265013 0.086350324327680749725 -0.22833333319221227331;0.60828522190447353868 0.43712640536719871154 -0.2269820699932127428 0.12881590817302648877 -0.53019790028489577338 -0.1972288678726656086 0.28476608255935270675 -0.04098271822350182253 -0.024121852124407275331 0.0087654203569308246358 0.44900571807788824952 0.24283721821383436046 -0.54117116171068613273 0.29082225140945300312 0.48564655763276637357 -0.17553762987767923542 -0.15444027083183042848 -0.49891710326878419002 -0.093329730347801481694 -0.4817470694246889229;0.42369440070511560359 -0.018980649983219511495 0.32532702732034357584 0.29882572051659117562 -0.39002359490666177466 0.62043395118256439158 0.29132015641577468923 0.09763900787489900035 -0.36325711033118607274 0.047120094174205554016 -0.4533321689105993535 -0.091070359820796628614 -0.43038794983021860796 -0.38998329107376938918 -0.46942739284121287602 -0.42375068596400439214 0.55203479099630736737 0.35858018385170181697 -0.36615804249228806055 -0.32417730460521115843];

% Layer 3
b3 = [-1.9099857771409010088;-1.7525996893762838535;1.4803625624501572933;1.2730175963794088112;1.0825637118980731;-0.87309948520352975709;-0.79481391159920433687;0.44973059347944827069;0.28655817897139512773;0.11759565384998849069;0.089018138743874014596;-0.25441698233050985545;-0.47514980976023968307;-0.6303577871407585187;0.89483181570678116401;-1.107502872676322081;1.2953710397368771723;1.4818354246994878132;-1.6959588522176165526;-1.8109626111892429545];
LW3_2 = [1.0344006454535730199 0.6854916329689171306 0.34734637817464908416 0.17503403634402439626 0.58346605626651759646 0.37697562711007065461 -0.51686659736187801073 0.053787997745095239566 -1.0462667981002362616 0.06015681282835955157;0.64389572309989850929 0.79546120290189104018 0.81572828086903403921 -0.5764870563179596008 -0.62384182507810703733 -0.25396817784680109087 0.021463428247489847733 -0.34957884036903569269 0.80608933987043451808 -0.055207791946266675243;-0.033039069767910080044 -0.28142799722776934424 0.80679916717915656221 -0.65368371487283349897 0.41323190009681709522 -0.26501691166567781233 0.65076018877020425091 0.46950634319709183551 0.059667500318513311264 -1.2327986726373991733;-0.012031090944504170548 0.76166891193941921312 0.69538541363395034445 0.60979245476678634041 -0.88969111492619978865 -0.22337720742126537798 -0.26596424197164214576 -0.96865392388413706914 -0.14487994757689623415 0.54267643206601512418;-0.87638207129859502231 -0.25845801690087039093 -0.25306580321874821982 -0.78027198854226342828 -0.33627279133720677784 -0.75060530482303766675 0.80291952712724456998 -0.036581997084114269148 0.78448724391492663521 -0.33852048111036409095;0.52770740535628279932 0.52334533015323514427 -0.8855395439550016734 -0.22836385594276836786 0.34777265585786482083 -0.32229529070132728608 -0.94990604584154458845 0.61259458006774780703 -0.55974514158354904403 -0.6281435171618343638;0.41369264902403518613 0.71608055134445691703 -0.78094409042720991376 -0.54571748756160065597 -0.24522295058439624871 -0.47846929000249582842 -0.77683208920043766987 -0.29577593340415070378 -0.37858347710061013291 -0.70149270181949052727;-0.81929032569562920685 -0.0023267896364870966491 -0.65728453028360267485 0.1708795726368666501 -0.85448736826665927513 0.12897783244958066495 0.85978246934736368701 0.36663860107329332427 -0.12885098193140104295 0.83537586716800682485;-0.71761006924734238588 -0.10165117906499281097 -0.060880224793915048431 0.59877084932932778116 -0.63237115063200499687 0.86226831167020534519 0.29741426964106493225 0.99735749587556687956 -0.67787075217362213753 0.020398071160543689712;-0.93168110938871029347 0.53517700605051332641 0.65848430881929576053 -0.08189730720356989957 -0.15228428009334299409 0.65047757673305084403 -0.74286582379475174509 0.14388071271230101766 -0.74035874672899260052 -0.64715136032542897038;0.40430252942790517734 -0.81254175353177993113 -0.82974697457510815379 0.051088928998100885392 0.41746484205009998236 -0.63753732365262694159 -0.43386028368022555579 -0.68836148368514027407 0.87803942455848549287 -0.13773804539396308777;-0.11603329091908000381 -0.309474422620985401 -0.95339404141025796413 0.7421395155281192979 -0.72046143723673150561 -0.18696266555590723701 -0.043721974350473855053 -0.49172899178332124537 -0.89914949958782053319 0.6205820646710481503;-0.071303531761640642772 -0.52292021031608204584 0.117223666208347857 0.39736088317123319236 0.66176154016092414434 -1.048795495248991072 0.56893595653098116838 1.1394324646835103376 0.078299362983389783621 -0.23192396369678067169;-0.59291184079797276674 0.74137500018175950256 -0.53017139887816622235 0.32597464796352254579 0.1920399913674627479 -0.42603408522044239337 -0.79420669287676515236 1.0795893979595694301 0.18061784625817600691 0.52404834186024951137;0.3275369508539929253 -0.79688379913668394572 -0.033694012246463879434 -0.46604684597629630893 -0.56996060844578433358 -0.65270486890994494633 0.69091708893177405937 0.83473228306585323111 -0.23974120288270123202 0.60470629566915945485;-0.21305187094440575235 -0.73199013313357697008 0.63475032563542954644 0.66501026310575306333 -0.65901925965450725009 -0.085524535161495968127 -0.38218975316495373828 0.5253981770841572585 0.75265945074810969295 0.84458670258165979838;0.48323687003513787763 0.3263917974930143906 0.61051395731409829892 0.57908724992062077241 1.0094512629653027425 -0.49240164336168890102 0.63201375756195421474 -0.77074537443852675356 0.4272948467106149617 0.27146864987764829369;0.049515800090896094909 0.56902496533255630951 0.056279715379475542258 -0.96672992636666199573 0.10912056276829276702 0.65399065919837018335 -0.57912091462194836833 -0.83049494686949631994 -0.72921624898886450161 -0.56501415821884670709;-0.40047968770596498178 -0.54691308040329955631 0.75249659061768747748 0.5044198123126623079 -0.97863220990207222538 0.19657555168627877107 -0.34500053516348022642 0.45545213684339808102 0.92508723447768492765 -0.23515115680363943285;-0.66878505310192881694 0.58047351303624605823 0.61555725257816207296 0.51805496351875257588 -0.57926499804928521797 -0.50584653954508929097 -0.57120186935913497273 0.63959081736105793947 -0.6330041880313831415 -0.85196527488770945613];

% Layer 4
b4 = 0.50147928112883100038;
LW4_3 = [-0.51600109849538222662 -0.6457317856479602991 -0.92064812439091237017 -0.89069562487512710103 -0.49654712615794210917 0.24416527578301783219 -0.85157153170977784029 -0.58531281217461395006 0.20521929416995599027 0.31301675482424662356 0.11088907758752364341 -0.73837799425045325119 0.86396814553600198572 -0.51449196449356682237 -0.29966628090071284474 -0.30818096145618512072 -0.0034295416417391613034 0.7431902313741772792 0.73691656770165392398 -0.38987319100148110085];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.499999999999989;
y1_step1.xoffset = -2.00000000000009;

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
