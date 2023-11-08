#!/bin/bash
# run with $ bash run.sh $ 

echo "================== GEN =================="
lar -c gen_protodunehd_beam_cosmics_1GeV.fcl

echo "================== G4_1 ================="
lar -c protoDUNEHD_refactored_g4_stage1.fcl -s gen_protoDune_beam_p1GeV_cosmics.root

echo "================== G4_2 ================="
lar -c protoDUNEHD_refactored_g4_stage2.fcl -s gen_protoDune_beam_p1GeV_cosmics_g4_stage1.root

echo "================ DETSIM_REF ==============="
lar -c protoDUNEHD_refactored_detsim.fcl -s gen_protoDune_beam_p1GeV_cosmics_g4_stage1_g4_stage2.root

echo "================ RECO ==============="
lar -c protoDUNEHD_refactored_reco.fcl -s gen_protoDune_beam_p1GeV_cosmics_g4_stage1_g4_stage2_detsim.root

# lar -c eventdump.fcl dunefd_muonLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1_detsim_stage2_gen.root