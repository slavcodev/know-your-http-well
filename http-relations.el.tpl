;;; http-relations.el --- explains the meaning of a HTTP relation
;;
;; This file was automatically generated by
;; https://github.com/andreineculau/know-your-http-well
;;
;;; Commentary:
;;; Code goes here:

(defconst http-relations
  '({{ HTTP_RELATIONS }}))

;;;###autoload
(defun http-relation (relation)
  "Display the meaning of a HTTP relation"
  (interactive "sEnter HTTP relation: ")
  (let* ((lowercased-relation (downcase relation))
        (found (assoc lowercased-relation http-relations)))
    (if found
        (let ((description (car (cdr found))))
          (message
           "%s - HTTP relation\n%s"
           lowercased-relation (car description) ))
      (message "%s - HTTP relation\nUNKNOWN" lowercased-relation))
    ))

(provide 'http-relations)

;;; http-relation.el ends here
