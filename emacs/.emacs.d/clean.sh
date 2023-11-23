set -xe

rm -rf auto-save-list init.el config.el org-roam.db projectile-bookmarks.eld recentf elpa/ .dap-breakpoints .lsp-session-v1 .org-id-locations .cache transient

git restore init.el
