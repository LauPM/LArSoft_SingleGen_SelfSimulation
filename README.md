Repository with files used to generate samples of muons in different geometries.
You can reproduce my results by conecting in a dunegpvm** and run:

```
source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
source localProducts_larsoft*/setup

setup larsoft v09_63_00  -q e20:prof 

mrbslp #set local products

setup project_py
```


Then in the chosen folser you can run which will start the simulation from generation to detsim step:
```
sh run.sh 
```

The expected output is a root file which can be studied which a LArSoft analyser (see MyTruthAnalyser for ideas)
