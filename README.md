# istart-rails

iStart-Rails is a set of common helpers to improve your app and speed up it's development

## Helpers

* Disable submit input after form submission (update value with `data-loading-text` if present)
* Open external links in new window (links must have the class name `external`)
* Consider element with `data-link-url` as links (also support opening in new window with the class name `external`)
* Init [Chosen](http://harvesthq.github.com/chosen/) if in use
* Init [DataTables](http://github.com/rweng/jquery-datatables-rails) if in use

## Requirements

    rails >= 3.1 (with Asset Pipeline)
    jquery-rails

## Install

Add this to your application `Gemfile`

    gem 'istart-rails'

Within `app/assets/javascripts/application.js` add the following

    //= require jquery
    ...
    //= require chosen-jquery (optional)
    //= require dataTables/jquery.dataTables (optional)
    //= require istart

Within `app/assets/stylesheets/application.css` add the following

    *= require_self
    *= require dataTables/jquery.dataTables (optional)
    ...

## License

MIT License. Copyright 2011 Sébastien Grosjean, sponsored by [BookingSync, Vacation Rental's Booking Calendar Software](http://www.bookingsync.com)
