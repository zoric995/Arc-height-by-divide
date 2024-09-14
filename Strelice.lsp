(defun c:Strelice ( / sd a )
 ;
 ;==== DIALOG ===============================================================
 (defun StreliceDialog ( / dcl_id x y )
  (if (new_dialog "IT" (setq dcl_id (load_dialog "Strelice.dcl")))
   (progn

    ;*** INITIALIZE ***
   (setq x (dimx_tile "Img1")
         y (dimy_tile "Img1"))
    ;*** SET TILE ***
   (start_image "Img1")(slide_image 0 0 x y "StreliceG")(end_image)
   (start_image "Img2")(slide_image 0 0 x y "StreliceD")(end_image)
    

    ;*** MODE TILE ***


    ;*** ACTION TILE ***

    (action_tile "BTN1" "(setq a \"\")(done_dialog 1)")
    (action_tile "BTN2" "(setq b \"\")(done_dialog 2)")
    (action_tile "BTN3" "(setq b \"\")(done_dialog 3)")
    (action_tile "BTN4" "(setq a \"\")(done_dialog 4)")
    (action_tile "BTN5" "(setq b \"\")(done_dialog 5)")
    (action_tile "BTN6" "(setq b \"\")(done_dialog 6)")
    (action_tile "BTN7" "(setq a \"\")(done_dialog 7)")
    (action_tile "BTN8" "(setq b \"\")(done_dialog 8)")
    (action_tile "BTN9" "(setq b \"\")(done_dialog 9)")
    (action_tile "BTN10" "(setq a \"\")(done_dialog 10)")
    (action_tile "BTN11" "(setq b \"\")(done_dialog 11)")
    (action_tile "BTN12" "(setq b \"\")(done_dialog 12)")
    (action_tile "BTN13" "(setq a \"\")(done_dialog 13)")
    (action_tile "BTN14" "(setq b \"\")(done_dialog 14)")

 



    (action_tile "cancel" "(done_dialog 0)")

    (setq sd (start_dialog))
    (setq dcl_id (unload_dialog dcl_id))
   );progn
   (princ "\n Unable to load dialog. ")
  );if
 );end StreliceDialog
 ;




 ;==== DASHBOARD ============================================================
(setq sd 0)
 (StreliceDialog)

 (if (= sd 1)
  (progn
   (c:Strelice_2G)
  );progn
 )
  (if (= sd 2)
  (progn
   (c:Strelice_4G)
  );progn
 )
(if (= sd 3)
  (progn
     (c:Strelice_6G)
  );progn
 )

 (if (= sd 4)
  (progn
   (c:Strelice_8G)
  );progn
 )
  (if (= sd 5)
  (progn
   (c:Strelice_10G)
  );progn
 )
(if (= sd 6)
  (progn
     (c:Strelice_12G)
  );progn
 )

 (if (= sd 7)
  (progn
   (c:Strelice_14G)
  );progn
 )
  (if (= sd 8)
  (progn
   (c:Strelice_2)
  );progn
 )
(if (= sd 9)
  (progn
     (c:Strelice_4)
  );progn
 )

  (if (= sd 10)
  (progn
   (c:Strelice_6)
  );progn
 )
  (if (= sd 11)
  (progn
   (c:Strelice_8)
  );progn
 )
(if (= sd 12)
  (progn
     (c:Strelice_10)
  );progn
 )

  (if (= sd 13)
  (progn
   (c:Strelice_12)
  );progn
 )
  (if (= sd 14)
  (progn
   (c:Strelice_14)
  );progn
 )




 (setq sd nil a nil)(princ)
);end Strelice
