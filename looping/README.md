For_each can be used to create dynamic blocks. In this example we will create additional
tags for an ASG resource embeded in the module <webserver-cluster>.

The new tags are first defined in the root module (the calling module). 
The module will have a new input variable (custom_tags) to allow the new tag resource to be 
passed to it. 

In the module, for_loop will be use to loop over the var.custom_tags input variable; the keyword
<dynamic> will used to creat the new tag block in ASG resource. 


