# Hosts

## getting started

edit `<VERSION DATE>` and `<GUIX HASH>` to the newest release

```scm
(define-module (packages hosts)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy)

  #:export (my-hosts))

(define-public my-hosts
  (package
    (name "my-hosts")
    (version "<VERSION DATE>")
    (source (origin
      (method url-fetch)
      (uri (string-append
        "https://github.com/Thaenz/hosts/releases/download/v" version
        "/hosts.gz"))
      (sha256
	(base32 "<GUIX HASH>"))))
    (build-system copy-build-system)
    (home-page "https://github.com/Thaenz/hosts")
    (synopsis "My massive hosts list")
    (description "It's massive m'kay?")
    (license #f)))
```

then add 

```scm
(services (cons*
  ... 
  (extra-special-file "/etc/hosts"
    (file-append my-hosts "/hosts"))
  ...))
```
