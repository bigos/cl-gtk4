(defsystem cl-gtk4
  :version "1.0.0"
  :author "Bohong Huang <1281299809@qq.com>"
  :maintainer "Bohong Huang <1281299809@qq.com>"
  :license "lgpl3"
  :description "GTK4 bindings for Common Lisp."
  :homepage "https://github.com/bohonghuang/cl-gtk4"
  :bug-tracker "https://github.com/bohonghuang/cl-gtk4/issues"
  :source-control (:git "https://github.com/bohonghuang/cl-gtk4.git")
  :serial t
  :components ((:file "gtk4"))
  :depends-on (#:cl-gobject-introspection-wrapper #:cl-glib #:cl-gio #:cl-gobject))

(uiop:register-image-restore-hook
 (lambda ()
   (let* ((namespace "Gtk")
          (package (find-package (string-upcase namespace))))
     (when package
       (setf (symbol-value (find-symbol "*NS*" package))
             (uiop:symbol-call :gir :require-namespace namespace "4.0"))))))

(defsystem cl-gtk4/example
  :depends-on (#:asdf
               #:bordeaux-threads
               #:cl-glib
               #:cl-gtk4)
  :build-operation program-op
  :build-pathname "cl-gtk4-example"
  :entry-point "gtk4.example:simple"
  :pathname "./examples"
  :components ((:file "gtk4")))
