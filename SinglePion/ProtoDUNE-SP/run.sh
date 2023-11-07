#!/bin/bash
# run with $ bash run.sh $ 

echo "================== GEN =================="
lar -c genlaura_protodune-sp_pion_1GeV_mono.fcl

echo "================== G4_1 ================="
lar -c pion_protodune-sp_refactored_g4_stage1.fcl -s gen_protodune-sp_pionLaura_1GeV_mono_gen.root

echo "================== G4_2 ================="
lar -c pion_protodune-sp_refactored_g4_stage2.fcl -s protodune-sp_pionLaura_1GeV_mono_g4_stage1_gen.root

echo "================ DETSIM_1 ==============="
lar -c pion_protodune-sp_refactored_detsim_stage1.fcl -s protodune-sp_pionLaura_1GeV_mono_g4_stage1_g4_stage2_gen.root

echo "================ DETSIM_2 ==============="
lar -c pion_protodune-sp_refactored_detsim_stage2.fcl -s protodune-sp_pionLaura_1GeV_mono_g4_stage1_g4_stage2_detsim_stage1_gen.root

