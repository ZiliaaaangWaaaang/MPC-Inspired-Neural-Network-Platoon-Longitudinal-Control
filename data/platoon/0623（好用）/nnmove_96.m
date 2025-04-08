function [Y,Xf,Af] = nnmove_96(X,~,~)
%NNMOVE_96 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:06:25.
% 
% [Y] = nnmove_96(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-19.0505965768031;-6.70139767883548;-1.99738196042707];
x1_step1.gain = [0.053913604005474;0.149967019141203;0.500604127399131];
x1_step1.ymin = -1;

% Layer 1
b1 = [-3.9428017657236682503;3.0084815385934793319;3.3191324143372047395;2.812645854249081534;-3.2093142653077983972;-2.4049900416962848304;2.5309882868535646949;-2.4299652772425774927;0.083992749878922107198;-0.77815309874639870813;-0.23911407218305377742;0.60006116757854333077;-2.7842038752715683181;1.6531421017347442959;-2.1335739709401160269;2.687542049236670838;-1.8152631437535879932;3.1156391086377301924;-3.465738638706810093;3.7359248150140498268];
IW1_1 = [3.1773135968683905439 1.5704196248797697155 3.0998943649443995163;-1.4633598105849912052 -3.8609956290514850785 -2.0995176424937267434;-0.61047730510937603388 2.3623825688238051512 2.7597236600586794175;-3.0589079589995451514 -2.033979136396042886 2.4223905111693251335;0.91331902982659274315 -2.1071945400545306626 -2.2790155302040306928;3.079737914790648734 -0.46669185692820630562 -3.1807544955214552829;-4.7559709335438169475 1.4109171228747365845 -1.4673061131055329387;4.9292276872198863558 0.61030738841078635559 2.1389042160815319171;2.450436115094280165 1.1033095861842527885 2.0738860478431946355;-1.9830243606130504297 2.5439414981210135558 1.8806532757676128753;7.2265282373830119766 1.7368334503452025341 -1.1338675594356157905;2.6191944499331705209 -2.3176965525544344082 1.7322402141147783539;-7.9863664569875751909 -0.20642302847822815992 -2.0091718445944173332;5.2734693949972699656 1.0900431331527999923 -2.5821450347520853441;-1.1355793372652589479 5.0406498155633494562 0.16422405021150476845;2.542982950626458738 2.6547101652223399348 -3.064973183713596061;-3.9329933284001712401 1.0902129492864365279 -0.71834923350977808454;1.4966314399031588334 -1.8756389012922165538 -2.4572808300408062188;-3.0291560822366636607 1.9843106538294827956 0.8293333979754656804;2.2744463258558287322 -2.6789350602919475008 -1.5847813195204580872];

% Layer 2
b2 = [-1.7255342586874689026;-1.5493093952543190994;0.79161361680210140523;0.79239093682680317166;-0.47375287813422373162;0.28329863666681193157;0.27063894898179369219;-0.88547498273019986659;1.5699535173426093504;-1.3884499740449747218];
LW2_1 = [0.15400115028321637034 0.80142301079449262957 -0.70022679567192913641 -0.37214466908915511123 0.8618535297210859758 0.84402319565273264956 -0.87699157596903798417 0.38799510894067118505 0.86114581760787378695 -0.027730552958619057724 -0.73550499378845712872 -0.021276805328611349266 -0.69572301657822110954 -0.95324225339335599827 -0.34662049312311660199 -2.0514535682709209574 0.25752322325090837296 -0.034513865206165755817 -0.19793902412618111231 -0.02228713929731680754;0.44494931475136179078 0.52825029458642269731 -0.37401939965345554207 -0.17494863726962456285 0.51596842869954817612 -0.021632101964431906665 -0.0087836329846827584933 -0.75307285038620386253 1.0960854733585942977 -0.068907823226028883101 -0.058956855559687770807 0.60577784063789086311 -0.61012701109595268711 -0.63058106500783550619 0.28454810611572517454 0.11633998970801034956 -0.14634084135213221156 -0.18305195185572586958 0.95460651017535602669 0.034595313772063228386;0.23998337185934209836 0.85990655015991168675 0.037822275329653640141 -0.070910481264971167437 0.37910555737012896493 -0.32328422966645059544 0.26097190702082051494 -0.62061417948207020512 -0.40581833189775989856 1.4602417373401190837 -0.67941606576084645486 -0.85828668488191239838 0.92190537872227573679 0.077980986780864014474 -0.78748978995868146313 -0.18729429378726222821 0.20470821372832229135 0.25158858177726067806 0.50474263951228537373 -0.53012688224040760421;0.14358499310027980633 -1.3146031047987973839 -0.19247888319801131907 2.4903217360302760675 -0.045249153676971458349 -2.5272551143947663554 0.97696294474178924094 1.0944387537369573149 -0.12835299142258752014 -0.97990167967245467295 -4.3952806322413531248 1.3651867561840218546 6.8325299928717306841 0.14338846570377652978 -0.44238891276144065579 1.2598267989443101555 1.4343731314994672132 0.023228426175028165507 -0.06604625723694675099 -0.29060965031704732997;1.401051276744050611 -0.13530222391143575944 -0.11744352804661402356 -1.0211096721896479878 -0.47910964339850775628 0.68033319485173016083 -0.6365879679097700139 0.14521358844909029728 -0.0022261588852603860465 -0.78891504530352496438 0.060464831150646582147 0.67066440017308781574 -0.98947282219008292348 -0.41288232814569136853 -1.2345200539400038586 0.37484924076051628905 -0.31310907896583090038 0.82824429173761915379 -0.28733370472294833542 -0.61115572381696348092;0.65486123296413811801 0.60136267176881386121 -0.033927259541605969684 -0.26017052116956079777 -0.65972403367405618724 0.47254509191423293979 -4.8282719820344706108 4.1458994748718192014 -0.26146451682650573289 -0.018913243940490757911 3.424743115524779391 0.093400392827338293844 1.2128546724658515465 3.8981661088763748246 -1.2092623424601607329 0.6588433314072300595 -0.6044616386768312255 -0.49357766813220971258 0.25986408098186858373 -0.52289861310903740232;0.24446063347539628841 -0.30852902263215958856 -0.76368603276262536639 -0.15128712250798828642 0.69308728705075461907 0.46109159584391362641 -0.18110349233008660175 0.45125546054567206022 -0.10791244531468362211 -0.51022395109851803596 -0.56907430119300539406 0.073181562791751100794 0.33693748845090093491 -0.55419099208540578694 0.79223167624541868115 -0.69859352815858910546 -0.29643457033669040612 -0.46457747176715780135 0.26505800938856194371 0.13536047597412295684;-0.00093871014540841376042 0.81531845075719389104 0.96457580336883996797 -0.37607805085633855269 -0.10580272217568643944 -0.44534143022773381437 -0.60494146372453150295 -0.64433197143974352272 -0.41530755722440798605 0.88706826940552829797 -2.5526905689848833347 0.22901589988009213306 0.20459816744756975648 0.065211390893116505385 -1.6006736732834603298 0.22426139915865056507 0.37305645667404446764 -0.75120174029577557739 -0.44247847648871357906 -0.50126184675904361665;0.7354764112627458772 0.72301229250954401895 -0.070405815401999652381 -0.2637203830966516338 -0.78627740758090669537 0.31918165065602160935 -1.2122865069463495402 1.5038365979162815478 0.30427924531614281012 0.10399948987335261297 -1.0543306336204754103 -0.3847080064439876157 1.7104854106124443014 -0.43812076172498404247 -0.13006032017014690361 0.29479903478651148241 0.046667459773287747749 0.25301743805017729017 -0.17654566740571903116 0.51113055055479827971;-0.54708838277134852479 0.10094893581771875735 -0.18049323539258527171 -0.46156364877345840148 -0.31375751055570794135 -0.72564333192097185687 0.13826448310167249733 0.49417410373069503571 -0.52500928548841518939 0.66993063065510527476 1.3212495766140475162 0.29671489127768169158 -1.295997845205268062 0.52298816283039317732 -0.15098100503257763649 -0.19944671672117592065 -0.94867452945611652204 -0.15749448607448265913 -0.38211789831738296463 0.63155727215281221021];

% Layer 3
b3 = [-1.947418745770302051;2.0744772447518582403;-1.7669232332713098454;-1.2817004320451954591;2.3253266741772025128;-0.88160256255746427545;0.72625318288611739881;0.55129091589375234239;0.67225424333551697664;0.43248697476373010318;-0.026836115568782521745;-0.60694939799836156169;0.47776464522171574467;0.093882965060473763663;-1.2437221375363041176;1.0891188310199475531;-1.1388539275734108625;-1.4190813511781008582;-1.7673970070622710971;2.6493037312002738481];
LW3_2 = [0.90242417525483342722 0.41217980023455713656 0.18911747734194206405 0.68749208865224720189 1.1937420164560608171 0.32060952315313701044 0.037202555441020294935 0.074582783636838650976 -0.45689431031058153065 -0.38806671062183700771;-0.49482883382643355619 0.52806888317293787516 0.68417499608003407019 0.12424037184545745627 -0.76313391694295862333 0.16393230697881028268 -0.92710772276353903276 0.584184354077349699 0.63968604983827348498 -0.083618006762128951892;0.51413698379595995647 -0.24560308581202644485 0.82562848639435426623 -1.6216576594933675981 -0.51953989087356367005 -1.4853938520532390388 0.51406126873362656404 -0.072715062901609367474 -1.1503327310522999394 0.18274850879896950562;-0.19004736460098398121 0.61996398757430493109 0.57674232726684582229 3.4130465381449788254 1.0083661185419561246 -1.0319586189317411229 0.48948990562994204589 -1.0553167954213260593 0.11457054274679095984 -0.3307361804142584516;-2.1518697425608963592 -1.6061053989638505168 -1.203283849706317632 -0.0098081067465642206293 -2.2836379270313877932 5.4774120755708990416 0.24574430443858044648 -0.50203152916571791575 -0.62628077973716889115 -0.99061842395268695505;0.53814235088320105937 0.60841364580659962336 -0.69846855223373527366 0.076604101286878306665 -0.89110373901436978894 0.39085474658387808766 0.31662490238821339172 0.78023886130493280699 -0.20682926474871846101 -0.80584361337178000984;-1.0371595663081869532 0.70481095948130234596 -0.44409980092875850355 -0.62507738247851141189 0.03732167566699248068 -0.37459077203675317236 -0.47724032716208308891 -0.71148290910016775968 1.0751722945755599614 -0.12399167522931593688;-0.97032393541068306941 -0.21310597621637583643 -0.67662622782716386194 0.25117638226304300764 0.67201283319675175765 -0.55786901742189087816 -1.0283306526082265364 -0.069723685611538258056 -0.45975870644246930041 0.32332731154269883644;-0.1049711736410322005 -0.42225196274338189228 0.57856904678312304213 -2.4251663230216489175 1.3639007973978047872 0.012518544009367927813 -0.49254070376748287918 1.0169363034141074564 -0.05414890615513286154 0.62666496482135958246;-0.97574532711982775446 -1.0260228940973907807 -0.08672157224879564752 -0.93425591043617051135 0.26468178598872810214 -0.28182963150188139467 0.20066761399029814372 -0.53328203899416937173 0.64416182158198442842 -0.085177593130560905199;-0.37914749701296845963 0.78078002776086863346 0.08240900321810558371 0.75433360031196072804 -0.28011812222069204514 -0.5844179123415248478 -0.91294917488152949048 -0.49468044562587715207 -0.095262204203271180769 -0.97480579401867528677;0.46129447376317317397 0.38349460135156948626 0.70811855741412954579 -0.084041644929679193421 0.13417029084322038002 -2.4741363751764526846 0.8154448734205702598 0.53035124208050676842 0.88155955692337417684 -0.17162297664675385533;0.067724634874260697393 -0.40127175963540617776 0.85448957598657770962 -0.56916185057700097172 -1.106617962611635031 -0.35800807168998211027 -0.78565353573782181762 -0.4084550106151552118 -0.43058339125353289889 -0.49329604545362160106;-1.1112034624045998843 -1.8743232953934516605 -0.084061396994493026158 2.4119073066108938086 1.2449197190299507998 1.14737136893781555 -0.45665955454604612029 1.1627041283070844724 -0.43509939894100557733 0.38813638742969436279;-0.14798960774880978719 -0.39531500241829886644 -0.071334010018659049779 3.9043347219135315918 -0.16427015829994373597 -0.17900260085750493988 0.39694891945232202435 -1.0393686727695889971 0.37995333709470713313 -0.67094067809396440438;0.45168954491124252426 0.58626448116924756437 0.41539449825854057874 -0.49936765723227144465 -1.6276216126702964804 -1.3173251154686402842 0.82660716079772544873 -0.46641199218842582797 0.52912673210656568923 0.37071046329208723336;-1.532659504810854223 -0.37026156154925149444 0.20024976777452013765 -1.0732013276394452017 0.071997260775511440212 1.0223297604128442906 0.70320885340047356582 0.19169484926262256308 1.0672424869581165208 0.1530318604762533341;-1.0661038216844360704 -0.011524691881917813185 0.75758394115769334132 0.0081793702438204222288 -0.29220095155478015281 1.9023523336994982991 -0.18512033312635697846 0.82794898389069226941 0.71786099292043803466 1.2046306456376967287;-0.4198361636688273113 0.71523066250292077761 0.67692465897946840769 -0.92260481904459745728 -0.0014633378384270468581 -0.84322041050826601616 0.78518192795443697563 -0.13328879189292502927 0.69638106235507990505 -0.58507038486709761482;0.3184280665386092779 0.19946949267776606374 -0.90410701410023586178 1.5436969364355326295 0.40920374217061300515 1.38384409510029327 -0.19662817035663832099 0.23624880654438495942 0.61534787174575211743 -0.76103505142163152541];

% Layer 4
b4 = -0.1801627931598979715;
LW4_3 = [-0.34451659366639375559 -0.24795824898360951938 -0.97445440637638247594 1.5535098733386356606 0.97693931442951043032 0.41067821389009806499 0.39076502412494346084 -0.1958390992082814086 1.0330276487374612238 -0.33294812397071837928 -0.21252918344173890586 0.25421765720170647063 0.0083442362224934781695 -0.45741419025663654363 -1.1935778747278429357 -0.18038800034528951199 -0.17852350739020858561 0.33693951697669943801 -0.18177140181631387672 -1.0080600163512876133];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.499999999999934;
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
