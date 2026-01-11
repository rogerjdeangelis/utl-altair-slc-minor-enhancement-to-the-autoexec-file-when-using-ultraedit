# utl-altair-slc-minor-enhancement-to-the-autoexec-file-when-using-ultraedit
Altair slc minor enhancement to the autoexec file when using ultraedit
    %let pgm=utl-altair-slc-minor-enhancement-to-the-autoexec-file-when-using-ultraedit;

    Altair slc minor enhancement to the autoexec file when using ultraedit

    Difficult to display here, so see github

    Add lines to the top of the log and list with the time to make it clear that
    ultraedit automatically updated log and list.

    ENHANCEMENT

      If you are using untraedit with a three panel display

      -----------------=----------------=-----------------
      | LOG            | PROGRAM        | LIST           |
      -----------------=----------------=-----------------
      |                | proc options ; |                |
      |                | run            |                |

    I have no issues with ultraedit automatically refreshing log and list windows
    after each re-submission of the program. However if the log and
    list did not change, you may wonder if the refresh took place.

    If you add this code to then end of your autoexec all runs will have

    data _null_;
      file print;
      curr_time = put(time(), time8.);
      put    "LIST: "  curr_time;
      putlog "LOG:  "  curr_time;
    run;quit;

    When you submit your program, the first line of the log an list will be.

     -----------------=----------------=-----------------
     | LOG            | PROGRAM        | LIST           |
     -----------------=----------------=-----------------
     | Altair Company | proc options ; | LIST 7:10:34   |
     | ...            | run            | ...            |
     | LOG: 7:10:34   |                |                |

    /*              _
      ___ _ __   __| |
     / _ \ `_ \ / _` |
    |  __/ | | | (_| |
     \___|_| |_|\__,_|

    */
    Best Regards
    Roger
