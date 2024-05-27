# Hosts

## getting started

add the channel to your channels.scm

```scm
(cons*
  (channel
    (name 'gatekeeper)
    (url "https://github.com/thaenz/hosts"))
  %default-channels)
```

then in your /etc/config.scm

```scm
(use-modules (gatekeeper hosts))

...

(services (cons*
  ... 
  (extra-special-file "/etc/hosts"
    (file-append gatekeeper-hosts "/hosts"))
  ...))
```
