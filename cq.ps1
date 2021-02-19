function cq() {
        Get-WMIObject Win32_PerfFormattedData_Spooler_PrintQueue | Select Name, 
@{Expression={$_.jobs};Label="CurrentJobs"}, TotalJobsPrinted, JobErrors
}


function cqf() {
   for(;;) {
      clear;
      $e=cq;
      write-output $e;
      sleep 30
   }
}