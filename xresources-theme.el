;;; xresources-theme.el --- Use your .Xresources as your emacs theme

;; Copyright (C) 2014-2014 Marten Lienen <marten.lienen@gmail.com>

;; Author: Marten Lienen <marten.lienen@gmail.com>
;; Keywords: xresources, theme
;; Version: 0.2.0

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

(defun xresources-theme-color (name)
  "Read the color NAME (e.g. color5) from the X resources."
  (x-get-resource name ""))

(deftheme xresources "~/.Xresources as a theme")

(let* ((foreground (xresources-theme-color "foreground"))
       (background (xresources-theme-color "background"))
       (color0 (xresources-theme-color "color0"))
       (color1 (xresources-theme-color "color1"))
       (color2 (xresources-theme-color "color2"))
       (color3 (xresources-theme-color "color3"))
       (color4 (xresources-theme-color "color4"))
       (color5 (xresources-theme-color "color5"))
       (color6 (xresources-theme-color "color6"))
       (color7 (xresources-theme-color "color7"))
       (color8 (xresources-theme-color "color8"))
       (color9 (xresources-theme-color "color9"))
       (color10 (xresources-theme-color "color10"))
       (color11 (xresources-theme-color "color11"))
       (color12 (xresources-theme-color "color12"))
       (color13 (xresources-theme-color "color13"))
       (color14 (xresources-theme-color "color14"))
       (color15 (xresources-theme-color "color15")))
  (custom-theme-set-faces
   'xresources

   ;; Built-in
   ;; basic coloring
   '(button ((t (:underline t))))
   `(link ((t (:foreground ,color3 :underline t :weight bold))))
   `(link-visited ((t (:foreground ,color3 :underline t :weight normal))))
   `(default ((t (:foreground ,foreground :background ,background))))
   `(cursor ((t (:foreground ,foreground :background ,foreground))))
   `(escape-glyph ((t (:foreground ,color3 :bold t))))
   `(fringe ((t (:foreground ,foreground :background ,background))))
   `(header-line ((t (:foreground ,color3
                                  :background ,background
                                  :box (:line-width -1 :style released-button)))))
   `(highlight ((t (:background ,background))))
   `(success ((t (:foreground ,color2 :weight bold))))
   `(warning ((t (:foreground ,color1 :weight bold))))

   ;; compilation
   `(compilation-column-face ((t (:foreground ,color3))))
   `(compilation-enter-directory-face ((t (:foreground ,color2))))
   `(compilation-error-face ((t (:foreground ,color1 :weight bold :underline t))))
   `(compilation-face ((t (:foreground ,foreground))))
   `(compilation-info-face ((t (:foreground ,color4))))
   `(compilation-info ((t (:foreground ,color2 :underline t))))
   `(compilation-leave-directory-face ((t (:foreground ,color2))))
   `(compilation-line-face ((t (:foreground ,color3))))
   `(compilation-line-number ((t (:foreground ,color3))))
   `(compilation-message-face ((t (:foreground ,color4))))
   `(compilation-warning-face ((t (:foreground ,color1 :weight bold :underline t))))
   `(compilation-mode-line-exit ((t (:foreground ,color2 :weight bold))))
   `(compilation-mode-line-fail ((t (:foreground ,color1 :weight bold))))
   `(compilation-mode-line-run ((t (:foreground ,color3 :weight bold))))

   ;; grep
   `(grep-context-face ((t (:foreground ,foreground))))
   `(grep-error-face ((t (:foreground ,color1 :weight bold :underline t))))
   `(grep-hit-face ((t (:foreground ,color4))))
   `(grep-match-face ((t (:foreground ,color1 :weight bold))))
   `(match ((t (:background ,background :foreground ,color1 :weight bold))))

   ;; isearch
   `(isearch ((t (:foreground ,color3 :weight bold :background ,background))))
   `(isearch-fail ((t (:foreground ,foreground :background ,color1))))
   `(lazy-highlight ((t (:foreground ,color3 :weight bold :background ,background))))

   `(menu ((t (:foreground ,foreground :background ,background))))
   `(minibuffer-prompt ((t (:foreground ,color3))))
   `(mode-line
     ((t (:foreground ,color2
                      :background ,background
                      :box (:line-width -1 :style released-button)))
      (t :inverse-video t)))
   `(mode-line-buffer-id ((t (:foreground ,color3 :weight bold))))
   `(mode-line-inactive
     ((t (:foreground ,color2
                      :background ,background
                      :box (:line-width -1 :style released-button)))))
   `(region ((t (:background ,background))
             (t :inverse-video t)))
   `(secondary-selection ((t (:background ,background))))
   `(trailing-whitespace ((t (:background ,color1))))
   `(vertical-border ((t (:foreground ,foreground))))

   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,foreground :weight bold))))
   `(font-lock-comment-face ((t (:foreground ,color2))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,color2))))
   `(font-lock-constant-face ((t (:foreground ,color2))))
   `(font-lock-doc-face ((t (:foreground ,color2))))
   `(font-lock-function-name-face ((t (:foreground ,color6))))
   `(font-lock-keyword-face ((t (:foreground ,color3 :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,color3 :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,color4))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,color3 :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,color2 :weight bold))))
   `(font-lock-string-face ((t (:foreground ,color1))))
   `(font-lock-type-face ((t (:foreground ,color4))))
   `(font-lock-variable-name-face ((t (:foreground ,color1))))
   `(font-lock-warning-face ((t (:foreground ,color3 :weight bold))))
   `(c-annotation-face ((t (:inherit font-lock-constant-face))))

   ;; Third-party

   ;; ace-jump
   `(ace-jump-face-background
     ((t (:foreground ,foreground :background ,background :inverse-video nil))))
   `(ace-jump-face-foreground
     ((t (:foreground ,color2 :background ,background :inverse-video nil))))

   ;; auctex
   `(font-latex-bold-face ((t (:inherit bold))))
   `(font-latex-warning-face ((t (:foreground nil :inherit font-lock-warning-face))))
   `(font-latex-sectioning-5-face ((t (:foreground ,color1 :weight bold ))))
   `(font-latex-sedate-face ((t (:foreground ,color3))))
   `(font-latex-italic-face ((t (:foreground ,color6 :slant italic))))
   `(font-latex-string-face ((t (:inherit ,font-lock-string-face))))
   `(font-latex-math-face ((t (:foreground ,color1))))

   ;; auto-complete
   `(ac-candidate-face ((t (:background ,background :foreground ,background))))
   `(ac-selection-face ((t (:background ,color4 :foreground ,foreground))))
   `(popup-tip-face ((t (:background ,color3 :foreground ,background))))
   `(popup-scroll-bar-foreground-face ((t (:background ,color4))))
   `(popup-scroll-bar-background-face ((t (:background ,background))))
   `(popup-isearch-match ((t (:background ,background :foreground ,foreground))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,foreground :background ,background))))
   `(company-tooltip-selection ((t (:foreground ,foreground :background ,background))))
   `(company-tooltip-mouse ((t (:background ,background))))
   `(company-tooltip-common ((t (:foreground ,color2))))
   `(company-tooltip-common-selection ((t (:foreground ,color2))))
   `(company-scrollbar-fg ((t (:background ,background))))
   `(company-scrollbar-bg ((t (:background ,background))))
   `(company-preview ((t (:background ,color2))))
   `(company-preview-common ((t (:foreground ,color2 :background ,background))))

   ;; clojure-test-mode
   `(clojure-test-failure-face ((t (:foreground ,color1 :weight bold :underline t))))
   `(clojure-test-error-face ((t (:foreground ,color1 :weight bold :underline t))))
   `(clojure-test-success-face ((t (:foreground ,color2 :weight bold :underline t))))

   ;; diff
   `(diff-added ((t (:foreground ,color2 :background nil))
                 (t (:foreground ,color2 :background nil))))
   `(diff-changed ((t (:foreground ,color3))))
   `(diff-removed ((t (:foreground ,color1 :background nil))
                   (t (:foreground ,color1 :background nil))))
   `(diff-refine-added ((t (:inherit diff-added :weight bold))))
   `(diff-refine-change ((t (:inherit diff-changed :weight bold))))
   `(diff-refine-removed ((t (:inherit diff-removed :weight bold))))
   `(diff-header ((t (:background ,background))
                  (t (:background ,foreground :foreground ,background))))
   `(diff-file-header
     ((t (:background ,background :foreground ,foreground :bold t))
      (t (:background ,foreground :foreground ,background :bold t))))

   ;; diff-hl
   `(diff-hl-change ((t (:foreground ,color4 :background ,background))))
   `(diff-hl-delete ((t (:foreground ,color1 :background ,background))))
   `(diff-hl-insert ((t (:foreground ,color2 :background ,background))))
   `(diff-hl-unknown ((t (:foreground ,color3 :background ,background))))

   ;; dired+
   `(diredp-display-msg ((t (:foreground ,color4))))
   `(diredp-compressed-file-suffix ((t (:foreground ,color1))))
   `(diredp-date-time ((t (:foreground ,color5))))
   `(diredp-deletion ((t (:foreground ,color3))))
   `(diredp-deletion-file-name ((t (:foreground ,color1))))
   `(diredp-dir-heading ((t (:foreground ,color4 :background ,background))))
   `(diredp-dir-priv ((t (:foreground ,color6))))
   `(diredp-exec-priv ((t (:foreground ,color1))))
   `(diredp-executable-tag ((t (:foreground ,color2))))
   `(diredp-file-name ((t (:foreground ,color4))))
   `(diredp-file-suffix ((t (:foreground ,color2))))
   `(diredp-flag-mark ((t (:foreground ,color3))))
   `(diredp-flag-mark-line ((t (:foreground ,color1))))
   `(diredp-ignored-file-name ((t (:foreground ,color1))))
   `(diredp-link-priv ((t (:foreground ,color3))))
   `(diredp-mode-line-flagged ((t (:foreground ,color3))))
   `(diredp-mode-line-marked ((t (:foreground ,color1))))
   `(diredp-no-priv ((t (:foreground ,foreground))))
   `(diredp-number ((t (:foreground ,color2))))
   `(diredp-other-priv ((t (:foreground ,color3))))
   `(diredp-rare-priv ((t (:foreground ,color1))))
   `(diredp-read-priv ((t (:foreground ,color2))))
   `(diredp-symlink ((t (:foreground ,color3))))
   `(diredp-write-priv ((t (:foreground ,color5))))

   ;; ediff
   `(ediff-current-diff-A ((t (:foreground ,foreground :background ,color1))))
   `(ediff-current-diff-Ancestor ((t (:foreground ,foreground :background ,color1))))
   `(ediff-current-diff-B ((t (:foreground ,foreground :background ,color2))))
   `(ediff-current-diff-C ((t (:foreground ,foreground :background ,color4))))
   `(ediff-even-diff-A ((t (:background ,background))))
   `(ediff-even-diff-Ancestor ((t (:background ,background))))
   `(ediff-even-diff-B ((t (:background ,background))))
   `(ediff-even-diff-C ((t (:background ,background))))
   `(ediff-fine-diff-A ((t (:foreground ,foreground :background ,color1 :weight bold))))
   `(ediff-fine-diff-Ancestor ((t (:foreground ,foreground :background ,color1 weight bold))))
   `(ediff-fine-diff-B ((t (:foreground ,foreground :background ,color2 :weight bold))))
   `(ediff-fine-diff-C ((t (:foreground ,foreground :background ,color4 :weight bold ))))
   `(ediff-odd-diff-A ((t (:background ,background))))
   `(ediff-odd-diff-Ancestor ((t (:background ,background))))
   `(ediff-odd-diff-B ((t (:background ,background))))
   `(ediff-odd-diff-C ((t (:background ,background))))

   ;; erc
   `(erc-action-face ((t (:inherit erc-default-face))))
   `(erc-bold-face ((t (:weight bold))))
   `(erc-current-nick-face ((t (:foreground ,color4 :weight bold))))
   `(erc-dangerous-host-face ((t (:inherit font-lock-warning-face))))
   `(erc-default-face ((t (:foreground ,foreground))))
   `(erc-direct-msg-face ((t (:inherit erc-default))))
   `(erc-error-face ((t (:inherit font-lock-warning-face))))
   `(erc-fool-face ((t (:inherit erc-default))))
   `(erc-highlight-face ((t (:inherit hover-highlight))))
   `(erc-input-face ((t (:foreground ,color3))))
   `(erc-keyword-face ((t (:foreground ,color4 :weight bold))))
   `(erc-nick-default-face ((t (:foreground ,color3 :weight bold))))
   `(erc-my-nick-face ((t (:foreground ,color1 :weight bold))))
   `(erc-nick-msg-face ((t (:inherit erc-default))))
   `(erc-notice-face ((t (:foreground ,color2))))
   `(erc-pal-face ((t (:foreground ,color1 :weight bold))))
   `(erc-prompt-face ((t (:foreground ,color1 :background ,background :weight bold))))
   `(erc-timestamp-face ((t (:foreground ,color2))))
   `(erc-underline-face ((t (:underline t))))

   ;; ert
   `(ert-test-result-expected ((t (:foreground ,color2 :background ,background))))
   `(ert-test-result-unexpected ((t (:foreground ,color1 :background ,background))))

   ;; eshell
   `(eshell-prompt ((t (:foreground ,color3 :weight bold))))
   `(eshell-ls-archive ((t (:foreground ,color1 :weight bold))))
   `(eshell-ls-backup ((t (:inherit font-lock-comment-face))))
   `(eshell-ls-clutter ((t (:inherit font-lock-comment-face))))
   `(eshell-ls-directory ((t (:foreground ,color4 :weight bold))))
   `(eshell-ls-executable ((t (:foreground ,color1 :weight bold))))
   `(eshell-ls-unreadable ((t (:foreground ,foreground))))
   `(eshell-ls-missing ((t (:inherit font-lock-warning-face))))
   `(eshell-ls-product ((t (:inherit font-lock-doc-face))))
   `(eshell-ls-special ((t (:foreground ,color3 :weight bold))))
   `(eshell-ls-symlink ((t (:foreground ,color6 :weight bold))))

   ;; flycheck
   `(flycheck-error
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,color1) :inherit unspecified))
      (t (:foreground ,color1 :weight bold :underline t))))
   `(flycheck-warning
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,color3) :inherit unspecified))
      (t (:foreground ,color3 :weight bold :underline t))))
   `(flycheck-info
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,color6) :inherit unspecified))
      (t (:foreground ,color6 :weight bold :underline t))))
   `(flycheck-fringe-error ((t (:foreground ,color1 :weight bold))))
   `(flycheck-fringe-warning ((t (:foreground ,color3 :weight bold))))
   `(flycheck-fringe-info ((t (:foreground ,color6 :weight bold))))

   ;; git-rebase-mode
   `(git-rebase-hash ((t (:foreground, color1))))

   ;; helm
   `(helm-header
     ((t (:foreground ,color2
                      :background ,background
                      :underline nil
                      :box nil))))
   `(helm-source-header
     ((t (:foreground ,color3
                      :background ,background
                      :underline nil
                      :weight bold
                      :box (:line-width -1 :style released-button)))))
   `(helm-selection ((t (:background ,background :underline nil))))
   `(helm-selection-line ((t (:background ,background))))
   `(helm-visible-mark ((t (:foreground ,background :background ,color3))))
   `(helm-candidate-number ((t (:foreground ,color2 :background ,background))))
   `(helm-separator ((t (:foreground ,color1 :background ,background))))
   `(helm-time-zone-current ((t (:foreground ,color2 :background ,background))))
   `(helm-time-zone-home ((t (:foreground ,color1 :background ,background))))
   `(helm-bookmark-addressbook ((t (:foreground ,color1 :background ,background))))
   `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
   `(helm-bookmark-gnus ((t (:foreground ,color5 :background ,background))))
   `(helm-bookmark-info ((t (:foreground ,color2 :background ,background))))
   `(helm-bookmark-man ((t (:foreground ,color3 :background ,background))))
   `(helm-bookmark-w3m ((t (:foreground ,color5 :background ,background))))
   `(helm-buffer-not-saved ((t (:foreground ,color1 :background ,background))))
   `(helm-buffer-process ((t (:foreground ,color6 :background ,background))))
   `(helm-buffer-saved-out ((t (:foreground ,foreground :background ,background))))
   `(helm-buffer-size ((t (:foreground ,foreground :background ,background))))
   `(helm-ff-directory ((t (:foreground ,color6 :background ,background :weight bold))))
   `(helm-ff-file ((t (:foreground ,foreground :background ,background :weight normal))))
   `(helm-ff-executable ((t (:foreground ,color2 :background ,background :weight normal))))
   `(helm-ff-invalid-symlink ((t (:foreground ,color1 :background ,background :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,color3 :background ,background :weight bold))))
   `(helm-ff-prefix ((t (:foreground ,background :background ,color3 :weight normal))))
   `(helm-grep-cmd-line ((t (:foreground ,color6 :background ,background))))
   `(helm-grep-file ((t (:foreground ,foreground :background ,background))))
   `(helm-grep-finish ((t (:foreground ,color2 :background ,background))))
   `(helm-grep-lineno ((t (:foreground ,foreground :background ,background))))
   `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((t (:foreground ,color1 :background ,background))))
   `(helm-moccur-buffer ((t (:foreground ,color6 :background ,background))))
   `(helm-mu-contacts-address-face ((t (:foreground ,foreground :background ,background))))
   `(helm-mu-contacts-name-face ((t (:foreground ,foreground :background ,background))))

   ;; hl-line-mode
   `(hl-line-face ((t (:background ,background))
                   (t :weight bold)))
   `(hl-line ((t (:background ,background)) ; old emacsen
              (t :weight bold)))

   ;; ido-mode
   `(ido-first-match ((t (:foreground ,color3 :weight bold))))
   `(ido-only-match ((t (:foreground ,color1 :weight bold))))
   `(ido-subdir ((t (:foreground ,color3))))
   `(ido-indicator ((t (:foreground ,color3 :background ,color1))))

   ;; js2-mode
   `(js2-warning ((t (:underline ,color1))))
   `(js2-error ((t (:foreground ,color1 :weight bold))))
   `(js2-jsdoc-tag ((t (:foreground ,color2))))
   `(js2-jsdoc-type ((t (:foreground ,color2))))
   `(js2-jsdoc-value ((t (:foreground ,color2))))
   `(js2-function-param ((t (:foreground, color2))))
   `(js2-external-variable ((t (:foreground ,color1))))

   ;; linum-mode
   `(linum ((t (:foreground ,color2 :background ,background))))

   ;; magit
   `(magit-item-highlight ((t (:background ,background))))
   `(magit-section-title ((t (:foreground ,color3 :weight bold))))
   `(magit-process-ok ((t (:foreground ,color2 :weight bold))))
   `(magit-process-ng ((t (:foreground ,color1 :weight bold))))
   `(magit-branch ((t (:foreground ,color4 :weight bold))))
   `(magit-log-author ((t (:foreground ,color1))))
   `(magit-log-sha1 ((t (:foreground, color1))))

   ;; org-mode
   `(org-agenda-date-today
     ((t (:foreground ,foreground :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((t (:inherit font-lock-comment-face))))
   `(org-archived ((t (:foreground ,foreground :weight bold))))
   `(org-checkbox ((t (:background ,background :foreground ,foreground
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((t (:foreground ,color4 :underline t))))
   `(org-deadline-announce ((t (:foreground ,color1))))
   `(org-done ((t (:bold t :weight bold :foreground ,color2))))
   `(org-formula ((t (:foreground ,color3))))
   `(org-headline-done ((t (:foreground ,color2))))
   `(org-hide ((t (:foreground ,background))))
   `(org-level-1 ((t (:foreground ,color1))))
   `(org-level-2 ((t (:foreground ,color2))))
   `(org-level-3 ((t (:foreground ,color4))))
   `(org-level-4 ((t (:foreground ,color3))))
   `(org-level-5 ((t (:foreground ,color6))))
   `(org-level-6 ((t (:foreground ,color2))))
   `(org-level-7 ((t (:foreground ,color1))))
   `(org-level-8 ((t (:foreground ,color4))))
   `(org-link ((t (:foreground ,color3 :underline t))))
   `(org-scheduled ((t (:foreground ,color2))))
   `(org-scheduled-previously ((t (:foreground ,color1))))
   `(org-scheduled-today ((t (:foreground ,color4))))
   `(org-sexp-date ((t (:foreground ,color4 :underline t))))
   `(org-special-keyword ((t (:inherit font-lock-comment-face))))
   `(org-table ((t (:foreground ,color2))))
   `(org-tag ((t (:bold t :weight bold))))
   `(org-time-grid ((t (:foreground ,color1))))
   `(org-todo ((t (:bold t :foreground ,color1 :weight bold))))
   `(org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
   `(org-warning ((t (:bold t :foreground ,color1 :weight bold :underline nil))))
   `(org-column ((t (:background ,background))))
   `(org-column-title ((t (:background ,background :underline t :weight bold))))
   `(org-mode-line-clock ((t (:foreground ,foreground :background ,background))))
   `(org-mode-line-clock-overrun ((t (:foreground ,background :background ,color1))))
   `(org-ellipsis ((t (:foreground ,color3 :underline t))))
   `(org-footnote ((t (:foreground ,color6 :underline t))))

   ;; outline
   `(outline-1 ((t (:foreground ,color1))))
   `(outline-2 ((t (:foreground ,color2))))
   `(outline-3 ((t (:foreground ,color4))))
   `(outline-4 ((t (:foreground ,color3))))
   `(outline-5 ((t (:foreground ,color6))))
   `(outline-6 ((t (:foreground ,color2))))
   `(outline-7 ((t (:foreground ,color1))))
   `(outline-8 ((t (:foreground ,color4))))

   ;; powerline
   `(powerline-active1 ((t (:background ,background :inherit mode-line))))
   `(powerline-active2 ((t (:background ,background :inherit mode-line))))
   `(powerline-inactive1 ((t (:background ,background :inherit mode-line-inactive))))
   `(powerline-inactive2 ((t (:background ,background :inherit mode-line-inactive))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,foreground))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,color2))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,color3))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,color6))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,color2))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,color4))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,color3))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,color2))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,color4))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,color1))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,color2))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,color4))))

   ;; sh-mode
   `(sh-heredoc     ((t (:foreground ,color3 :bold t))))
   `(sh-quoted-exec ((t (:foreground ,color1))))

   ;; smartparens
   `(sp-show-pair-mismatch-face ((t (:foreground ,color1 :background ,background :weight bold))))
   `(sp-show-pair-match-face ((t (:background ,background :weight bold))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'xresources)

;;; xresources-theme.el ends here
