////////////////////////////////////////////////////////////////////////////
// Author       : Prajyot 
// Coursework   : ECE 751
// Module       : adder_tree
// Description  : Adder tree logic, which takes in the tlut prodict matrix
//                and add relevant indexes to provide the matrix
//                multiplication results. Generated using gen.cpp file
////////////////////////////////////////////////////////////////////////////

`include "DEF.sv"
module adder_tree(
    input  logic clk,
    input  logic rst_n,
    input  logic [`DIM_ROW2 * `DIM_COL2 -1:0][`DIM_ROW1 * `DIM_COL1 -1:0][`ACC_WIDTH-1:0]prod,
    output logic [`DIM_ROW1 * `DIM_COL2 -1:0][`ACC_WIDTH-1:0]mult
    //TODO: Update the DIM of the output
    //for now, it is = DIM_A
    //Aish: Changed DIM_A = DIM_ROW1 * DIM_COL1
    //Aish: Changed DIM_C = DIM_ROW2 * DIM_COL2
    //Aish: Changed DIM_MULT = DIM_ROW1 * DIM_COL2
);
    logic [`DIM_ROW1 * `DIM_COL2 -1:0][`ACC_WIDTH-1:0] mul_temp;

    always_ff @(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
            mul_temp <= 0;
        else
        begin
        // Below code generated using ./_gen_add_logic <array dim> 
mul_temp[0] = prod[0][0] + prod[1][1] + prod[2][2] + prod[3][3] + prod[4][4] + prod[5][5] + prod[6][6] + prod[7][7] + prod[8][8] + prod[9][9] + prod[10][10] + prod[11][11] + prod[12][12] + prod[13][13] + prod[14][14] + prod[15][15] + prod[16][16] + prod[17][17] + prod[18][18] + prod[19][19] + prod[20][20] + prod[21][21] + prod[22][22] + prod[23][23] + prod[24][24] + prod[25][25] + prod[26][26] + prod[27][27] + prod[28][28] + prod[29][29] + prod[30][30] + prod[31][31] + prod[32][32] + prod[33][33] + prod[34][34] + prod[35][35] + prod[36][36] + prod[37][37] + prod[38][38] + prod[39][39] + prod[40][40] + prod[41][41] + prod[42][42] + prod[43][43] + prod[44][44] + prod[45][45] + prod[46][46] + prod[47][47] + prod[48][48] + prod[49][49] + prod[50][50] + prod[51][51] + prod[52][52] + prod[53][53] + prod[54][54] + prod[55][55] + prod[56][56] + prod[57][57] + prod[58][58] + prod[59][59] + prod[60][60] + prod[61][61] + prod[62][62] + prod[63][63] + prod[64][64] + prod[65][65] + prod[66][66] + prod[67][67] + prod[68][68] + prod[69][69] + prod[70][70] + prod[71][71] + prod[72][72] + prod[73][73] + prod[74][74] + prod[75][75] + prod[76][76] + prod[77][77] + prod[78][78] + prod[79][79] + prod[80][80] + prod[81][81] + prod[82][82] + prod[83][83] + prod[84][84] + prod[85][85] + prod[86][86] + prod[87][87] + prod[88][88] + prod[89][89] + prod[90][90] + prod[91][91] + prod[92][92] + prod[93][93] + prod[94][94] + prod[95][95] + prod[96][96] + prod[97][97] + prod[98][98] + prod[99][99] + prod[100][100] + prod[101][101] + prod[102][102] + prod[103][103] + prod[104][104] + prod[105][105] + prod[106][106] + prod[107][107] + prod[108][108] + prod[109][109] + prod[110][110] + prod[111][111] + prod[112][112] + prod[113][113] + prod[114][114] + prod[115][115] + prod[116][116] + prod[117][117] + prod[118][118] + prod[119][119] + prod[120][120] + prod[121][121] + prod[122][122] + prod[123][123] + prod[124][124] + prod[125][125] + prod[126][126] + prod[127][127] + prod[128][128] + prod[129][129] + prod[130][130] + prod[131][131] + prod[132][132] + prod[133][133] + prod[134][134] + prod[135][135] + prod[136][136] + prod[137][137] + prod[138][138] + prod[139][139] + prod[140][140] + prod[141][141] + prod[142][142] + prod[143][143] + prod[144][144] + prod[145][145] + prod[146][146] + prod[147][147] + prod[148][148] + prod[149][149] + prod[150][150] + prod[151][151] + prod[152][152] + prod[153][153] + prod[154][154] + prod[155][155] + prod[156][156] + prod[157][157] + prod[158][158] + prod[159][159] + prod[160][160] + prod[161][161] + prod[162][162] + prod[163][163] + prod[164][164] + prod[165][165] + prod[166][166] + prod[167][167] + prod[168][168] + prod[169][169] + prod[170][170] + prod[171][171] + prod[172][172] + prod[173][173] + prod[174][174] + prod[175][175] + prod[176][176] + prod[177][177] + prod[178][178] + prod[179][179] + prod[180][180] + prod[181][181] + prod[182][182] + prod[183][183] + prod[184][184] + prod[185][185] + prod[186][186] + prod[187][187] + prod[188][188] + prod[189][189] + prod[190][190] + prod[191][191] + prod[192][192] + prod[193][193] + prod[194][194] + prod[195][195] + prod[196][196] + prod[197][197] + prod[198][198] + prod[199][199] + prod[200][200] + prod[201][201] + prod[202][202] + prod[203][203] + prod[204][204] + prod[205][205] + prod[206][206] + prod[207][207] + prod[208][208] + prod[209][209] + prod[210][210] + prod[211][211] + prod[212][212] + prod[213][213] + prod[214][214] + prod[215][215] + prod[216][216] + prod[217][217] + prod[218][218] + prod[219][219] + prod[220][220] + prod[221][221] + prod[222][222] + prod[223][223] + prod[224][224] + prod[225][225] + prod[226][226] + prod[227][227] + prod[228][228] + prod[229][229] + prod[230][230] + prod[231][231] + prod[232][232] + prod[233][233] + prod[234][234] + prod[235][235] + prod[236][236] + prod[237][237] + prod[238][238] + prod[239][239] + prod[240][240] + prod[241][241] + prod[242][242] + prod[243][243] + prod[244][244] + prod[245][245] + prod[246][246] + prod[247][247] + prod[248][248] + prod[249][249] + prod[250][250] + prod[251][251] + prod[252][252] + prod[253][253] + prod[254][254] + prod[255][255] + prod[256][256] + prod[257][257] + prod[258][258] + prod[259][259] + prod[260][260] + prod[261][261] + prod[262][262] + prod[263][263] + prod[264][264] + prod[265][265] + prod[266][266] + prod[267][267] + prod[268][268] + prod[269][269] + prod[270][270] + prod[271][271] + prod[272][272] + prod[273][273] + prod[274][274] + prod[275][275] + prod[276][276] + prod[277][277] + prod[278][278] + prod[279][279] + prod[280][280] + prod[281][281] + prod[282][282] + prod[283][283] + prod[284][284] + prod[285][285] + prod[286][286] + prod[287][287] + prod[288][288] + prod[289][289] + prod[290][290] + prod[291][291] + prod[292][292] + prod[293][293] + prod[294][294] + prod[295][295] + prod[296][296] + prod[297][297] + prod[298][298] + prod[299][299] + prod[300][300] + prod[301][301] + prod[302][302] + prod[303][303] + prod[304][304] + prod[305][305] + prod[306][306] + prod[307][307] + prod[308][308] + prod[309][309] + prod[310][310] + prod[311][311] + prod[312][312] + prod[313][313] + prod[314][314] + prod[315][315] + prod[316][316] + prod[317][317] + prod[318][318] + prod[319][319] + prod[320][320] + prod[321][321] + prod[322][322] + prod[323][323] + prod[324][324] + prod[325][325] + prod[326][326] + prod[327][327] + prod[328][328] + prod[329][329] + prod[330][330] + prod[331][331] + prod[332][332] + prod[333][333] + prod[334][334] + prod[335][335] + prod[336][336] + prod[337][337] + prod[338][338] + prod[339][339] + prod[340][340] + prod[341][341] + prod[342][342] + prod[343][343] + prod[344][344] + prod[345][345] + prod[346][346] + prod[347][347] + prod[348][348] + prod[349][349] + prod[350][350] + prod[351][351] + prod[352][352] + prod[353][353] + prod[354][354] + prod[355][355] + prod[356][356] + prod[357][357] + prod[358][358] + prod[359][359] + prod[360][360] + prod[361][361] + prod[362][362] + prod[363][363] + prod[364][364] + prod[365][365] + prod[366][366] + prod[367][367] + prod[368][368] + prod[369][369] + prod[370][370] + prod[371][371] + prod[372][372] + prod[373][373] + prod[374][374] + prod[375][375] + prod[376][376] + prod[377][377] + prod[378][378] + prod[379][379] + prod[380][380] + prod[381][381] + prod[382][382] + prod[383][383] + prod[384][384] + prod[385][385] + prod[386][386] + prod[387][387] + prod[388][388] + prod[389][389] + prod[390][390] + prod[391][391] + prod[392][392] + prod[393][393] + prod[394][394] + prod[395][395] + prod[396][396] + prod[397][397] + prod[398][398] + prod[399][399] + prod[400][400] + prod[401][401] + prod[402][402] + prod[403][403] + prod[404][404] + prod[405][405] + prod[406][406] + prod[407][407] + prod[408][408] + prod[409][409] + prod[410][410] + prod[411][411] + prod[412][412] + prod[413][413] + prod[414][414] + prod[415][415] + prod[416][416] + prod[417][417] + prod[418][418] + prod[419][419] + prod[420][420] + prod[421][421] + prod[422][422] + prod[423][423] + prod[424][424] + prod[425][425] + prod[426][426] + prod[427][427] + prod[428][428] + prod[429][429] + prod[430][430] + prod[431][431] + prod[432][432] + prod[433][433] + prod[434][434] + prod[435][435] + prod[436][436] + prod[437][437] + prod[438][438] + prod[439][439] + prod[440][440] + prod[441][441] + prod[442][442] + prod[443][443] + prod[444][444] + prod[445][445] + prod[446][446] + prod[447][447] + prod[448][448] + prod[449][449] + prod[450][450] + prod[451][451] + prod[452][452] + prod[453][453] + prod[454][454] + prod[455][455] + prod[456][456] + prod[457][457] + prod[458][458] + prod[459][459] + prod[460][460] + prod[461][461] + prod[462][462] + prod[463][463] + prod[464][464] + prod[465][465] + prod[466][466] + prod[467][467] + prod[468][468] + prod[469][469] + prod[470][470] + prod[471][471] + prod[472][472] + prod[473][473] + prod[474][474] + prod[475][475] + prod[476][476] + prod[477][477] + prod[478][478] + prod[479][479] + prod[480][480] + prod[481][481] + prod[482][482] + prod[483][483] + prod[484][484] + prod[485][485] + prod[486][486] + prod[487][487] + prod[488][488] + prod[489][489] + prod[490][490] + prod[491][491] + prod[492][492] + prod[493][493] + prod[494][494] + prod[495][495] + prod[496][496] + prod[497][497] + prod[498][498] + prod[499][499] + prod[500][500] + prod[501][501] + prod[502][502] + prod[503][503] + prod[504][504] + prod[505][505] + prod[506][506] + prod[507][507] + prod[508][508] + prod[509][509] + prod[510][510] + prod[511][511] + prod[512][512] + prod[513][513] + prod[514][514] + prod[515][515] + prod[516][516] + prod[517][517] + prod[518][518] + prod[519][519] + prod[520][520] + prod[521][521] + prod[522][522] + prod[523][523] + prod[524][524] + prod[525][525] + prod[526][526] + prod[527][527] + prod[528][528] + prod[529][529] + prod[530][530] + prod[531][531] + prod[532][532] + prod[533][533] + prod[534][534] + prod[535][535] + prod[536][536] + prod[537][537] + prod[538][538] + prod[539][539] + prod[540][540] + prod[541][541] + prod[542][542] + prod[543][543] + prod[544][544] + prod[545][545] + prod[546][546] + prod[547][547] + prod[548][548] + prod[549][549] + prod[550][550] + prod[551][551] + prod[552][552] + prod[553][553] + prod[554][554] + prod[555][555] + prod[556][556] + prod[557][557] + prod[558][558] + prod[559][559] + prod[560][560] + prod[561][561] + prod[562][562] + prod[563][563] + prod[564][564] + prod[565][565] + prod[566][566] + prod[567][567] + prod[568][568] + prod[569][569] + prod[570][570] + prod[571][571] + prod[572][572] + prod[573][573] + prod[574][574] + prod[575][575] + prod[576][576] + prod[577][577] + prod[578][578] + prod[579][579] + prod[580][580] + prod[581][581] + prod[582][582] + prod[583][583] + prod[584][584] + prod[585][585] + prod[586][586] + prod[587][587] + prod[588][588] + prod[589][589] + prod[590][590] + prod[591][591] + prod[592][592] + prod[593][593] + prod[594][594] + prod[595][595] + prod[596][596] + prod[597][597] + prod[598][598] + prod[599][599] + prod[600][600] + prod[601][601] + prod[602][602] + prod[603][603] + prod[604][604] + prod[605][605] + prod[606][606] + prod[607][607] + prod[608][608] + prod[609][609] + prod[610][610] + prod[611][611] + prod[612][612] + prod[613][613] + prod[614][614] + prod[615][615] + prod[616][616] + prod[617][617] + prod[618][618] + prod[619][619] + prod[620][620] + prod[621][621] + prod[622][622] + prod[623][623] + prod[624][624] + prod[625][625] + prod[626][626] + prod[627][627] + prod[628][628] + prod[629][629] + prod[630][630] + prod[631][631] + prod[632][632] + prod[633][633] + prod[634][634] + prod[635][635] + prod[636][636] + prod[637][637] + prod[638][638] + prod[639][639] + prod[640][640] + prod[641][641] + prod[642][642] + prod[643][643] + prod[644][644] + prod[645][645] + prod[646][646] + prod[647][647] + prod[648][648] + prod[649][649] + prod[650][650] + prod[651][651] + prod[652][652] + prod[653][653] + prod[654][654] + prod[655][655] + prod[656][656] + prod[657][657] + prod[658][658] + prod[659][659] + prod[660][660] + prod[661][661] + prod[662][662] + prod[663][663] + prod[664][664] + prod[665][665] + prod[666][666] + prod[667][667] + prod[668][668] + prod[669][669] + prod[670][670] + prod[671][671] + prod[672][672] + prod[673][673] + prod[674][674] + prod[675][675] + prod[676][676] + prod[677][677] + prod[678][678] + prod[679][679] + prod[680][680] + prod[681][681] + prod[682][682] + prod[683][683] + prod[684][684] + prod[685][685] + prod[686][686] + prod[687][687] + prod[688][688] + prod[689][689] + prod[690][690] + prod[691][691] + prod[692][692] + prod[693][693] + prod[694][694] + prod[695][695] + prod[696][696] + prod[697][697] + prod[698][698] + prod[699][699] + prod[700][700] + prod[701][701] + prod[702][702] + prod[703][703] + prod[704][704] + prod[705][705] + prod[706][706] + prod[707][707] + prod[708][708] + prod[709][709] + prod[710][710] + prod[711][711] + prod[712][712] + prod[713][713] + prod[714][714] + prod[715][715] + prod[716][716] + prod[717][717] + prod[718][718] + prod[719][719] + prod[720][720] + prod[721][721] + prod[722][722] + prod[723][723] + prod[724][724] + prod[725][725] + prod[726][726] + prod[727][727] + prod[728][728] + prod[729][729] + prod[730][730] + prod[731][731] + prod[732][732] + prod[733][733] + prod[734][734] + prod[735][735] + prod[736][736] + prod[737][737] + prod[738][738] + prod[739][739] + prod[740][740] + prod[741][741] + prod[742][742] + prod[743][743] + prod[744][744] + prod[745][745] + prod[746][746] + prod[747][747] + prod[748][748] + prod[749][749] + prod[750][750] + prod[751][751] + prod[752][752] + prod[753][753] + prod[754][754] + prod[755][755] + prod[756][756] + prod[757][757] + prod[758][758] + prod[759][759] + prod[760][760] + prod[761][761] + prod[762][762] + prod[763][763] + prod[764][764] + prod[765][765] + prod[766][766] + prod[767][767] + prod[768][768] + prod[769][769] + prod[770][770] + prod[771][771] + prod[772][772] + prod[773][773] + prod[774][774] + prod[775][775] + prod[776][776] + prod[777][777] + prod[778][778] + prod[779][779] + prod[780][780] + prod[781][781] + prod[782][782] + prod[783][783];
        end
    end
    
    always_comb begin
        mult <= mul_temp;
    end

endmodule
