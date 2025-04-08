function [Y,Xf,Af] = nnmove_121(X,~,~)
%NNMOVE_121 neural network simulation function.
%
% Auto-generated by MATLAB, 07-May-2024 19:07:25.
% 
% [Y] = nnmove_121(X,~,~) takes these arguments:
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
b1 = [4.1898160520005829355;-3.3364483518727503508;-3.5350702009790615499;2.2383360407373666945;-2.5605920658391290168;-2.6360812294381670284;1.0834657216496728083;0.63492026381033217497;-0.89351419089110939442;0.58264277922617091487;0.45089101082940230558;1.1902552728817596961;-0.76004952833810646151;-0.45328440072116871207;-2.380280228750550453;-1.9675856339855233301;-2.5820068259484760809;2.4598700105463193744;-3.3900127847731109654;-3.7993254471389801274];
IW1_1 = [-3.1603619003009022492 0.19924112222807155437 -1.3154881113703189577;0.70302981297323341447 2.7970794416500814883 -3.1207430979317685171;2.0488631106488881528 -3.2209478192656963991 -0.75763966046761610507;0.45828103178788903715 -3.6922562385360513382 1.5836823344573862649;5.1474365176716254666 0.05700433113864188106 1.6517140417996478696;0.11161560932101900756 -0.79154798122926817161 3.3336051383261864345;-4.062877242697283009 -2.0642127377704850844 0.94674824160314963173;-0.3530315139131288138 1.3103536580729309158 -3.5491006483149840633;4.024073489827458161 1.0295281630293742214 -1.075569830399282889;4.2236299956531535571 -1.3928152086002396626 1.4215786550295070878;-3.4129664253675664476 -1.8480915802244763935 0.35133237040523190853;3.7122106515578860986 -1.7948214136902880256 0.15706242401444839296;-1.0590513285473279748 1.0377811673355554767 -3.0481716445511533031;-3.1210202144448855321 2.2796100035001178874 0.8840083108544042334;-2.47365369946833491 -1.6193346212747854462 -2.5447971914263955995;-1.4360913940062698391 -1.444772349441985515 3.4617670032108271982;-3.4750227005067850783 -0.7850930889774812016 2.7100415184563657611;4.4744516530546025734 -0.89491055067359592812 1.3998962836430073331;-1.8270771542789097097 2.441770821261848301 -2.1583650052130347596;-2.1867870230760453332 -2.8480604507050761853 -0.73558344183619028822];

% Layer 2
b2 = [-1.4942381026494484519;-1.9239633925250971824;0.90966384668974409333;0.69335699664965300126;-0.11692481900266689376;0.10007653467015062421;-0.27825850325464451807;1.0624983505156284647;-1.4049004984737838431;-1.4122461559843497714];
LW2_1 = [0.30918121126932501808 -0.1610583708966012717 -0.37739735974730576062 0.38844772060323529139 1.373635004283780825 0.47188426172922404156 0.34987886110290866704 -0.17265437801735897261 0.20000278351211966954 -0.28279600428763224107 -0.42987035933339767801 -0.35690296128777782014 -0.5420089105549421582 -0.12728552444350521577 1.3934061002334563462 0.015217163280092132344 -1.8547661708211484743 0.59384115160179595794 -0.18399590202221549617 -0.22065739563187750094;0.054753280322488266652 0.12548226298832176884 -0.19504092193193239835 -0.14126511240386666057 0.94229915482117909686 -0.16684831097034125147 -0.0052829941949075476249 0.62353836247489913269 0.0037912429806607160498 -0.012259142583736670762 -0.41583888541974356468 -0.30502804157109569827 -0.49880220486589021966 -0.013642461168398201457 0.23420512537532814368 -0.56013756676454484751 0.47223173501167303723 0.21021166566234461559 0.54082133496512241333 0.32440128984452698546;-0.52448968873313206451 -0.29533714160780044633 -0.40258569467674493181 0.23061756875046729443 -0.0026452093994628750329 -0.063057974588404758221 -0.13602767849670174827 -0.015372270263841903565 -0.46055094371941029952 0.55538257173260630051 0.10222525038037405531 0.24534783874990417907 0.046673145428002126012 1.0084778562646994349 -0.69109128699983979338 -0.22159103704244639821 -0.37828276666094534653 -0.29730906700024950506 -0.33125169339478188757 0.028096565870240276103;-0.15168702444142867503 -0.24120684876803877295 0.26533811090372716457 0.25757647964142904584 -1.4389946182358179794 -0.51781561833833900099 0.13281256375004921177 0.26032617165477178744 0.73993289190332556249 0.28734370475419884761 -0.017564723298768514237 -1.1104835084851780724 0.066531453507869472985 0.61752918934978051624 -0.049517993390304423929 0.033187570790940770782 0.67979381587546350296 -0.57191257571067510845 0.034352299673393683899 -0.21404168722514191336;0.363155815409211713 0.0074241306369455207712 0.65235267933225116188 -0.061121073667139841357 -0.73403504961884880053 -0.38267318794692650741 -0.2123486637328240445 0.72025734338489433295 0.063217767482958889258 0.56577488853149437986 -0.79829137884244905088 -0.75272682047767247582 0.19201135453824480503 1.2985000305146079391 1.3519415395779486033 -0.32944306926521843559 -0.37875981475441694579 0.29142168890529551728 0.58375798377022669605 0.21169450582821752738;-0.41718394240391432071 -0.70668926034017853777 -1.0878567501222349279 0.413266128362759666 -0.95944139644797699074 -0.14446840501668728463 0.65468663370779511812 0.2981427738198177968 0.052425034761043126652 -0.11194588906967749276 0.22644783779464028317 0.22355188442738355148 -0.31429280449131413722 -0.53706621499827400523 -0.52125090321294653695 -0.26973487386710820468 -0.04826030485814839649 -0.010588845197151858582 0.041706646896454376006 -0.70833413823088797745;0.32323033978086018747 1.1364108321915407096 -0.18437231742922755018 1.1771745784757439157 1.7292506753252794294 -0.61505955419407576379 -2.4525129139780275089 -0.2526399063929035127 2.2851304949762849539 -1.410808765486260441 -3.0568643736685321421 1.6136603787853964764 -0.39844524022821714571 -1.1341846788533722634 -0.95960469563210160082 0.18693459200437992362 -1.6017481408587146419 3.4670243349389222587 -0.57081041314504876727 0.0064738045440596147378;0.56095797638063837898 -0.0010134979102081088931 0.2131366018111068017 -0.11916687860999700121 0.092748733632810498317 0.36793292701083607499 0.3407057128542865243 0.51606517766495152433 0.30333855247268659561 -0.48899236003908513881 0.097779171866013092629 0.15325703953667932367 -0.13828984915119013621 -0.3949714077144299007 -1.0063002831394713965 -0.5816987563396464056 0.22568860890490086146 0.14270611602593893941 -0.32090971162512010872 -0.42529504991806083014;-0.22539589023495998354 0.36680551989764381693 -0.31862703527846186757 0.031941408237383957236 2.8354070955154737632 0.74709596945916190158 0.64777175300252964885 -0.64640712689436063965 0.16460920374509860342 -0.37563274164244103703 -1.1241262474076529898 -0.007305369329365820133 -0.13204267987766576953 -0.52699946028943656096 0.43473703072912434076 0.86261825506479639092 -1.2421220978265021806 0.14173107989911726268 0.33821549602016998115 -0.41991194956601995969;-0.095386809676680700543 0.21808130144721143973 -0.25649419398985384699 -0.7398118687993733289 -0.18823653764294015489 -0.57290644619926256453 -1.06640271190568936 0.62858101251342524129 0.27481052542879486067 -0.4345666893437931666 -0.31093224557835097421 -0.16147926914936366893 -0.1317487044326369483 -0.39824647502704885182 -0.032728325607973354772 -0.041645067196279528243 -0.25667373439436957927 0.11016362676850217917 0.58847364505745403118 0.51297324675848288145];

% Layer 3
b3 = [1.8874335895437002186;-1.6283232620491248088;-1.5429133714435196989;1.5262701918161403203;-0.69515301723884581619;-1.1517434776966859467;0.62614454872293001664;-0.54447930105502373443;-0.1941137474804967844;-0.35073074954756255917;0.37808753906347214446;-0.043530754196519930166;-0.30685879156958129066;-0.88717060602874231456;1.0644658445602375174;1.3775157943851228382;-1.3018032628322591115;-1.3792525747918760182;1.7417019064687979668;-2.1829825775008027122];
LW3_2 = [-0.6408664862887696323 0.86995955935169955175 0.5037077030496666108 0.16597200798196315441 0.10093997946504493224 0.9692106155659443445 -0.4661976080484970808 0.97242937103056004133 -0.11192841670031936085 0.14131941813158158117;0.52271517198221995049 0.48705255132341973567 -0.67011020020744782588 -0.049287083768659055438 0.5659711286495038296 0.69600648208330551103 0.80341384687354344685 0.21026477787538447317 -0.097936641849956124206 0.12943892713959204155;0.46254052182594584952 0.53020838554504212681 -0.33902775387436367982 0.031233792307218951473 0.39472212814976043171 0.86412904854010585964 -0.86745936934516465477 -1.0587938364298001837 0.39193837682057841576 0.13895783623851890032;-0.70520978303372994223 -0.78929616571943217451 -0.01255817954686506803 0.20219247946713039821 0.028427100775965417206 0.38363493862819486591 0.47100022198018853814 1.1183799381658590111 0.6179719020038307864 0.61501552525481051337;1.1164638989924655643 -0.19588178275306999954 1.0540614436172413004 -1.4884813363622364513 0.8206867011160202674 0.57085571286561909154 -2.3132164132675878676 1.2889906951593173012 -0.3951468014694501929 -0.63764204830313797601;1.1974205355958726926 -0.27449804701636909554 0.34708392052165393249 -0.35788265987599093831 -0.74375580273865327108 -0.12904105854314637525 0.63594480653060114772 -1.0682337252406992611 0.5092366018622068724 -0.14133825654458848087;-1.8669637835075085786 -0.29503493421889209758 0.45563441378507879564 -0.69981711539341928674 1.1703843193944734047 -0.18279146627993023144 -3.1029859967623631967 -0.68845265919531350995 -3.3582924150212716263 0.49170870511464098707;0.97511097143474056992 -0.60674500389390473298 -0.74435446571036645302 -0.50258117238458865916 -0.5367684691010852216 0.19513194784420659356 -0.17372345112672524237 -0.59752543535315305601 -1.1397443853673019376 0.30874444071753537333;0.1007618342260647587 -0.77149302197902658307 0.14487224915100535561 -0.43286490970234070552 0.62111932110765866177 -0.77587133249267903334 0.075757930217926774952 -0.37535690327415860423 -0.075023405365666720468 1.1146169880785508077;-0.46322548049333950315 -0.54892488989576837533 -0.38130742613242402106 0.1490244393508622367 0.77049345357622156527 -0.55415369268019964988 -0.17598382620870378634 -1.4190386998334783009 0.82424317285372394881 0.24672264670520571705;-0.92210199882236043578 -0.12775051547670990271 0.80903548181396289785 -0.39969897963706907396 -0.74027934065820233389 0.87132309311162603471 -0.51209783401873010256 0.51338359304843284026 -0.59865118560930818958 0.67947598518542651203;0.90565857019043827236 0.74872961970063978132 -1.2254700927308619374 0.54688893560958085072 -0.18417150636878676373 0.13393055669494788318 0.54416567535823312518 0.47738584809527268016 0.75741399009879462056 0.21323523506214167589;-0.8569202397502003743 -0.47998663473220676279 1.2517770347791628005 -0.46296753268374879475 -0.56318640822388210676 0.82326951479350385377 0.13949742959527483555 0.61641616019961054107 -0.60981081557283389749 -0.15236038704985679915;-0.84704001146393126387 1.2354973808509017719 -0.98155840581844666648 -0.21721295253499686706 0.54644808388602506 0.033263260055849820651 0.77424333729943684013 0.45492499689099374915 -0.23245683944209791227 0.4724366640566013964;0.18447017442801996734 -0.45305824793880644652 0.48330486257765309377 0.68417426543901016522 0.30368811772281512074 -0.22003768862999459333 0.61925081837907491877 0.25152574721962761561 0.67755344974958653381 -0.91472472495424705929;0.68461069123329221231 -0.9952218872617375478 1.1816953681972164336 -0.79220042368012555389 -0.97093323550499543995 -0.3028806858471955743 -3.9008913753884879583 -0.14700042093768686535 -0.5258699887704718634 -0.86867872350402075554;-0.66709516170286176084 -0.21486916877084472066 -0.53744858061977240915 -0.97558971852518405754 1.0179551309619110366 -0.54173718603776910285 0.17163662923317693498 -0.067421218436304219956 0.67171038700037477565 0.22531632036348980819;-1.0375151379689198095 0.46558881390765283204 -0.36758090905272045035 -0.25481299863456025045 0.25728939808163747704 -0.7204544376265238359 0.69807477906219983499 0.8383064611936534849 -0.43470775928747368289 0.39384012029677240019;0.24242340360628386597 -0.96526470517417772843 -0.26851881361227025735 0.58348455062357140744 0.13043528963895309469 0.45981772515786673017 -1.1968403882540434857 -0.061542770054547751846 -0.61141540020086715401 -0.26337589405083705607;-0.3646611779967999234 -0.6008045078904142855 0.21275389595529017872 -0.28448338892867752747 0.13773584763421939381 -1.5184248192383400511 -0.032640039140714352528 0.22144184103189584745 -0.89699894203920738089 -0.18269170092709596798];

% Layer 4
b4 = 0.84355508399757228588;
LW4_3 = [-0.21320242401015665479 -0.72807452821421392297 -0.0023427629082415817388 0.21339414632265321647 -0.093110726755444864211 -0.092282031557922222786 -1.1091160370050956452 0.023534937558690967319 0.12792985530665570981 -0.1225751106559319209 -0.050872864801586502315 0.045744116994099449924 -0.74210899423965070998 0.31569088949418228074 0.14954326060898887052 -1.1158585392656139579 -0.68839911072054227326 -0.47917414870450519837 0.09663041001622785231 0.62017706408825079567];

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
