(defun c:strelice_6G
	      (/ olderr	oldcmd oldosmode e obj stpt enpt from stop D TXT1 TXT2 TXT3 TXT4 TXT5 TXT6 TXT7 TXT8 TXT9 TXT10 TXT11 TXT12 TXT13 TXT14
	       refpt TD	ptz pt1 pt2 pt3 pt4 pt5 pt6 pt7 pt8 pt9 pt10 pt11 pt12 pt13 pt14 pt15 pt16 pt17 radius HD1 HD2 HD3 HD4 HD5 HD6 HD7 HD8 HD9 HD10 HD11 HD12 HD13 HD14 H1 H2 H3 H4 H5 H6 H7 H8 H9 H10 H11 H12 H13 H14 P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 P16 P17 PN1 PN2 PN3 PN4 PN5 PN6 PN7 PN8 PN9 PN10 PN11 PN12 PN13 PN14 PN15 PN16 PN17 LN1 LN2 LN3 LN4 LN5 LN6 LN7 LN8 LN9 LN10 LN11 LN12 LN13 LN14 LN15 LN16 LN17)
  (setq	oldcmd	  (getvar "cmdecho")
	oldosmode (getvar "osmode")
	olderr	  *error*
  )
  (setvar "cmdecho" 0)
  (vl-load-com)
  (while (not stop)
    (if
      (setq e (entsel "\nSelect a LINE near the end to measure from: "))
       (progn
	 (setq pt (osnap (cadr e) "Near"))
	 (if (cdr (assoc 0 (entget (setq e (car e)))))
	   (setq stop T)
	   (princ "\nNot a LINE!!! Try again!!!")
	 )
       )
       (princ "\nNo object found!!! Try again!!!")
    )
  )
  (setq	obj  (vlax-ename->vla-object e)
	stpt (trans (vlax-curve-getStartPoint obj) 0 1)
	enpt (trans (vlax-curve-getEndPoint obj) 0 1)
	stop nil
  )
  (if (< (distance pt stpt) (distance pt enpt))
    (setq from	"StartPoint"
	  refpt	stpt
    )
    (setq from	"EndPoint"
	  refpt	enpt
    )
  )

(princ "Total Length: ")
    (if (eq (vla-get-objectname obj) "AcDbArc")
    (princ (setq TD (vlax-get-property obj 'ArcLength)))
    (princ (setq TD (vlax-get-property obj 'Length)))
)


(setq p1 (* (/ 0.0 6.0) TD))
(setq p2 (* (/ 1.0 6.0) TD))
(setq p3 (* (/ 2.0 6.0) TD))
(setq p4 (* (/ 3.0 6.0) TD))
(setq p5 (* (/ 4.0 6.0) TD))
(setq p6 (* (/ 5.0 6.0) TD))
(setq p7 (* (/ 6.0 6.0) TD))




    (setvar "osmode" oldosmode)
    (initget 160)
    	  (progn
	    (cond
	      ((= "StartPoint" from)
	       (setq pt1 (trans (vlax-curve-getPointAtDist obj P1) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt1 (trans (vlax-curve-getPointAtDist obj (- TD P1)) 0 1))
	      )
	    )
	         
	    (setvar "osmode" 0)
      (command "_.point" pt1)
	  
    )


    (setvar "osmode" oldosmode)
    (initget 160)
   
		  (progn
	    (cond
	      ((= "StartPoint" from)
	       (setq pt2 (trans (vlax-curve-getPointAtDist obj P2) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt2 (trans (vlax-curve-getPointAtDist obj (- TD P2)) 0 1))
	      )
	    )
	      
	    (setvar "osmode" 0)
      (command "_.point" pt2)
	  
    )
  
  
    (setvar "osmode" oldosmode)
    (initget 160)
    
		  (progn
	    (cond
	      ((= "StartPoint" from)
	       (setq pt3 (trans (vlax-curve-getPointAtDist obj P3) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt3 (trans (vlax-curve-getPointAtDist obj (- TD P3)) 0 1))
	      )
	    )	      
	    (setvar "osmode" 0)
      (command "_.point" pt3)
	  
    )




    (setvar "osmode" oldosmode)
    (initget 160)
    
		  (progn
	    (cond
	      ((= "StartPoint" from)
	       (setq pt4 (trans (vlax-curve-getPointAtDist obj P4) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt4 (trans (vlax-curve-getPointAtDist obj (- TD P4)) 0 1))
	      )
	    )
	      (setvar "osmode" 0)
	      (command "_.point" pt4)        
	  )
    



    (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt5 (trans (vlax-curve-getPointAtDist obj P5) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt5 (trans (vlax-curve-getPointAtDist obj (- TD P5)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt5)
	  )




   (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt6 (trans (vlax-curve-getPointAtDist obj P6) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt6 (trans (vlax-curve-getPointAtDist obj (- TD P6)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt6)
	  )





	     (setvar "osmode" oldosmode)
    (initget 160)
      (progn
        (cond
	      ((= "StartPoint" from)
	       (setq pt7 (trans (vlax-curve-getPointAtDist obj P7) 0 1))
	      )
	      ((= "EndPoint" from)
	       (setq pt7 (trans (vlax-curve-getPointAtDist obj (- TD P7)) 0 1))
	      )
	      )

	    (setvar "osmode" 0)
      (command "_.point" pt7)
	  )





























(setvar "osmode" oldosmode)
(command "_line" pt1 pt7 "")
(setq LN1 (entlast)) 





(setq ptz (getpoint "\nSelect line for measurement points: "))




(command "_line" pt2  "_PER" ptz "")
(setq LN2 (entlast))
(setq HD1 (vlax-ename->vla-object LN2)
	stpt (trans (vlax-curve-getStartPoint HD1) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD1) 0 1)
	stop nil)
	(princ "Total Length HD1: ")
    (princ (setq H1 (vlax-get-property HD1 'Length)))




(command "_line" pt3 "_per" ptz "")
(setq LN3 (entlast))
(setq HD2 (vlax-ename->vla-object LN3)
	stpt (trans (vlax-curve-getStartPoint HD2) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD2) 0 1)
	stop nil)
	(princ "Total Length HD2: ")
    (princ (setq H2 (vlax-get-property HD2 'Length)))




(command "_line" pt4 "_per" ptz "")
(setq LN4 (entlast))
(setq HD3 (vlax-ename->vla-object LN4)
	stpt (trans (vlax-curve-getStartPoint HD3) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD3) 0 1)
	stop nil)
	(princ "Total Length HD3: ")
    (princ (setq H3 (vlax-get-property HD3 'Length)))


(command "_line" pt5 "_per" ptz "")
(setq LN5 (entlast))
(setq HD4 (vlax-ename->vla-object LN5)
	stpt (trans (vlax-curve-getStartPoint HD4) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD4) 0 1)
	stop nil)
	(princ "Total Length HD4: ")
    (princ (setq H4 (vlax-get-property HD4 'Length)))

(command "_line" pt6 "_per" ptz "")
(setq LN6 (entlast))
(setq HD5 (vlax-ename->vla-object LN6)
	stpt (trans (vlax-curve-getStartPoint HD5) 0 1)
	enpt (trans (vlax-curve-getEndPoint HD5) 0 1)
	stop nil)
	(princ "Total Length HD5: ")
    (princ (setq H5 (vlax-get-property HD5 'Length)))








(setq TX (/ TD 30))

;(command "_text" pt1 TX 270 (strcat "    " (rtos p1 2 1)) "")
;(command "_text" pt2 TX 270 (strcat " " (rtos p2 2 1)) "")
;(command "_text" pt3 TX 270 (strcat " " (rtos p3 2 1)) "")
;(command "_text" pt4 TX 270 (strcat " " (rtos p4 2 1)) "")
;(command "_text" pt5 TX 270 (strcat "     " (rtos p5 2 1)) "")



;(command "_text" pt2 TX "_per" ptz (strcat "              " (rtos H1 2 1)) "")
;(command "_text" pt3 TX "_per" ptz (strcat "              " (rtos H2 2 1)) "")
;(command "_text" pt4 TX "_per" ptz (strcat "              " (rtos H3 2 1)) "")


(setvar "osmode" oldosmode)
(command "_attdia" 0)
(setq radius (cdr (assoc 40 (entget e))))
(setq PUT1 (getpoint "\nSelect where to put: ")) 

(command "-insert" "*strelice_6G.dwg" 1 1 0 "")
(command "_.erase" (entlast) "")

(command "-insert" "strelice_6G" PUT1 1 1 0 (strcat "R"(rtos radius 2 1)) (rtos H1 2 1) (rtos H2 2 1) (rtos H3 2 1) (rtos H4 2 1) (rtos H5 2 1) (rtos p1 2 1) (rtos p2 2 1) (rtos p3 2 1) (rtos p4 2 1) (rtos p5 2 1) (rtos p6 2 1) (rtos p7 2 1) "" "" "" "" "" "" "" "" "" "" "" "" "")
 

)



 