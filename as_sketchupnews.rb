=begin

Copyright 2013-2015, Alexander C. Schreyer
All rights reserved

THIS SOFTWARE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR PURPOSE.

License:        GPL (http://www.gnu.org/licenses/gpl.html)

Author :        Alexander Schreyer, www.alexschreyer.net, mail@alexschreyer.net

Website:        http://www.alexschreyer.net/projects/sketchup-news-plugin/

Name :          SketchUpNews

Version:        1.1

Date :          5/10/2013

Description :   This plugin adds a menu item under Help that shows SketchUp news.

History:        1.0 (3/13/2013):
                - first version
                1.1 (5/10/2013):
                - reorganized folders
                TBD:
                - Code cleanup

=end


# ==================


require 'sketchup'
require 'extensions'


# ==================


as_sketchupnews = SketchupExtension.new "SketchUp News", "as_sketchupnews/as_sketchupnews.rb"
as_sketchupnews.copyright= 'Copyright 2013 Alexander C. Schreyer'
as_sketchupnews.creator= 'Alexander C. Schreyer, www.alexschreyer.net'
as_sketchupnews.version = '1.1'
as_sketchupnews.description = "This plugin adds a menu item under Help that shows SketchUp news."
Sketchup.register_extension as_sketchupnews, true


# ==================