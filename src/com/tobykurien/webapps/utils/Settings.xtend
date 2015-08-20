package com.tobykurien.webapps.utils

import org.xtendroid.annotations.AndroidPreference

/**
 * Class to get and set shared preferences, which are also editable from the Preference activity.
 * Uses Xtendroid's @AndroidPreference to manage the preferehces, making the class appear as a POJO.
 * NOTE: Default values here must also match up with the default values in settings.xml
 */
@AndroidPreference class Settings {
   boolean block3rdParty = true
   boolean blockHttp = true
   String fontSize = "2"
   String userAgent = ""
   boolean fullscreen = false
   boolean hideActionbar = true
   boolean loadImages = true
   
   def getIntFontSize() {
      try {
         Integer.parseInt(getFontSize())
      } catch (Exception e) {
         2
      }
   }
}