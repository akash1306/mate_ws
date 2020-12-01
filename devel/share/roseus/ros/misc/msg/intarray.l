;; Auto-generated. Do not edit!


(when (boundp 'misc::intarray)
  (if (not (find-package "MISC"))
    (make-package "MISC"))
  (shadow 'intarray (find-package "MISC")))
(unless (find-package "MISC::INTARRAY")
  (make-package "MISC::INTARRAY"))

(in-package "ROS")
;;//! \htmlinclude intarray.msg.html


(defclass misc::intarray
  :super ros::object
  :slots (_data ))

(defmethod misc::intarray
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get misc::intarray :md5sum-) "563b27884d008b0d2adff54dc1f9e4f5")
(setf (get misc::intarray :datatype-) "misc/intarray")
(setf (get misc::intarray :definition-)
      "int32[] data

")



(provide :misc/intarray "563b27884d008b0d2adff54dc1f9e4f5")


