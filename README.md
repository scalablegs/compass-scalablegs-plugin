# Scalable Grid System - Compass Plugin


Scalable.gs is a cross screen size and device CSS framework. Check out the [Scalable.gs](http://scalable.gs/) website for more information and use cases.

* This plugin is consistent with latest version of scalable.gs as of 4/5/2011

____

This plugin adds the Scalable Grid System framework to [Compass](http://compass-style.org/).

The plugin is build upon the great work done by [Christopher M. Eppstein and Matt Sanders with the 960 Grid System framework compass plugin](https://github.com/chriseppstein/compass-960-plugin). The framework follows some of the name convention from the [960.gs by Nathan Smith](http://960.gs).

#Install


    gem install compass-scalablegs-plugin

##Create a Scalablegs-based Compass Project


    compass create -r scalable my_project --using scalable

Or, If you prefer to use Sass's indentation based syntax:

    compass create -r scalable my_project --using scalable --syntax sass

Then edit your `scalable.sass` accordingly.

# Customising your Grid System


This plugin uses the following configuration variables:

* `$scalable-columns` (default: 20) controls the default number of grid columns
* `$scalable-grid-min-width` (default: 26em - with the assumption of a 12px body font size) controls the default minimum site width
* `$scalable-grid-max-width` (default: 82em - with the assumption of a 12px body font size) controls the default maximum site width
* `$scalable-gutter-width` (default: 2%) controls the default gutter width

All of the mixins included with this plugin use these configuration variables
as defaults if the corresponding argument is omitted from a mixin call.

# Class-Based Grid System


To create a grid system that works like the original Scalable.gs framework
use the `+grid-system` mixin to generate the corresponding classes. You can
also customize the number of columns as demonstrated in the following example.

Example:

    #wrap
      +grid-system(24)

# Making Semantic Grids


To create a grid system using only CSS, use the following semantic grid mixins:

* Use the `+grid-container` mixin to declare your container element.
* Use the `+grid(N, columns, gutter-width)` mixin to declare a grid element.
* Use the `+first` and `+last` mixins to declare the first and last grid elements for a row.
* Use the `+grid-prefix(N, columns)` and `+grid-suffix(N, columns)` mixins to add empty grid columns before or after a grid element.
* Use the `+grid-push(N, columns)` and `+grid-pull(N, columns)` mixins to move a grid element from its default position.

`N` is the number of grid columns to span as in `grid_N` or `push_N` with the original 960 Grid System framework.

Example:

    $scalable-columns: 24

    #wrap
      +grid-container
      #left-nav
        +alpha
        +grid(5)
      #main-content
        +grid-prefix(1)
        +grid(10)
        +omega

# Authors/Contributors

[Chris Eppstein](http://chriseppstein.github.com/) is the creator of Compass, a core contributor to Sass and the father of this plugin.

[Nathan Smith](http://sonspring.com/) is the author of [960.gs](http://960.gs/), the grid system this plugin is based on. He's also kind enough to let us pester him with questions from time to time.

[Matt Sanders](https://github.com/mattsa) is probably the best go to person if you want more information about the original compass-960-plugin.

[Kenneth Nordahl](https://github.com/kdn) forked and then converted the original plugin over to the [Scalable Grid System](http://scalable.gs).

[Other contributors](https://github.com/KDN/compass-scalablegs-plugin/contributors) have worked on original fork of this plugin.