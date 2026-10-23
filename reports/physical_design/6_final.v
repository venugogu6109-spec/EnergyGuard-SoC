module energyguard_top (clk,
    fault_active,
    over_current,
    over_power,
    over_voltage,
    rst,
    trip,
    under_voltage,
    warning,
    current_in,
    current_max_cfg,
    current_sample,
    energy_out,
    power_max_cfg,
    power_out,
    protection_state,
    voltage_in,
    voltage_max_cfg,
    voltage_min_cfg,
    voltage_sample);
 input clk;
 output fault_active;
 output over_current;
 output over_power;
 output over_voltage;
 input rst;
 output trip;
 output under_voltage;
 output warning;
 input [11:0] current_in;
 input [11:0] current_max_cfg;
 output [11:0] current_sample;
 output [31:0] energy_out;
 input [23:0] power_max_cfg;
 output [23:0] power_out;
 output [1:0] protection_state;
 input [11:0] voltage_in;
 input [11:0] voltage_max_cfg;
 input [11:0] voltage_min_cfg;
 output [11:0] voltage_sample;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0588_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0622_;
 wire _0623_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0641_;
 wire _0642_;
 wire _0643_;
 wire _0644_;
 wire _0645_;
 wire _0646_;
 wire _0647_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0652_;
 wire _0653_;
 wire _0656_;
 wire _0657_;
 wire _0658_;
 wire _0660_;
 wire _0661_;
 wire _0662_;
 wire _0663_;
 wire _0664_;
 wire _0665_;
 wire _0666_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0670_;
 wire _0671_;
 wire _0672_;
 wire _0673_;
 wire _0674_;
 wire _0675_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0680_;
 wire _0681_;
 wire _0682_;
 wire _0683_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire _0692_;
 wire _0693_;
 wire _0694_;
 wire _0697_;
 wire _0698_;
 wire _0699_;
 wire _0700_;
 wire _0701_;
 wire _0702_;
 wire _0703_;
 wire _0704_;
 wire _0705_;
 wire _0706_;
 wire _0707_;
 wire _0708_;
 wire _0709_;
 wire _0710_;
 wire _0711_;
 wire _0712_;
 wire _0713_;
 wire _0714_;
 wire _0715_;
 wire _0716_;
 wire _0717_;
 wire _0718_;
 wire _0719_;
 wire _0720_;
 wire _0721_;
 wire _0722_;
 wire _0723_;
 wire _0724_;
 wire _0725_;
 wire _0726_;
 wire _0727_;
 wire _0728_;
 wire _0729_;
 wire _0730_;
 wire _0731_;
 wire _0732_;
 wire _0733_;
 wire _0734_;
 wire _0735_;
 wire _0736_;
 wire _0737_;
 wire _0738_;
 wire _0739_;
 wire _0740_;
 wire _0741_;
 wire _0742_;
 wire _0743_;
 wire _0744_;
 wire _0745_;
 wire _0746_;
 wire _0747_;
 wire _0748_;
 wire _0749_;
 wire _0750_;
 wire _0751_;
 wire _0752_;
 wire _0753_;
 wire _0754_;
 wire _0755_;
 wire _0756_;
 wire _0757_;
 wire _0758_;
 wire _0759_;
 wire _0760_;
 wire _0761_;
 wire _0762_;
 wire _0763_;
 wire _0764_;
 wire _0765_;
 wire _0766_;
 wire _0767_;
 wire _0768_;
 wire _0769_;
 wire _0770_;
 wire _0771_;
 wire _0772_;
 wire _0773_;
 wire _0774_;
 wire _0775_;
 wire _0776_;
 wire _0777_;
 wire _0778_;
 wire _0779_;
 wire _0780_;
 wire _0781_;
 wire _0782_;
 wire _0783_;
 wire _0784_;
 wire _0785_;
 wire _0786_;
 wire _0787_;
 wire _0788_;
 wire _0789_;
 wire _0790_;
 wire _0791_;
 wire _0792_;
 wire _0793_;
 wire _0794_;
 wire _0795_;
 wire _0796_;
 wire _0797_;
 wire _0798_;
 wire _0799_;
 wire _0800_;
 wire _0801_;
 wire _0802_;
 wire _0803_;
 wire _0804_;
 wire _0805_;
 wire _0806_;
 wire _0807_;
 wire _0808_;
 wire _0809_;
 wire _0810_;
 wire _0811_;
 wire _0812_;
 wire _0813_;
 wire _0814_;
 wire _0815_;
 wire _0816_;
 wire _0817_;
 wire _0818_;
 wire _0819_;
 wire _0820_;
 wire _0821_;
 wire _0822_;
 wire _0823_;
 wire _0824_;
 wire _0825_;
 wire _0826_;
 wire _0827_;
 wire _0828_;
 wire _0829_;
 wire _0830_;
 wire _0831_;
 wire _0832_;
 wire _0833_;
 wire _0834_;
 wire _0835_;
 wire _0836_;
 wire _0837_;
 wire _0838_;
 wire _0844_;
 wire _0845_;
 wire _0846_;
 wire _0847_;
 wire _0848_;
 wire _0849_;
 wire _0850_;
 wire _0851_;
 wire _0852_;
 wire _0853_;
 wire _0854_;
 wire _0855_;
 wire _0856_;
 wire _0857_;
 wire _0858_;
 wire _0859_;
 wire _0860_;
 wire _0861_;
 wire _0862_;
 wire _0863_;
 wire _0864_;
 wire _0865_;
 wire _0866_;
 wire _0867_;
 wire _0868_;
 wire _0869_;
 wire _0870_;
 wire _0871_;
 wire _0872_;
 wire _0873_;
 wire _0874_;
 wire _0875_;
 wire _0876_;
 wire _0877_;
 wire _0878_;
 wire _0879_;
 wire _0880_;
 wire _0881_;
 wire _0882_;
 wire _0883_;
 wire _0884_;
 wire _0885_;
 wire _0886_;
 wire _0887_;
 wire _0888_;
 wire _0889_;
 wire _0890_;
 wire _0891_;
 wire _0892_;
 wire _0893_;
 wire _0894_;
 wire _0895_;
 wire _0896_;
 wire _0897_;
 wire _0898_;
 wire _0899_;
 wire _0900_;
 wire _0901_;
 wire _0902_;
 wire _0903_;
 wire _0904_;
 wire _0905_;
 wire _0906_;
 wire _0907_;
 wire _0908_;
 wire _0909_;
 wire _0910_;
 wire _0911_;
 wire _0912_;
 wire _0913_;
 wire _0914_;
 wire _0915_;
 wire _0916_;
 wire _0917_;
 wire _0918_;
 wire _0919_;
 wire _0920_;
 wire _0921_;
 wire _0922_;
 wire _0923_;
 wire _0924_;
 wire _0925_;
 wire _0926_;
 wire _0927_;
 wire _0928_;
 wire _0929_;
 wire _0930_;
 wire _0931_;
 wire _0932_;
 wire _0933_;
 wire _0934_;
 wire _0935_;
 wire _0936_;
 wire _0937_;
 wire _0938_;
 wire _0939_;
 wire _0940_;
 wire _0941_;
 wire _0972_;
 wire _0973_;
 wire _0974_;
 wire _0975_;
 wire _0976_;
 wire _0977_;
 wire _0978_;
 wire _0979_;
 wire _0980_;
 wire _0981_;
 wire _0982_;
 wire _0983_;
 wire _0984_;
 wire _0985_;
 wire _0986_;
 wire _0987_;
 wire _0988_;
 wire _0989_;
 wire _0990_;
 wire _0991_;
 wire _0992_;
 wire _0993_;
 wire _0994_;
 wire _0995_;
 wire _0996_;
 wire _0997_;
 wire _0998_;
 wire _0999_;
 wire _1000_;
 wire _1001_;
 wire _1002_;
 wire _1003_;
 wire _1004_;
 wire _1005_;
 wire _1006_;
 wire _1007_;
 wire _1008_;
 wire _1009_;
 wire _1010_;
 wire _1011_;
 wire _1012_;
 wire _1013_;
 wire _1014_;
 wire _1015_;
 wire _1016_;
 wire _1017_;
 wire _1018_;
 wire _1019_;
 wire _1020_;
 wire _1021_;
 wire _1022_;
 wire _1023_;
 wire _1024_;
 wire _1025_;
 wire _1026_;
 wire _1027_;
 wire _1028_;
 wire _1029_;
 wire _1030_;
 wire _1031_;
 wire _1032_;
 wire _1033_;
 wire _1034_;
 wire _1035_;
 wire _1036_;
 wire _1037_;
 wire _1038_;
 wire _1039_;
 wire _1040_;
 wire _1041_;
 wire _1042_;
 wire _1043_;
 wire _1044_;
 wire _1045_;
 wire _1046_;
 wire _1047_;
 wire _1048_;
 wire _1049_;
 wire _1050_;
 wire _1051_;
 wire _1052_;
 wire _1053_;
 wire _1054_;
 wire _1055_;
 wire _1056_;
 wire _1057_;
 wire _1058_;
 wire _1059_;
 wire _1060_;
 wire _1061_;
 wire _1062_;
 wire _1063_;
 wire _1064_;
 wire _1065_;
 wire _1066_;
 wire _1067_;
 wire _1068_;
 wire _1069_;
 wire _1070_;
 wire _1071_;
 wire _1072_;
 wire _1073_;
 wire _1074_;
 wire _1075_;
 wire _1076_;
 wire _1077_;
 wire _1078_;
 wire _1079_;
 wire _1080_;
 wire _1081_;
 wire _1082_;
 wire _1083_;
 wire _1084_;
 wire _1085_;
 wire _1086_;
 wire _1087_;
 wire _1088_;
 wire _1089_;
 wire _1090_;
 wire _1091_;
 wire _1092_;
 wire _1093_;
 wire _1094_;
 wire _1095_;
 wire _1096_;
 wire _1097_;
 wire _1098_;
 wire _1099_;
 wire _1100_;
 wire _1101_;
 wire _1102_;
 wire _1103_;
 wire _1104_;
 wire _1105_;
 wire _1106_;
 wire _1107_;
 wire _1108_;
 wire _1109_;
 wire _1110_;
 wire _1111_;
 wire _1112_;
 wire _1113_;
 wire _1114_;
 wire _1115_;
 wire _1116_;
 wire _1117_;
 wire _1118_;
 wire _1119_;
 wire _1120_;
 wire _1121_;
 wire _1122_;
 wire _1123_;
 wire _1124_;
 wire _1125_;
 wire _1126_;
 wire _1127_;
 wire _1128_;
 wire _1129_;
 wire _1130_;
 wire _1131_;
 wire _1132_;
 wire _1133_;
 wire _1134_;
 wire _1135_;
 wire _1136_;
 wire _1137_;
 wire _1138_;
 wire _1139_;
 wire _1140_;
 wire _1141_;
 wire _1142_;
 wire _1143_;
 wire _1144_;
 wire _1145_;
 wire _1146_;
 wire _1147_;
 wire _1148_;
 wire _1149_;
 wire _1150_;
 wire _1151_;
 wire _1152_;
 wire _1153_;
 wire _1154_;
 wire _1155_;
 wire _1156_;
 wire _1157_;
 wire _1158_;
 wire _1159_;
 wire _1160_;
 wire _1161_;
 wire _1162_;
 wire _1163_;
 wire _1164_;
 wire _1165_;
 wire _1166_;
 wire _1167_;
 wire _1168_;
 wire _1169_;
 wire _1170_;
 wire _1171_;
 wire _1172_;
 wire _1173_;
 wire _1174_;
 wire _1175_;
 wire _1176_;
 wire _1177_;
 wire _1178_;
 wire _1179_;
 wire _1180_;
 wire _1181_;
 wire _1182_;
 wire _1183_;
 wire _1184_;
 wire _1185_;
 wire _1186_;
 wire _1187_;
 wire _1188_;
 wire _1189_;
 wire _1190_;
 wire _1191_;
 wire _1192_;
 wire _1193_;
 wire _1194_;
 wire _1195_;
 wire _1196_;
 wire _1197_;
 wire _1198_;
 wire _1199_;
 wire _1200_;
 wire _1201_;
 wire _1202_;
 wire _1203_;
 wire _1204_;
 wire _1205_;
 wire _1206_;
 wire _1207_;
 wire _1208_;
 wire _1209_;
 wire _1210_;
 wire _1211_;
 wire _1212_;
 wire _1213_;
 wire _1214_;
 wire _1215_;
 wire _1216_;
 wire _1217_;
 wire _1218_;
 wire _1219_;
 wire _1220_;
 wire _1221_;
 wire _1222_;
 wire _1223_;
 wire _1224_;
 wire _1225_;
 wire _1226_;
 wire _1227_;
 wire _1228_;
 wire _1229_;
 wire _1230_;
 wire _1231_;
 wire _1232_;
 wire _1233_;
 wire _1234_;
 wire _1235_;
 wire _1236_;
 wire _1237_;
 wire _1238_;
 wire _1239_;
 wire _1240_;
 wire _1241_;
 wire _1242_;
 wire _1243_;
 wire _1244_;
 wire _1245_;
 wire _1246_;
 wire _1247_;
 wire _1248_;
 wire _1249_;
 wire _1250_;
 wire _1251_;
 wire _1252_;
 wire _1253_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire \current_max[0] ;
 wire \current_max[10] ;
 wire \current_max[11] ;
 wire \current_max[1] ;
 wire \current_max[2] ;
 wire \current_max[3] ;
 wire \current_max[4] ;
 wire \current_max[5] ;
 wire \current_max[6] ;
 wire \current_max[7] ;
 wire \current_max[8] ;
 wire \current_max[9] ;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net120;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net130;
 wire net131;
 wire net132;
 wire net133;
 wire \power_max[0] ;
 wire \power_max[10] ;
 wire \power_max[11] ;
 wire \power_max[12] ;
 wire \power_max[13] ;
 wire \power_max[14] ;
 wire \power_max[15] ;
 wire \power_max[16] ;
 wire \power_max[17] ;
 wire \power_max[18] ;
 wire \power_max[19] ;
 wire \power_max[1] ;
 wire \power_max[20] ;
 wire \power_max[21] ;
 wire \power_max[22] ;
 wire \power_max[23] ;
 wire \power_max[2] ;
 wire \power_max[3] ;
 wire \power_max[4] ;
 wire \power_max[5] ;
 wire \power_max[6] ;
 wire \power_max[7] ;
 wire \power_max[8] ;
 wire \power_max[9] ;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net134;
 wire net135;
 wire net136;
 wire net137;
 wire net138;
 wire net139;
 wire net140;
 wire net141;
 wire net142;
 wire net143;
 wire net144;
 wire net145;
 wire net146;
 wire net147;
 wire net148;
 wire net149;
 wire net150;
 wire net151;
 wire net152;
 wire net153;
 wire net154;
 wire net155;
 wire net156;
 wire net157;
 wire net158;
 wire net159;
 wire net49;
 wire net160;
 wire \u_fault_detector.voltage_max[0] ;
 wire \u_fault_detector.voltage_max[10] ;
 wire \u_fault_detector.voltage_max[11] ;
 wire \u_fault_detector.voltage_max[1] ;
 wire \u_fault_detector.voltage_max[2] ;
 wire \u_fault_detector.voltage_max[3] ;
 wire \u_fault_detector.voltage_max[4] ;
 wire \u_fault_detector.voltage_max[5] ;
 wire \u_fault_detector.voltage_max[6] ;
 wire \u_fault_detector.voltage_max[7] ;
 wire \u_fault_detector.voltage_max[8] ;
 wire \u_fault_detector.voltage_max[9] ;
 wire \u_fault_detector.voltage_min[0] ;
 wire \u_fault_detector.voltage_min[10] ;
 wire \u_fault_detector.voltage_min[11] ;
 wire \u_fault_detector.voltage_min[1] ;
 wire \u_fault_detector.voltage_min[2] ;
 wire \u_fault_detector.voltage_min[3] ;
 wire \u_fault_detector.voltage_min[4] ;
 wire \u_fault_detector.voltage_min[5] ;
 wire \u_fault_detector.voltage_min[6] ;
 wire \u_fault_detector.voltage_min[7] ;
 wire \u_fault_detector.voltage_min[8] ;
 wire \u_fault_detector.voltage_min[9] ;
 wire net161;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net162;
 wire net163;
 wire net164;
 wire net165;
 wire net166;
 wire net167;
 wire net168;
 wire net169;
 wire net170;
 wire net171;
 wire net172;
 wire net173;
 wire net174;
 wire net183;
 wire net181;
 wire net182;
 wire clknet_4_1_0_clk;
 wire clknet_4_0_0_clk;
 wire clknet_0_clk;
 wire clknet_4_2_0_clk;
 wire clknet_4_3_0_clk;
 wire clknet_4_4_0_clk;
 wire clknet_4_5_0_clk;
 wire clknet_4_6_0_clk;
 wire clknet_4_7_0_clk;
 wire clknet_4_8_0_clk;
 wire clknet_4_9_0_clk;
 wire clknet_4_10_0_clk;
 wire clknet_4_11_0_clk;
 wire clknet_4_12_0_clk;
 wire clknet_4_13_0_clk;
 wire clknet_4_14_0_clk;
 wire clknet_4_15_0_clk;

 sky130_fd_sc_hd__inv_1 _1254_ (.A(\u_fault_detector.voltage_max[8] ),
    .Y(_0226_));
 sky130_fd_sc_hd__inv_1 _1255_ (.A(\power_max[19] ),
    .Y(_0379_));
 sky130_fd_sc_hd__inv_1 _1256_ (.A(\power_max[7] ),
    .Y(_0376_));
 sky130_fd_sc_hd__inv_1 _1257_ (.A(\power_max[22] ),
    .Y(_0373_));
 sky130_fd_sc_hd__inv_1 _1258_ (.A(\power_max[4] ),
    .Y(_0370_));
 sky130_fd_sc_hd__inv_1 _1259_ (.A(\power_max[6] ),
    .Y(_0400_));
 sky130_fd_sc_hd__inv_1 _1260_ (.A(\u_fault_detector.voltage_min[9] ),
    .Y(_0201_));
 sky130_fd_sc_hd__inv_1 _1261_ (.A(\power_max[23] ),
    .Y(_0406_));
 sky130_fd_sc_hd__inv_1 _1262_ (.A(\u_fault_detector.voltage_max[11] ),
    .Y(_0403_));
 sky130_fd_sc_hd__inv_1 _1263_ (.A(\u_fault_detector.voltage_max[1] ),
    .Y(_0315_));
 sky130_fd_sc_hd__inv_1 _1264_ (.A(net134),
    .Y(_0354_));
 sky130_fd_sc_hd__inv_1 _1265_ (.A(\current_max[7] ),
    .Y(_0193_));
 sky130_fd_sc_hd__inv_1 _1266_ (.A(\u_fault_detector.voltage_max[4] ),
    .Y(_0274_));
 sky130_fd_sc_hd__inv_1 _1267_ (.A(\power_max[18] ),
    .Y(_0391_));
 sky130_fd_sc_hd__inv_1 _1268_ (.A(\power_max[3] ),
    .Y(_0135_));
 sky130_fd_sc_hd__inv_1 _1269_ (.A(\power_max[9] ),
    .Y(_0397_));
 sky130_fd_sc_hd__inv_1 _1270_ (.A(\power_max[13] ),
    .Y(_0367_));
 sky130_fd_sc_hd__inv_1 _1271_ (.A(\power_max[5] ),
    .Y(_0360_));
 sky130_fd_sc_hd__inv_1 _1272_ (.A(\power_max[1] ),
    .Y(_0152_));
 sky130_fd_sc_hd__inv_1 _1273_ (.A(\u_fault_detector.voltage_min[3] ),
    .Y(_0179_));
 sky130_fd_sc_hd__inv_1 _1274_ (.A(\current_max[11] ),
    .Y(_0411_));
 sky130_fd_sc_hd__inv_1 _1275_ (.A(\power_max[8] ),
    .Y(_0394_));
 sky130_fd_sc_hd__inv_1 _1276_ (.A(net162),
    .Y(_0229_));
 sky130_fd_sc_hd__inv_1 _1277_ (.A(\current_max[2] ),
    .Y(_0320_));
 sky130_fd_sc_hd__inv_1 _1278_ (.A(\u_fault_detector.voltage_max[5] ),
    .Y(_0277_));
 sky130_fd_sc_hd__inv_1 _1279_ (.A(\u_fault_detector.voltage_min[1] ),
    .Y(_0382_));
 sky130_fd_sc_hd__inv_1 _1280_ (.A(\current_max[6] ),
    .Y(_0157_));
 sky130_fd_sc_hd__inv_1 _1281_ (.A(\power_max[16] ),
    .Y(_0347_));
 sky130_fd_sc_hd__inv_1 _1282_ (.A(\current_max[10] ),
    .Y(_0253_));
 sky130_fd_sc_hd__inv_1 _1283_ (.A(\power_max[2] ),
    .Y(_0138_));
 sky130_fd_sc_hd__inv_1 _1284_ (.A(\u_fault_detector.voltage_min[4] ),
    .Y(_0166_));
 sky130_fd_sc_hd__inv_1 _1285_ (.A(\current_max[9] ),
    .Y(_0163_));
 sky130_fd_sc_hd__inv_1 _1286_ (.A(\u_fault_detector.voltage_min[11] ),
    .Y(_0414_));
 sky130_fd_sc_hd__inv_1 _1287_ (.A(\u_fault_detector.voltage_max[9] ),
    .Y(_0211_));
 sky130_fd_sc_hd__and2_1 _1289_ (.A(net164),
    .B(net86),
    .X(_0040_));
 sky130_fd_sc_hd__and2_1 _1291_ (.A(net86),
    .B(net163),
    .X(_0043_));
 sky130_fd_sc_hd__and2_1 _1292_ (.A(net86),
    .B(net173),
    .X(_0046_));
 sky130_fd_sc_hd__and2_1 _1293_ (.A(net86),
    .B(net172),
    .X(_0049_));
 sky130_fd_sc_hd__and2_1 _1294_ (.A(net86),
    .B(net171),
    .X(_0052_));
 sky130_fd_sc_hd__and2_1 _1295_ (.A(net86),
    .B(net170),
    .X(_0055_));
 sky130_fd_sc_hd__and2_1 _1296_ (.A(net86),
    .B(net169),
    .X(_0058_));
 sky130_fd_sc_hd__and2_1 _1297_ (.A(net86),
    .B(net168),
    .X(_0061_));
 sky130_fd_sc_hd__and2_1 _1298_ (.A(net86),
    .B(net167),
    .X(_0064_));
 sky130_fd_sc_hd__and2_1 _1299_ (.A(net86),
    .B(net166),
    .X(_0067_));
 sky130_fd_sc_hd__and2_1 _1300_ (.A(net86),
    .B(net165),
    .X(_0223_));
 sky130_fd_sc_hd__inv_1 _1301_ (.A(\u_fault_detector.voltage_min[5] ),
    .Y(_0187_));
 sky130_fd_sc_hd__and2_1 _1303_ (.A(net164),
    .B(net89),
    .X(_0204_));
 sky130_fd_sc_hd__and2_1 _1305_ (.A(net163),
    .B(net89),
    .X(_0041_));
 sky130_fd_sc_hd__and2_1 _1307_ (.A(net173),
    .B(net89),
    .X(_0044_));
 sky130_fd_sc_hd__and2_1 _1309_ (.A(net172),
    .B(net89),
    .X(_0047_));
 sky130_fd_sc_hd__and2_1 _1311_ (.A(net171),
    .B(net89),
    .X(_0050_));
 sky130_fd_sc_hd__and2_1 _1313_ (.A(net170),
    .B(net89),
    .X(_0053_));
 sky130_fd_sc_hd__and2_1 _1315_ (.A(net169),
    .B(net89),
    .X(_0056_));
 sky130_fd_sc_hd__and2_1 _1317_ (.A(net168),
    .B(net89),
    .X(_0059_));
 sky130_fd_sc_hd__and2_1 _1319_ (.A(net167),
    .B(net89),
    .X(_0062_));
 sky130_fd_sc_hd__and2_1 _1321_ (.A(net166),
    .B(net89),
    .X(_0065_));
 sky130_fd_sc_hd__and2_1 _1323_ (.A(net165),
    .B(net89),
    .X(_0068_));
 sky130_fd_sc_hd__and2_1 _1325_ (.A(net162),
    .B(net89),
    .X(_0224_));
 sky130_fd_sc_hd__inv_1 _1326_ (.A(\u_fault_detector.voltage_max[2] ),
    .Y(_0249_));
 sky130_fd_sc_hd__and2_1 _1328_ (.A(net164),
    .B(net90),
    .X(_0036_));
 sky130_fd_sc_hd__and2_1 _1329_ (.A(net163),
    .B(net90),
    .X(_0205_));
 sky130_fd_sc_hd__and2_1 _1330_ (.A(net173),
    .B(net90),
    .X(_0042_));
 sky130_fd_sc_hd__and2_1 _1331_ (.A(net172),
    .B(net90),
    .X(_0045_));
 sky130_fd_sc_hd__and2_1 _1332_ (.A(net171),
    .B(net90),
    .X(_0048_));
 sky130_fd_sc_hd__and2_1 _1333_ (.A(net170),
    .B(net90),
    .X(_0051_));
 sky130_fd_sc_hd__and2_1 _1334_ (.A(net169),
    .B(net90),
    .X(_0054_));
 sky130_fd_sc_hd__and2_1 _1335_ (.A(net168),
    .B(net90),
    .X(_0057_));
 sky130_fd_sc_hd__and2_1 _1336_ (.A(net167),
    .B(net90),
    .X(_0060_));
 sky130_fd_sc_hd__and2_1 _1337_ (.A(net166),
    .B(net90),
    .X(_0063_));
 sky130_fd_sc_hd__and2_1 _1338_ (.A(net165),
    .B(net90),
    .X(_0066_));
 sky130_fd_sc_hd__and2_1 _1339_ (.A(net162),
    .B(net90),
    .X(_0069_));
 sky130_fd_sc_hd__inv_1 _1340_ (.A(\power_max[12] ),
    .Y(_0173_));
 sky130_fd_sc_hd__and2_1 _1342_ (.A(net164),
    .B(net91),
    .X(_0000_));
 sky130_fd_sc_hd__and2_1 _1343_ (.A(net163),
    .B(net91),
    .X(_0003_));
 sky130_fd_sc_hd__and2_1 _1344_ (.A(net173),
    .B(net91),
    .X(_0006_));
 sky130_fd_sc_hd__and2_1 _1345_ (.A(net172),
    .B(net91),
    .X(_0009_));
 sky130_fd_sc_hd__and2_1 _1346_ (.A(net171),
    .B(net91),
    .X(_0012_));
 sky130_fd_sc_hd__and2_1 _1347_ (.A(net170),
    .B(net91),
    .X(_0015_));
 sky130_fd_sc_hd__and2_1 _1348_ (.A(net169),
    .B(net91),
    .X(_0018_));
 sky130_fd_sc_hd__and2_1 _1349_ (.A(net168),
    .B(net91),
    .X(_0021_));
 sky130_fd_sc_hd__and2_1 _1350_ (.A(net167),
    .B(net91),
    .X(_0024_));
 sky130_fd_sc_hd__and2_1 _1351_ (.A(net166),
    .B(net91),
    .X(_0027_));
 sky130_fd_sc_hd__and2_1 _1352_ (.A(net165),
    .B(net91),
    .X(_0150_));
 sky130_fd_sc_hd__and2_1 _1353_ (.A(net162),
    .B(net91),
    .X(_0293_));
 sky130_fd_sc_hd__inv_1 _1354_ (.A(\power_max[10] ),
    .Y(_0266_));
 sky130_fd_sc_hd__inv_1 _1355_ (.A(\u_fault_detector.voltage_min[6] ),
    .Y(_0231_));
 sky130_fd_sc_hd__inv_1 _1356_ (.A(\power_max[20] ),
    .Y(_0385_));
 sky130_fd_sc_hd__and2_1 _1358_ (.A(net164),
    .B(net92),
    .X(_0131_));
 sky130_fd_sc_hd__and2_1 _1359_ (.A(net163),
    .B(net92),
    .X(_0001_));
 sky130_fd_sc_hd__and2_1 _1360_ (.A(net173),
    .B(net92),
    .X(_0004_));
 sky130_fd_sc_hd__and2_1 _1361_ (.A(net172),
    .B(net92),
    .X(_0007_));
 sky130_fd_sc_hd__and2_1 _1362_ (.A(net171),
    .B(net92),
    .X(_0010_));
 sky130_fd_sc_hd__and2_1 _1363_ (.A(net170),
    .B(net92),
    .X(_0013_));
 sky130_fd_sc_hd__and2_1 _1364_ (.A(net169),
    .B(net92),
    .X(_0016_));
 sky130_fd_sc_hd__and2_1 _1365_ (.A(net168),
    .B(net92),
    .X(_0019_));
 sky130_fd_sc_hd__and2_1 _1366_ (.A(net167),
    .B(net92),
    .X(_0022_));
 sky130_fd_sc_hd__and2_1 _1367_ (.A(net166),
    .B(net92),
    .X(_0025_));
 sky130_fd_sc_hd__and2_1 _1368_ (.A(net165),
    .B(net92),
    .X(_0028_));
 sky130_fd_sc_hd__and2_1 _1369_ (.A(net162),
    .B(net92),
    .X(_0151_));
 sky130_fd_sc_hd__inv_1 _1370_ (.A(\power_max[15] ),
    .Y(_0269_));
 sky130_fd_sc_hd__and2_1 _1372_ (.A(net164),
    .B(net93),
    .X(_0073_));
 sky130_fd_sc_hd__and2_1 _1373_ (.A(net163),
    .B(net93),
    .X(_0132_));
 sky130_fd_sc_hd__and2_1 _1374_ (.A(net173),
    .B(net93),
    .X(_0002_));
 sky130_fd_sc_hd__and2_1 _1375_ (.A(net172),
    .B(net93),
    .X(_0005_));
 sky130_fd_sc_hd__and2_1 _1376_ (.A(net171),
    .B(net93),
    .X(_0008_));
 sky130_fd_sc_hd__and2_1 _1377_ (.A(net170),
    .B(net93),
    .X(_0011_));
 sky130_fd_sc_hd__and2_1 _1378_ (.A(net169),
    .B(net93),
    .X(_0014_));
 sky130_fd_sc_hd__and2_1 _1379_ (.A(net168),
    .B(net93),
    .X(_0017_));
 sky130_fd_sc_hd__and2_1 _1380_ (.A(net167),
    .B(net93),
    .X(_0020_));
 sky130_fd_sc_hd__and2_1 _1381_ (.A(net166),
    .B(net93),
    .X(_0023_));
 sky130_fd_sc_hd__and2_1 _1382_ (.A(net165),
    .B(net93),
    .X(_0026_));
 sky130_fd_sc_hd__and2_1 _1383_ (.A(net162),
    .B(net93),
    .X(_0029_));
 sky130_fd_sc_hd__inv_1 _1384_ (.A(\u_fault_detector.voltage_max[10] ),
    .Y(_0289_));
 sky130_fd_sc_hd__and2_1 _1386_ (.A(net164),
    .B(net94),
    .X(_0074_));
 sky130_fd_sc_hd__and2_1 _1387_ (.A(net163),
    .B(net94),
    .X(_0077_));
 sky130_fd_sc_hd__and2_1 _1388_ (.A(net173),
    .B(net94),
    .X(_0128_));
 sky130_fd_sc_hd__and2_1 _1389_ (.A(net172),
    .B(net94),
    .X(_0081_));
 sky130_fd_sc_hd__and2_1 _1390_ (.A(net171),
    .B(net94),
    .X(_0084_));
 sky130_fd_sc_hd__and2_1 _1391_ (.A(net170),
    .B(net94),
    .X(_0087_));
 sky130_fd_sc_hd__and2_1 _1392_ (.A(net169),
    .B(net94),
    .X(_0090_));
 sky130_fd_sc_hd__and2_1 _1393_ (.A(net168),
    .B(net94),
    .X(_0093_));
 sky130_fd_sc_hd__and2_1 _1394_ (.A(net167),
    .B(net94),
    .X(_0096_));
 sky130_fd_sc_hd__and2_1 _1395_ (.A(net166),
    .B(net94),
    .X(_0099_));
 sky130_fd_sc_hd__and2_1 _1396_ (.A(net165),
    .B(net94),
    .X(_0262_));
 sky130_fd_sc_hd__and2_1 _1397_ (.A(net162),
    .B(net94),
    .X(_0162_));
 sky130_fd_sc_hd__inv_1 _1398_ (.A(net86),
    .Y(_0305_));
 sky130_fd_sc_hd__and2_1 _1400_ (.A(net164),
    .B(net95),
    .X(_0258_));
 sky130_fd_sc_hd__and2_1 _1401_ (.A(net163),
    .B(net95),
    .X(_0075_));
 sky130_fd_sc_hd__and2_1 _1402_ (.A(net173),
    .B(net95),
    .X(_0078_));
 sky130_fd_sc_hd__and2_1 _1403_ (.A(net172),
    .B(net95),
    .X(_0129_));
 sky130_fd_sc_hd__and2_1 _1404_ (.A(net171),
    .B(net95),
    .X(_0082_));
 sky130_fd_sc_hd__and2_1 _1405_ (.A(net170),
    .B(net95),
    .X(_0085_));
 sky130_fd_sc_hd__and2_1 _1406_ (.A(net169),
    .B(net95),
    .X(_0088_));
 sky130_fd_sc_hd__and2_1 _1407_ (.A(net168),
    .B(net95),
    .X(_0091_));
 sky130_fd_sc_hd__and2_1 _1408_ (.A(net167),
    .B(net95),
    .X(_0094_));
 sky130_fd_sc_hd__and2_1 _1409_ (.A(net166),
    .B(net95),
    .X(_0097_));
 sky130_fd_sc_hd__and2_1 _1410_ (.A(net165),
    .B(net95),
    .X(_0100_));
 sky130_fd_sc_hd__and2_1 _1411_ (.A(net162),
    .B(net95),
    .X(_0263_));
 sky130_fd_sc_hd__and2_1 _1413_ (.A(net164),
    .B(net96),
    .X(_0080_));
 sky130_fd_sc_hd__and2_1 _1414_ (.A(net163),
    .B(net96),
    .X(_0259_));
 sky130_fd_sc_hd__and2_1 _1415_ (.A(net173),
    .B(net96),
    .X(_0076_));
 sky130_fd_sc_hd__and2_1 _1416_ (.A(net172),
    .B(net96),
    .X(_0079_));
 sky130_fd_sc_hd__and2_1 _1417_ (.A(net171),
    .B(net96),
    .X(_0130_));
 sky130_fd_sc_hd__and2_1 _1418_ (.A(net170),
    .B(net96),
    .X(_0083_));
 sky130_fd_sc_hd__and2_1 _1419_ (.A(net169),
    .B(net96),
    .X(_0086_));
 sky130_fd_sc_hd__and2_1 _1420_ (.A(net168),
    .B(net96),
    .X(_0089_));
 sky130_fd_sc_hd__and2_1 _1421_ (.A(net167),
    .B(net96),
    .X(_0092_));
 sky130_fd_sc_hd__and2_1 _1422_ (.A(net166),
    .B(net96),
    .X(_0095_));
 sky130_fd_sc_hd__and2_1 _1423_ (.A(net165),
    .B(net96),
    .X(_0098_));
 sky130_fd_sc_hd__and2_1 _1424_ (.A(net162),
    .B(net96),
    .X(_0101_));
 sky130_fd_sc_hd__inv_1 _1425_ (.A(\u_fault_detector.voltage_max[7] ),
    .Y(_0184_));
 sky130_fd_sc_hd__and2_1 _1427_ (.A(net164),
    .B(net97),
    .X(_0125_));
 sky130_fd_sc_hd__and2_1 _1428_ (.A(net163),
    .B(net97),
    .X(_0033_));
 sky130_fd_sc_hd__and2_1 _1429_ (.A(net173),
    .B(net97),
    .X(_0119_));
 sky130_fd_sc_hd__and2_1 _1430_ (.A(net172),
    .B(net97),
    .X(_0116_));
 sky130_fd_sc_hd__and2_1 _1431_ (.A(net171),
    .B(net97),
    .X(_0105_));
 sky130_fd_sc_hd__and2_1 _1432_ (.A(net170),
    .B(net97),
    .X(_0102_));
 sky130_fd_sc_hd__and2_1 _1433_ (.A(net169),
    .B(net97),
    .X(_0122_));
 sky130_fd_sc_hd__and2_1 _1434_ (.A(net168),
    .B(net97),
    .X(_0070_));
 sky130_fd_sc_hd__and2_1 _1435_ (.A(net167),
    .B(net97),
    .X(_0030_));
 sky130_fd_sc_hd__and2_1 _1436_ (.A(net166),
    .B(net97),
    .X(_0113_));
 sky130_fd_sc_hd__and2_1 _1437_ (.A(net165),
    .B(net97),
    .X(_0302_));
 sky130_fd_sc_hd__and2_1 _1438_ (.A(net162),
    .B(net97),
    .X(_0280_));
 sky130_fd_sc_hd__inv_1 _1439_ (.A(\power_max[21] ),
    .Y(_0388_));
 sky130_fd_sc_hd__inv_1 _1440_ (.A(\u_fault_detector.voltage_min[2] ),
    .Y(_0196_));
 sky130_fd_sc_hd__and2_1 _1442_ (.A(net164),
    .B(net87),
    .X(_0352_));
 sky130_fd_sc_hd__and2_1 _1443_ (.A(net163),
    .B(net87),
    .X(_0126_));
 sky130_fd_sc_hd__and2_1 _1444_ (.A(net173),
    .B(net87),
    .X(_0034_));
 sky130_fd_sc_hd__and2_1 _1445_ (.A(net172),
    .B(net87),
    .X(_0120_));
 sky130_fd_sc_hd__and2_1 _1446_ (.A(net171),
    .B(net87),
    .X(_0117_));
 sky130_fd_sc_hd__and2_1 _1447_ (.A(net170),
    .B(net87),
    .X(_0106_));
 sky130_fd_sc_hd__and2_1 _1448_ (.A(net169),
    .B(net87),
    .X(_0103_));
 sky130_fd_sc_hd__and2_1 _1449_ (.A(net168),
    .B(net87),
    .X(_0123_));
 sky130_fd_sc_hd__and2_1 _1450_ (.A(net167),
    .B(net87),
    .X(_0071_));
 sky130_fd_sc_hd__and2_1 _1451_ (.A(net166),
    .B(net87),
    .X(_0031_));
 sky130_fd_sc_hd__and2_1 _1452_ (.A(net165),
    .B(net87),
    .X(_0114_));
 sky130_fd_sc_hd__and2_1 _1453_ (.A(net162),
    .B(net87),
    .X(_0303_));
 sky130_fd_sc_hd__inv_1 _1454_ (.A(\power_max[11] ),
    .Y(_0243_));
 sky130_fd_sc_hd__and2_1 _1456_ (.A(net164),
    .B(net88),
    .X(_0111_));
 sky130_fd_sc_hd__and2_1 _1457_ (.A(net163),
    .B(net88),
    .X(_0353_));
 sky130_fd_sc_hd__and2_1 _1458_ (.A(net173),
    .B(net88),
    .X(_0127_));
 sky130_fd_sc_hd__and2_1 _1459_ (.A(net172),
    .B(net88),
    .X(_0035_));
 sky130_fd_sc_hd__and2_1 _1460_ (.A(net171),
    .B(net88),
    .X(_0121_));
 sky130_fd_sc_hd__and2_1 _1461_ (.A(net170),
    .B(net88),
    .X(_0118_));
 sky130_fd_sc_hd__and2_1 _1462_ (.A(net169),
    .B(net88),
    .X(_0107_));
 sky130_fd_sc_hd__and2_1 _1463_ (.A(net168),
    .B(net88),
    .X(_0104_));
 sky130_fd_sc_hd__and2_1 _1464_ (.A(net167),
    .B(net88),
    .X(_0124_));
 sky130_fd_sc_hd__and2_1 _1465_ (.A(net166),
    .B(net88),
    .X(_0072_));
 sky130_fd_sc_hd__and2_1 _1466_ (.A(net165),
    .B(net88),
    .X(_0032_));
 sky130_fd_sc_hd__and2_1 _1467_ (.A(net162),
    .B(net88),
    .X(_0115_));
 sky130_fd_sc_hd__inv_1 _1468_ (.A(\current_max[1] ),
    .Y(_0310_));
 sky130_fd_sc_hd__inv_1 _1469_ (.A(\current_max[4] ),
    .Y(_0330_));
 sky130_fd_sc_hd__inv_1 _1470_ (.A(\u_fault_detector.voltage_min[7] ),
    .Y(_0214_));
 sky130_fd_sc_hd__inv_1 _1471_ (.A(\power_max[14] ),
    .Y(_0283_));
 sky130_fd_sc_hd__and2_1 _1472_ (.A(net159),
    .B(net158),
    .X(net160));
 sky130_fd_sc_hd__nor2b_1 _1473_ (.A(net159),
    .B_N(net158),
    .Y(net174));
 sky130_fd_sc_hd__nor2b_1 _1474_ (.A(net158),
    .B_N(net159),
    .Y(net130));
 sky130_fd_sc_hd__inv_1 _1475_ (.A(\current_max[3] ),
    .Y(_0238_));
 sky130_fd_sc_hd__nor2b_1 _1477_ (.A(net182),
    .B_N(net2),
    .Y(_0417_));
 sky130_fd_sc_hd__nor2b_1 _1478_ (.A(net182),
    .B_N(net12),
    .Y(_0418_));
 sky130_fd_sc_hd__nor2b_1 _1479_ (.A(net182),
    .B_N(net11),
    .Y(_0419_));
 sky130_fd_sc_hd__nor2b_1 _1480_ (.A(net182),
    .B_N(net10),
    .Y(_0420_));
 sky130_fd_sc_hd__nor2b_1 _1481_ (.A(net181),
    .B_N(net9),
    .Y(_0421_));
 sky130_fd_sc_hd__nor2b_1 _1482_ (.A(net181),
    .B_N(net8),
    .Y(_0422_));
 sky130_fd_sc_hd__nor2b_1 _1485_ (.A(net181),
    .B_N(net7),
    .Y(_0423_));
 sky130_fd_sc_hd__nor2b_1 _1486_ (.A(net181),
    .B_N(net6),
    .Y(_0424_));
 sky130_fd_sc_hd__nor2b_1 _1487_ (.A(net181),
    .B_N(net5),
    .Y(_0425_));
 sky130_fd_sc_hd__nor2b_1 _1488_ (.A(net181),
    .B_N(net4),
    .Y(_0426_));
 sky130_fd_sc_hd__nor2b_1 _1489_ (.A(net181),
    .B_N(net1),
    .Y(_0427_));
 sky130_fd_sc_hd__nor2b_1 _1490_ (.A(net182),
    .B_N(net51),
    .Y(_0428_));
 sky130_fd_sc_hd__nor2b_1 _1491_ (.A(net182),
    .B_N(net61),
    .Y(_0429_));
 sky130_fd_sc_hd__nor2b_1 _1492_ (.A(net182),
    .B_N(net60),
    .Y(_0430_));
 sky130_fd_sc_hd__nor2b_1 _1493_ (.A(net181),
    .B_N(net59),
    .Y(_0431_));
 sky130_fd_sc_hd__nor2b_1 _1494_ (.A(net181),
    .B_N(net58),
    .Y(_0432_));
 sky130_fd_sc_hd__nor2b_1 _1496_ (.A(net181),
    .B_N(net57),
    .Y(_0433_));
 sky130_fd_sc_hd__nor2b_1 _1497_ (.A(net181),
    .B_N(net56),
    .Y(_0434_));
 sky130_fd_sc_hd__nor2b_1 _1498_ (.A(net181),
    .B_N(net55),
    .Y(_0435_));
 sky130_fd_sc_hd__nor2b_1 _1499_ (.A(net181),
    .B_N(net54),
    .Y(_0436_));
 sky130_fd_sc_hd__nor2b_1 _1500_ (.A(net181),
    .B_N(net53),
    .Y(_0437_));
 sky130_fd_sc_hd__nor2b_1 _1501_ (.A(net182),
    .B_N(net50),
    .Y(_0438_));
 sky130_fd_sc_hd__a21oi_1 _1504_ (.A1(_0172_),
    .A2(_0318_),
    .B1(_0264_),
    .Y(_0972_));
 sky130_fd_sc_hd__a21o_1 _1505_ (.A1(_0329_),
    .A2(_0308_),
    .B1(_0328_),
    .X(_0973_));
 sky130_fd_sc_hd__a21o_1 _1506_ (.A1(_0314_),
    .A2(_0038_),
    .B1(_0313_),
    .X(_0974_));
 sky130_fd_sc_hd__and3_1 _1507_ (.A(_0329_),
    .B(_0282_),
    .C(_0309_),
    .X(_0563_));
 sky130_fd_sc_hd__a221oi_2 _1508_ (.A1(_0282_),
    .A2(_0973_),
    .B1(_0974_),
    .B2(_0563_),
    .C1(_0281_),
    .Y(_0564_));
 sky130_fd_sc_hd__inv_1 _1510_ (.A(_0336_),
    .Y(_0566_));
 sky130_fd_sc_hd__and3_1 _1511_ (.A(_0344_),
    .B(_0327_),
    .C(_0210_),
    .X(_0567_));
 sky130_fd_sc_hd__nand2_1 _1512_ (.A(_0334_),
    .B(_0567_),
    .Y(_0568_));
 sky130_fd_sc_hd__o21a_1 _1513_ (.A1(_0264_),
    .A2(_0265_),
    .B1(_0319_),
    .X(_0569_));
 sky130_fd_sc_hd__o21ai_0 _1514_ (.A1(_0318_),
    .A2(_0569_),
    .B1(_0172_),
    .Y(_0570_));
 sky130_fd_sc_hd__a2111oi_1 _1515_ (.A1(_0972_),
    .A2(_0564_),
    .B1(_0566_),
    .C1(_0568_),
    .D1(_0570_),
    .Y(_0571_));
 sky130_fd_sc_hd__a211oi_1 _1516_ (.A1(_0327_),
    .A2(_0333_),
    .B1(_0326_),
    .C1(_0343_),
    .Y(_0572_));
 sky130_fd_sc_hd__o21ai_0 _1517_ (.A1(_0344_),
    .A2(_0343_),
    .B1(_0210_),
    .Y(_0573_));
 sky130_fd_sc_hd__nor2_1 _1518_ (.A(_0572_),
    .B(_0573_),
    .Y(_0574_));
 sky130_fd_sc_hd__o21a_1 _1519_ (.A1(_0209_),
    .A2(_0574_),
    .B1(_0336_),
    .X(_0575_));
 sky130_fd_sc_hd__nand2_1 _1520_ (.A(_0171_),
    .B(_0336_),
    .Y(_0576_));
 sky130_fd_sc_hd__nor2_1 _1521_ (.A(_0568_),
    .B(_0576_),
    .Y(_0577_));
 sky130_fd_sc_hd__nor4_2 _1522_ (.A(_0335_),
    .B(_0571_),
    .C(_0575_),
    .D(_0577_),
    .Y(_0578_));
 sky130_fd_sc_hd__and3_1 _1524_ (.A(_0340_),
    .B(_0346_),
    .C(_0287_),
    .X(_0580_));
 sky130_fd_sc_hd__nand2_1 _1525_ (.A(_0366_),
    .B(_0580_),
    .Y(_0581_));
 sky130_fd_sc_hd__a21o_1 _1526_ (.A1(_0365_),
    .A2(_0346_),
    .B1(_0345_),
    .X(_0582_));
 sky130_fd_sc_hd__a21o_1 _1527_ (.A1(_0340_),
    .A2(_0582_),
    .B1(_0339_),
    .X(_0583_));
 sky130_fd_sc_hd__a21oi_1 _1528_ (.A1(_0287_),
    .A2(_0583_),
    .B1(_0286_),
    .Y(_0584_));
 sky130_fd_sc_hd__o21ai_0 _1529_ (.A1(_0578_),
    .A2(_0581_),
    .B1(_0584_),
    .Y(_0585_));
 sky130_fd_sc_hd__xnor2_1 _1530_ (.A(_0338_),
    .B(_0585_),
    .Y(_0586_));
 sky130_fd_sc_hd__nor2_1 _1531_ (.A(net183),
    .B(_0586_),
    .Y(_0439_));
 sky130_fd_sc_hd__nor2b_1 _1533_ (.A(net183),
    .B_N(_0287_),
    .Y(_0588_));
 sky130_fd_sc_hd__nor2_1 _1535_ (.A(_0287_),
    .B(net183),
    .Y(_0590_));
 sky130_fd_sc_hd__nand2_1 _1536_ (.A(_0340_),
    .B(_0346_),
    .Y(_0591_));
 sky130_fd_sc_hd__nand3_1 _1537_ (.A(_0314_),
    .B(_0037_),
    .C(_0134_),
    .Y(_0592_));
 sky130_fd_sc_hd__a21oi_1 _1538_ (.A1(_0314_),
    .A2(_0133_),
    .B1(_0313_),
    .Y(_0593_));
 sky130_fd_sc_hd__nand2_1 _1539_ (.A(_0282_),
    .B(_0265_),
    .Y(_0594_));
 sky130_fd_sc_hd__nand2_1 _1540_ (.A(_0329_),
    .B(_0309_),
    .Y(_0595_));
 sky130_fd_sc_hd__inv_1 _1541_ (.A(_0319_),
    .Y(_0596_));
 sky130_fd_sc_hd__a2111o_1 _1542_ (.A1(_0592_),
    .A2(_0593_),
    .B1(_0594_),
    .C1(_0595_),
    .D1(_0596_),
    .X(_0597_));
 sky130_fd_sc_hd__and3_1 _1543_ (.A(_0319_),
    .B(_0282_),
    .C(_0265_),
    .X(_0598_));
 sky130_fd_sc_hd__a21o_1 _1544_ (.A1(_0281_),
    .A2(_0265_),
    .B1(_0264_),
    .X(_0599_));
 sky130_fd_sc_hd__a22oi_1 _1545_ (.A1(_0973_),
    .A2(_0598_),
    .B1(_0599_),
    .B2(_0319_),
    .Y(_0600_));
 sky130_fd_sc_hd__nor3_1 _1546_ (.A(_0171_),
    .B(_0333_),
    .C(_0318_),
    .Y(_0601_));
 sky130_fd_sc_hd__or2_2 _1547_ (.A(_0171_),
    .B(_0172_),
    .X(_0602_));
 sky130_fd_sc_hd__a21oi_1 _1548_ (.A1(_0334_),
    .A2(_0602_),
    .B1(_0333_),
    .Y(_0603_));
 sky130_fd_sc_hd__a31oi_1 _1549_ (.A1(_0597_),
    .A2(_0600_),
    .A3(_0601_),
    .B1(_0603_),
    .Y(_0604_));
 sky130_fd_sc_hd__a21oi_1 _1550_ (.A1(_0344_),
    .A2(_0326_),
    .B1(_0343_),
    .Y(_0605_));
 sky130_fd_sc_hd__nor2b_1 _1551_ (.A(_0605_),
    .B_N(_0210_),
    .Y(_0606_));
 sky130_fd_sc_hd__a211o_1 _1552_ (.A1(_0567_),
    .A2(_0604_),
    .B1(_0606_),
    .C1(_0209_),
    .X(_0607_));
 sky130_fd_sc_hd__nand3_1 _1553_ (.A(_0336_),
    .B(_0366_),
    .C(_0607_),
    .Y(_0608_));
 sky130_fd_sc_hd__inv_1 _1554_ (.A(_0365_),
    .Y(_0609_));
 sky130_fd_sc_hd__nand2_1 _1555_ (.A(_0366_),
    .B(_0335_),
    .Y(_0610_));
 sky130_fd_sc_hd__nand2_1 _1556_ (.A(_0609_),
    .B(_0610_),
    .Y(_0611_));
 sky130_fd_sc_hd__a21o_1 _1557_ (.A1(_0346_),
    .A2(_0611_),
    .B1(_0345_),
    .X(_0612_));
 sky130_fd_sc_hd__a21oi_1 _1558_ (.A1(_0340_),
    .A2(_0612_),
    .B1(_0339_),
    .Y(_0613_));
 sky130_fd_sc_hd__o21ai_0 _1559_ (.A1(_0591_),
    .A2(_0608_),
    .B1(_0613_),
    .Y(_0614_));
 sky130_fd_sc_hd__mux2_2 _1560_ (.A0(_0588_),
    .A1(_0590_),
    .S(_0614_),
    .X(_0440_));
 sky130_fd_sc_hd__o21ai_0 _1562_ (.A1(_0365_),
    .A2(_0366_),
    .B1(_0346_),
    .Y(_0616_));
 sky130_fd_sc_hd__a21oi_1 _1563_ (.A1(_0609_),
    .A2(_0578_),
    .B1(_0616_),
    .Y(_0617_));
 sky130_fd_sc_hd__o21a_1 _1564_ (.A1(_0345_),
    .A2(_0617_),
    .B1(_0340_),
    .X(_0618_));
 sky130_fd_sc_hd__nor3_1 _1565_ (.A(_0340_),
    .B(_0345_),
    .C(_0617_),
    .Y(_0619_));
 sky130_fd_sc_hd__nor3_1 _1566_ (.A(net183),
    .B(_0618_),
    .C(_0619_),
    .Y(_0441_));
 sky130_fd_sc_hd__a31oi_1 _1567_ (.A1(_0336_),
    .A2(_0366_),
    .A3(_0607_),
    .B1(_0611_),
    .Y(_0620_));
 sky130_fd_sc_hd__xor2_1 _1568_ (.A(_0346_),
    .B(_0620_),
    .X(_0621_));
 sky130_fd_sc_hd__nor2_1 _1569_ (.A(net183),
    .B(_0621_),
    .Y(_0442_));
 sky130_fd_sc_hd__xor2_1 _1570_ (.A(_0366_),
    .B(_0578_),
    .X(_0622_));
 sky130_fd_sc_hd__nor2_1 _1571_ (.A(net183),
    .B(_0622_),
    .Y(_0443_));
 sky130_fd_sc_hd__xnor2_1 _1572_ (.A(_0336_),
    .B(_0607_),
    .Y(_0623_));
 sky130_fd_sc_hd__nor2_1 _1573_ (.A(net183),
    .B(_0623_),
    .Y(_0444_));
 sky130_fd_sc_hd__inv_1 _1574_ (.A(_0334_),
    .Y(_0624_));
 sky130_fd_sc_hd__a211oi_1 _1575_ (.A1(_0972_),
    .A2(_0564_),
    .B1(_0624_),
    .C1(_0570_),
    .Y(_0625_));
 sky130_fd_sc_hd__a211oi_1 _1576_ (.A1(_0334_),
    .A2(_0171_),
    .B1(_0333_),
    .C1(_0625_),
    .Y(_0626_));
 sky130_fd_sc_hd__nor2b_1 _1577_ (.A(_0626_),
    .B_N(_0327_),
    .Y(_0627_));
 sky130_fd_sc_hd__o21ai_0 _1578_ (.A1(_0326_),
    .A2(_0627_),
    .B1(_0344_),
    .Y(_0628_));
 sky130_fd_sc_hd__nor2_1 _1579_ (.A(_0210_),
    .B(_0343_),
    .Y(_0629_));
 sky130_fd_sc_hd__a21oi_1 _1580_ (.A1(_0972_),
    .A2(_0564_),
    .B1(_0570_),
    .Y(_0630_));
 sky130_fd_sc_hd__nor2_1 _1581_ (.A(_0171_),
    .B(_0630_),
    .Y(_0631_));
 sky130_fd_sc_hd__nor2_1 _1582_ (.A(_0568_),
    .B(_0631_),
    .Y(_0632_));
 sky130_fd_sc_hd__a2111oi_0 _1583_ (.A1(_0628_),
    .A2(_0629_),
    .B1(net182),
    .C1(_0574_),
    .D1(_0632_),
    .Y(_0445_));
 sky130_fd_sc_hd__a21oi_1 _1584_ (.A1(_0327_),
    .A2(_0604_),
    .B1(_0326_),
    .Y(_0633_));
 sky130_fd_sc_hd__xor2_1 _1585_ (.A(_0344_),
    .B(_0633_),
    .X(_0634_));
 sky130_fd_sc_hd__nor2_1 _1586_ (.A(net182),
    .B(_0634_),
    .Y(_0446_));
 sky130_fd_sc_hd__xor2_1 _1587_ (.A(_0327_),
    .B(_0626_),
    .X(_0635_));
 sky130_fd_sc_hd__nor2_1 _1588_ (.A(net182),
    .B(_0635_),
    .Y(_0447_));
 sky130_fd_sc_hd__nand3b_1 _1589_ (.A_N(_0318_),
    .B(_0597_),
    .C(_0600_),
    .Y(_0636_));
 sky130_fd_sc_hd__a21oi_1 _1590_ (.A1(_0172_),
    .A2(_0636_),
    .B1(_0171_),
    .Y(_0637_));
 sky130_fd_sc_hd__xnor2_1 _1591_ (.A(_0624_),
    .B(_0637_),
    .Y(_0638_));
 sky130_fd_sc_hd__nor2_1 _1592_ (.A(net182),
    .B(_0638_),
    .Y(_0448_));
 sky130_fd_sc_hd__nor2b_1 _1593_ (.A(_0564_),
    .B_N(_0265_),
    .Y(_0639_));
 sky130_fd_sc_hd__o21ai_0 _1594_ (.A1(_0264_),
    .A2(_0639_),
    .B1(_0319_),
    .Y(_0640_));
 sky130_fd_sc_hd__nor2_1 _1595_ (.A(_0172_),
    .B(_0318_),
    .Y(_0641_));
 sky130_fd_sc_hd__a211oi_1 _1596_ (.A1(_0640_),
    .A2(_0641_),
    .B1(net182),
    .C1(_0630_),
    .Y(_0449_));
 sky130_fd_sc_hd__nand2_1 _1597_ (.A(_0592_),
    .B(_0593_),
    .Y(_0642_));
 sky130_fd_sc_hd__a31oi_1 _1598_ (.A1(_0329_),
    .A2(_0309_),
    .A3(_0642_),
    .B1(_0973_),
    .Y(_0643_));
 sky130_fd_sc_hd__nor2_1 _1599_ (.A(_0643_),
    .B(_0594_),
    .Y(_0644_));
 sky130_fd_sc_hd__or3_1 _1600_ (.A(_0319_),
    .B(_0644_),
    .C(_0599_),
    .X(_0645_));
 sky130_fd_sc_hd__nand3_1 _1601_ (.A(_0597_),
    .B(_0600_),
    .C(_0645_),
    .Y(_0646_));
 sky130_fd_sc_hd__nor2_1 _1602_ (.A(net182),
    .B(_0646_),
    .Y(_0450_));
 sky130_fd_sc_hd__nor2b_1 _1603_ (.A(_0265_),
    .B_N(_0564_),
    .Y(_0647_));
 sky130_fd_sc_hd__nor3_1 _1604_ (.A(net182),
    .B(_0639_),
    .C(_0647_),
    .Y(_0451_));
 sky130_fd_sc_hd__xor2_1 _1605_ (.A(_0282_),
    .B(_0643_),
    .X(_0648_));
 sky130_fd_sc_hd__nor2_1 _1606_ (.A(net182),
    .B(_0648_),
    .Y(_0452_));
 sky130_fd_sc_hd__a21oi_1 _1607_ (.A1(_0309_),
    .A2(_0974_),
    .B1(_0308_),
    .Y(_0649_));
 sky130_fd_sc_hd__xor2_1 _1608_ (.A(_0329_),
    .B(_0649_),
    .X(_0650_));
 sky130_fd_sc_hd__nor2_1 _1609_ (.A(net182),
    .B(_0650_),
    .Y(_0453_));
 sky130_fd_sc_hd__xnor2_1 _1611_ (.A(_0309_),
    .B(_0642_),
    .Y(_0652_));
 sky130_fd_sc_hd__nor2_1 _1612_ (.A(net182),
    .B(_0652_),
    .Y(_0454_));
 sky130_fd_sc_hd__xnor2_1 _1613_ (.A(_0314_),
    .B(_0038_),
    .Y(_0653_));
 sky130_fd_sc_hd__nor2_1 _1614_ (.A(net182),
    .B(_0653_),
    .Y(_0455_));
 sky130_fd_sc_hd__nor2b_1 _1615_ (.A(net182),
    .B_N(_0039_),
    .Y(_0456_));
 sky130_fd_sc_hd__nor2b_1 _1616_ (.A(net182),
    .B_N(_0304_),
    .Y(_0457_));
 sky130_fd_sc_hd__nor2b_1 _1617_ (.A(net182),
    .B_N(_0292_),
    .Y(_0458_));
 sky130_fd_sc_hd__nor2b_1 _1618_ (.A(net182),
    .B_N(_0192_),
    .Y(_0459_));
 sky130_fd_sc_hd__nor2b_1 _1620_ (.A(net182),
    .B_N(_0225_),
    .Y(_0460_));
 sky130_fd_sc_hd__nor3_1 _1622_ (.A(_0229_),
    .B(_0305_),
    .C(net181),
    .Y(_0461_));
 sky130_fd_sc_hd__nand4_1 _1623_ (.A(net119),
    .B(net118),
    .C(net117),
    .D(net116),
    .Y(_0656_));
 sky130_fd_sc_hd__nand2_1 _1624_ (.A(net115),
    .B(net114),
    .Y(_0657_));
 sky130_fd_sc_hd__inv_1 _1625_ (.A(_0234_),
    .Y(_0658_));
 sky130_fd_sc_hd__a21oi_1 _1627_ (.A1(_0298_),
    .A2(_0217_),
    .B1(_0297_),
    .Y(_0660_));
 sky130_fd_sc_hd__nand2_1 _1628_ (.A(_0658_),
    .B(_0660_),
    .Y(_0661_));
 sky130_fd_sc_hd__a211oi_1 _1629_ (.A1(_0237_),
    .A2(_0109_),
    .B1(_0219_),
    .C1(_0236_),
    .Y(_0662_));
 sky130_fd_sc_hd__o21ai_0 _1630_ (.A1(_0219_),
    .A2(_0220_),
    .B1(_0300_),
    .Y(_0663_));
 sky130_fd_sc_hd__nor2_1 _1631_ (.A(_0221_),
    .B(_0299_),
    .Y(_0664_));
 sky130_fd_sc_hd__o21ai_0 _1632_ (.A1(_0662_),
    .A2(_0663_),
    .B1(_0664_),
    .Y(_0665_));
 sky130_fd_sc_hd__nand2_1 _1633_ (.A(_0342_),
    .B(_0410_),
    .Y(_0666_));
 sky130_fd_sc_hd__nand2_1 _1634_ (.A(_0364_),
    .B(_0161_),
    .Y(_0667_));
 sky130_fd_sc_hd__nor2_1 _1635_ (.A(_0221_),
    .B(_0222_),
    .Y(_0668_));
 sky130_fd_sc_hd__nor3_1 _1636_ (.A(_0666_),
    .B(_0667_),
    .C(_0668_),
    .Y(_0669_));
 sky130_fd_sc_hd__a21oi_1 _1637_ (.A1(_0364_),
    .A2(_0160_),
    .B1(_0363_),
    .Y(_0670_));
 sky130_fd_sc_hd__a21oi_1 _1638_ (.A1(_0342_),
    .A2(_0409_),
    .B1(_0341_),
    .Y(_0671_));
 sky130_fd_sc_hd__o21ai_0 _1639_ (.A1(_0670_),
    .A2(_0666_),
    .B1(_0671_),
    .Y(_0672_));
 sky130_fd_sc_hd__a21oi_2 _1640_ (.A1(_0665_),
    .A2(_0669_),
    .B1(_0672_),
    .Y(_0673_));
 sky130_fd_sc_hd__nand2_1 _1641_ (.A(_0191_),
    .B(_0170_),
    .Y(_0674_));
 sky130_fd_sc_hd__nand2_2 _1642_ (.A(_0257_),
    .B(_0146_),
    .Y(_0675_));
 sky130_fd_sc_hd__nand2_1 _1643_ (.A(_0183_),
    .B(_0200_),
    .Y(_0676_));
 sky130_fd_sc_hd__or3_4 _1644_ (.A(_0674_),
    .B(_0675_),
    .C(_0676_),
    .X(_0677_));
 sky130_fd_sc_hd__nand2_1 _1645_ (.A(_0351_),
    .B(_0242_),
    .Y(_0678_));
 sky130_fd_sc_hd__nand3_1 _1647_ (.A(_0273_),
    .B(_0156_),
    .C(_0142_),
    .Y(_0680_));
 sky130_fd_sc_hd__nor4_4 _1648_ (.A(_0673_),
    .B(_0677_),
    .C(_0678_),
    .D(_0680_),
    .Y(_0681_));
 sky130_fd_sc_hd__inv_1 _1649_ (.A(_0191_),
    .Y(_0682_));
 sky130_fd_sc_hd__a21o_2 _1650_ (.A1(_0146_),
    .A2(_0350_),
    .B1(_0145_),
    .X(_0683_));
 sky130_fd_sc_hd__a21o_1 _1651_ (.A1(_0200_),
    .A2(_0256_),
    .B1(_0199_),
    .X(_0684_));
 sky130_fd_sc_hd__a31oi_1 _1652_ (.A1(_0200_),
    .A2(_0257_),
    .A3(_0683_),
    .B1(_0684_),
    .Y(_0685_));
 sky130_fd_sc_hd__nand2_1 _1653_ (.A(_0170_),
    .B(_0183_),
    .Y(_0686_));
 sky130_fd_sc_hd__a21oi_1 _1654_ (.A1(_0170_),
    .A2(_0182_),
    .B1(_0169_),
    .Y(_0687_));
 sky130_fd_sc_hd__o21a_1 _1655_ (.A1(_0685_),
    .A2(_0686_),
    .B1(_0687_),
    .X(_0688_));
 sky130_fd_sc_hd__a211oi_1 _1656_ (.A1(_0156_),
    .A2(_0141_),
    .B1(_0272_),
    .C1(_0155_),
    .Y(_0689_));
 sky130_fd_sc_hd__o21ai_0 _1657_ (.A1(_0272_),
    .A2(_0273_),
    .B1(_0242_),
    .Y(_0690_));
 sky130_fd_sc_hd__nor2_1 _1658_ (.A(_0689_),
    .B(_0690_),
    .Y(_0691_));
 sky130_fd_sc_hd__o21ai_0 _1659_ (.A1(_0241_),
    .A2(_0691_),
    .B1(_0351_),
    .Y(_0692_));
 sky130_fd_sc_hd__inv_1 _1660_ (.A(_0190_),
    .Y(_0693_));
 sky130_fd_sc_hd__o221ai_1 _1661_ (.A1(_0682_),
    .A2(_0688_),
    .B1(_0692_),
    .B2(_0677_),
    .C1(_0693_),
    .Y(_0694_));
 sky130_fd_sc_hd__o211ai_1 _1664_ (.A1(_0234_),
    .A2(_0235_),
    .B1(_0298_),
    .C1(_0218_),
    .Y(_0697_));
 sky130_fd_sc_hd__nand2_1 _1665_ (.A(_0660_),
    .B(_0697_),
    .Y(_0698_));
 sky130_fd_sc_hd__o31ai_2 _1666_ (.A1(_0661_),
    .A2(_0681_),
    .A3(_0694_),
    .B1(_0698_),
    .Y(_0699_));
 sky130_fd_sc_hd__o31ai_1 _1667_ (.A1(_0656_),
    .A2(_0657_),
    .A3(_0699_),
    .B1(net121),
    .Y(_0700_));
 sky130_fd_sc_hd__or4_1 _1668_ (.A(net121),
    .B(_0656_),
    .C(_0657_),
    .D(_0699_),
    .X(_0701_));
 sky130_fd_sc_hd__a21oi_1 _1669_ (.A1(_0700_),
    .A2(_0701_),
    .B1(net183),
    .Y(_0462_));
 sky130_fd_sc_hd__nand2_1 _1670_ (.A(_0273_),
    .B(_0156_),
    .Y(_0702_));
 sky130_fd_sc_hd__a21oi_1 _1671_ (.A1(_0142_),
    .A2(_0341_),
    .B1(_0141_),
    .Y(_0703_));
 sky130_fd_sc_hd__a21oi_1 _1672_ (.A1(_0273_),
    .A2(_0155_),
    .B1(_0272_),
    .Y(_0704_));
 sky130_fd_sc_hd__o21a_1 _1673_ (.A1(_0702_),
    .A2(_0703_),
    .B1(_0704_),
    .X(_0705_));
 sky130_fd_sc_hd__inv_1 _1674_ (.A(_0300_),
    .Y(_0706_));
 sky130_fd_sc_hd__nand4_1 _1675_ (.A(_0410_),
    .B(_0364_),
    .C(_0161_),
    .D(_0222_),
    .Y(_0707_));
 sky130_fd_sc_hd__nor2_1 _1676_ (.A(_0706_),
    .B(_0707_),
    .Y(_0708_));
 sky130_fd_sc_hd__a211oi_1 _1677_ (.A1(_0144_),
    .A2(_0108_),
    .B1(_0236_),
    .C1(_0143_),
    .Y(_0709_));
 sky130_fd_sc_hd__o21ai_0 _1678_ (.A1(_0236_),
    .A2(_0237_),
    .B1(_0220_),
    .Y(_0710_));
 sky130_fd_sc_hd__nor2_1 _1679_ (.A(_0709_),
    .B(_0710_),
    .Y(_0711_));
 sky130_fd_sc_hd__a211oi_1 _1680_ (.A1(_0161_),
    .A2(_0221_),
    .B1(_0363_),
    .C1(_0160_),
    .Y(_0712_));
 sky130_fd_sc_hd__o21ai_0 _1681_ (.A1(_0363_),
    .A2(_0364_),
    .B1(_0410_),
    .Y(_0713_));
 sky130_fd_sc_hd__nor2_1 _1682_ (.A(_0712_),
    .B(_0713_),
    .Y(_0714_));
 sky130_fd_sc_hd__a21oi_1 _1683_ (.A1(_0300_),
    .A2(_0219_),
    .B1(_0299_),
    .Y(_0715_));
 sky130_fd_sc_hd__o21bai_1 _1684_ (.A1(_0707_),
    .A2(_0715_),
    .B1_N(_0409_),
    .Y(_0716_));
 sky130_fd_sc_hd__a211oi_2 _1685_ (.A1(_0708_),
    .A2(_0711_),
    .B1(_0714_),
    .C1(_0716_),
    .Y(_0717_));
 sky130_fd_sc_hd__nand4_1 _1686_ (.A(_0273_),
    .B(_0156_),
    .C(_0142_),
    .D(_0342_),
    .Y(_0718_));
 sky130_fd_sc_hd__o211a_1 _1687_ (.A1(_0702_),
    .A2(_0703_),
    .B1(_0718_),
    .C1(_0704_),
    .X(_0719_));
 sky130_fd_sc_hd__a2111oi_2 _1688_ (.A1(_0705_),
    .A2(_0717_),
    .B1(_0719_),
    .C1(_0678_),
    .D1(_0675_),
    .Y(_0720_));
 sky130_fd_sc_hd__a21oi_1 _1689_ (.A1(_0183_),
    .A2(_0199_),
    .B1(_0182_),
    .Y(_0721_));
 sky130_fd_sc_hd__a21oi_1 _1690_ (.A1(_0191_),
    .A2(_0169_),
    .B1(_0190_),
    .Y(_0722_));
 sky130_fd_sc_hd__nand2_1 _1691_ (.A(_0721_),
    .B(_0722_),
    .Y(_0723_));
 sky130_fd_sc_hd__a21oi_1 _1692_ (.A1(_0351_),
    .A2(_0241_),
    .B1(_0350_),
    .Y(_0724_));
 sky130_fd_sc_hd__a21oi_1 _1693_ (.A1(_0257_),
    .A2(_0145_),
    .B1(_0256_),
    .Y(_0725_));
 sky130_fd_sc_hd__o21ai_0 _1694_ (.A1(_0675_),
    .A2(_0724_),
    .B1(_0725_),
    .Y(_0726_));
 sky130_fd_sc_hd__and2_1 _1695_ (.A(_0183_),
    .B(_0200_),
    .X(_0727_));
 sky130_fd_sc_hd__a2bb2oi_1 _1696_ (.A1_N(_0723_),
    .A2_N(_0727_),
    .B1(_0674_),
    .B2(_0722_),
    .Y(_0728_));
 sky130_fd_sc_hd__o31a_1 _1697_ (.A1(_0720_),
    .A2(_0723_),
    .A3(_0726_),
    .B1(_0728_),
    .X(_0729_));
 sky130_fd_sc_hd__and2_1 _1698_ (.A(net115),
    .B(net114),
    .X(_0730_));
 sky130_fd_sc_hd__nand4_1 _1699_ (.A(net118),
    .B(net117),
    .C(net116),
    .D(_0730_),
    .Y(_0731_));
 sky130_fd_sc_hd__nand3_1 _1700_ (.A(_0298_),
    .B(_0218_),
    .C(_0235_),
    .Y(_0732_));
 sky130_fd_sc_hd__nor4_1 _1701_ (.A(net119),
    .B(net183),
    .C(_0731_),
    .D(_0732_),
    .Y(_0733_));
 sky130_fd_sc_hd__nand2_1 _1702_ (.A(_0729_),
    .B(_0733_),
    .Y(_0734_));
 sky130_fd_sc_hd__nor2b_1 _1703_ (.A(net183),
    .B_N(net119),
    .Y(_0735_));
 sky130_fd_sc_hd__a21o_1 _1704_ (.A1(_0218_),
    .A2(_0234_),
    .B1(_0217_),
    .X(_0736_));
 sky130_fd_sc_hd__a21oi_1 _1705_ (.A1(_0298_),
    .A2(_0736_),
    .B1(_0297_),
    .Y(_0737_));
 sky130_fd_sc_hd__nand3b_1 _1706_ (.A_N(_0729_),
    .B(_0735_),
    .C(_0737_),
    .Y(_0738_));
 sky130_fd_sc_hd__nand2_1 _1707_ (.A(_0731_),
    .B(_0735_),
    .Y(_0739_));
 sky130_fd_sc_hd__nor4_1 _1708_ (.A(net119),
    .B(net183),
    .C(_0731_),
    .D(_0737_),
    .Y(_0740_));
 sky130_fd_sc_hd__a31oi_1 _1709_ (.A1(_0737_),
    .A2(_0732_),
    .A3(_0735_),
    .B1(_0740_),
    .Y(_0741_));
 sky130_fd_sc_hd__nand4_1 _1710_ (.A(_0734_),
    .B(_0738_),
    .C(_0739_),
    .D(_0741_),
    .Y(_0463_));
 sky130_fd_sc_hd__nand3_1 _1711_ (.A(net117),
    .B(net116),
    .C(_0730_),
    .Y(_0742_));
 sky130_fd_sc_hd__o21ai_0 _1712_ (.A1(_0699_),
    .A2(_0742_),
    .B1(net118),
    .Y(_0743_));
 sky130_fd_sc_hd__or3_1 _1713_ (.A(net118),
    .B(_0699_),
    .C(_0742_),
    .X(_0744_));
 sky130_fd_sc_hd__a21oi_1 _1714_ (.A1(_0743_),
    .A2(_0744_),
    .B1(net183),
    .Y(_0464_));
 sky130_fd_sc_hd__nor2_1 _1715_ (.A(net117),
    .B(net183),
    .Y(_0745_));
 sky130_fd_sc_hd__nor2b_1 _1716_ (.A(net183),
    .B_N(net117),
    .Y(_0746_));
 sky130_fd_sc_hd__o21a_1 _1717_ (.A1(_0676_),
    .A2(_0725_),
    .B1(_0721_),
    .X(_0747_));
 sky130_fd_sc_hd__o21ai_0 _1718_ (.A1(_0674_),
    .A2(_0747_),
    .B1(_0722_),
    .Y(_0748_));
 sky130_fd_sc_hd__a31oi_1 _1719_ (.A1(_0218_),
    .A2(_0235_),
    .A3(_0748_),
    .B1(_0736_),
    .Y(_0749_));
 sky130_fd_sc_hd__nand2_1 _1720_ (.A(_0298_),
    .B(_0730_),
    .Y(_0750_));
 sky130_fd_sc_hd__nand2_1 _1721_ (.A(_0297_),
    .B(_0730_),
    .Y(_0751_));
 sky130_fd_sc_hd__o21ai_0 _1722_ (.A1(_0749_),
    .A2(_0750_),
    .B1(_0751_),
    .Y(_0752_));
 sky130_fd_sc_hd__nand2_1 _1723_ (.A(_0218_),
    .B(_0235_),
    .Y(_0753_));
 sky130_fd_sc_hd__a211o_1 _1724_ (.A1(_0708_),
    .A2(_0711_),
    .B1(_0714_),
    .C1(_0716_),
    .X(_0754_));
 sky130_fd_sc_hd__o211ai_1 _1725_ (.A1(_0678_),
    .A2(_0704_),
    .B1(_0703_),
    .C1(_0724_),
    .Y(_0755_));
 sky130_fd_sc_hd__o21ai_0 _1726_ (.A1(_0678_),
    .A2(_0719_),
    .B1(_0724_),
    .Y(_0756_));
 sky130_fd_sc_hd__o21ai_1 _1727_ (.A1(_0754_),
    .A2(_0755_),
    .B1(_0756_),
    .Y(_0757_));
 sky130_fd_sc_hd__nor4_1 _1728_ (.A(_0677_),
    .B(_0753_),
    .C(_0757_),
    .D(_0750_),
    .Y(_0758_));
 sky130_fd_sc_hd__o21ai_0 _1729_ (.A1(_0752_),
    .A2(_0758_),
    .B1(net116),
    .Y(_0759_));
 sky130_fd_sc_hd__mux2_2 _1730_ (.A0(_0745_),
    .A1(_0746_),
    .S(_0759_),
    .X(_0465_));
 sky130_fd_sc_hd__o21ai_0 _1731_ (.A1(_0297_),
    .A2(_0298_),
    .B1(_0730_),
    .Y(_0760_));
 sky130_fd_sc_hd__nor2_1 _1732_ (.A(net116),
    .B(_0751_),
    .Y(_0761_));
 sky130_fd_sc_hd__a21oi_1 _1733_ (.A1(net116),
    .A2(_0760_),
    .B1(_0761_),
    .Y(_0762_));
 sky130_fd_sc_hd__nor3_1 _1734_ (.A(net116),
    .B(net183),
    .C(_0750_),
    .Y(_0763_));
 sky130_fd_sc_hd__nor3b_1 _1735_ (.A(_0297_),
    .B(net183),
    .C_N(net116),
    .Y(_0764_));
 sky130_fd_sc_hd__or2_2 _1736_ (.A(_0217_),
    .B(_0234_),
    .X(_0765_));
 sky130_fd_sc_hd__o22a_1 _1737_ (.A1(_0217_),
    .A2(_0218_),
    .B1(_0235_),
    .B2(_0765_),
    .X(_0766_));
 sky130_fd_sc_hd__o31ai_1 _1738_ (.A1(_0681_),
    .A2(_0694_),
    .A3(_0765_),
    .B1(_0766_),
    .Y(_0767_));
 sky130_fd_sc_hd__mux2i_1 _1739_ (.A0(_0763_),
    .A1(_0764_),
    .S(_0767_),
    .Y(_0768_));
 sky130_fd_sc_hd__o21ai_0 _1740_ (.A1(net183),
    .A2(_0762_),
    .B1(_0768_),
    .Y(_0466_));
 sky130_fd_sc_hd__nor4b_1 _1741_ (.A(net115),
    .B(net183),
    .C(_0732_),
    .D_N(net114),
    .Y(_0769_));
 sky130_fd_sc_hd__inv_1 _1742_ (.A(net115),
    .Y(_0770_));
 sky130_fd_sc_hd__or4b_2 _1743_ (.A(net115),
    .B(net183),
    .C(_0737_),
    .D_N(net114),
    .X(_0771_));
 sky130_fd_sc_hd__nand4b_1 _1744_ (.A_N(net183),
    .B(_0737_),
    .C(_0732_),
    .D(net115),
    .Y(_0772_));
 sky130_fd_sc_hd__o311ai_0 _1745_ (.A1(_0770_),
    .A2(net114),
    .A3(net183),
    .B1(_0771_),
    .C1(_0772_),
    .Y(_0773_));
 sky130_fd_sc_hd__nor4b_1 _1746_ (.A(_0770_),
    .B(net183),
    .C(_0729_),
    .D_N(_0737_),
    .Y(_0774_));
 sky130_fd_sc_hd__a211o_1 _1747_ (.A1(_0729_),
    .A2(_0769_),
    .B1(_0773_),
    .C1(_0774_),
    .X(_0467_));
 sky130_fd_sc_hd__xor2_1 _1748_ (.A(net114),
    .B(_0699_),
    .X(_0775_));
 sky130_fd_sc_hd__nor2_1 _1749_ (.A(net183),
    .B(_0775_),
    .Y(_0468_));
 sky130_fd_sc_hd__o31ai_1 _1750_ (.A1(_0677_),
    .A2(_0753_),
    .A3(_0757_),
    .B1(_0749_),
    .Y(_0776_));
 sky130_fd_sc_hd__xnor2_1 _1751_ (.A(_0298_),
    .B(_0776_),
    .Y(_0777_));
 sky130_fd_sc_hd__nor2_1 _1752_ (.A(net183),
    .B(_0777_),
    .Y(_0469_));
 sky130_fd_sc_hd__o21ai_0 _1753_ (.A1(_0681_),
    .A2(_0694_),
    .B1(_0235_),
    .Y(_0778_));
 sky130_fd_sc_hd__nor3b_1 _1754_ (.A(_0218_),
    .B(_0234_),
    .C_N(_0778_),
    .Y(_0779_));
 sky130_fd_sc_hd__a21boi_0 _1755_ (.A1(_0658_),
    .A2(_0778_),
    .B1_N(_0218_),
    .Y(_0780_));
 sky130_fd_sc_hd__nor3_1 _1756_ (.A(net183),
    .B(_0779_),
    .C(_0780_),
    .Y(_0470_));
 sky130_fd_sc_hd__xnor2_1 _1757_ (.A(_0235_),
    .B(_0729_),
    .Y(_0781_));
 sky130_fd_sc_hd__nor2_1 _1758_ (.A(net183),
    .B(_0781_),
    .Y(_0471_));
 sky130_fd_sc_hd__inv_1 _1759_ (.A(_0350_),
    .Y(_0782_));
 sky130_fd_sc_hd__o311ai_0 _1760_ (.A1(_0673_),
    .A2(_0678_),
    .A3(_0680_),
    .B1(_0692_),
    .C1(_0782_),
    .Y(_0783_));
 sky130_fd_sc_hd__and3_1 _1761_ (.A(_0170_),
    .B(_0257_),
    .C(_0727_),
    .X(_0784_));
 sky130_fd_sc_hd__inv_1 _1762_ (.A(_0170_),
    .Y(_0785_));
 sky130_fd_sc_hd__a21oi_1 _1763_ (.A1(_0183_),
    .A2(_0684_),
    .B1(_0182_),
    .Y(_0786_));
 sky130_fd_sc_hd__a21oi_1 _1764_ (.A1(_0145_),
    .A2(_0784_),
    .B1(_0169_),
    .Y(_0787_));
 sky130_fd_sc_hd__o21ai_0 _1765_ (.A1(_0785_),
    .A2(_0786_),
    .B1(_0787_),
    .Y(_0788_));
 sky130_fd_sc_hd__a31oi_1 _1766_ (.A1(_0146_),
    .A2(_0783_),
    .A3(_0784_),
    .B1(_0788_),
    .Y(_0789_));
 sky130_fd_sc_hd__xnor2_1 _1767_ (.A(_0682_),
    .B(_0789_),
    .Y(_0790_));
 sky130_fd_sc_hd__nor2_1 _1768_ (.A(net183),
    .B(_0790_),
    .Y(_0472_));
 sky130_fd_sc_hd__nor2_1 _1769_ (.A(_0785_),
    .B(net183),
    .Y(_0791_));
 sky130_fd_sc_hd__nor2_1 _1770_ (.A(_0170_),
    .B(net183),
    .Y(_0792_));
 sky130_fd_sc_hd__nor2_1 _1771_ (.A(_0720_),
    .B(_0726_),
    .Y(_0793_));
 sky130_fd_sc_hd__o21ai_0 _1772_ (.A1(_0676_),
    .A2(_0793_),
    .B1(_0721_),
    .Y(_0794_));
 sky130_fd_sc_hd__mux2_2 _1773_ (.A0(_0791_),
    .A1(_0792_),
    .S(_0794_),
    .X(_0473_));
 sky130_fd_sc_hd__or2_2 _1774_ (.A(_0241_),
    .B(_0242_),
    .X(_0795_));
 sky130_fd_sc_hd__nand3_1 _1775_ (.A(_0200_),
    .B(_0351_),
    .C(_0795_),
    .Y(_0796_));
 sky130_fd_sc_hd__nor2_1 _1776_ (.A(_0675_),
    .B(_0796_),
    .Y(_0797_));
 sky130_fd_sc_hd__a21o_1 _1777_ (.A1(_0156_),
    .A2(_0141_),
    .B1(_0155_),
    .X(_0798_));
 sky130_fd_sc_hd__nand2_1 _1778_ (.A(_0273_),
    .B(_0798_),
    .Y(_0799_));
 sky130_fd_sc_hd__nor2_1 _1779_ (.A(_0241_),
    .B(_0272_),
    .Y(_0800_));
 sky130_fd_sc_hd__o211ai_1 _1780_ (.A1(_0673_),
    .A2(_0680_),
    .B1(_0799_),
    .C1(_0800_),
    .Y(_0801_));
 sky130_fd_sc_hd__a21boi_0 _1781_ (.A1(_0797_),
    .A2(_0801_),
    .B1_N(_0685_),
    .Y(_0802_));
 sky130_fd_sc_hd__xor2_1 _1782_ (.A(_0183_),
    .B(_0802_),
    .X(_0803_));
 sky130_fd_sc_hd__nor2_1 _1783_ (.A(net183),
    .B(_0803_),
    .Y(_0474_));
 sky130_fd_sc_hd__xor2_1 _1784_ (.A(_0200_),
    .B(_0793_),
    .X(_0804_));
 sky130_fd_sc_hd__nor2_1 _1785_ (.A(net183),
    .B(_0804_),
    .Y(_0475_));
 sky130_fd_sc_hd__a21oi_1 _1786_ (.A1(_0146_),
    .A2(_0783_),
    .B1(_0145_),
    .Y(_0805_));
 sky130_fd_sc_hd__xor2_1 _1787_ (.A(_0257_),
    .B(_0805_),
    .X(_0806_));
 sky130_fd_sc_hd__nor2_1 _1788_ (.A(net183),
    .B(_0806_),
    .Y(_0476_));
 sky130_fd_sc_hd__xor2_1 _1789_ (.A(_0146_),
    .B(_0757_),
    .X(_0807_));
 sky130_fd_sc_hd__nor2_1 _1790_ (.A(net183),
    .B(_0807_),
    .Y(_0477_));
 sky130_fd_sc_hd__a21oi_1 _1791_ (.A1(_0795_),
    .A2(_0801_),
    .B1(_0351_),
    .Y(_0808_));
 sky130_fd_sc_hd__and3_1 _1792_ (.A(_0351_),
    .B(_0795_),
    .C(_0801_),
    .X(_0809_));
 sky130_fd_sc_hd__nor3_1 _1793_ (.A(net183),
    .B(_0808_),
    .C(_0809_),
    .Y(_0478_));
 sky130_fd_sc_hd__o21ai_0 _1794_ (.A1(_0717_),
    .A2(_0718_),
    .B1(_0705_),
    .Y(_0810_));
 sky130_fd_sc_hd__xnor2_1 _1795_ (.A(_0242_),
    .B(_0810_),
    .Y(_0811_));
 sky130_fd_sc_hd__nor2_1 _1796_ (.A(net183),
    .B(_0811_),
    .Y(_0479_));
 sky130_fd_sc_hd__nor2b_1 _1797_ (.A(_0673_),
    .B_N(_0142_),
    .Y(_0812_));
 sky130_fd_sc_hd__o21ai_0 _1798_ (.A1(_0141_),
    .A2(_0812_),
    .B1(_0156_),
    .Y(_0813_));
 sky130_fd_sc_hd__nor2_1 _1799_ (.A(_0273_),
    .B(_0155_),
    .Y(_0814_));
 sky130_fd_sc_hd__o21ai_0 _1800_ (.A1(_0673_),
    .A2(_0680_),
    .B1(_0799_),
    .Y(_0815_));
 sky130_fd_sc_hd__a211oi_1 _1801_ (.A1(_0813_),
    .A2(_0814_),
    .B1(net183),
    .C1(_0815_),
    .Y(_0480_));
 sky130_fd_sc_hd__nand2_1 _1802_ (.A(_0142_),
    .B(_0342_),
    .Y(_0816_));
 sky130_fd_sc_hd__o21a_1 _1803_ (.A1(_0717_),
    .A2(_0816_),
    .B1(_0703_),
    .X(_0817_));
 sky130_fd_sc_hd__xor2_1 _1804_ (.A(_0156_),
    .B(_0817_),
    .X(_0818_));
 sky130_fd_sc_hd__nor2_1 _1805_ (.A(net182),
    .B(_0818_),
    .Y(_0481_));
 sky130_fd_sc_hd__xor2_1 _1806_ (.A(_0142_),
    .B(_0673_),
    .X(_0819_));
 sky130_fd_sc_hd__nor2_1 _1807_ (.A(net182),
    .B(_0819_),
    .Y(_0482_));
 sky130_fd_sc_hd__xnor2_1 _1808_ (.A(_0342_),
    .B(_0754_),
    .Y(_0820_));
 sky130_fd_sc_hd__nor2_1 _1809_ (.A(net182),
    .B(_0820_),
    .Y(_0483_));
 sky130_fd_sc_hd__nor2_1 _1810_ (.A(_0662_),
    .B(_0663_),
    .Y(_0821_));
 sky130_fd_sc_hd__o21a_1 _1811_ (.A1(_0299_),
    .A2(_0821_),
    .B1(_0222_),
    .X(_0822_));
 sky130_fd_sc_hd__nor2_1 _1812_ (.A(_0221_),
    .B(_0822_),
    .Y(_0823_));
 sky130_fd_sc_hd__o21ai_0 _1813_ (.A1(_0667_),
    .A2(_0823_),
    .B1(_0670_),
    .Y(_0824_));
 sky130_fd_sc_hd__xor2_1 _1814_ (.A(_0410_),
    .B(_0824_),
    .X(_0825_));
 sky130_fd_sc_hd__nor2b_1 _1815_ (.A(net182),
    .B_N(_0825_),
    .Y(_0484_));
 sky130_fd_sc_hd__o21a_1 _1816_ (.A1(_0299_),
    .A2(_0300_),
    .B1(_0222_),
    .X(_0826_));
 sky130_fd_sc_hd__o31a_1 _1817_ (.A1(_0299_),
    .A2(_0219_),
    .A3(_0711_),
    .B1(_0826_),
    .X(_0827_));
 sky130_fd_sc_hd__o21ai_0 _1818_ (.A1(_0221_),
    .A2(_0827_),
    .B1(_0161_),
    .Y(_0828_));
 sky130_fd_sc_hd__nand2b_1 _1819_ (.A_N(_0160_),
    .B(_0828_),
    .Y(_0829_));
 sky130_fd_sc_hd__xor2_1 _1820_ (.A(_0364_),
    .B(_0829_),
    .X(_0830_));
 sky130_fd_sc_hd__nor2b_1 _1821_ (.A(net49),
    .B_N(_0830_),
    .Y(_0485_));
 sky130_fd_sc_hd__xor2_1 _1822_ (.A(_0161_),
    .B(_0823_),
    .X(_0831_));
 sky130_fd_sc_hd__nor2_1 _1823_ (.A(net49),
    .B(_0831_),
    .Y(_0486_));
 sky130_fd_sc_hd__o21ai_0 _1824_ (.A1(_0219_),
    .A2(_0711_),
    .B1(_0300_),
    .Y(_0832_));
 sky130_fd_sc_hd__nor2_1 _1825_ (.A(_0222_),
    .B(_0299_),
    .Y(_0833_));
 sky130_fd_sc_hd__a211oi_1 _1826_ (.A1(_0832_),
    .A2(_0833_),
    .B1(_0827_),
    .C1(net49),
    .Y(_0487_));
 sky130_fd_sc_hd__a21o_1 _1827_ (.A1(_0237_),
    .A2(_0109_),
    .B1(_0236_),
    .X(_0834_));
 sky130_fd_sc_hd__a211oi_1 _1828_ (.A1(_0220_),
    .A2(_0834_),
    .B1(_0300_),
    .C1(_0219_),
    .Y(_0835_));
 sky130_fd_sc_hd__nor3_1 _1829_ (.A(net49),
    .B(_0821_),
    .C(_0835_),
    .Y(_0488_));
 sky130_fd_sc_hd__a21o_1 _1830_ (.A1(_0144_),
    .A2(_0108_),
    .B1(_0143_),
    .X(_0836_));
 sky130_fd_sc_hd__a211oi_1 _1831_ (.A1(_0237_),
    .A2(_0836_),
    .B1(_0220_),
    .C1(_0236_),
    .Y(_0837_));
 sky130_fd_sc_hd__nor3_1 _1832_ (.A(net49),
    .B(_0711_),
    .C(_0837_),
    .Y(_0489_));
 sky130_fd_sc_hd__xnor2_1 _1833_ (.A(_0237_),
    .B(_0109_),
    .Y(_0838_));
 sky130_fd_sc_hd__nor2_1 _1834_ (.A(net49),
    .B(_0838_),
    .Y(_0490_));
 sky130_fd_sc_hd__nor2b_1 _1835_ (.A(net49),
    .B_N(_0110_),
    .Y(_0491_));
 sky130_fd_sc_hd__nor2b_1 _1836_ (.A(net49),
    .B_N(_0301_),
    .Y(_0492_));
 sky130_fd_sc_hd__nor2b_1 _1837_ (.A(net183),
    .B_N(net39),
    .Y(_0493_));
 sky130_fd_sc_hd__nor2b_1 _1838_ (.A(net183),
    .B_N(net38),
    .Y(_0494_));
 sky130_fd_sc_hd__nor2b_1 _1839_ (.A(net183),
    .B_N(net37),
    .Y(_0495_));
 sky130_fd_sc_hd__nor2b_1 _1840_ (.A(net183),
    .B_N(net35),
    .Y(_0496_));
 sky130_fd_sc_hd__nor2b_1 _1841_ (.A(net183),
    .B_N(net34),
    .Y(_0497_));
 sky130_fd_sc_hd__nor2b_1 _1843_ (.A(net183),
    .B_N(net33),
    .Y(_0498_));
 sky130_fd_sc_hd__nor2b_1 _1844_ (.A(net183),
    .B_N(net32),
    .Y(_0499_));
 sky130_fd_sc_hd__nor2b_1 _1845_ (.A(net49),
    .B_N(net31),
    .Y(_0500_));
 sky130_fd_sc_hd__nor2b_1 _1846_ (.A(net49),
    .B_N(net30),
    .Y(_0501_));
 sky130_fd_sc_hd__nor2b_1 _1847_ (.A(net49),
    .B_N(net29),
    .Y(_0502_));
 sky130_fd_sc_hd__nor2b_1 _1848_ (.A(net49),
    .B_N(net28),
    .Y(_0503_));
 sky130_fd_sc_hd__nor2b_1 _1849_ (.A(net49),
    .B_N(net27),
    .Y(_0504_));
 sky130_fd_sc_hd__nor2b_1 _1850_ (.A(net49),
    .B_N(net26),
    .Y(_0505_));
 sky130_fd_sc_hd__nor2b_1 _1851_ (.A(net49),
    .B_N(net48),
    .Y(_0506_));
 sky130_fd_sc_hd__nor2b_1 _1852_ (.A(net49),
    .B_N(net47),
    .Y(_0507_));
 sky130_fd_sc_hd__nor2b_1 _1854_ (.A(net182),
    .B_N(net46),
    .Y(_0508_));
 sky130_fd_sc_hd__nor2b_1 _1855_ (.A(net182),
    .B_N(net45),
    .Y(_0509_));
 sky130_fd_sc_hd__nor2b_1 _1856_ (.A(net182),
    .B_N(net44),
    .Y(_0510_));
 sky130_fd_sc_hd__nor2b_1 _1857_ (.A(net49),
    .B_N(net43),
    .Y(_0511_));
 sky130_fd_sc_hd__nor2b_1 _1858_ (.A(net49),
    .B_N(net42),
    .Y(_0512_));
 sky130_fd_sc_hd__nor2b_1 _1859_ (.A(net49),
    .B_N(net41),
    .Y(_0513_));
 sky130_fd_sc_hd__nor2b_1 _1860_ (.A(net49),
    .B_N(net36),
    .Y(_0514_));
 sky130_fd_sc_hd__nor2b_1 _1861_ (.A(net49),
    .B_N(net25),
    .Y(_0515_));
 sky130_fd_sc_hd__nor2b_1 _1862_ (.A(net182),
    .B_N(net14),
    .Y(_0516_));
 sky130_fd_sc_hd__nor2b_1 _1863_ (.A(net182),
    .B_N(net24),
    .Y(_0517_));
 sky130_fd_sc_hd__nor2b_1 _1865_ (.A(net182),
    .B_N(net23),
    .Y(_0518_));
 sky130_fd_sc_hd__nor2b_1 _1866_ (.A(net182),
    .B_N(net22),
    .Y(_0519_));
 sky130_fd_sc_hd__nor2b_1 _1867_ (.A(net182),
    .B_N(net21),
    .Y(_0520_));
 sky130_fd_sc_hd__nor2b_1 _1868_ (.A(net182),
    .B_N(net20),
    .Y(_0521_));
 sky130_fd_sc_hd__nor2b_1 _1869_ (.A(net182),
    .B_N(net19),
    .Y(_0522_));
 sky130_fd_sc_hd__nor2b_1 _1870_ (.A(net182),
    .B_N(net18),
    .Y(_0523_));
 sky130_fd_sc_hd__nor2b_1 _1871_ (.A(net182),
    .B_N(net17),
    .Y(_0524_));
 sky130_fd_sc_hd__nor2b_1 _1872_ (.A(net182),
    .B_N(net16),
    .Y(_0525_));
 sky130_fd_sc_hd__nor2b_1 _1873_ (.A(net182),
    .B_N(net13),
    .Y(_0526_));
 sky130_fd_sc_hd__nor2b_1 _1874_ (.A(net181),
    .B_N(net75),
    .Y(_0527_));
 sky130_fd_sc_hd__nor2b_1 _1876_ (.A(net181),
    .B_N(net85),
    .Y(_0528_));
 sky130_fd_sc_hd__nor2b_1 _1877_ (.A(net181),
    .B_N(net84),
    .Y(_0529_));
 sky130_fd_sc_hd__nor2b_1 _1878_ (.A(net181),
    .B_N(net83),
    .Y(_0530_));
 sky130_fd_sc_hd__nor2b_1 _1879_ (.A(net181),
    .B_N(net82),
    .Y(_0531_));
 sky130_fd_sc_hd__nor2b_1 _1880_ (.A(net181),
    .B_N(net81),
    .Y(_0532_));
 sky130_fd_sc_hd__nor2b_1 _1881_ (.A(net181),
    .B_N(net80),
    .Y(_0533_));
 sky130_fd_sc_hd__nor2b_1 _1882_ (.A(net181),
    .B_N(net79),
    .Y(_0534_));
 sky130_fd_sc_hd__nor2b_1 _1883_ (.A(net181),
    .B_N(net78),
    .Y(_0535_));
 sky130_fd_sc_hd__nor2b_1 _1884_ (.A(net181),
    .B_N(net77),
    .Y(_0536_));
 sky130_fd_sc_hd__nor2b_1 _1885_ (.A(net181),
    .B_N(net74),
    .Y(_0537_));
 sky130_fd_sc_hd__nor2b_1 _1887_ (.A(net181),
    .B_N(net63),
    .Y(_0538_));
 sky130_fd_sc_hd__nor2b_1 _1888_ (.A(net181),
    .B_N(net73),
    .Y(_0539_));
 sky130_fd_sc_hd__nor2b_1 _1889_ (.A(net181),
    .B_N(net72),
    .Y(_0540_));
 sky130_fd_sc_hd__nor2b_1 _1890_ (.A(net181),
    .B_N(net71),
    .Y(_0541_));
 sky130_fd_sc_hd__nor2b_1 _1891_ (.A(net181),
    .B_N(net70),
    .Y(_0542_));
 sky130_fd_sc_hd__nor2b_1 _1892_ (.A(net181),
    .B_N(net69),
    .Y(_0543_));
 sky130_fd_sc_hd__nor2b_1 _1893_ (.A(net181),
    .B_N(net68),
    .Y(_0544_));
 sky130_fd_sc_hd__nor2b_1 _1894_ (.A(net181),
    .B_N(net67),
    .Y(_0545_));
 sky130_fd_sc_hd__nor2b_1 _1895_ (.A(net181),
    .B_N(net66),
    .Y(_0546_));
 sky130_fd_sc_hd__nor2b_1 _1896_ (.A(net181),
    .B_N(net65),
    .Y(_0547_));
 sky130_fd_sc_hd__nor2b_1 _1897_ (.A(net181),
    .B_N(net62),
    .Y(_0548_));
 sky130_fd_sc_hd__or4_1 _1898_ (.A(net133),
    .B(net161),
    .C(net131),
    .D(net132),
    .X(_0844_));
 sky130_fd_sc_hd__nor2_1 _1899_ (.A(net158),
    .B(_0844_),
    .Y(_0845_));
 sky130_fd_sc_hd__nor3_1 _1900_ (.A(net182),
    .B(net174),
    .C(_0845_),
    .Y(_0549_));
 sky130_fd_sc_hd__inv_1 _1901_ (.A(\u_fault_detector.voltage_min[8] ),
    .Y(_0294_));
 sky130_fd_sc_hd__inv_1 _1902_ (.A(\u_fault_detector.voltage_max[3] ),
    .Y(_0323_));
 sky130_fd_sc_hd__inv_1 _1903_ (.A(\current_max[8] ),
    .Y(_0176_));
 sky130_fd_sc_hd__inv_1 _1904_ (.A(\current_max[5] ),
    .Y(_0246_));
 sky130_fd_sc_hd__inv_1 _1905_ (.A(\u_fault_detector.voltage_min[10] ),
    .Y(_0206_));
 sky130_fd_sc_hd__inv_1 _1906_ (.A(\u_fault_detector.voltage_max[6] ),
    .Y(_0147_));
 sky130_fd_sc_hd__inv_1 _1907_ (.A(\power_max[17] ),
    .Y(_0357_));
 sky130_fd_sc_hd__nor2b_1 _1908_ (.A(net182),
    .B_N(net3),
    .Y(_0550_));
 sky130_fd_sc_hd__nor2b_1 _1909_ (.A(net182),
    .B_N(net52),
    .Y(_0551_));
 sky130_fd_sc_hd__nand3_1 _1910_ (.A(_0366_),
    .B(_0335_),
    .C(_0580_),
    .Y(_0846_));
 sky130_fd_sc_hd__nand2_1 _1911_ (.A(_0584_),
    .B(_0846_),
    .Y(_0847_));
 sky130_fd_sc_hd__a41oi_1 _1912_ (.A1(_0336_),
    .A2(_0366_),
    .A3(_0580_),
    .A4(_0607_),
    .B1(_0847_),
    .Y(_0848_));
 sky130_fd_sc_hd__xor2_1 _1913_ (.A(_0112_),
    .B(_0252_),
    .X(_0849_));
 sky130_fd_sc_hd__xnor2_1 _1914_ (.A(_0288_),
    .B(_0849_),
    .Y(_0850_));
 sky130_fd_sc_hd__nand3b_1 _1915_ (.A_N(net183),
    .B(_0850_),
    .C(_0338_),
    .Y(_0851_));
 sky130_fd_sc_hd__nor3_1 _1916_ (.A(_0337_),
    .B(net183),
    .C(_0850_),
    .Y(_0852_));
 sky130_fd_sc_hd__or3_1 _1917_ (.A(_0337_),
    .B(_0338_),
    .C(_0850_),
    .X(_0853_));
 sky130_fd_sc_hd__nand2_1 _1918_ (.A(_0337_),
    .B(_0850_),
    .Y(_0854_));
 sky130_fd_sc_hd__a21oi_1 _1919_ (.A1(_0853_),
    .A2(_0854_),
    .B1(net183),
    .Y(_0855_));
 sky130_fd_sc_hd__a21oi_1 _1920_ (.A1(_0848_),
    .A2(_0852_),
    .B1(_0855_),
    .Y(_0856_));
 sky130_fd_sc_hd__o21ai_0 _1921_ (.A1(_0848_),
    .A2(_0851_),
    .B1(_0856_),
    .Y(_0552_));
 sky130_fd_sc_hd__nor2b_1 _1922_ (.A(net183),
    .B_N(net122),
    .Y(_0857_));
 sky130_fd_sc_hd__nor2_1 _1923_ (.A(net122),
    .B(net183),
    .Y(_0858_));
 sky130_fd_sc_hd__inv_1 _1924_ (.A(net121),
    .Y(_0859_));
 sky130_fd_sc_hd__nor2_1 _1925_ (.A(_0859_),
    .B(_0656_),
    .Y(_0860_));
 sky130_fd_sc_hd__o21a_1 _1926_ (.A1(_0752_),
    .A2(_0758_),
    .B1(_0860_),
    .X(_0861_));
 sky130_fd_sc_hd__mux2_2 _1927_ (.A0(_0857_),
    .A1(_0858_),
    .S(_0861_),
    .X(_0553_));
 sky130_fd_sc_hd__nor2b_1 _1928_ (.A(net183),
    .B_N(net40),
    .Y(_0554_));
 sky130_fd_sc_hd__nor2b_1 _1929_ (.A(net182),
    .B_N(net15),
    .Y(_0555_));
 sky130_fd_sc_hd__nor2b_1 _1930_ (.A(net181),
    .B_N(net76),
    .Y(_0556_));
 sky130_fd_sc_hd__nor2b_1 _1931_ (.A(net181),
    .B_N(net64),
    .Y(_0557_));
 sky130_fd_sc_hd__nand4_1 _1932_ (.A(_0408_),
    .B(_0375_),
    .C(_0390_),
    .D(_0387_),
    .Y(_0862_));
 sky130_fd_sc_hd__nand4_1 _1933_ (.A(_0359_),
    .B(_0349_),
    .C(_0381_),
    .D(_0393_),
    .Y(_0863_));
 sky130_fd_sc_hd__nor2_1 _1934_ (.A(_0862_),
    .B(_0863_),
    .Y(_0864_));
 sky130_fd_sc_hd__nand4_1 _1935_ (.A(_0369_),
    .B(_0175_),
    .C(_0271_),
    .D(_0285_),
    .Y(_0865_));
 sky130_fd_sc_hd__a21o_1 _1936_ (.A1(_0399_),
    .A2(_0395_),
    .B1(_0398_),
    .X(_0866_));
 sky130_fd_sc_hd__a21o_1 _1937_ (.A1(_0268_),
    .A2(_0866_),
    .B1(_0267_),
    .X(_0867_));
 sky130_fd_sc_hd__a21oi_1 _1938_ (.A1(_0245_),
    .A2(_0867_),
    .B1(_0244_),
    .Y(_0868_));
 sky130_fd_sc_hd__a21o_1 _1939_ (.A1(_0369_),
    .A2(_0174_),
    .B1(_0368_),
    .X(_0869_));
 sky130_fd_sc_hd__a21o_1 _1940_ (.A1(_0285_),
    .A2(_0869_),
    .B1(_0284_),
    .X(_0870_));
 sky130_fd_sc_hd__a21oi_1 _1941_ (.A1(_0271_),
    .A2(_0870_),
    .B1(_0270_),
    .Y(_0871_));
 sky130_fd_sc_hd__o21ai_0 _1942_ (.A1(_0865_),
    .A2(_0868_),
    .B1(_0871_),
    .Y(_0872_));
 sky130_fd_sc_hd__nand2_1 _1943_ (.A(_0864_),
    .B(_0872_),
    .Y(_0873_));
 sky130_fd_sc_hd__nand4_1 _1944_ (.A(_0362_),
    .B(_0372_),
    .C(_0378_),
    .D(_0402_),
    .Y(_0874_));
 sky130_fd_sc_hd__nor2b_1 _1945_ (.A(_0355_),
    .B_N(_0154_),
    .Y(_0875_));
 sky130_fd_sc_hd__o21ai_0 _1946_ (.A1(_0153_),
    .A2(_0875_),
    .B1(_0140_),
    .Y(_0876_));
 sky130_fd_sc_hd__nand2b_1 _1947_ (.A_N(_0139_),
    .B(_0876_),
    .Y(_0877_));
 sky130_fd_sc_hd__a21oi_1 _1948_ (.A1(_0137_),
    .A2(_0877_),
    .B1(_0136_),
    .Y(_0878_));
 sky130_fd_sc_hd__a21o_1 _1949_ (.A1(_0362_),
    .A2(_0371_),
    .B1(_0361_),
    .X(_0879_));
 sky130_fd_sc_hd__a21o_1 _1950_ (.A1(_0402_),
    .A2(_0879_),
    .B1(_0401_),
    .X(_0880_));
 sky130_fd_sc_hd__a21oi_1 _1951_ (.A1(_0378_),
    .A2(_0880_),
    .B1(_0377_),
    .Y(_0881_));
 sky130_fd_sc_hd__o21ai_0 _1952_ (.A1(_0874_),
    .A2(_0878_),
    .B1(_0881_),
    .Y(_0882_));
 sky130_fd_sc_hd__nand4_1 _1953_ (.A(_0245_),
    .B(_0399_),
    .C(_0396_),
    .D(_0268_),
    .Y(_0883_));
 sky130_fd_sc_hd__nor4_1 _1954_ (.A(_0862_),
    .B(_0863_),
    .C(_0865_),
    .D(_0883_),
    .Y(_0884_));
 sky130_fd_sc_hd__a21o_1 _1955_ (.A1(_0359_),
    .A2(_0348_),
    .B1(_0358_),
    .X(_0885_));
 sky130_fd_sc_hd__a21o_1 _1956_ (.A1(_0393_),
    .A2(_0885_),
    .B1(_0392_),
    .X(_0886_));
 sky130_fd_sc_hd__a21oi_1 _1957_ (.A1(_0381_),
    .A2(_0886_),
    .B1(_0380_),
    .Y(_0887_));
 sky130_fd_sc_hd__a21o_1 _1958_ (.A1(_0390_),
    .A2(_0386_),
    .B1(_0389_),
    .X(_0888_));
 sky130_fd_sc_hd__a21o_1 _1959_ (.A1(_0375_),
    .A2(_0888_),
    .B1(_0374_),
    .X(_0889_));
 sky130_fd_sc_hd__a21oi_1 _1960_ (.A1(_0408_),
    .A2(_0889_),
    .B1(_0407_),
    .Y(_0890_));
 sky130_fd_sc_hd__o21ai_0 _1961_ (.A1(_0862_),
    .A2(_0887_),
    .B1(_0890_),
    .Y(_0891_));
 sky130_fd_sc_hd__a21oi_1 _1962_ (.A1(_0882_),
    .A2(_0884_),
    .B1(_0891_),
    .Y(_0892_));
 sky130_fd_sc_hd__nand4_1 _1963_ (.A(_0137_),
    .B(_0140_),
    .C(_0154_),
    .D(_0356_),
    .Y(_0893_));
 sky130_fd_sc_hd__nor2_1 _1964_ (.A(_0874_),
    .B(_0893_),
    .Y(_0894_));
 sky130_fd_sc_hd__a221oi_1 _1965_ (.A1(_0873_),
    .A2(_0892_),
    .B1(_0894_),
    .B2(_0884_),
    .C1(net182),
    .Y(_0558_));
 sky130_fd_sc_hd__nand4_1 _1966_ (.A(_0413_),
    .B(_0255_),
    .C(_0165_),
    .D(_0178_),
    .Y(_0895_));
 sky130_fd_sc_hd__nand4_1 _1967_ (.A(_0195_),
    .B(_0159_),
    .C(_0248_),
    .D(_0332_),
    .Y(_0896_));
 sky130_fd_sc_hd__nand4_1 _1968_ (.A(_0240_),
    .B(_0322_),
    .C(_0312_),
    .D(_0307_),
    .Y(_0897_));
 sky130_fd_sc_hd__nor3_1 _1969_ (.A(_0895_),
    .B(_0896_),
    .C(_0897_),
    .Y(_0898_));
 sky130_fd_sc_hd__a21o_1 _1970_ (.A1(_0165_),
    .A2(_0177_),
    .B1(_0164_),
    .X(_0899_));
 sky130_fd_sc_hd__a21o_1 _1971_ (.A1(_0255_),
    .A2(_0899_),
    .B1(_0254_),
    .X(_0900_));
 sky130_fd_sc_hd__a21o_1 _1972_ (.A1(_0248_),
    .A2(_0331_),
    .B1(_0247_),
    .X(_0901_));
 sky130_fd_sc_hd__a21o_1 _1973_ (.A1(_0159_),
    .A2(_0901_),
    .B1(_0158_),
    .X(_0902_));
 sky130_fd_sc_hd__a21oi_1 _1974_ (.A1(_0195_),
    .A2(_0902_),
    .B1(_0194_),
    .Y(_0903_));
 sky130_fd_sc_hd__nor2_1 _1975_ (.A(_0895_),
    .B(_0903_),
    .Y(_0904_));
 sky130_fd_sc_hd__nor2b_1 _1976_ (.A(_0306_),
    .B_N(_0312_),
    .Y(_0905_));
 sky130_fd_sc_hd__o21ai_0 _1977_ (.A1(_0311_),
    .A2(_0905_),
    .B1(_0322_),
    .Y(_0906_));
 sky130_fd_sc_hd__nand2b_1 _1978_ (.A_N(_0321_),
    .B(_0906_),
    .Y(_0907_));
 sky130_fd_sc_hd__a21oi_1 _1979_ (.A1(_0240_),
    .A2(_0907_),
    .B1(_0239_),
    .Y(_0908_));
 sky130_fd_sc_hd__nor3_1 _1980_ (.A(_0895_),
    .B(_0896_),
    .C(_0908_),
    .Y(_0909_));
 sky130_fd_sc_hd__a2111oi_0 _1981_ (.A1(_0413_),
    .A2(_0900_),
    .B1(_0904_),
    .C1(_0909_),
    .D1(_0412_),
    .Y(_0910_));
 sky130_fd_sc_hd__nor3_1 _1982_ (.A(net181),
    .B(_0898_),
    .C(_0910_),
    .Y(_0559_));
 sky130_fd_sc_hd__a21o_1 _1983_ (.A1(_0189_),
    .A2(_0167_),
    .B1(_0188_),
    .X(_0911_));
 sky130_fd_sc_hd__a21o_1 _1984_ (.A1(_0233_),
    .A2(_0911_),
    .B1(_0232_),
    .X(_0912_));
 sky130_fd_sc_hd__inv_1 _1985_ (.A(_0180_),
    .Y(_0913_));
 sky130_fd_sc_hd__nor2b_1 _1986_ (.A(_0230_),
    .B_N(_0384_),
    .Y(_0914_));
 sky130_fd_sc_hd__o21a_1 _1987_ (.A1(_0383_),
    .A2(_0914_),
    .B1(_0198_),
    .X(_0915_));
 sky130_fd_sc_hd__o21ai_0 _1988_ (.A1(_0197_),
    .A2(_0915_),
    .B1(_0181_),
    .Y(_0916_));
 sky130_fd_sc_hd__nand4_1 _1989_ (.A(_0216_),
    .B(_0233_),
    .C(_0189_),
    .D(_0168_),
    .Y(_0917_));
 sky130_fd_sc_hd__a21oi_1 _1990_ (.A1(_0913_),
    .A2(_0916_),
    .B1(_0917_),
    .Y(_0918_));
 sky130_fd_sc_hd__a211oi_1 _1991_ (.A1(_0216_),
    .A2(_0912_),
    .B1(_0918_),
    .C1(_0215_),
    .Y(_0919_));
 sky130_fd_sc_hd__nand2_1 _1992_ (.A(_0203_),
    .B(_0296_),
    .Y(_0920_));
 sky130_fd_sc_hd__a21oi_1 _1993_ (.A1(_0203_),
    .A2(_0295_),
    .B1(_0202_),
    .Y(_0921_));
 sky130_fd_sc_hd__o21ai_0 _1994_ (.A1(_0919_),
    .A2(_0920_),
    .B1(_0921_),
    .Y(_0922_));
 sky130_fd_sc_hd__a211o_1 _1995_ (.A1(_0416_),
    .A2(_0207_),
    .B1(net182),
    .C1(_0415_),
    .X(_0923_));
 sky130_fd_sc_hd__a31oi_1 _1996_ (.A1(_0416_),
    .A2(_0208_),
    .A3(_0922_),
    .B1(_0923_),
    .Y(_0560_));
 sky130_fd_sc_hd__nand4_1 _1997_ (.A(_0405_),
    .B(_0291_),
    .C(_0213_),
    .D(_0228_),
    .Y(_0924_));
 sky130_fd_sc_hd__nand4_1 _1998_ (.A(_0186_),
    .B(_0149_),
    .C(_0279_),
    .D(_0276_),
    .Y(_0925_));
 sky130_fd_sc_hd__nand4_1 _1999_ (.A(_0325_),
    .B(_0251_),
    .C(_0317_),
    .D(_0261_),
    .Y(_0926_));
 sky130_fd_sc_hd__nor3_1 _2000_ (.A(_0924_),
    .B(_0925_),
    .C(_0926_),
    .Y(_0927_));
 sky130_fd_sc_hd__a21o_1 _2001_ (.A1(_0213_),
    .A2(_0227_),
    .B1(_0212_),
    .X(_0928_));
 sky130_fd_sc_hd__a21o_1 _2002_ (.A1(_0291_),
    .A2(_0928_),
    .B1(_0290_),
    .X(_0929_));
 sky130_fd_sc_hd__a21o_1 _2003_ (.A1(_0279_),
    .A2(_0275_),
    .B1(_0278_),
    .X(_0930_));
 sky130_fd_sc_hd__a21o_1 _2004_ (.A1(_0149_),
    .A2(_0930_),
    .B1(_0148_),
    .X(_0931_));
 sky130_fd_sc_hd__a21oi_1 _2005_ (.A1(_0186_),
    .A2(_0931_),
    .B1(_0185_),
    .Y(_0932_));
 sky130_fd_sc_hd__nor2_1 _2006_ (.A(_0924_),
    .B(_0932_),
    .Y(_0933_));
 sky130_fd_sc_hd__nor2b_1 _2007_ (.A(_0260_),
    .B_N(_0317_),
    .Y(_0934_));
 sky130_fd_sc_hd__o21ai_0 _2008_ (.A1(_0316_),
    .A2(_0934_),
    .B1(_0251_),
    .Y(_0935_));
 sky130_fd_sc_hd__nand2b_1 _2009_ (.A_N(_0250_),
    .B(_0935_),
    .Y(_0936_));
 sky130_fd_sc_hd__a21oi_1 _2010_ (.A1(_0325_),
    .A2(_0936_),
    .B1(_0324_),
    .Y(_0937_));
 sky130_fd_sc_hd__nor3_1 _2011_ (.A(_0924_),
    .B(_0925_),
    .C(_0937_),
    .Y(_0938_));
 sky130_fd_sc_hd__a2111oi_0 _2012_ (.A1(_0405_),
    .A2(_0929_),
    .B1(_0933_),
    .C1(_0938_),
    .D1(_0404_),
    .Y(_0939_));
 sky130_fd_sc_hd__nor3_1 _2013_ (.A(net181),
    .B(_0927_),
    .C(_0939_),
    .Y(_0561_));
 sky130_fd_sc_hd__nand2_1 _2014_ (.A(net158),
    .B(_0844_),
    .Y(_0940_));
 sky130_fd_sc_hd__o21ai_0 _2015_ (.A1(net158),
    .A2(_0844_),
    .B1(net159),
    .Y(_0941_));
 sky130_fd_sc_hd__a21oi_1 _2016_ (.A1(_0940_),
    .A2(_0941_),
    .B1(net182),
    .Y(_0562_));
 sky130_fd_sc_hd__fa_1 _2017_ (.A(_0975_),
    .B(_0976_),
    .CIN(_0977_),
    .COUT(_0978_),
    .SUM(_0979_));
 sky130_fd_sc_hd__fa_1 _2018_ (.A(_0980_),
    .B(_0981_),
    .CIN(_0982_),
    .COUT(_0983_),
    .SUM(_0984_));
 sky130_fd_sc_hd__fa_1 _2019_ (.A(_0000_),
    .B(_0001_),
    .CIN(_0002_),
    .COUT(_0985_),
    .SUM(_0986_));
 sky130_fd_sc_hd__fa_1 _2020_ (.A(_0003_),
    .B(_0004_),
    .CIN(_0005_),
    .COUT(_0987_),
    .SUM(_0988_));
 sky130_fd_sc_hd__fa_1 _2021_ (.A(_0006_),
    .B(_0007_),
    .CIN(_0008_),
    .COUT(_0989_),
    .SUM(_0990_));
 sky130_fd_sc_hd__fa_1 _2022_ (.A(_0009_),
    .B(_0010_),
    .CIN(_0011_),
    .COUT(_0991_),
    .SUM(_0992_));
 sky130_fd_sc_hd__fa_1 _2023_ (.A(_0012_),
    .B(_0013_),
    .CIN(_0014_),
    .COUT(_0993_),
    .SUM(_0994_));
 sky130_fd_sc_hd__fa_1 _2024_ (.A(_0015_),
    .B(_0016_),
    .CIN(_0017_),
    .COUT(_0995_),
    .SUM(_0996_));
 sky130_fd_sc_hd__fa_1 _2025_ (.A(_0018_),
    .B(_0019_),
    .CIN(_0020_),
    .COUT(_0997_),
    .SUM(_0998_));
 sky130_fd_sc_hd__fa_1 _2026_ (.A(_0021_),
    .B(_0022_),
    .CIN(_0023_),
    .COUT(_0999_),
    .SUM(_1000_));
 sky130_fd_sc_hd__fa_1 _2027_ (.A(_0024_),
    .B(_0025_),
    .CIN(_0026_),
    .COUT(_1001_),
    .SUM(_1002_));
 sky130_fd_sc_hd__fa_1 _2028_ (.A(_0027_),
    .B(_0028_),
    .CIN(_0029_),
    .COUT(_1003_),
    .SUM(_1004_));
 sky130_fd_sc_hd__fa_1 _2029_ (.A(_0030_),
    .B(_0031_),
    .CIN(_0032_),
    .COUT(_1005_),
    .SUM(_1006_));
 sky130_fd_sc_hd__fa_1 _2030_ (.A(_1007_),
    .B(_1008_),
    .CIN(_1009_),
    .COUT(_1010_),
    .SUM(_1011_));
 sky130_fd_sc_hd__fa_1 _2031_ (.A(_0033_),
    .B(_0034_),
    .CIN(_0035_),
    .COUT(_1012_),
    .SUM(_1013_));
 sky130_fd_sc_hd__fa_1 _2032_ (.A(_1014_),
    .B(_1015_),
    .CIN(_1016_),
    .COUT(_1017_),
    .SUM(_1018_));
 sky130_fd_sc_hd__fa_1 _2033_ (.A(_1019_),
    .B(_0984_),
    .CIN(_1020_),
    .COUT(_1021_),
    .SUM(_1022_));
 sky130_fd_sc_hd__fa_1 _2034_ (.A(_1023_),
    .B(_1011_),
    .CIN(_1024_),
    .COUT(_1025_),
    .SUM(_1026_));
 sky130_fd_sc_hd__fa_1 _2035_ (.A(_1027_),
    .B(_1028_),
    .CIN(_1029_),
    .COUT(_1030_),
    .SUM(_1031_));
 sky130_fd_sc_hd__fa_1 _2036_ (.A(_1032_),
    .B(_1033_),
    .CIN(_1034_),
    .COUT(_1035_),
    .SUM(_1036_));
 sky130_fd_sc_hd__fa_1 _2037_ (.A(_1037_),
    .B(_1038_),
    .CIN(_0036_),
    .COUT(_1019_),
    .SUM(_1039_));
 sky130_fd_sc_hd__fa_1 _2038_ (.A(_1040_),
    .B(_1041_),
    .CIN(_1042_),
    .COUT(_1014_),
    .SUM(_1043_));
 sky130_fd_sc_hd__fa_1 _2039_ (.A(_1044_),
    .B(_1045_),
    .CIN(_1046_),
    .COUT(_1047_),
    .SUM(_1048_));
 sky130_fd_sc_hd__fa_1 _2040_ (.A(_1049_),
    .B(_1050_),
    .CIN(_1051_),
    .COUT(_1052_),
    .SUM(_1007_));
 sky130_fd_sc_hd__fa_1 _2041_ (.A(_1053_),
    .B(_1054_),
    .CIN(_1055_),
    .COUT(_1023_),
    .SUM(_1056_));
 sky130_fd_sc_hd__fa_1 _2042_ (.A(_1057_),
    .B(_1058_),
    .CIN(_1059_),
    .COUT(_1060_),
    .SUM(_1061_));
 sky130_fd_sc_hd__fa_1 _2043_ (.A(_1062_),
    .B(_1063_),
    .CIN(_1064_),
    .COUT(_1065_),
    .SUM(_1066_));
 sky130_fd_sc_hd__fa_1 _2044_ (.A(_1067_),
    .B(_1068_),
    .CIN(_1069_),
    .COUT(_1070_),
    .SUM(_1071_));
 sky130_fd_sc_hd__fa_1 _2045_ (.A(_1039_),
    .B(_1072_),
    .CIN(_1073_),
    .COUT(_1020_),
    .SUM(_1015_));
 sky130_fd_sc_hd__fa_1 _2046_ (.A(_1074_),
    .B(_0978_),
    .CIN(_0037_),
    .COUT(_0038_),
    .SUM(_0039_));
 sky130_fd_sc_hd__fa_1 _2047_ (.A(_1070_),
    .B(_1075_),
    .CIN(_1076_),
    .COUT(_1077_),
    .SUM(_1078_));
 sky130_fd_sc_hd__fa_1 _2048_ (.A(_1066_),
    .B(_1079_),
    .CIN(_1080_),
    .COUT(_1081_),
    .SUM(_1075_));
 sky130_fd_sc_hd__fa_1 _2049_ (.A(_1052_),
    .B(_1082_),
    .CIN(_1010_),
    .COUT(_1083_),
    .SUM(_1084_));
 sky130_fd_sc_hd__fa_1 _2050_ (.A(_1048_),
    .B(_1085_),
    .CIN(_1086_),
    .COUT(_1087_),
    .SUM(_1082_));
 sky130_fd_sc_hd__fa_1 _2051_ (.A(_0040_),
    .B(_0041_),
    .CIN(_0042_),
    .COUT(_1042_),
    .SUM(_1045_));
 sky130_fd_sc_hd__fa_1 _2052_ (.A(_0043_),
    .B(_0044_),
    .CIN(_0045_),
    .COUT(_1046_),
    .SUM(_1050_));
 sky130_fd_sc_hd__fa_1 _2053_ (.A(_0046_),
    .B(_0047_),
    .CIN(_0048_),
    .COUT(_1051_),
    .SUM(_1054_));
 sky130_fd_sc_hd__fa_1 _2054_ (.A(_0049_),
    .B(_0050_),
    .CIN(_0051_),
    .COUT(_1055_),
    .SUM(_1058_));
 sky130_fd_sc_hd__fa_1 _2055_ (.A(_0052_),
    .B(_0053_),
    .CIN(_0054_),
    .COUT(_1059_),
    .SUM(_1063_));
 sky130_fd_sc_hd__fa_1 _2056_ (.A(_0055_),
    .B(_0056_),
    .CIN(_0057_),
    .COUT(_1064_),
    .SUM(_1068_));
 sky130_fd_sc_hd__fa_1 _2057_ (.A(_0058_),
    .B(_0059_),
    .CIN(_0060_),
    .COUT(_1069_),
    .SUM(_1088_));
 sky130_fd_sc_hd__fa_1 _2058_ (.A(_0061_),
    .B(_0062_),
    .CIN(_0063_),
    .COUT(_1089_),
    .SUM(_1090_));
 sky130_fd_sc_hd__fa_1 _2059_ (.A(_0064_),
    .B(_0065_),
    .CIN(_0066_),
    .COUT(_1091_),
    .SUM(_1092_));
 sky130_fd_sc_hd__fa_1 _2060_ (.A(_0067_),
    .B(_0068_),
    .CIN(_0069_),
    .COUT(_1093_),
    .SUM(_1094_));
 sky130_fd_sc_hd__fa_1 _2061_ (.A(_0070_),
    .B(_0071_),
    .CIN(_0072_),
    .COUT(_1095_),
    .SUM(_1096_));
 sky130_fd_sc_hd__fa_1 _2062_ (.A(_1097_),
    .B(_1098_),
    .CIN(_1099_),
    .COUT(_1100_),
    .SUM(_1101_));
 sky130_fd_sc_hd__fa_1 _2063_ (.A(_1043_),
    .B(_1102_),
    .CIN(_1103_),
    .COUT(_1016_),
    .SUM(_1104_));
 sky130_fd_sc_hd__fa_1 _2064_ (.A(_1061_),
    .B(_1105_),
    .CIN(_1106_),
    .COUT(_1107_),
    .SUM(_1108_));
 sky130_fd_sc_hd__fa_1 _2065_ (.A(_1109_),
    .B(_1110_),
    .CIN(_1111_),
    .COUT(_1112_),
    .SUM(_0981_));
 sky130_fd_sc_hd__fa_1 _2066_ (.A(_1056_),
    .B(_1113_),
    .CIN(_1114_),
    .COUT(_1024_),
    .SUM(_1115_));
 sky130_fd_sc_hd__fa_1 _2067_ (.A(_1116_),
    .B(_0073_),
    .CIN(_1117_),
    .COUT(_1032_),
    .SUM(_1118_));
 sky130_fd_sc_hd__fa_1 _2068_ (.A(_1119_),
    .B(_0985_),
    .CIN(_1120_),
    .COUT(_1097_),
    .SUM(_1121_));
 sky130_fd_sc_hd__fa_1 _2069_ (.A(_0986_),
    .B(_0987_),
    .CIN(_1122_),
    .COUT(_1123_),
    .SUM(_1109_));
 sky130_fd_sc_hd__fa_1 _2070_ (.A(_0988_),
    .B(_0989_),
    .CIN(_1124_),
    .COUT(_0980_),
    .SUM(_1125_));
 sky130_fd_sc_hd__fa_1 _2071_ (.A(_0990_),
    .B(_0991_),
    .CIN(_1126_),
    .COUT(_1037_),
    .SUM(_1127_));
 sky130_fd_sc_hd__fa_1 _2072_ (.A(_0992_),
    .B(_0993_),
    .CIN(_1128_),
    .COUT(_1040_),
    .SUM(_1129_));
 sky130_fd_sc_hd__fa_1 _2073_ (.A(_0994_),
    .B(_0995_),
    .CIN(_1130_),
    .COUT(_1044_),
    .SUM(_1131_));
 sky130_fd_sc_hd__fa_1 _2074_ (.A(_0996_),
    .B(_0997_),
    .CIN(_1132_),
    .COUT(_1049_),
    .SUM(_1133_));
 sky130_fd_sc_hd__fa_1 _2075_ (.A(_0998_),
    .B(_0999_),
    .CIN(_1134_),
    .COUT(_1053_),
    .SUM(_1135_));
 sky130_fd_sc_hd__fa_1 _2076_ (.A(_0074_),
    .B(_0075_),
    .CIN(_0076_),
    .COUT(_1136_),
    .SUM(_1137_));
 sky130_fd_sc_hd__fa_1 _2077_ (.A(_0077_),
    .B(_0078_),
    .CIN(_0079_),
    .COUT(_1138_),
    .SUM(_1139_));
 sky130_fd_sc_hd__fa_1 _2078_ (.A(_0080_),
    .B(_1013_),
    .CIN(_1140_),
    .COUT(_1141_),
    .SUM(_1142_));
 sky130_fd_sc_hd__fa_1 _2079_ (.A(_0081_),
    .B(_0082_),
    .CIN(_0083_),
    .COUT(_1120_),
    .SUM(_1143_));
 sky130_fd_sc_hd__fa_1 _2080_ (.A(_0084_),
    .B(_0085_),
    .CIN(_0086_),
    .COUT(_1122_),
    .SUM(_1144_));
 sky130_fd_sc_hd__fa_1 _2081_ (.A(_0087_),
    .B(_0088_),
    .CIN(_0089_),
    .COUT(_1124_),
    .SUM(_1145_));
 sky130_fd_sc_hd__fa_1 _2082_ (.A(_0090_),
    .B(_0091_),
    .CIN(_0092_),
    .COUT(_1126_),
    .SUM(_1146_));
 sky130_fd_sc_hd__fa_1 _2083_ (.A(_0093_),
    .B(_0094_),
    .CIN(_0095_),
    .COUT(_1128_),
    .SUM(_1147_));
 sky130_fd_sc_hd__fa_1 _2084_ (.A(_0096_),
    .B(_0097_),
    .CIN(_0098_),
    .COUT(_1130_),
    .SUM(_1148_));
 sky130_fd_sc_hd__fa_1 _2085_ (.A(_0099_),
    .B(_0100_),
    .CIN(_0101_),
    .COUT(_1132_),
    .SUM(_1149_));
 sky130_fd_sc_hd__fa_1 _2086_ (.A(_0102_),
    .B(_0103_),
    .CIN(_0104_),
    .COUT(_1150_),
    .SUM(_1151_));
 sky130_fd_sc_hd__fa_1 _2087_ (.A(_0105_),
    .B(_0106_),
    .CIN(_0107_),
    .COUT(_1152_),
    .SUM(_1153_));
 sky130_fd_sc_hd__fa_1 _2088_ (.A(_1136_),
    .B(_1154_),
    .CIN(_1155_),
    .COUT(_1156_),
    .SUM(_1157_));
 sky130_fd_sc_hd__fa_1 _2089_ (.A(_1131_),
    .B(_1158_),
    .CIN(_1159_),
    .COUT(_1086_),
    .SUM(_1008_));
 sky130_fd_sc_hd__fa_1 _2090_ (.A(_1060_),
    .B(_1115_),
    .CIN(_1107_),
    .COUT(_1160_),
    .SUM(_1161_));
 sky130_fd_sc_hd__fa_1 _2091_ (.A(_1125_),
    .B(_1162_),
    .CIN(_1163_),
    .COUT(_0982_),
    .SUM(_1072_));
 sky130_fd_sc_hd__fa_1 _2092_ (.A(_1127_),
    .B(_1164_),
    .CIN(_1165_),
    .COUT(_1073_),
    .SUM(_1102_));
 sky130_fd_sc_hd__fa_1 _2093_ (.A(_1139_),
    .B(_1153_),
    .CIN(_1150_),
    .COUT(_1166_),
    .SUM(_1167_));
 sky130_fd_sc_hd__fa_1 _2094_ (.A(_1168_),
    .B(_1151_),
    .CIN(_1169_),
    .COUT(_1170_),
    .SUM(_1171_));
 sky130_fd_sc_hd__fa_1 _2095_ (.A(_1143_),
    .B(_1172_),
    .CIN(_1095_),
    .COUT(_1173_),
    .SUM(_1110_));
 sky130_fd_sc_hd__fa_1 _2096_ (.A(_1144_),
    .B(_1096_),
    .CIN(_1005_),
    .COUT(_1111_),
    .SUM(_1162_));
 sky130_fd_sc_hd__fa_1 _2097_ (.A(_1145_),
    .B(_1006_),
    .CIN(_1174_),
    .COUT(_1163_),
    .SUM(_1164_));
 sky130_fd_sc_hd__fa_1 _2098_ (.A(_1146_),
    .B(_1175_),
    .CIN(_1176_),
    .COUT(_1165_),
    .SUM(_1177_));
 sky130_fd_sc_hd__fa_1 _2099_ (.A(_1129_),
    .B(_1177_),
    .CIN(_1178_),
    .COUT(_1103_),
    .SUM(_1085_));
 sky130_fd_sc_hd__fa_1 _2100_ (.A(net145),
    .B(net109),
    .CIN(_0108_),
    .COUT(_0109_),
    .SUM(_0110_));
 sky130_fd_sc_hd__fa_1 _2101_ (.A(_1118_),
    .B(_1167_),
    .CIN(_1170_),
    .COUT(_1034_),
    .SUM(_1098_));
 sky130_fd_sc_hd__fa_1 _2102_ (.A(_1123_),
    .B(_1179_),
    .CIN(_1112_),
    .COUT(_1180_),
    .SUM(_1181_));
 sky130_fd_sc_hd__fa_1 _2103_ (.A(_1182_),
    .B(_0111_),
    .CIN(_1183_),
    .COUT(_0112_),
    .SUM(_1184_));
 sky130_fd_sc_hd__fa_1 _2104_ (.A(_1047_),
    .B(_1104_),
    .CIN(_1087_),
    .COUT(_1185_),
    .SUM(_1186_));
 sky130_fd_sc_hd__fa_1 _2105_ (.A(_1065_),
    .B(_1108_),
    .CIN(_1081_),
    .COUT(_1187_),
    .SUM(_1188_));
 sky130_fd_sc_hd__fa_1 _2106_ (.A(_0113_),
    .B(_0114_),
    .CIN(_0115_),
    .COUT(_1174_),
    .SUM(_1175_));
 sky130_fd_sc_hd__fa_1 _2107_ (.A(_1189_),
    .B(_1190_),
    .CIN(_1191_),
    .COUT(_1192_),
    .SUM(_1074_));
 sky130_fd_sc_hd__fa_1 _2108_ (.A(_0116_),
    .B(_0117_),
    .CIN(_0118_),
    .COUT(_1193_),
    .SUM(_1194_));
 sky130_fd_sc_hd__fa_1 _2109_ (.A(_0119_),
    .B(_0120_),
    .CIN(_0121_),
    .COUT(_1140_),
    .SUM(_1195_));
 sky130_fd_sc_hd__fa_1 _2110_ (.A(_1138_),
    .B(_1196_),
    .CIN(_1166_),
    .COUT(_1197_),
    .SUM(_1033_));
 sky130_fd_sc_hd__fa_1 _2111_ (.A(_1198_),
    .B(_1142_),
    .CIN(_1199_),
    .COUT(_1200_),
    .SUM(_1201_));
 sky130_fd_sc_hd__fa_1 _2112_ (.A(_1137_),
    .B(_1194_),
    .CIN(_1152_),
    .COUT(_1155_),
    .SUM(_1196_));
 sky130_fd_sc_hd__fa_1 _2113_ (.A(_1202_),
    .B(_1195_),
    .CIN(_1193_),
    .COUT(_1199_),
    .SUM(_1154_));
 sky130_fd_sc_hd__fa_1 _2114_ (.A(_0122_),
    .B(_0123_),
    .CIN(_0124_),
    .COUT(_1169_),
    .SUM(_1172_));
 sky130_fd_sc_hd__fa_1 _2115_ (.A(_0125_),
    .B(_0126_),
    .CIN(_0127_),
    .COUT(_1203_),
    .SUM(_1204_));
 sky130_fd_sc_hd__fa_1 _2116_ (.A(_1121_),
    .B(_1171_),
    .CIN(_1173_),
    .COUT(_1099_),
    .SUM(_1179_));
 sky130_fd_sc_hd__fa_1 _2117_ (.A(_0128_),
    .B(_0129_),
    .CIN(_0130_),
    .COUT(_1117_),
    .SUM(_1168_));
 sky130_fd_sc_hd__ha_1 _2118_ (.A(_0131_),
    .B(_0132_),
    .COUT(_1116_),
    .SUM(_1119_));
 sky130_fd_sc_hd__ha_1 _2119_ (.A(_1074_),
    .B(_0978_),
    .COUT(_0133_),
    .SUM(_0134_));
 sky130_fd_sc_hd__ha_1 _2120_ (.A(net151),
    .B(_0135_),
    .COUT(_0136_),
    .SUM(_0137_));
 sky130_fd_sc_hd__ha_1 _2121_ (.A(_1201_),
    .B(_1156_),
    .COUT(_1205_),
    .SUM(_1206_));
 sky130_fd_sc_hd__ha_1 _2122_ (.A(_1036_),
    .B(_1100_),
    .COUT(_1207_),
    .SUM(_1208_));
 sky130_fd_sc_hd__ha_1 _2123_ (.A(net150),
    .B(_0138_),
    .COUT(_0139_),
    .SUM(_0140_));
 sky130_fd_sc_hd__ha_1 _2124_ (.A(net135),
    .B(net99),
    .COUT(_0141_),
    .SUM(_0142_));
 sky130_fd_sc_hd__ha_1 _2125_ (.A(net145),
    .B(net109),
    .COUT(_0143_),
    .SUM(_0144_));
 sky130_fd_sc_hd__ha_1 _2126_ (.A(net140),
    .B(net104),
    .COUT(_0145_),
    .SUM(_0146_));
 sky130_fd_sc_hd__ha_1 _2127_ (.A(net170),
    .B(_0147_),
    .COUT(_0148_),
    .SUM(_0149_));
 sky130_fd_sc_hd__ha_1 _2128_ (.A(_0150_),
    .B(_0151_),
    .COUT(_1209_),
    .SUM(_1210_));
 sky130_fd_sc_hd__ha_1 _2129_ (.A(net145),
    .B(_0152_),
    .COUT(_0153_),
    .SUM(_0154_));
 sky130_fd_sc_hd__ha_1 _2130_ (.A(net136),
    .B(net100),
    .COUT(_0155_),
    .SUM(_0156_));
 sky130_fd_sc_hd__ha_1 _2131_ (.A(net94),
    .B(_0157_),
    .COUT(_0158_),
    .SUM(_0159_));
 sky130_fd_sc_hd__ha_1 _2132_ (.A(net154),
    .B(net126),
    .COUT(_0160_),
    .SUM(_0161_));
 sky130_fd_sc_hd__ha_1 _2133_ (.A(_0162_),
    .B(_1211_),
    .COUT(_1080_),
    .SUM(_1212_));
 sky130_fd_sc_hd__ha_1 _2134_ (.A(_1101_),
    .B(_1180_),
    .COUT(_1213_),
    .SUM(_1214_));
 sky130_fd_sc_hd__ha_1 _2135_ (.A(_1215_),
    .B(_1035_),
    .COUT(_1216_),
    .SUM(_1217_));
 sky130_fd_sc_hd__ha_1 _2136_ (.A(net97),
    .B(_0163_),
    .COUT(_0164_),
    .SUM(_0165_));
 sky130_fd_sc_hd__ha_1 _2137_ (.A(net168),
    .B(_0166_),
    .COUT(_0167_),
    .SUM(_0168_));
 sky130_fd_sc_hd__ha_1 _2138_ (.A(net144),
    .B(net108),
    .COUT(_0169_),
    .SUM(_0170_));
 sky130_fd_sc_hd__ha_1 _2139_ (.A(_1206_),
    .B(_1218_),
    .COUT(_1219_),
    .SUM(_1220_));
 sky130_fd_sc_hd__ha_1 _2140_ (.A(_1186_),
    .B(_1083_),
    .COUT(_0171_),
    .SUM(_0172_));
 sky130_fd_sc_hd__ha_1 _2141_ (.A(net137),
    .B(_0173_),
    .COUT(_0174_),
    .SUM(_0175_));
 sky130_fd_sc_hd__ha_1 _2142_ (.A(_1221_),
    .B(_1200_),
    .COUT(_1222_),
    .SUM(_1223_));
 sky130_fd_sc_hd__ha_1 _2143_ (.A(_1224_),
    .B(_1225_),
    .COUT(_1226_),
    .SUM(_1227_));
 sky130_fd_sc_hd__ha_1 _2144_ (.A(net96),
    .B(_0176_),
    .COUT(_0177_),
    .SUM(_0178_));
 sky130_fd_sc_hd__ha_1 _2145_ (.A(net167),
    .B(_0179_),
    .COUT(_0180_),
    .SUM(_0181_));
 sky130_fd_sc_hd__ha_1 _2146_ (.A(net143),
    .B(net107),
    .COUT(_0182_),
    .SUM(_0183_));
 sky130_fd_sc_hd__ha_1 _2147_ (.A(net171),
    .B(_0184_),
    .COUT(_0185_),
    .SUM(_0186_));
 sky130_fd_sc_hd__ha_1 _2148_ (.A(net169),
    .B(_0187_),
    .COUT(_0188_),
    .SUM(_0189_));
 sky130_fd_sc_hd__ha_1 _2149_ (.A(net146),
    .B(net110),
    .COUT(_0190_),
    .SUM(_0191_));
 sky130_fd_sc_hd__ha_1 _2150_ (.A(_1088_),
    .B(_1089_),
    .COUT(_1027_),
    .SUM(_1228_));
 sky130_fd_sc_hd__ha_1 _2151_ (.A(_1090_),
    .B(_1091_),
    .COUT(_1189_),
    .SUM(_1229_));
 sky130_fd_sc_hd__ha_1 _2152_ (.A(_1092_),
    .B(_1093_),
    .COUT(_0975_),
    .SUM(_1230_));
 sky130_fd_sc_hd__ha_1 _2153_ (.A(_1094_),
    .B(_1231_),
    .COUT(_1232_),
    .SUM(_0192_));
 sky130_fd_sc_hd__ha_1 _2154_ (.A(net95),
    .B(_0193_),
    .COUT(_0194_),
    .SUM(_0195_));
 sky130_fd_sc_hd__ha_1 _2155_ (.A(net166),
    .B(_0196_),
    .COUT(_0197_),
    .SUM(_0198_));
 sky130_fd_sc_hd__ha_1 _2156_ (.A(net142),
    .B(net106),
    .COUT(_0199_),
    .SUM(_0200_));
 sky130_fd_sc_hd__ha_1 _2157_ (.A(net173),
    .B(_0201_),
    .COUT(_0202_),
    .SUM(_0203_));
 sky130_fd_sc_hd__ha_1 _2158_ (.A(_0204_),
    .B(_0205_),
    .COUT(_1038_),
    .SUM(_1041_));
 sky130_fd_sc_hd__ha_1 _2159_ (.A(net163),
    .B(_0206_),
    .COUT(_0207_),
    .SUM(_0208_));
 sky130_fd_sc_hd__ha_1 _2160_ (.A(_1149_),
    .B(_1135_),
    .COUT(_1114_),
    .SUM(_1105_));
 sky130_fd_sc_hd__ha_1 _2161_ (.A(_1214_),
    .B(_1233_),
    .COUT(_0209_),
    .SUM(_0210_));
 sky130_fd_sc_hd__ha_1 _2162_ (.A(net173),
    .B(_0211_),
    .COUT(_0212_),
    .SUM(_0213_));
 sky130_fd_sc_hd__ha_1 _2163_ (.A(net171),
    .B(_0214_),
    .COUT(_0215_),
    .SUM(_0216_));
 sky130_fd_sc_hd__ha_1 _2164_ (.A(net148),
    .B(net112),
    .COUT(_0217_),
    .SUM(_0218_));
 sky130_fd_sc_hd__ha_1 _2165_ (.A(net151),
    .B(net123),
    .COUT(_0219_),
    .SUM(_0220_));
 sky130_fd_sc_hd__ha_1 _2166_ (.A(_1071_),
    .B(_1212_),
    .COUT(_1076_),
    .SUM(_1028_));
 sky130_fd_sc_hd__ha_1 _2167_ (.A(net153),
    .B(net125),
    .COUT(_0221_),
    .SUM(_0222_));
 sky130_fd_sc_hd__ha_1 _2168_ (.A(_0223_),
    .B(_0224_),
    .COUT(_1231_),
    .SUM(_0225_));
 sky130_fd_sc_hd__ha_1 _2169_ (.A(net172),
    .B(_0226_),
    .COUT(_0227_),
    .SUM(_0228_));
 sky130_fd_sc_hd__ha_1 _2170_ (.A(_0229_),
    .B(\u_fault_detector.voltage_min[0] ),
    .COUT(_0230_),
    .SUM(_1234_));
 sky130_fd_sc_hd__ha_1 _2171_ (.A(net170),
    .B(_0231_),
    .COUT(_0232_),
    .SUM(_0233_));
 sky130_fd_sc_hd__ha_1 _2172_ (.A(_1235_),
    .B(_1141_),
    .COUT(_1225_),
    .SUM(_1221_));
 sky130_fd_sc_hd__ha_1 _2173_ (.A(net147),
    .B(net111),
    .COUT(_0234_),
    .SUM(_0235_));
 sky130_fd_sc_hd__ha_1 _2174_ (.A(net150),
    .B(net120),
    .COUT(_0236_),
    .SUM(_0237_));
 sky130_fd_sc_hd__ha_1 _2175_ (.A(net91),
    .B(_0238_),
    .COUT(_0239_),
    .SUM(_0240_));
 sky130_fd_sc_hd__ha_1 _2176_ (.A(net138),
    .B(net102),
    .COUT(_0241_),
    .SUM(_0242_));
 sky130_fd_sc_hd__ha_1 _2177_ (.A(net136),
    .B(_0243_),
    .COUT(_0244_),
    .SUM(_0245_));
 sky130_fd_sc_hd__ha_1 _2178_ (.A(net93),
    .B(_0246_),
    .COUT(_0247_),
    .SUM(_0248_));
 sky130_fd_sc_hd__ha_1 _2179_ (.A(_1210_),
    .B(_1229_),
    .COUT(_1191_),
    .SUM(_0976_));
 sky130_fd_sc_hd__ha_1 _2180_ (.A(net166),
    .B(_0249_),
    .COUT(_0250_),
    .SUM(_0251_));
 sky130_fd_sc_hd__ha_1 _2181_ (.A(_1184_),
    .B(_1236_),
    .COUT(_0252_),
    .SUM(_1237_));
 sky130_fd_sc_hd__ha_1 _2182_ (.A(_1223_),
    .B(_1205_),
    .COUT(_1238_),
    .SUM(_1239_));
 sky130_fd_sc_hd__ha_1 _2183_ (.A(_1240_),
    .B(_1241_),
    .COUT(_1236_),
    .SUM(_1224_));
 sky130_fd_sc_hd__ha_1 _2184_ (.A(net87),
    .B(_0253_),
    .COUT(_0254_),
    .SUM(_0255_));
 sky130_fd_sc_hd__ha_1 _2185_ (.A(_1157_),
    .B(_1197_),
    .COUT(_1218_),
    .SUM(_1215_));
 sky130_fd_sc_hd__ha_1 _2186_ (.A(_1000_),
    .B(_1001_),
    .COUT(_1057_),
    .SUM(_1242_));
 sky130_fd_sc_hd__ha_1 _2187_ (.A(_1002_),
    .B(_1003_),
    .COUT(_1062_),
    .SUM(_1211_));
 sky130_fd_sc_hd__ha_1 _2188_ (.A(_1004_),
    .B(_1209_),
    .COUT(_1067_),
    .SUM(_1243_));
 sky130_fd_sc_hd__ha_1 _2189_ (.A(net141),
    .B(net105),
    .COUT(_0256_),
    .SUM(_0257_));
 sky130_fd_sc_hd__ha_1 _2190_ (.A(_0258_),
    .B(_0259_),
    .COUT(_1198_),
    .SUM(_1202_));
 sky130_fd_sc_hd__ha_1 _2191_ (.A(_0229_),
    .B(\u_fault_detector.voltage_max[0] ),
    .COUT(_0260_),
    .SUM(_0261_));
 sky130_fd_sc_hd__ha_1 _2192_ (.A(_0262_),
    .B(_0263_),
    .COUT(_1134_),
    .SUM(_1244_));
 sky130_fd_sc_hd__ha_1 _2193_ (.A(_1026_),
    .B(_1160_),
    .COUT(_0264_),
    .SUM(_0265_));
 sky130_fd_sc_hd__ha_1 _2194_ (.A(net135),
    .B(_0266_),
    .COUT(_0267_),
    .SUM(_0268_));
 sky130_fd_sc_hd__ha_1 _2195_ (.A(net140),
    .B(_0269_),
    .COUT(_0270_),
    .SUM(_0271_));
 sky130_fd_sc_hd__ha_1 _2196_ (.A(net137),
    .B(net101),
    .COUT(_0272_),
    .SUM(_0273_));
 sky130_fd_sc_hd__ha_1 _2197_ (.A(net168),
    .B(_0274_),
    .COUT(_0275_),
    .SUM(_0276_));
 sky130_fd_sc_hd__ha_1 _2198_ (.A(net169),
    .B(_0277_),
    .COUT(_0278_),
    .SUM(_0279_));
 sky130_fd_sc_hd__ha_1 _2199_ (.A(_1147_),
    .B(_1245_),
    .COUT(_1178_),
    .SUM(_1158_));
 sky130_fd_sc_hd__ha_1 _2200_ (.A(_1148_),
    .B(_0280_),
    .COUT(_1159_),
    .SUM(_1246_));
 sky130_fd_sc_hd__ha_1 _2201_ (.A(_1161_),
    .B(_1187_),
    .COUT(_0281_),
    .SUM(_0282_));
 sky130_fd_sc_hd__ha_1 _2202_ (.A(net139),
    .B(_0283_),
    .COUT(_0284_),
    .SUM(_0285_));
 sky130_fd_sc_hd__ha_1 _2203_ (.A(_1247_),
    .B(_1238_),
    .COUT(_0286_),
    .SUM(_0287_));
 sky130_fd_sc_hd__ha_1 _2204_ (.A(_1237_),
    .B(_1226_),
    .COUT(_0288_),
    .SUM(_1248_));
 sky130_fd_sc_hd__ha_1 _2205_ (.A(net163),
    .B(_0289_),
    .COUT(_0290_),
    .SUM(_0291_));
 sky130_fd_sc_hd__ha_1 _2206_ (.A(_1232_),
    .B(_1249_),
    .COUT(_1250_),
    .SUM(_0292_));
 sky130_fd_sc_hd__ha_1 _2207_ (.A(_0293_),
    .B(_1230_),
    .COUT(_0977_),
    .SUM(_1249_));
 sky130_fd_sc_hd__ha_1 _2208_ (.A(net172),
    .B(_0294_),
    .COUT(_0295_),
    .SUM(_0296_));
 sky130_fd_sc_hd__ha_1 _2209_ (.A(net149),
    .B(net113),
    .COUT(_0297_),
    .SUM(_0298_));
 sky130_fd_sc_hd__ha_1 _2210_ (.A(net152),
    .B(net124),
    .COUT(_0299_),
    .SUM(_0300_));
 sky130_fd_sc_hd__ha_1 _2211_ (.A(_1181_),
    .B(_0983_),
    .COUT(_1233_),
    .SUM(_1251_));
 sky130_fd_sc_hd__ha_1 _2212_ (.A(_1204_),
    .B(_1012_),
    .COUT(_1241_),
    .SUM(_1235_));
 sky130_fd_sc_hd__ha_1 _2213_ (.A(net134),
    .B(net98),
    .COUT(_0108_),
    .SUM(_0301_));
 sky130_fd_sc_hd__ha_1 _2214_ (.A(_1243_),
    .B(_1228_),
    .COUT(_1029_),
    .SUM(_1190_));
 sky130_fd_sc_hd__ha_1 _2215_ (.A(_0302_),
    .B(_0303_),
    .COUT(_1176_),
    .SUM(_1245_));
 sky130_fd_sc_hd__ha_1 _2216_ (.A(_0979_),
    .B(_1250_),
    .COUT(_0037_),
    .SUM(_0304_));
 sky130_fd_sc_hd__ha_1 _2217_ (.A(_0305_),
    .B(\current_max[0] ),
    .COUT(_0306_),
    .SUM(_0307_));
 sky130_fd_sc_hd__ha_1 _2218_ (.A(_1078_),
    .B(_1030_),
    .COUT(_0308_),
    .SUM(_0309_));
 sky130_fd_sc_hd__ha_1 _2219_ (.A(net89),
    .B(_0310_),
    .COUT(_0311_),
    .SUM(_0312_));
 sky130_fd_sc_hd__ha_1 _2220_ (.A(_1031_),
    .B(_1192_),
    .COUT(_0313_),
    .SUM(_0314_));
 sky130_fd_sc_hd__ha_1 _2221_ (.A(net165),
    .B(_0315_),
    .COUT(_0316_),
    .SUM(_0317_));
 sky130_fd_sc_hd__ha_1 _2222_ (.A(_1084_),
    .B(_1025_),
    .COUT(_0318_),
    .SUM(_0319_));
 sky130_fd_sc_hd__ha_1 _2223_ (.A(net90),
    .B(_0320_),
    .COUT(_0321_),
    .SUM(_0322_));
 sky130_fd_sc_hd__ha_1 _2224_ (.A(net167),
    .B(_0323_),
    .COUT(_0324_),
    .SUM(_0325_));
 sky130_fd_sc_hd__ha_1 _2225_ (.A(_1022_),
    .B(_1017_),
    .COUT(_0326_),
    .SUM(_0327_));
 sky130_fd_sc_hd__ha_1 _2226_ (.A(_1188_),
    .B(_1077_),
    .COUT(_0328_),
    .SUM(_0329_));
 sky130_fd_sc_hd__ha_1 _2227_ (.A(_1252_),
    .B(_1203_),
    .COUT(_1183_),
    .SUM(_1240_));
 sky130_fd_sc_hd__ha_1 _2228_ (.A(net92),
    .B(_0330_),
    .COUT(_0331_),
    .SUM(_0332_));
 sky130_fd_sc_hd__ha_1 _2229_ (.A(_1018_),
    .B(_1185_),
    .COUT(_0333_),
    .SUM(_0334_));
 sky130_fd_sc_hd__ha_1 _2230_ (.A(_1208_),
    .B(_1213_),
    .COUT(_0335_),
    .SUM(_0336_));
 sky130_fd_sc_hd__ha_1 _2231_ (.A(_1248_),
    .B(_1253_),
    .COUT(_0337_),
    .SUM(_0338_));
 sky130_fd_sc_hd__ha_1 _2232_ (.A(_1239_),
    .B(_1219_),
    .COUT(_0339_),
    .SUM(_0340_));
 sky130_fd_sc_hd__ha_1 _2233_ (.A(net157),
    .B(net129),
    .COUT(_0341_),
    .SUM(_0342_));
 sky130_fd_sc_hd__ha_1 _2234_ (.A(_1251_),
    .B(_1021_),
    .COUT(_0343_),
    .SUM(_0344_));
 sky130_fd_sc_hd__ha_1 _2235_ (.A(_1220_),
    .B(_1216_),
    .COUT(_0345_),
    .SUM(_0346_));
 sky130_fd_sc_hd__ha_1 _2236_ (.A(net141),
    .B(_0347_),
    .COUT(_0348_),
    .SUM(_0349_));
 sky130_fd_sc_hd__ha_1 _2237_ (.A(net139),
    .B(net103),
    .COUT(_0350_),
    .SUM(_0351_));
 sky130_fd_sc_hd__ha_1 _2238_ (.A(_0352_),
    .B(_0353_),
    .COUT(_1182_),
    .SUM(_1252_));
 sky130_fd_sc_hd__ha_1 _2239_ (.A(_0354_),
    .B(\power_max[0] ),
    .COUT(_0355_),
    .SUM(_0356_));
 sky130_fd_sc_hd__ha_1 _2240_ (.A(net142),
    .B(_0357_),
    .COUT(_0358_),
    .SUM(_0359_));
 sky130_fd_sc_hd__ha_1 _2241_ (.A(net153),
    .B(_0360_),
    .COUT(_0361_),
    .SUM(_0362_));
 sky130_fd_sc_hd__ha_1 _2242_ (.A(net155),
    .B(net127),
    .COUT(_0363_),
    .SUM(_0364_));
 sky130_fd_sc_hd__ha_1 _2243_ (.A(_1217_),
    .B(_1207_),
    .COUT(_0365_),
    .SUM(_0366_));
 sky130_fd_sc_hd__ha_1 _2244_ (.A(net138),
    .B(_0367_),
    .COUT(_0368_),
    .SUM(_0369_));
 sky130_fd_sc_hd__ha_1 _2245_ (.A(net152),
    .B(_0370_),
    .COUT(_0371_),
    .SUM(_0372_));
 sky130_fd_sc_hd__ha_1 _2246_ (.A(net148),
    .B(_0373_),
    .COUT(_0374_),
    .SUM(_0375_));
 sky130_fd_sc_hd__ha_1 _2247_ (.A(net155),
    .B(_0376_),
    .COUT(_0377_),
    .SUM(_0378_));
 sky130_fd_sc_hd__ha_1 _2248_ (.A(net144),
    .B(_0379_),
    .COUT(_0380_),
    .SUM(_0381_));
 sky130_fd_sc_hd__ha_1 _2249_ (.A(net165),
    .B(_0382_),
    .COUT(_0383_),
    .SUM(_0384_));
 sky130_fd_sc_hd__ha_1 _2250_ (.A(net146),
    .B(_0385_),
    .COUT(_0386_),
    .SUM(_0387_));
 sky130_fd_sc_hd__ha_1 _2251_ (.A(net147),
    .B(_0388_),
    .COUT(_0389_),
    .SUM(_0390_));
 sky130_fd_sc_hd__ha_1 _2252_ (.A(net143),
    .B(_0391_),
    .COUT(_0392_),
    .SUM(_0393_));
 sky130_fd_sc_hd__ha_1 _2253_ (.A(net156),
    .B(_0394_),
    .COUT(_0395_),
    .SUM(_0396_));
 sky130_fd_sc_hd__ha_1 _2254_ (.A(net157),
    .B(_0397_),
    .COUT(_0398_),
    .SUM(_0399_));
 sky130_fd_sc_hd__ha_1 _2255_ (.A(net154),
    .B(_0400_),
    .COUT(_0401_),
    .SUM(_0402_));
 sky130_fd_sc_hd__ha_1 _2256_ (.A(net164),
    .B(_0403_),
    .COUT(_0404_),
    .SUM(_0405_));
 sky130_fd_sc_hd__ha_1 _2257_ (.A(_1227_),
    .B(_1222_),
    .COUT(_1253_),
    .SUM(_1247_));
 sky130_fd_sc_hd__ha_1 _2258_ (.A(net149),
    .B(_0406_),
    .COUT(_0407_),
    .SUM(_0408_));
 sky130_fd_sc_hd__ha_1 _2259_ (.A(net156),
    .B(net128),
    .COUT(_0409_),
    .SUM(_0410_));
 sky130_fd_sc_hd__ha_1 _2260_ (.A(_1133_),
    .B(_1246_),
    .COUT(_1009_),
    .SUM(_1113_));
 sky130_fd_sc_hd__ha_1 _2261_ (.A(net88),
    .B(_0411_),
    .COUT(_0412_),
    .SUM(_0413_));
 sky130_fd_sc_hd__ha_1 _2262_ (.A(_1244_),
    .B(_1242_),
    .COUT(_1106_),
    .SUM(_1079_));
 sky130_fd_sc_hd__ha_1 _2263_ (.A(net164),
    .B(_0414_),
    .COUT(_0415_),
    .SUM(_0416_));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_0_0_clk (.A(clknet_0_clk),
    .X(clknet_4_0_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_10_0_clk (.A(clknet_0_clk),
    .X(clknet_4_10_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_11_0_clk (.A(clknet_0_clk),
    .X(clknet_4_11_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_12_0_clk (.A(clknet_0_clk),
    .X(clknet_4_12_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_13_0_clk (.A(clknet_0_clk),
    .X(clknet_4_13_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_14_0_clk (.A(clknet_0_clk),
    .X(clknet_4_14_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_15_0_clk (.A(clknet_0_clk),
    .X(clknet_4_15_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_1_0_clk (.A(clknet_0_clk),
    .X(clknet_4_1_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_2_0_clk (.A(clknet_0_clk),
    .X(clknet_4_2_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_3_0_clk (.A(clknet_0_clk),
    .X(clknet_4_3_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_4_0_clk (.A(clknet_0_clk),
    .X(clknet_4_4_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_5_0_clk (.A(clknet_0_clk),
    .X(clknet_4_5_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_6_0_clk (.A(clknet_0_clk),
    .X(clknet_4_6_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_7_0_clk (.A(clknet_0_clk),
    .X(clknet_4_7_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_8_0_clk (.A(clknet_0_clk),
    .X(clknet_4_8_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_9_0_clk (.A(clknet_0_clk),
    .X(clknet_4_9_0_clk));
 sky130_fd_sc_hd__inv_6 clkload0 (.A(clknet_4_0_0_clk));
 sky130_fd_sc_hd__inv_6 clkload1 (.A(clknet_4_1_0_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload10 (.A(clknet_4_10_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload11 (.A(clknet_4_11_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload12 (.A(clknet_4_13_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload13 (.A(clknet_4_14_0_clk));
 sky130_fd_sc_hd__inv_6 clkload14 (.A(clknet_4_15_0_clk));
 sky130_fd_sc_hd__inv_6 clkload2 (.A(clknet_4_2_0_clk));
 sky130_fd_sc_hd__inv_6 clkload3 (.A(clknet_4_3_0_clk));
 sky130_fd_sc_hd__clkinv_4 clkload4 (.A(clknet_4_4_0_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload5 (.A(clknet_4_5_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload6 (.A(clknet_4_6_0_clk));
 sky130_fd_sc_hd__inv_6 clkload7 (.A(clknet_4_7_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload8 (.A(clknet_4_8_0_clk));
 sky130_fd_sc_hd__inv_6 clkload9 (.A(clknet_4_9_0_clk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input1 (.A(current_in[0]),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input10 (.A(current_in[7]),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input11 (.A(current_in[8]),
    .X(net11));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input12 (.A(current_in[9]),
    .X(net12));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input13 (.A(current_max_cfg[0]),
    .X(net13));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input14 (.A(current_max_cfg[10]),
    .X(net14));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input15 (.A(current_max_cfg[11]),
    .X(net15));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input16 (.A(current_max_cfg[1]),
    .X(net16));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input17 (.A(current_max_cfg[2]),
    .X(net17));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input18 (.A(current_max_cfg[3]),
    .X(net18));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input19 (.A(current_max_cfg[4]),
    .X(net19));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input2 (.A(current_in[10]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input20 (.A(current_max_cfg[5]),
    .X(net20));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input21 (.A(current_max_cfg[6]),
    .X(net21));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input22 (.A(current_max_cfg[7]),
    .X(net22));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input23 (.A(current_max_cfg[8]),
    .X(net23));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input24 (.A(current_max_cfg[9]),
    .X(net24));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input25 (.A(power_max_cfg[0]),
    .X(net25));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input26 (.A(power_max_cfg[10]),
    .X(net26));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input27 (.A(power_max_cfg[11]),
    .X(net27));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input28 (.A(power_max_cfg[12]),
    .X(net28));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input29 (.A(power_max_cfg[13]),
    .X(net29));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input3 (.A(current_in[11]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input30 (.A(power_max_cfg[14]),
    .X(net30));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input31 (.A(power_max_cfg[15]),
    .X(net31));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input32 (.A(power_max_cfg[16]),
    .X(net32));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input33 (.A(power_max_cfg[17]),
    .X(net33));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input34 (.A(power_max_cfg[18]),
    .X(net34));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input35 (.A(power_max_cfg[19]),
    .X(net35));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input36 (.A(power_max_cfg[1]),
    .X(net36));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input37 (.A(power_max_cfg[20]),
    .X(net37));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input38 (.A(power_max_cfg[21]),
    .X(net38));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input39 (.A(power_max_cfg[22]),
    .X(net39));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input4 (.A(current_in[1]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input40 (.A(power_max_cfg[23]),
    .X(net40));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input41 (.A(power_max_cfg[2]),
    .X(net41));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input42 (.A(power_max_cfg[3]),
    .X(net42));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input43 (.A(power_max_cfg[4]),
    .X(net43));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input44 (.A(power_max_cfg[5]),
    .X(net44));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input45 (.A(power_max_cfg[6]),
    .X(net45));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input46 (.A(power_max_cfg[7]),
    .X(net46));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input47 (.A(power_max_cfg[8]),
    .X(net47));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input48 (.A(power_max_cfg[9]),
    .X(net48));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input49 (.A(rst),
    .X(net49));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input5 (.A(current_in[2]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input50 (.A(voltage_in[0]),
    .X(net50));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input51 (.A(voltage_in[10]),
    .X(net51));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input52 (.A(voltage_in[11]),
    .X(net52));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input53 (.A(voltage_in[1]),
    .X(net53));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input54 (.A(voltage_in[2]),
    .X(net54));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input55 (.A(voltage_in[3]),
    .X(net55));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input56 (.A(voltage_in[4]),
    .X(net56));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input57 (.A(voltage_in[5]),
    .X(net57));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input58 (.A(voltage_in[6]),
    .X(net58));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input59 (.A(voltage_in[7]),
    .X(net59));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input6 (.A(current_in[3]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input60 (.A(voltage_in[8]),
    .X(net60));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input61 (.A(voltage_in[9]),
    .X(net61));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input62 (.A(voltage_max_cfg[0]),
    .X(net62));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input63 (.A(voltage_max_cfg[10]),
    .X(net63));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input64 (.A(voltage_max_cfg[11]),
    .X(net64));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input65 (.A(voltage_max_cfg[1]),
    .X(net65));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input66 (.A(voltage_max_cfg[2]),
    .X(net66));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input67 (.A(voltage_max_cfg[3]),
    .X(net67));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input68 (.A(voltage_max_cfg[4]),
    .X(net68));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input69 (.A(voltage_max_cfg[5]),
    .X(net69));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input7 (.A(current_in[4]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input70 (.A(voltage_max_cfg[6]),
    .X(net70));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input71 (.A(voltage_max_cfg[7]),
    .X(net71));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input72 (.A(voltage_max_cfg[8]),
    .X(net72));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input73 (.A(voltage_max_cfg[9]),
    .X(net73));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input74 (.A(voltage_min_cfg[0]),
    .X(net74));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input75 (.A(voltage_min_cfg[10]),
    .X(net75));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input76 (.A(voltage_min_cfg[11]),
    .X(net76));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input77 (.A(voltage_min_cfg[1]),
    .X(net77));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input78 (.A(voltage_min_cfg[2]),
    .X(net78));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input79 (.A(voltage_min_cfg[3]),
    .X(net79));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input8 (.A(current_in[5]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input80 (.A(voltage_min_cfg[4]),
    .X(net80));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input81 (.A(voltage_min_cfg[5]),
    .X(net81));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input82 (.A(voltage_min_cfg[6]),
    .X(net82));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input83 (.A(voltage_min_cfg[7]),
    .X(net83));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input84 (.A(voltage_min_cfg[8]),
    .X(net84));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input85 (.A(voltage_min_cfg[9]),
    .X(net85));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input9 (.A(current_in[6]),
    .X(net9));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output100 (.A(net100),
    .X(energy_out[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output101 (.A(net101),
    .X(energy_out[12]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output102 (.A(net102),
    .X(energy_out[13]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output103 (.A(net103),
    .X(energy_out[14]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output104 (.A(net104),
    .X(energy_out[15]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output105 (.A(net105),
    .X(energy_out[16]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output106 (.A(net106),
    .X(energy_out[17]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output107 (.A(net107),
    .X(energy_out[18]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output108 (.A(net108),
    .X(energy_out[19]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output109 (.A(net109),
    .X(energy_out[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output110 (.A(net110),
    .X(energy_out[20]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output111 (.A(net111),
    .X(energy_out[21]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output112 (.A(net112),
    .X(energy_out[22]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output113 (.A(net113),
    .X(energy_out[23]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output114 (.A(net114),
    .X(energy_out[24]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output115 (.A(net115),
    .X(energy_out[25]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output116 (.A(net116),
    .X(energy_out[26]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output117 (.A(net117),
    .X(energy_out[27]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output118 (.A(net118),
    .X(energy_out[28]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output119 (.A(net119),
    .X(energy_out[29]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output120 (.A(net120),
    .X(energy_out[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output121 (.A(net121),
    .X(energy_out[30]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output122 (.A(net122),
    .X(energy_out[31]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output123 (.A(net123),
    .X(energy_out[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output124 (.A(net124),
    .X(energy_out[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output125 (.A(net125),
    .X(energy_out[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output126 (.A(net126),
    .X(energy_out[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output127 (.A(net127),
    .X(energy_out[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output128 (.A(net128),
    .X(energy_out[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output129 (.A(net129),
    .X(energy_out[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output130 (.A(net130),
    .X(fault_active));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output131 (.A(net131),
    .X(over_current));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output132 (.A(net132),
    .X(over_power));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output133 (.A(net133),
    .X(over_voltage));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output134 (.A(net134),
    .X(power_out[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output135 (.A(net135),
    .X(power_out[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output136 (.A(net136),
    .X(power_out[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output137 (.A(net137),
    .X(power_out[12]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output138 (.A(net138),
    .X(power_out[13]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output139 (.A(net139),
    .X(power_out[14]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output140 (.A(net140),
    .X(power_out[15]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output141 (.A(net141),
    .X(power_out[16]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output142 (.A(net142),
    .X(power_out[17]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output143 (.A(net143),
    .X(power_out[18]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output144 (.A(net144),
    .X(power_out[19]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output145 (.A(net145),
    .X(power_out[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output146 (.A(net146),
    .X(power_out[20]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output147 (.A(net147),
    .X(power_out[21]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output148 (.A(net148),
    .X(power_out[22]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output149 (.A(net149),
    .X(power_out[23]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output150 (.A(net150),
    .X(power_out[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output151 (.A(net151),
    .X(power_out[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output152 (.A(net152),
    .X(power_out[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output153 (.A(net153),
    .X(power_out[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output154 (.A(net154),
    .X(power_out[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output155 (.A(net155),
    .X(power_out[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output156 (.A(net156),
    .X(power_out[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output157 (.A(net157),
    .X(power_out[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output158 (.A(net158),
    .X(protection_state[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output159 (.A(net159),
    .X(protection_state[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output160 (.A(net160),
    .X(trip));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output161 (.A(net161),
    .X(under_voltage));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output162 (.A(net162),
    .X(voltage_sample[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output163 (.A(net163),
    .X(voltage_sample[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output164 (.A(net164),
    .X(voltage_sample[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output165 (.A(net165),
    .X(voltage_sample[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output166 (.A(net166),
    .X(voltage_sample[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output167 (.A(net167),
    .X(voltage_sample[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output168 (.A(net168),
    .X(voltage_sample[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output169 (.A(net169),
    .X(voltage_sample[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output170 (.A(net170),
    .X(voltage_sample[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output171 (.A(net171),
    .X(voltage_sample[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output172 (.A(net172),
    .X(voltage_sample[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output173 (.A(net173),
    .X(voltage_sample[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output174 (.A(net174),
    .X(warning));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output86 (.A(net86),
    .X(current_sample[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output87 (.A(net87),
    .X(current_sample[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output88 (.A(net88),
    .X(current_sample[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output89 (.A(net89),
    .X(current_sample[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output90 (.A(net90),
    .X(current_sample[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output91 (.A(net91),
    .X(current_sample[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output92 (.A(net92),
    .X(current_sample[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output93 (.A(net93),
    .X(current_sample[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output94 (.A(net94),
    .X(current_sample[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output95 (.A(net95),
    .X(current_sample[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output96 (.A(net96),
    .X(current_sample[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output97 (.A(net97),
    .X(current_sample[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output98 (.A(net98),
    .X(energy_out[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output99 (.A(net99),
    .X(energy_out[10]));
 sky130_fd_sc_hd__buf_4 place181 (.A(net182),
    .X(net181));
 sky130_fd_sc_hd__buf_4 place182 (.A(net183),
    .X(net182));
 sky130_fd_sc_hd__buf_4 place183 (.A(net49),
    .X(net183));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[0]$_SDFF_PP0_  (.D(_0492_),
    .Q(net98),
    .CLK(clknet_4_15_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[10]$_SDFF_PP0_  (.D(_0482_),
    .Q(net99),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[11]$_SDFF_PP0_  (.D(_0481_),
    .Q(net100),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[12]$_SDFF_PP0_  (.D(_0480_),
    .Q(net101),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[13]$_SDFF_PP0_  (.D(_0479_),
    .Q(net102),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[14]$_SDFF_PP0_  (.D(_0478_),
    .Q(net103),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[15]$_SDFF_PP0_  (.D(_0477_),
    .Q(net104),
    .CLK(clknet_4_7_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[16]$_SDFF_PP0_  (.D(_0476_),
    .Q(net105),
    .CLK(clknet_4_5_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[17]$_SDFF_PP0_  (.D(_0475_),
    .Q(net106),
    .CLK(clknet_4_4_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[18]$_SDFF_PP0_  (.D(_0474_),
    .Q(net107),
    .CLK(clknet_4_5_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[19]$_SDFF_PP0_  (.D(_0473_),
    .Q(net108),
    .CLK(clknet_4_4_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[1]$_SDFF_PP0_  (.D(_0491_),
    .Q(net109),
    .CLK(clknet_4_13_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[20]$_SDFF_PP0_  (.D(_0472_),
    .Q(net110),
    .CLK(clknet_4_4_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[21]$_SDFF_PP0_  (.D(_0471_),
    .Q(net111),
    .CLK(clknet_4_1_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[22]$_SDFF_PP0_  (.D(_0470_),
    .Q(net112),
    .CLK(clknet_4_0_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[23]$_SDFF_PP0_  (.D(_0469_),
    .Q(net113),
    .CLK(clknet_4_1_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[24]$_SDFF_PP0_  (.D(_0468_),
    .Q(net114),
    .CLK(clknet_4_7_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[25]$_SDFF_PP0_  (.D(_0467_),
    .Q(net115),
    .CLK(clknet_4_4_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[26]$_SDFF_PP0_  (.D(_0466_),
    .Q(net116),
    .CLK(clknet_4_5_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[27]$_SDFF_PP0_  (.D(_0465_),
    .Q(net117),
    .CLK(clknet_4_5_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[28]$_SDFF_PP0_  (.D(_0464_),
    .Q(net118),
    .CLK(clknet_4_5_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[29]$_SDFF_PP0_  (.D(_0463_),
    .Q(net119),
    .CLK(clknet_4_5_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[2]$_SDFF_PP0_  (.D(_0490_),
    .Q(net120),
    .CLK(clknet_4_13_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[30]$_SDFF_PP0_  (.D(_0462_),
    .Q(net121),
    .CLK(clknet_4_5_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[31]$_SDFF_PP0_  (.D(_0553_),
    .Q(net122),
    .CLK(clknet_4_4_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[3]$_SDFF_PP0_  (.D(_0489_),
    .Q(net123),
    .CLK(clknet_4_13_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[4]$_SDFF_PP0_  (.D(_0488_),
    .Q(net124),
    .CLK(clknet_4_13_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[5]$_SDFF_PP0_  (.D(_0487_),
    .Q(net125),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[6]$_SDFF_PP0_  (.D(_0486_),
    .Q(net126),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[7]$_SDFF_PP0_  (.D(_0485_),
    .Q(net127),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[8]$_SDFF_PP0_  (.D(_0484_),
    .Q(net128),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_energy_accumulator.energy_out[9]$_SDFF_PP0_  (.D(_0483_),
    .Q(net129),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_fault_detector.over_current$_SDFF_PP0_  (.D(_0559_),
    .Q(net131),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_fault_detector.over_power$_SDFF_PP0_  (.D(_0558_),
    .Q(net132),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_fault_detector.over_voltage$_SDFF_PP0_  (.D(_0561_),
    .Q(net133),
    .CLK(clknet_4_9_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_fault_detector.under_voltage$_SDFF_PP0_  (.D(_0560_),
    .Q(net161),
    .CLK(clknet_4_2_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[0]$_SDFF_PP0_  (.D(_0427_),
    .Q(net86),
    .CLK(clknet_4_10_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[10]$_SDFF_PP0_  (.D(_0417_),
    .Q(net87),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[11]$_SDFF_PP0_  (.D(_0550_),
    .Q(net88),
    .CLK(clknet_4_10_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[1]$_SDFF_PP0_  (.D(_0426_),
    .Q(net89),
    .CLK(clknet_4_10_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[2]$_SDFF_PP0_  (.D(_0425_),
    .Q(net90),
    .CLK(clknet_4_9_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[3]$_SDFF_PP0_  (.D(_0424_),
    .Q(net91),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[4]$_SDFF_PP0_  (.D(_0423_),
    .Q(net92),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[5]$_SDFF_PP0_  (.D(_0422_),
    .Q(net93),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[6]$_SDFF_PP0_  (.D(_0421_),
    .Q(net94),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[7]$_SDFF_PP0_  (.D(_0420_),
    .Q(net95),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[8]$_SDFF_PP0_  (.D(_0419_),
    .Q(net96),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.current_reg[9]$_SDFF_PP0_  (.D(_0418_),
    .Q(net97),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[0]$_SDFF_PP0_  (.D(_0438_),
    .Q(net162),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[10]$_SDFF_PP0_  (.D(_0428_),
    .Q(net163),
    .CLK(clknet_4_3_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[11]$_SDFF_PP0_  (.D(_0551_),
    .Q(net164),
    .CLK(clknet_4_3_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[1]$_SDFF_PP0_  (.D(_0437_),
    .Q(net165),
    .CLK(clknet_4_10_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[2]$_SDFF_PP0_  (.D(_0436_),
    .Q(net166),
    .CLK(clknet_4_10_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[3]$_SDFF_PP0_  (.D(_0435_),
    .Q(net167),
    .CLK(clknet_4_9_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[4]$_SDFF_PP0_  (.D(_0434_),
    .Q(net168),
    .CLK(clknet_4_9_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[5]$_SDFF_PP0_  (.D(_0433_),
    .Q(net169),
    .CLK(clknet_4_9_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[6]$_SDFF_PP0_  (.D(_0432_),
    .Q(net170),
    .CLK(clknet_4_2_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[7]$_SDFF_PP0_  (.D(_0431_),
    .Q(net171),
    .CLK(clknet_4_2_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[8]$_SDFF_PP0_  (.D(_0430_),
    .Q(net172),
    .CLK(clknet_4_3_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_input_register.voltage_reg[9]$_SDFF_PP0_  (.D(_0429_),
    .Q(net173),
    .CLK(clknet_4_3_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[0]$_SDFF_PP0_  (.D(_0461_),
    .Q(net134),
    .CLK(clknet_4_15_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[10]$_SDFF_PP0_  (.D(_0451_),
    .Q(net135),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[11]$_SDFF_PP0_  (.D(_0450_),
    .Q(net136),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[12]$_SDFF_PP0_  (.D(_0449_),
    .Q(net137),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[13]$_SDFF_PP0_  (.D(_0448_),
    .Q(net138),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[14]$_SDFF_PP0_  (.D(_0447_),
    .Q(net139),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[15]$_SDFF_PP0_  (.D(_0446_),
    .Q(net140),
    .CLK(clknet_4_6_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[16]$_SDFF_PP0_  (.D(_0445_),
    .Q(net141),
    .CLK(clknet_4_4_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[17]$_SDFF_PP0_  (.D(_0444_),
    .Q(net142),
    .CLK(clknet_4_0_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[18]$_SDFF_PP0_  (.D(_0443_),
    .Q(net143),
    .CLK(clknet_4_0_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[19]$_SDFF_PP0_  (.D(_0442_),
    .Q(net144),
    .CLK(clknet_4_0_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[1]$_SDFF_PP0_  (.D(_0460_),
    .Q(net145),
    .CLK(clknet_4_15_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[20]$_SDFF_PP0_  (.D(_0441_),
    .Q(net146),
    .CLK(clknet_4_0_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[21]$_SDFF_PP0_  (.D(_0440_),
    .Q(net147),
    .CLK(clknet_4_1_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[22]$_SDFF_PP0_  (.D(_0439_),
    .Q(net148),
    .CLK(clknet_4_0_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[23]$_SDFF_PP0_  (.D(_0552_),
    .Q(net149),
    .CLK(clknet_4_1_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[2]$_SDFF_PP0_  (.D(_0459_),
    .Q(net150),
    .CLK(clknet_4_15_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[3]$_SDFF_PP0_  (.D(_0458_),
    .Q(net151),
    .CLK(clknet_4_15_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[4]$_SDFF_PP0_  (.D(_0457_),
    .Q(net152),
    .CLK(clknet_4_13_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[5]$_SDFF_PP0_  (.D(_0456_),
    .Q(net153),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[6]$_SDFF_PP0_  (.D(_0455_),
    .Q(net154),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[7]$_SDFF_PP0_  (.D(_0454_),
    .Q(net155),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[8]$_SDFF_PP0_  (.D(_0453_),
    .Q(net156),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_power_calculator.power_out[9]$_SDFF_PP0_  (.D(_0452_),
    .Q(net157),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_protection_fsm.state[0]$_SDFFE_PP0P_  (.D(_0549_),
    .Q(net158),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_protection_fsm.state[1]$_SDFFE_PP0P_  (.D(_0562_),
    .Q(net159),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[0]$_SDFF_PP0_  (.D(_0526_),
    .Q(\current_max[0] ),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[10]$_SDFF_PP0_  (.D(_0516_),
    .Q(\current_max[10] ),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[11]$_SDFF_PP0_  (.D(_0555_),
    .Q(\current_max[11] ),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[1]$_SDFF_PP0_  (.D(_0525_),
    .Q(\current_max[1] ),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[2]$_SDFF_PP0_  (.D(_0524_),
    .Q(\current_max[2] ),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[3]$_SDFF_PP0_  (.D(_0523_),
    .Q(\current_max[3] ),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[4]$_SDFF_PP0_  (.D(_0522_),
    .Q(\current_max[4] ),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[5]$_SDFF_PP0_  (.D(_0521_),
    .Q(\current_max[5] ),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[6]$_SDFF_PP0_  (.D(_0520_),
    .Q(\current_max[6] ),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[7]$_SDFF_PP0_  (.D(_0519_),
    .Q(\current_max[7] ),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[8]$_SDFF_PP0_  (.D(_0518_),
    .Q(\current_max[8] ),
    .CLK(clknet_4_11_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.current_max[9]$_SDFF_PP0_  (.D(_0517_),
    .Q(\current_max[9] ),
    .CLK(clknet_4_14_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[0]$_SDFF_PP0_  (.D(_0515_),
    .Q(\power_max[0] ),
    .CLK(clknet_4_15_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[10]$_SDFF_PP0_  (.D(_0505_),
    .Q(\power_max[10] ),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[11]$_SDFF_PP0_  (.D(_0504_),
    .Q(\power_max[11] ),
    .CLK(clknet_4_7_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[12]$_SDFF_PP0_  (.D(_0503_),
    .Q(\power_max[12] ),
    .CLK(clknet_4_7_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[13]$_SDFF_PP0_  (.D(_0502_),
    .Q(\power_max[13] ),
    .CLK(clknet_4_7_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[14]$_SDFF_PP0_  (.D(_0501_),
    .Q(\power_max[14] ),
    .CLK(clknet_4_7_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[15]$_SDFF_PP0_  (.D(_0500_),
    .Q(\power_max[15] ),
    .CLK(clknet_4_7_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[16]$_SDFF_PP0_  (.D(_0499_),
    .Q(\power_max[16] ),
    .CLK(clknet_4_5_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[17]$_SDFF_PP0_  (.D(_0498_),
    .Q(\power_max[17] ),
    .CLK(clknet_4_5_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[18]$_SDFF_PP0_  (.D(_0497_),
    .Q(\power_max[18] ),
    .CLK(clknet_4_4_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[19]$_SDFF_PP0_  (.D(_0496_),
    .Q(\power_max[19] ),
    .CLK(clknet_4_4_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[1]$_SDFF_PP0_  (.D(_0514_),
    .Q(\power_max[1] ),
    .CLK(clknet_4_15_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[20]$_SDFF_PP0_  (.D(_0495_),
    .Q(\power_max[20] ),
    .CLK(clknet_4_0_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[21]$_SDFF_PP0_  (.D(_0494_),
    .Q(\power_max[21] ),
    .CLK(clknet_4_1_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[22]$_SDFF_PP0_  (.D(_0493_),
    .Q(\power_max[22] ),
    .CLK(clknet_4_1_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[23]$_SDFF_PP0_  (.D(_0554_),
    .Q(\power_max[23] ),
    .CLK(clknet_4_1_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[2]$_SDFF_PP0_  (.D(_0513_),
    .Q(\power_max[2] ),
    .CLK(clknet_4_13_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[3]$_SDFF_PP0_  (.D(_0512_),
    .Q(\power_max[3] ),
    .CLK(clknet_4_13_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[4]$_SDFF_PP0_  (.D(_0511_),
    .Q(\power_max[4] ),
    .CLK(clknet_4_13_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[5]$_SDFF_PP0_  (.D(_0510_),
    .Q(\power_max[5] ),
    .CLK(clknet_4_13_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[6]$_SDFF_PP0_  (.D(_0509_),
    .Q(\power_max[6] ),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[7]$_SDFF_PP0_  (.D(_0508_),
    .Q(\power_max[7] ),
    .CLK(clknet_4_13_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[8]$_SDFF_PP0_  (.D(_0507_),
    .Q(\power_max[8] ),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.power_max[9]$_SDFF_PP0_  (.D(_0506_),
    .Q(\power_max[9] ),
    .CLK(clknet_4_12_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[0]$_SDFF_PP0_  (.D(_0548_),
    .Q(\u_fault_detector.voltage_max[0] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[10]$_SDFF_PP0_  (.D(_0538_),
    .Q(\u_fault_detector.voltage_max[10] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[11]$_SDFF_PP0_  (.D(_0557_),
    .Q(\u_fault_detector.voltage_max[11] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[1]$_SDFF_PP0_  (.D(_0547_),
    .Q(\u_fault_detector.voltage_max[1] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[2]$_SDFF_PP0_  (.D(_0546_),
    .Q(\u_fault_detector.voltage_max[2] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[3]$_SDFF_PP0_  (.D(_0545_),
    .Q(\u_fault_detector.voltage_max[3] ),
    .CLK(clknet_4_9_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[4]$_SDFF_PP0_  (.D(_0544_),
    .Q(\u_fault_detector.voltage_max[4] ),
    .CLK(clknet_4_9_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[5]$_SDFF_PP0_  (.D(_0543_),
    .Q(\u_fault_detector.voltage_max[5] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[6]$_SDFF_PP0_  (.D(_0542_),
    .Q(\u_fault_detector.voltage_max[6] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[7]$_SDFF_PP0_  (.D(_0541_),
    .Q(\u_fault_detector.voltage_max[7] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[8]$_SDFF_PP0_  (.D(_0540_),
    .Q(\u_fault_detector.voltage_max[8] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_max[9]$_SDFF_PP0_  (.D(_0539_),
    .Q(\u_fault_detector.voltage_max[9] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[0]$_SDFF_PP0_  (.D(_0537_),
    .Q(\u_fault_detector.voltage_min[0] ),
    .CLK(clknet_4_10_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[10]$_SDFF_PP0_  (.D(_0527_),
    .Q(\u_fault_detector.voltage_min[10] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[11]$_SDFF_PP0_  (.D(_0556_),
    .Q(\u_fault_detector.voltage_min[11] ),
    .CLK(clknet_4_3_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[1]$_SDFF_PP0_  (.D(_0536_),
    .Q(\u_fault_detector.voltage_min[1] ),
    .CLK(clknet_4_10_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[2]$_SDFF_PP0_  (.D(_0535_),
    .Q(\u_fault_detector.voltage_min[2] ),
    .CLK(clknet_4_10_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[3]$_SDFF_PP0_  (.D(_0534_),
    .Q(\u_fault_detector.voltage_min[3] ),
    .CLK(clknet_4_10_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[4]$_SDFF_PP0_  (.D(_0533_),
    .Q(\u_fault_detector.voltage_min[4] ),
    .CLK(clknet_4_8_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[5]$_SDFF_PP0_  (.D(_0532_),
    .Q(\u_fault_detector.voltage_min[5] ),
    .CLK(clknet_4_2_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[6]$_SDFF_PP0_  (.D(_0531_),
    .Q(\u_fault_detector.voltage_min[6] ),
    .CLK(clknet_4_2_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[7]$_SDFF_PP0_  (.D(_0530_),
    .Q(\u_fault_detector.voltage_min[7] ),
    .CLK(clknet_4_2_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[8]$_SDFF_PP0_  (.D(_0529_),
    .Q(\u_fault_detector.voltage_min[8] ),
    .CLK(clknet_4_3_0_clk));
 sky130_fd_sc_hd__dfxtp_1 \u_threshold_register.voltage_min[9]$_SDFF_PP0_  (.D(_0528_),
    .Q(\u_fault_detector.voltage_min[9] ),
    .CLK(clknet_4_3_0_clk));
endmodule
