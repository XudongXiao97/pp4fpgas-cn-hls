open_project spmv
set_top spmv
add_files spmv/spmv.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 7 -name default
create_clock -period 10 -name control
csynth_design
export_design -format ip_catalog -description "PP4FPGA-HLS-SPMV" -display_name "Spmv"

exit
