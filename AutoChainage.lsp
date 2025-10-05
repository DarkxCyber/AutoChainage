(defun c:CHCHK ( / pl pt dist param ch_str km m pt_on_line tan_angle)
  (setq pl (car (entsel "\nSelect polyline: ")))
  (if (and pl (eq "LWPOLYLINE" (cdr (assoc 0 (entget pl)))))
    (progn
      ;; Pick point near polyline
      (setq pt (getpoint "\nPick a point on or near the polyline: "))

      ;; Get parameter and distance along polyline
      (setq param (vlax-curve-getparamatpoint pl (vlax-curve-getclosestpointto pl pt)))
      (setq dist (vlax-curve-getdistatparam pl param))

      ;; Convert to civil chainage format (0+000)
      (setq km (fix (/ dist 100.0)))
      (setq m  (- dist (* km 100.0)))
      (setq ch_str (strcat (itoa km) "+" (rtos m 2 2)))

      ;; Get point on polyline and tangent angle
      (setq pt_on_line (vlax-curve-getpointatparam pl param))
      (setq tan_angle (angle '(0 0) 
                              (vlax-curve-getfirstderiv pl param))) ; tangent vector angle

      ;; Place rotated text
      (command "_.TEXT" pt_on_line 2.0 tan_angle ch_str)

      (prompt (strcat "\nChainage at picked point: " ch_str " m"))
    )
    (prompt "\nPlease select a valid polyline.")
  )
  (princ)
)
