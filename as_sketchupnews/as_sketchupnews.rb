=begin

Copyright 2013, Alexander C. Schreyer
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
                

=end


require 'sketchup.rb'


module AS_sketchup_news


  def self.show_news
  # Browse using webdialog
  
    dlg = UI::WebDialog.new("SketchUp News", true,
      "SketchUp News", 750, 750, 150, 150, true);
    dlg.set_url("http://sketchupfordesign.com/news-display/")
    dlg.navigation_buttons_enabled = false
    dlg.show
    
  end # show_news


end # module



# ====================================================



if !file_loaded?(__FILE__)

  # Get the SketchUp plugins menu
  help_menu = UI.menu("Help")
  help_menu.add_item("SketchUp News") { AS_sketchup_news::show_news }
  
  # Let Ruby know we have loaded this file
  file_loaded(__FILE__)

end # if
