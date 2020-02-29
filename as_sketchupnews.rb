=begin

Copyright 2013-2020, Alexander C. Schreyer
All rights reserved

THIS SOFTWARE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR PURPOSE.

License:        GPL (http://www.gnu.org/licenses/gpl.html)

Author :        Alexander Schreyer, www.alexschreyer.net, mail@alexschreyer.net

Website:        http://www.alexschreyer.net/projects/sketchup-news-plugin/

Name :          SketchUpNews

Version:        1.3

Date :          2/29/2020

Description :   Adds a menu item under Help that shows SketchUp news from blogs, 
                discussions, and Twitter.

History:        1.0 (3/13/2013):
                - first version
                1.1 (5/10/2013):
                - reorganized folders
                1.2 (12/12/2015):
                - Code cleanup
                - Fixed loader code
                - Implemented new dialog for 2017
                1.3 (2/29/2020):
                - Instance var for dialog (SU 2020 compatibility)
                

=end


# ========================


require 'sketchup.rb'
require 'extensions.rb'


# ========================


module AS_Extensions

  module AS_SketchupNews
  
    @extversion           = "1.3"
    @exttitle             = "SketchUp News"
    @extname              = "as_sketchupnews"
    
    @extdir = File.dirname(__FILE__)
    @extdir.force_encoding('UTF-8') if @extdir.respond_to?(:force_encoding)
    
    loader = File.join( @extdir , @extname , "as_sketchupnews.rb" )
   
    extension             = SketchupExtension.new( @exttitle , loader )
    extension.copyright   = "Copyright 2013-#{Time.now.year} Alexander C. Schreyer"
    extension.creator     = "Alexander C. Schreyer, www.alexschreyer.net"
    extension.version     = @extversion
    extension.description = "Adds a menu item under Help that shows SketchUp news from blogs, discussions, and Twitter."
    
    Sketchup.register_extension( extension , true )
         
  end  # module AS_SketchupNews
  
end  # module AS_Extensions


# ========================
