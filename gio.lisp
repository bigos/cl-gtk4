(cl:defpackage gio
  (:use)
  (:nicknames #:gio)
  (:export #:*ns*))

(cl:in-package #:gio)

(gir-wrapper:define-gir-namespace "Gio" "2.0")


