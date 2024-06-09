(define-module (gatekeeper hosts)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy)

  #:export (gatekeeper-hosts))

(define-public gatekeeper-hosts
  (package
    (name "gatekeeper-hosts")
    (version "09-06-2024")
    (source (origin
      (method url-fetch)
      (uri (string-append
	"https://github.com/Thaenz/hosts/releases/download/v" version
	"/hosts.gz"))
      (sha256
	(base32 "0ydd0fvqn0mp2s6gkdzxmas51284w452k18ycb95xgakbsh7hc4a"))))
    (build-system copy-build-system)
    (home-page "https://github.com/Thaenz/hosts")
    (synopsis "My massive hosts list")
    (description "It's massive m'kay?")
    (license #f)))
