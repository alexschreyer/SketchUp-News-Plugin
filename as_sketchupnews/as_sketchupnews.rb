# ==================
# Main file for SketchUpNews
# ==================


require 'sketchup.rb'


# ==================


module AS_Extensions

  module AS_SketchupNews


    # ==================


    def self.show_news
    # Browse using webdialog

      dlg = UI::WebDialog.new("SketchUp News", true,
        "SketchUp News", 750, 750, 150, 150, true);
      dlg.set_url("http://sketchupfordesign.com/news-display/")
      dlg.navigation_buttons_enabled = false
      dlg.show

    end # show_news


    # ==================


    if !file_loaded?(__FILE__)

      # Get the SketchUp help menu
      help_menu = UI.menu("Help")
      help_menu.add_item("SketchUp News") { self.show_news }

      # Let Ruby know we have loaded this file
      file_loaded(__FILE__)

    end # if


    # ==================


  end # module AS_SketchupNews

end # module AS_Extensions


# ==================