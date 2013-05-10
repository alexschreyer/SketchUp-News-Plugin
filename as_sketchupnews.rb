# Loader for as_plugins/as_sketchupnews/as_sketchupnews.rb

require 'sketchup.rb'
require 'extensions.rb'

as_sketchupnews = SketchupExtension.new "SketchUp News", "as_sketchupnews/as_sketchupnews.rb"
as_sketchupnews.copyright= 'Copyright 2013 Alexander C. Schreyer'
as_sketchupnews.creator= 'Alexander C. Schreyer, www.alexschreyer.net'
as_sketchupnews.version = '1.1'
as_sketchupnews.description = "This plugin adds a menu item under Help that shows SketchUp news."
Sketchup.register_extension as_sketchupnews, true
