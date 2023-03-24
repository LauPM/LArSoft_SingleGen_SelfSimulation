source config.sh 
cd /dune/app/users/laurapm/larsoft/work/SimMuon/protodune-sp

lar -c genlaura_protodune-sp_muon_1GeV_mono.fcl
--> outputs: gen_protodune-sp_muonLaura_1GeV_mono_gen.root + gen_protodune-sp_muonLaura_1GeV_mono_hist.root

lar -c muon_protodune-sp_refactored_g4_stage1.fcl -s gen_protodune-sp_muonLaura_1GeV_mono_gen.root
--> outputs: protodune-sp_muonLaura_1GeV_mono_g4_stage1_gen.root + g4_stage1_protodune-sp_hist.root

lar -c muon_protodune-sp_refactored_g4_stage2.fcl -s protodune-sp_muonLaura_1GeV_mono_g4_stage1_gen.root
--> outputs: protodune-sp_muonLaura_1GeV_mono_g4_stage1_g4_stage2_gen.root + g4_stage2_protodune-sp_hist.root

lar -c muon_protodune-sp_refactored_detsim_stage1.fcl -s protodune-sp_muonLaura_1GeV_mono_g4_stage1_g4_stage2_gen.root
--> outputs: protodune-sp_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1_gen.root + detsim_stage1_protodune-sp_hist.root

lar -c muon_protodune-sp_refactored_detsim_stage2.fcl -s protodune-sp_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1_gen.root
--> outputs: protodune-sp_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1_detsim_stage2_gen.root + detsim_stage2_protodune-sp_hist.root

lar -c eventdump.fcl protodune-sp_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1_detsim_stage2_gen.root
### std::vector<sim::SimEnergyDeposit> is stored in my configuration --> EdepLabel:"largeant" (g4stage1) ###