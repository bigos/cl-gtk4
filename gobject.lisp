(cl:defpackage gobject
  (:use)
  (:nicknames #:gobject)
  (:export #:*ns*))

(cl:in-package #:gobject)

(gir-wrapper:define-gir-namespace "GObject" "2.0")


