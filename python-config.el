(message "Loading python related packages and settings")

(setq package-list '( elpy ))

(load-missing-packages package-list)

(elpy-enable)
