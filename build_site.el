(require 'ox-publish)

(setq org-publish-project-alist
      '(("posts"
	 :base-directory "base/"
	 :base-extension "org"
	 :publishing-directory "public/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :with-toc nil
	 :auto-preamble t)
	("static"
	 :base-directory "static/"
	 :base-extension "css\\|js\\|png\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "public/"
	 :recursive t
	 :publishing-function org-publish-attachment)
	("all"
	 :components ("posts" "static"))))

(org-publish-project "all")
