source config.sh 
cd /dune/app/users/laurapm/larsoft/work/SimMuon/FD_10kt_1x2x6

lar -c genlaura_dunefd_muon_1GeV_mono.fcl
--> outputs: gen_dunefd_muonLaura_1GeV_mono_gen.root + gen_dunefd_muonLaura_1GeV_mono_hist.root

lar -c muon_dunefd_refactored_g4_stage1.fcl -s gen_dunefd_muonLaura_1GeV_mono_gen.root
--> outputs: dunefd_muonLaura_1GeV_mono_g4_stage1_gen.root + g4_stage1_dunefd_hist.root

lar -c muon_dunefd_refactored_g4_stage2.fcl -s dunefd_muonLaura_1GeV_mono_g4_stage1_gen.root
--> outputs: dunefd_muonLaura_1GeV_mono_g4_stage1_g4_stage2_gen.root + g4_stage2_dunefd_hist.root

lar -c muon_dunefd_refactored_detsim_stage1.fcl -s dunefd_muonLaura_1GeV_mono_g4_stage1_g4_stage2_gen.root
--> outputs: dunefd_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1_gen.root + detsim_stage1_dunefd_hist.root

lar -c muon_dunefd_refactored_detsim_stage2.fcl -s dunefd_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1_gen.root
--> outputs: dunefd_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1_detsim_stage2_gen.root + detsim_stage2_dunefd_hist.root

missing reco step

lar -c eventdump.fcl dunefd_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1_detsim_stage2_gen.root
### std::vector<sim::SimEnergyDeposit> is stored in my configuration --> EdepLabel:"IonAndScint" (g4stage2) ###