# ==================
# Main file for SketchUpNews
# ==================


require 'sketchup.rb'


# ==================


module AS_Extensions

  module AS_SketchupNews


    # ==================
    
    def self.show_url( title , url )
    # Show website either as a WebDialog or HtmlDialog
    
      if Sketchup.version.to_f < 17 then   # Use old dialog
        @dlg = UI::WebDialog.new( title , true ,
          title.gsub(/\s+/, "_") , 1000 , 600 , 100 , 100 , true);
        @dlg.navigation_buttons_enabled = false
        @dlg.set_url( url )
        @dlg.show      
      else   #Use new dialog
        @dlg = UI::HtmlDialog.new( { :dialog_title => title, :width => 1000, :height => 600,
          :style => UI::HtmlDialog::STYLE_DIALOG, :preferences_key => title.gsub(/\s+/, "_") } )
        @dlg.set_url( url )
        @dlg.show
        @dlg.center
      end  
    
    end    


    def self.show_news
    # Browse news using webdialog
    
      show_url( @exttitle , "http://sketchupfordesign.com/news-display/" ) 

    end # show_news


    # ==================


    if !file_loaded?(__FILE__)

      # Add to the SketchUp help menu
      UI.menu("Help").add_item("SketchUp News") { self.show_news }

      # Let Ruby know we have loaded this file
      file_loaded(__FILE__)

    end # if


    # ==================


  end # module AS_SketchupNews

end # module AS_Extensions


# ==================
