base:
  # TODO: does this have an effect on aura here?
  environ.setenv:
    - name: PACMAN
    - value: powerpill
  # depending on state_auto_order being True (default) to execute in order
  '*':
    - root_config
    - packages
    - services
    - setup
