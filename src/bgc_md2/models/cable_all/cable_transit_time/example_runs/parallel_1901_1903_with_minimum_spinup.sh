#!/bin/bash
set -e
source ./common_config

bN=$(basename $0) #this scripts name
runDirName="${bN%.sh}"
run_and_log_in_target_dir \
  ${cableDataDir} \
  "cable_run_with_spinup $runDirName 1901 1902 1 1 1903" \
  "log_stdout_and_stderr_${runDirName}"
