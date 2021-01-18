#!/usr/bin/env bash
system_profiler -detaillevel basic | grep "Processor" 
system_profiler -detaillevel basic | grep "Memory"
system_profiler -detaillevel basic | grep "Serial Number (system)"

echo "Would you output system_profiler?:"
select delconf in "1" "2" "3"
do
    echo "You selected :" $delconf
    case $delconf in
        1 ) system_profiler -detailLevel basic > ~/Desktop/system_report_basic.txt; break;;
        2 ) system_profiler -detailLevel mini > ~/Desktop/system_report_mini.txt; break;;
        3 ) system_profiler -detailLevel full > ~/Desktop/system_report_full.txt; break;;
    esac
done