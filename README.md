now cookbook
============
Here be Dragons.

Dragons
=======
This cookbook is a pure library cookbook that monkey patches the core
Chef DSL to provide a method called `include_recipes_now`. This method
will converge a recipe immediately, as it is encountered during
compilation. This is meant to avoid the "compile phase" arms race
created by over-use and abuse of .run_action. It is not meant to be a
permanent solution for achieving this behavior and should be used only 
sparingly, with full understanding of what is happening. 

A more permanent solution is expected in Chef 12. Technique borrowed
from Poise. https://github.com/poise/poise

