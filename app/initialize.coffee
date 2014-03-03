'use strict'

# Create and initialize a new Application after the DOM has fully loaded.

Application = require 'application'

jQuery ->
  # Init go-to root object...
  application = new Application
  application.initialize()

