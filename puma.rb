bind "tcp://127.0.0.1:9292"
environment "development"
daemonize true

stdout_redirect 'log/production.log', 'log/production.log', true

preload_app!
