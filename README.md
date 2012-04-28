# istart-rails

iStart-Rails is a set of common helpers to improve your app and speed up it's development

## Helpers

* Disable submit input after form submission (update value with `data-loading-text` if present)
* Open external links in new window (links must have the class name `external`)
* Consider element with `data-link-url` as links (also support opening in new window with the class name `external`)
* Init [Chosen](http://harvesthq.github.com/chosen/) if in use
* Init [DataTables](http://github.com/rweng/jquery-datatables-rails) if in use. Add the class `.datatable` to any table to activate
* Init [DataTables's FixedHeader](http://datatables.net/extras/fixedheader/) if in use. Add the class `.fixed_header` to any table to activate

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
    //= require dataTables/jquery.dataTables.bootstrap (optional)
    //= require dataTables/extras/FixedHeader (optional)
    //= require istart

Within `app/assets/stylesheets/application.css` add the following

    *= require chosen (optional)
    *= require dataTables/jquery.dataTables.bootstrap (optional)
    *= require_self
    ...

For __FixedHeader__, you might like to add the following in your `bootstrap_and_overwrites.css.less`

    .FixedHeader_Header {
      background-color: #fff;
      border-bottom: 1px solid @tableBorder;
    }

## License

MIT License. Copyright 2012 Sébastien Grosjean, sponsored by [BookingSync, Vacation Rental's Booking Calendar Software](http://www.bookingsync.com)
