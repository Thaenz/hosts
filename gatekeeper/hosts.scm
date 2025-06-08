(define-module (gatekeeper hosts)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy))

(define-public gatekeeper-hosts
  (package
    (name "gatekeeper-hosts")
    (version "08-06-2025")
    (source (origin
      (method url-fetch)
      (uri (string-append
	"https://github.com/Thaenz/hosts/releases/download/v" version
	"/hosts.gz"))
      (sha256
	(base32 "07na7gnji67y179pzqagdal457fxb4jyiiszhvbmzjx5z3hrc9yw"))))
    (build-system copy-build-system)
    (home-page "https://github.com/Thaenz/hosts")
    (synopsis "My massive hosts list")
    (description "It's massive m'kay?")
    (license #f)))
