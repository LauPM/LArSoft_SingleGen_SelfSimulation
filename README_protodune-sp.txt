source config.sh 
cd /dune/app/users/laurapm/larsoft/work/SimMuon/protodune-sp

lar -c genlaura_protodune-sp_muon_1GeV_mono.fcl
lar -c muon_protodune-sp_refactored_g4_stage1.fcl -s gen_protodune-sp_muonLaura_1GeV_mono.root
lar -c muon_protodune-sp_refactored_g4_stage2.fcl -s gen_protodune-sp_muonLaura_1GeV_mono_g4_stage1.root
lar -c muon_protodune-sp_refactored_detsim_stage1.fcl -s gen_protodune-sp_muonLaura_1GeV_mono_g4_stage1_g4_stage2.root
lar -c muon_protodune-sp_refactored_detsim_stage2.fcl -s gen_protodune-sp_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1.root