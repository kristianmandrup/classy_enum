# ClassyEnum Changelog

## 3.1.1

* Fixes a regression with Formtastic support. ClassyEnumm::Base.build now
  returns a null object that decends from the base_class when the argument is
  blank (nil, empty string, etc). This allows the ActiveRecord model's enum
  attribute to respond to enum methods even if it is blank.

## 3.1.0

* ClassyEnum::Base now extends Enumerable to provide enum collection
  methods. All objects in the collection are instances of the enum
  members. .find is overridden to provide custom find functionality.
* ClassyEnum::Base.find has been reintroduced, with aliases of .detect
  and [].
* Introducing I18n support and providing a ClassyEnum::Base#text method
  that will automatically translate text values.
* Translation support was added to ClassyEnum::Base.select_options.
* Equality can now be determined using strings and symbols. The
  following will return true:

      Priority::Low.new == :low  # => true
      Priority::Low.new == 'low' # => true

## 3.0.0

* Removing ClassyEnum::Base.enum_classes in favor of using enum
  inheritance to setup classes
* Removing ClassyEnum::Base.valid_options
* Removing ClassyEnum::Base.find
* Removing ClassyEnum::Base#name
* Removing :suffix option from classy_enum_attr
* Enforce use of namespacing for subclasses (Parent::Child < Parent)
* Use require instead of autoload
* Lots of code refactoring

## 2.3.0

* Deprecating ClassyEnum::Base#name (use to_s.titleize instead). `name` is
  too ambiguous and might get confused with Ruby's Class.name method.
* Deprecating :suffix option from classy_enum_attr (this was a temporary
  hack)

## 2.2.0

* Deprecating class names like ParentChild in favor of namespaced names
  like Parent::Child

## 2.1.0

* Deprecating ClassyEnum::Base.enum_classes() (this is no longer needed)
* Deprecating ClassyEnum::Base.valid_options()(use all.join(', ') instead)
* Deprecating ClassEnum::Base.find() (use build() instead)

## 2.0.3

* Fixes issue with validates_uniqueness_of when using an enum field as
  the scope.

## 2.0.1 & 2.0.2

* Resolving gem release conflicts, no changes

## 2.0.0

* Enum class definitions are no longer defined implicitly and must be explicitly subclassed from children of ClassyEnum::Base
* Formtastic support is not longer built-in. See https://github.com/beerlington/classy_enum/wiki/Formtastic-Support
* validates_uniqueness_of with an enum scope no longer works in Rails
  3.0.x (no changes for Rails 3.1 or 3.2)

## 1.3.2

* Added support for Ruby 1.9.3
* Stop hijacking enum initialize method

## 1.3.1

* Fixed JSON recursion issue

## 1.3.0

* Added support for Rails 3.1.x

## 1.2.0

* Added support for owner enum reference

## 1.1.0

* Code refactor

## 1.0.0

* Removed support for Rails 2.x.x
* Fixed support for validates_uniqueness_of with an enum scope

## 0.9.1

* Fixed Rails dependency requirement

## 0.9.0

* Further decoupled Formtastic support

## 0.8.1

* Added `:allow_blank` option
* Added blank/nil option support to Formtastic
* Fixed documentation typos

## 0.8.0

* Updated development dependencies
* Changed API for column and enum name differences

## 0.7.1

* Added Comparable support
* Fixed an issue with invalid objects set to empty string
* Added allow blank support to Formtastic
* Improved error messages

## 0.7.0

* Added "boolean" methods (i.e. `instance.enum?`)
* Improved documentation
* Updated generators to make inheritance more explicit
* Removed ActiveRecord dependency

## 0.6.1

* Fixed validates_presence_of support
* Improved Formtastic support

## 0.6.0

* Changed enums to use inheritance instead of mixins
* Fixed issue with generators
* Fixed documentation typos

## 0.5.0

* Fixed documentation

## 0.4.2

* Cleaned up hacky support for Rails 3.0.x
* Fixed Formtastic load support

## 0.4.1

* Fixed validation issue in Rails 3.0.x

## 0.4.0

* Added enum generator for Rails 3.0.x
* Added support for Ruby 1.9.2
* Fixed support for apps that are not using Formtastic

## 0.3.1

* Fixed Formtastic helper support w/ Rails 3.0.x

## 0.3.0

* Added custom Formtastic input type

## 0.2.0

* Internal changes to how methods are defined

## 0.1.0

* Added enum generator for Rails 2.3.x
* Internal changes to how ActiveRecord is extended
* More test coverage

## 0.0.2

* Fixed initialized constant warning

## 0.0.1

* Initial Release
