# Vivado Project

To recreate the project with different name or in separate directory use the provided *vivado_design_192b.tcl* script.

## Script Help
### Description:
Recreate a Vivado project from this script. The created project will be functionally equivalent to the original project for which this script was generated. The script contains commands for creating a project, filesets, runs, adding/importing sources and setting properties on various objects.
### Syntax:
```
vivado_design_192b.tcl
vivado_design_192b.tcl -tclargs [--origin_dir <path>]
vivado_design_192b.tcl -tclargs [--project_name <name>]
vivado_design_192b.tcl -tclargs [--help]
```
### Usage:

|Name                   |Description|
|-----------------------|-------------------------------------------------|
|<pre>`[--origin_dir <path>]`</pre> |Determine source file paths wrt this path. Default origin_dir path value is `"."`. The origin_dir should contain the source directories `Design_src` and `ip_src` |
|<pre>`[--project_name <name>]`</pre>|Create project with the specified name. Default name is the name of the project from where this script was generated `(vivado_design_192b)`. |
|<pre>`[--help]`</pre>               |Print help information for this script |
-------------------------------------------------------------------------