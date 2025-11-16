(define-module (gatekeeper hosts)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy))

(define-public gatekeeper-hosts
  (package
    (name "gatekeeper-hosts")
    (version "16-11-2025")
    (source (origin
      (method url-fetch)
      (uri (string-append
	"https://github.com/Thaenz/hosts/releases/download/v" version
	"/hosts.gz"))
      (sha256
	(base32 "0mni1v5a7nn8mff0wv6g2az2xs5rd7m50dav56yn5c6basvrq3jb"))))
    (build-system copy-build-system)
    (home-page "https://github.com/Thaenz/hosts")
    (synopsis "My massive hosts list")
    (description "It's massive m'kay?")
    (license #f)))
