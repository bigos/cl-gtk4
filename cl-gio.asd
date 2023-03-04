(defsystem cl-gio
  :version "0.0.1"
  :author "Jacek Podkanski"
  :maintainer "Jacek Podkanski"
  :license "lgpl3"
  :description "Gio binding for Common Lisp."
  :serial t
  :components ((:file "gio"))
  :depends-on (#:cl-gobject-introspection-wrapper))

(uiop:register-image-restore-hook
 (lambda ()
   (let* ((namespace "Gio")
          (package (find-package (string-upcase namespace))))
     (when package
       (setf (symbol-value (find-symbol "*NS*" package))
             (uiop:symbol-call :gir :require-namespace namespace "2.0"))))))
