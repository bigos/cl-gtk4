(cl:defpackage glib
  (:use)
  (:nicknames #:glib)
  (:export #:*ns*))

(cl:in-package #:glib)

(gir-wrapper:define-gir-namespace "Glib" "2.0")
