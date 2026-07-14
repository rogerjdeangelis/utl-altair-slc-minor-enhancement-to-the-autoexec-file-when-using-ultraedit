/* From utl-altair-slc-minor-enhancement-to-the-autoexec-file-when-using-ultraedit.sas
   Roger's autoexec enhancement: stamp the first line of the LIST and LOG with the
   time of the run, so an UltraEdit three-panel refresh is visibly confirmed. */
data _null_;
  file print;
  curr_time = put(time(), time8.);
  put    "LIST: "  curr_time;
  putlog "LOG:  "  curr_time;
run;quit;
