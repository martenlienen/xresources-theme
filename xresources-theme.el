;;; xresources-theme.el --- Use your .Xresources as your emacs theme

;; Copyright (C) 2014-2014 Marten Lienen <marten.lienen@gmail.com>

;; Author: Marten Lienen <marten.lienen@gmail.com>
;; Keywords: xresources, theme
;; Version: 0.1.0

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free Software
;; Foundation; either version 3, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
;; FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
;; details.
;;
;; You should have received a copy of the GNU General Public License along with
;; GNU Emacs; see the file COPYING.  If not, write to the Free Software
;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301,
;; USA.

;;; Commentary:

;; Use the colors defined in your .Xresources as your emacs theme

;;; Code:

(deftheme xresources "~/.Xresources as a theme")

(let* ((foreground (x-get-resource "foreground" ""))
       (background (x-get-resource "background" ""))
       (color0 (x-get-resource "color0" ""))
       (color1 (x-get-resource "color1" ""))
       (color2 (x-get-resource "color2" ""))
       (color3 (x-get-resource "color3" ""))
       (color4 (x-get-resource "color4" ""))
       (color5 (x-get-resource "color5" ""))
       (color6 (x-get-resource "color6" ""))
       (color7 (x-get-resource "color7" ""))
       (color8 (x-get-resource "color8" ""))
       (color9 (x-get-resource "color9" ""))
       (color10 (x-get-resource "color10" ""))
       (color11 (x-get-resource "color11" ""))
       (color12 (x-get-resource "color12" ""))
       (color13 (x-get-resource "color13" ""))
       (color14 (x-get-resource "color14" ""))
       (color15 (x-get-resource "color15" "")))
  (custom-theme-set-faces
   'xresources
   ;; Basics
   `(default ((t (:foreground ,color12 :background ,background))))
   `(shadow ((t (:foreground ,color10))))
   `(match ((t (:background ,color0 :foreground ,color14 :weight bold))))
   `(cursor ((t (:foreground ,background :background ,color12
                             :inverse-video t))))
   `(mouse ((t (:foreground ,background :background ,color12
                            :inverse-video t))))
   `(escape-glyph ((t (:foreground ,color13))))
   `(fringe ((t (:foreground ,color12 :background ,color0))))
   `(highlight ((t (:background ,color0))))
   `(link ((t (:foreground ,color3 :underline t :weight bold))))
   `(link-visited ((t (:foreground ,color3 :underline t :weight normal))))
   `(success ((t (:foreground ,color2 ))))
   `(warning ((t (:foreground ,color3 ))))
   `(error ((t (:foreground ,color9))))
   `(lazy-highlight ((t (:foreground ,background :background ,color3
                                     :weight normal))))
   '(button ((t (:underline t))))

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground ,color1))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,color10))))
   `(font-lock-comment-face ((t (:foreground ,color10))))
   `(font-lock-constant-face ((t (:foreground ,color4 :weight bold))))
   `(font-lock-doc-face ((t (:foreground ,color6))))
   `(font-lock-function-name-face ((t (:foreground ,color4))))
   `(font-lock-keyword-face ((t (:foreground ,color2))))
   `(font-lock-negation-char-face ((t (:foreground ,color3 :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,color4))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,color3 :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,color2 :weight bold))))
   `(font-lock-string-face ((t (:foreground ,color6))))
   `(font-lock-type-face ((t (:foreground ,color3))))
   `(font-lock-variable-name-face ((t (:foreground ,color4))))
   `(font-lock-warning-face ((t (:foreground ,color9 :weight bold :underline t))))
   `(c-annotation-face ((t (:inherit font-lock-constant-face))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'xresources)

;;; xresources-theme.el ends here
