(define-module (gatekeeper hosts)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy))

(define-public gatekeeper-hosts
  (package
    (name "gatekeeper-hosts")
    (version "11-10-2026")
    (source (origin
      (method url-fetch)
      (uri (string-append
	"https://github.com/Thaenz/hosts/releases/download/v" version
	"/hosts.gz"))
      (sha256
	(base32 "0rvgvj4070kyg79pfdigg7q1k1dgkcijdr9i38qfjq6v0cyg1i9y"))))
    (build-system copy-build-system)
    (home-page "https://github.com/Thaenz/hosts")
    (synopsis "My massive hosts list")
    (description "It's massive m'kay?")
    (license #f)))
