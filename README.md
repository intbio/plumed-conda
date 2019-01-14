# plumed-conda

Anaconda recipe for [Plumed](http://www.plumed.org).


## Building and uploading to anaconda
```
conda install conda-build
conda install anaconda-client
anaconda login

#For OSX you'll need to download older compatible SDK
#See here https://conda.io/docs/user-guide/tasks/build-packages/compiler-tools.html

#conda config --add channels conda-forge
conda-build -c conda-forge plumed2_VERSION
anaconda upload path_to_package
```


## Installing from Anaconda cloud

```
conda install -c conda-forge -c intbio plumed2=2.5.0
```
