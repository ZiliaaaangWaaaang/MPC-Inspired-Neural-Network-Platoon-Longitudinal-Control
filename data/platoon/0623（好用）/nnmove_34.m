function [Y,Xf,Af] = nnmove_34(X,~,~)
%NNMOVE_34 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:04:31.
% 
% [Y] = nnmove_34(X,~,~) takes these arguments:
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
b1 = [3.889559175118594947;-3.8430870917932811182;-2.4075292703521751214;3.1761857139012157347;-1.9073626881643608311;-2.5597678441569842178;0.42376710852581911393;-1.820303398969055575;-0.62651541787624165369;0.068210471810906919687;0.51122702492702387644;-0.98958777754316618047;-0.98305382117976147782;-0.44706209304073973865;0.97550831806587789963;2.471027352636150809;3.3765061871419721484;2.2337992455416952886;-2.7697630820251815109;3.4648345481384978939];
IW1_1 = [-1.6007435119181951944 1.4742751237304312362 3.0223752398490075777;2.068254973374441974 2.1629965655057166174 -1.7558778787999884674;0.57272416837794648536 -4.2840782187500110467 0.038241438280601419697;0.58560947835478938117 0.28168438402512618879 3.9161744063125514259;2.1311432334557482982 -3.6175866050565330667 1.5481614727657628805;3.9705564084871385333 0.043905056701404494846 2.372874979201783141;-5.135018300846829753 -0.31476445945932229886 2.3366745608993744199;2.2220689279782956937 3.4870251671017431505 0.78328170676292596664;1.9157889104190857221 -2.0326447234932931707 2.3498324336742624219;0.028141591523259512631 -2.4983497574928978935 2.7229440629422598796;-4.0149947920100768073 1.7821705897530244478 1.596644788335685794;-1.014464778579873272 -3.978742278736842497 -2.3531817593983905823;-2.5340457098312167972 2.643409106578928025 1.7324668360998831673;-2.8493689682661424989 0.94403855778172751645 -2.7718546822445917499;3.1463905908046765347 2.3380458771030077081 -0.82548717633912249703;1.0553870838610068805 -1.8781057617706087282 2.6568750899492412643;1.1068393239327911637 2.778597381698072688 -2.1145930703275905849;4.430539584918363083 1.1714673647092253006 -2.4063872962144792211;-2.8586492309458928496 1.9587087064236168299 3.0886947395846560127;4.5830639906112127235 0.46232962868039884086 1.8664948493369759586];

% Layer 2
b2 = [1.4420389583081261176;1.6014584626371641818;1.0351514827236489857;-0.8885272582007431863;-0.19622791827825405986;0.52148670182814382823;-0.39184289236875924356;1.0690136048329439422;1.5079093736702440243;-2.2335033057126336686];
LW2_1 = [-0.33430783016510245975 -0.91371489170564013094 -0.40493842134853441639 -0.010286040898411076203 0.21825479419737855991 0.1941562300633702387 0.39052152402619366711 -1.4911049293784850445 0.7967478385703217203 -0.3555204973275538638 -0.018121185727406362298 0.047341861497593687447 0.0065463051081479971607 -1.0441891115443155957 0.23077474630313282722 0.42855300274992497167 -0.41723348877217630859 -0.26256035921179704529 -0.059814520914945844277 -1.1850935281207735095;0.014593896718276197499 -1.1355841360872560575 0.38572417700034455912 1.2358398896112621212 0.3458747939863526244 -0.029091347341440219887 2.2011999129942680931 -0.31067437100459210919 1.0222530087006649335 0.11164265517456770094 1.3813929707564378546 -0.58572466854174964901 -0.18782831919617740124 -0.73256760242244756132 -0.21114126061304161475 0.46774560393470754338 -0.50537945244685822388 0.55556821094961184038 -0.61393499555750241647 -1.0297571492502808344;-0.40191432209857086422 -0.068099212191074398604 0.49928501242338324539 1.3528214771234203795 0.36080921746698119135 0.2345554692453206691 -0.45999107744587969249 -0.56988269883208320099 0.73757326078885798726 0.47021765748726856993 -0.52184681468780447222 0.50124379938468954787 -0.53013007742248152709 0.043339781269364663352 -0.75311827791017260658 0.76901121697201135774 0.046692610726687802658 -0.80856071496860582037 0.45211904675133940401 0.10015667060140807931;-0.18375649906116300891 1.0767327644411344156 -0.48795933776782246527 -1.2838004096364521445 -0.64802030628634166298 -0.18540174011436086343 -0.52040751182202260594 0.27222184575079128033 0.54519610759669834277 0.18805600348848700021 0.1856224415612725831 -0.64687286699042922944 0.26850799358141186346 -0.18994767305434412386 0.88124339199845147519 0.38845732180485847973 -0.43856821016025376858 0.60315924091125339146 0.29142074723044902873 0.54562423542859928016;0.18094019047283405044 0.10951871967548428011 0.33674295823275463002 -0.75913159426591492185 -0.40509459454279717061 -0.89345797600760479273 -1.0481707204609802542 -1.0642007635697583456 0.054602858335762796682 0.92964632866235752395 -1.5667245175287556336 0.2172097957047582073 -0.24587081110170946885 -0.14021685204571104899 -0.46090071534265381059 0.93428660042685607312 0.96064072396133992626 -0.72899735239422580602 0.35360417930797632957 0.52798720400990173385;0.58434459722961151762 0.087144727665872334654 0.54177271002654558973 2.0123650714726086797 -0.11667660657248501987 -0.14441549323764765744 -1.5966499180398612268 -0.023289359958119031091 0.30777315853019981962 -0.18139848626687116173 -1.6475714752362475846 -2.0689802802879091459 -0.9434926587734788761 0.21587642853449071079 0.4708654063773706766 0.85568727120768683925 0.22474603753276878315 0.42788007131660682481 0.30382089515505289468 1.3194118442894977594;-0.11868128608363368026 -0.36650872888997587662 -0.54301439469404511051 -0.85782738617069664855 -0.69687590994498949115 0.62234059584311529623 -1.3360396305988884169 0.3762599534585713279 -0.34033312784125840933 0.19461517561100089013 -1.5350566604114319613 -1.3642853193174611093 0.50030681539784660483 0.60772922707049581437 1.507401253295659771 -0.068247603545358678789 0.41723489958366116737 0.22295000602644415855 1.0149626790775110319 0.20484050184515190107;0.72339417896840085831 0.17855684258587031787 -0.23038788790835135201 0.51812929344953861932 -0.4136987177976251262 0.5156955169272482431 0.73371491051498627378 -0.45873825984636074082 0.39660670388644675421 -0.45032275439526686656 0.14625133302428844351 0.055602748445014081591 0.16501465646407179055 0.21517821173627221798 0.11016183406343776907 -0.24762539730485180756 -0.0069717706764784006038 -0.10834441248409404368 0.082629196533414966952 0.78011502840010782389;0.80112506569965502567 0.075969925104976340768 0.55131675864281526334 0.28239731570100140567 -0.14406213940535891882 -0.15455865926390316423 0.25480341896112268518 -0.30124137531691425052 -0.34930113624773834191 0.35923127247407427021 0.30791187269956721284 -0.13608966338477032632 0.42464837919358300322 0.089774316309611509879 0.89352251259954162954 0.02300143182101994227 0.47258067530644615184 -0.32463607785770337566 -0.46532919612828949063 0.16974639872637697913;-0.51111102489088133805 0.52001356188286784743 0.034934431190560569225 -1.5464628299282390245 -1.7931521853286496171 -3.8550132720042058487 1.4843837648616340363 -1.7467404416219409757 0.039082680544113540533 -0.35408362821816014021 0.75171124022678570409 0.29340906619591994309 -0.28658426626863436892 0.05455849317638329643 -2.6565277892047358677 -0.036205680984459968907 0.19758391402303543405 -3.3214227329560603863 1.2222454400221196558 1.4600834525540720144];

% Layer 3
b3 = [2.0874890013934690458;1.9040373995674102492;-0.79572726452971997979;-0.85634945097940440295;-1.2566649741660409489;0.44749255529935433318;0.61516444006658843602;-0.83200454898807341131;0.22562133332298200949;0.4414836620276866852;0.32398449252566657863;0.02267448810635414036;-0.47833546247641922644;0.72656843149974148499;-0.85262853743407074347;-1.5085311791961486527;1.3219840715123640784;1.7203088691306549496;1.8928859627644796237;-2.2163846915947011951];
LW3_2 = [0.49601529367811375559 -0.5727377757149400006 0.43902506443067390585 -1.0276103600959134443 0.45265066317190844059 -0.49043683877894606038 -0.20791893573045189259 -0.87034145028155185386 -0.20275550406338826992 0.90295046542539569856;0.47676483419136322928 3.4290706285836205502 1.2373262855120767956 0.15662920086684600784 -0.14796096065843511447 -2.8127620346473927171 -1.4347272024681703151 -0.19178863905178780702 -0.42018628031717975002 0.64932952314523117998;0.12234582771188884376 1.4282489174520485165 -1.4634486711726895081 0.0041220626633603025743 -0.21271731096654417081 -0.39945444572629101865 0.43102286808891859815 0.87962678120029946793 0.75035942816755318852 3.473515001558958204;0.78882488334160671961 0.61899369011434102195 1.0188743945869429552 -1.3470073532124511306 0.9393980414962882497 0.54591935525050827582 0.48967542344961206835 0.46388302164574973796 1.1629914421666469604 0.67191932452483471572;-0.053084475538651261506 -0.50628846548144179618 0.058094095031970258147 0.99886327964118781786 0.46208384038720667908 0.48770541995603017282 0.92536124859676693877 -0.84756813269604780459 -0.4929209647511756387 0.40536582461756359708;-0.29436483528776874463 0.68847733845387160123 0.29100928810640425137 0.87583404785509855195 0.36442519519549665397 -0.25242573630813158747 0.40207882317250187576 -0.14167431128942375995 -0.77585299276243291366 0.67227441714261504391;-0.98559045657967214726 -0.80162312681704739337 -0.58781677665639975316 -0.11240495507462396063 -0.33053612428942613644 -0.0018059426118782581812 1.1259431398320356443 0.086155457228812001857 0.66794095313631818289 -0.065099550889429910749;0.80162957228667519605 0.73980814543974293684 0.12884833365913944681 -0.022599765022313735019 0.96758536595428723537 0.70913002197220986744 -1.1860872090127094758 -0.023610883345444037135 -0.010615498063871679768 -0.17132330688762403836;-0.81297858872432926525 0.49659952305505783432 -0.83716425481265743791 -0.56580757375895485151 -1.2355248611695623939 -0.55283184970332710506 -0.67617433115532732391 -0.020361967338478420553 -0.30160106224738575387 -0.17892344724425895963;0.1818100717018738266 -0.34104394218208355927 -0.36492370901429749264 1.291011928261937225 0.47623671364619413193 0.18198494074922771935 -0.94676487372390749631 0.22305534483963890269 0.22889601008550547467 -1.9506996692647204927;0.7683941261944172707 0.83866849683674027371 0.5573964173865351146 -0.37577112839655840704 -0.085494976601131325578 0.78256492031016977595 0.72089407569970920253 0.34172676624264092249 0.35646030811009105088 0.66530421742255485551;-0.65115160746426603566 -0.5756634680635530632 0.17666225119918488318 1.0424286198066070597 1.3756811514164140053 -0.10781869045018413478 0.9654719652556484899 -0.097459869983421404394 0.34373502230406582925 -0.013863848628693066153;-0.28278369629667510221 -0.079005342560040214828 0.73234431308632697011 -0.54185030371597719956 -0.14761383029795435706 -0.60764586695150168971 0.69029975036747603934 0.75793311492867987411 0.16686333595623215054 -0.93312304613254082319;0.68853248158489388508 -0.55589158708445718382 0.26199650149612807581 -0.47191669785488782329 -1.5348814446707681469 0.79888568762661149592 -1.0487987170543280335 -0.060452473132067259531 -0.44957366030974188487 0.20629954441765216422;-1.408925316189664434 0.50311271730991857787 -0.038626774560720215923 0.88597418334156119446 -0.55352421824007991269 -0.32865457850895041236 0.13690075171907814533 -0.053349801115254363859 0.57759210884204470471 -1.2596635965036262483;-0.2678948846021797503 -0.91039098120500594469 -0.34895547550053002128 -0.25393321153240450139 1.2133382204467357823 -0.52247996795346340893 -0.49906928388373184013 -0.14364663803325383729 0.088614319727815665795 0.17848823247106537782;-0.016152643579612432218 -1.0303985714707530885 -0.11507369369510180024 -0.97198658417426087031 1.21362861354936169 1.062172746241768051 -0.014575765620585564783 -0.11724031118606124957 0.45586591593861680582 0.4700933288801454335;0.78436929978952796283 0.69518877408904644621 -0.14467145337887510337 -1.0961801703733313751 0.16577089848258938498 0.54647022348945606396 0.65537680904583195396 0.25065361667901225884 -0.260888845916829204 0.75663341374227188751;0.33979773582070055271 0.08113709911259930907 0.41990512988392880711 0.39236148062660430869 0.084669911275273096463 1.2471660204174699338 0.2905066540507216799 0.60223199370915092565 0.04460219262182425759 0.86878236692253119067;-0.61085524035754512617 0.22629100357766743223 -0.031174602642667310903 -0.11674576619999439686 0.85864619641533801442 -0.1239959555499107885 0.47800054341899500532 -0.4434267330547710384 0.28182047707853957741 -0.61862808701901306208];

% Layer 4
b4 = 0.77679258713823307048;
LW4_3 = [-0.34286931893381378256 -1.1904818262951031294 -0.85258469867922892504 0.45108550288902510284 0.1027696105970672541 0.49636314258933045274 0.39257439690432643919 0.35125196761519894562 0.061460633049057182553 0.47928776339294010267 -0.3319748643790144671 -0.8843458759447792028 -0.23470249652415964281 -0.46060209120685752238 -0.87960613858674419063 -0.80242564768702517863 -0.35871411730626800995 -0.7117689840611159946 0.33404499863403874782 0.20276582221327091315];

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
