(define-module (gatekeeper hosts)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy))

(define-public gatekeeper-hosts
  (package
    (name "gatekeeper-hosts")
    (version "22-12-2024")
    (source (origin
      (method url-fetch)
      (uri (string-append
	"https://github.com/Thaenz/hosts/releases/download/v" version
	"/hosts.gz"))
      (sha256
	(base32 "1vr8qdmqr1l9si53q1k9wdxis5zixy5myhpn25rwmm6zj72w5y01"))))
    (build-system copy-build-system)
    (home-page "https://github.com/Thaenz/hosts")
    (synopsis "My massive hosts list")
    (description "It's massive m'kay?")
    (license #f)))
