---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#

layout: frontpage
header:
  image_fullwidth: power-lines.jpg
widget1:
  title: "About PCHES"
  url: '/about/'
  image: grasshopper-chain.jpg
  text: 'The Program for Coupled Human and Earth Systems (PCHES) is a project, funded by the U.S. Department of Energy, looking to create a state-of-the-art framework of computational tools that will help to assess the impacts of weather-related variability and change.'

widget2:
  title: "Upcoming Events"
  image: italy-highway.jpg
  url: '/events/'

widget3:
  title: "Featured News"
  url: '/news/'
  image: mt-jefferson.jpg
  text: '<strong>Project to develop computational tools for coupled human-natural systems</strong><br> A $20 million, five-year project with the U.S. Department of Energy (DOE) looks to create a state-of-the-art framework of computational tools that will help to assess the impacts of weather-related variability and change. ‹‹read more››'

#
# Use the call for action to show a button on the frontpage
#
# To make internal links, just use a permalink like this
# url: /getting-started/
#
# To style the button in different colors, use no value
# to use the main color or success, alert or secondary.
# To change colors see sass/_01_settings_colors.scss
# 

permalink: /index.html

#
# This is a nasty hack to make the navigation highlight
# this page as active in the topbar navigation
#

homepage: true

---
<div id="videoModal" class="reveal-modal large" data-reveal="">
  <div class="flex-video widescreen vimeo" style="display: block;">
    <iframe width="1280" height="720" src="https://www.youtube.com/embed/3b5zCFSmVvU" frameborder="0" allowfullscreen></iframe>
  </div>
  <a class="close-reveal-modal">&#215;</a>
</div>