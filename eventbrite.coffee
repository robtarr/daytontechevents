#!/usr/bin/env node
config = require './config.coffee'

Eventbrite = require 'eventbrite'

eb_client = Eventbrite 'app_key': config.eventbriteAPIKey

params =
  city: "Dayton"
  region: "OH"
  within: 50
  within_unit: "M"
  max: 50
  keywords: 'JS'

eb_client.event_search params, (err, data) ->
  console.log 'Searching...'
  console.log(err)
  for event in data.events
    if event.event
      console.log event.event
      console.log event.event.title


