source config.sh 
cd /dune/app/users/laurapm/larsoft/work/SimMuon/FD_10kt_1x2x6

lar -c genlaura_dunefd_muon_1GeV_mono.fcl
lar -c muon_dunefd_refactored_g4_stage1.fcl -s gen_dunefd_muonLaura_1GeV_mono.root
lar -c muon_dunefd_refactored_g4_stage2.fcl -s gen_dunefd_muonLaura_1GeV_mono_g4_stage1.root
lar -c muon_dunefd_refactored_detsim_stage1.fcl -s gen_dunefd_muonLaura_1GeV_mono_g4_stage1_g4_stage2.root
lar -c muon_dunefd_refactored_detsim_stage2.fcl -s gen_dunefd_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1.roo

missing reco step

### CHECK std::vector<sim::SimEnergyDeposit> is stored ###
lar -c eventdump.fcl gen_dunefd_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1_detsim_stage2.root