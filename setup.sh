
# setup script for ZprimeDM
echo -n "setting up ATLAS..."
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
. ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh -q
echo " done"

setupATLAS
# lsetup fax panda pyami
# voms-proxy-init -voms atlas
asetup 21.2.4,AnalysisBase,here
mkdir build && cd build
cmake ..
source ${AnalysisBase_PLATFORM}/setup.sh
make
