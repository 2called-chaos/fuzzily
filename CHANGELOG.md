# Fuzzily (reloaded) - Changelog

## 2.0.0

### Breaking changes

* Dropped support for Ruby <3 and by extension Rails <6.1. This version should however still work on Ruby >=2.4


### Changes

* Transliterate via I18n, for example
  * `Straße` transliterates `ß` into `ss` instead of dropping it
  * `Smørrebrød` transliterates `ø` into `o` instead of dropping it
  * added I18n dependency
* Added (implicit) Logger and ostruct dependency for newer Ruby
* Remove usage of deprecated `ActiveSupport::Multibyte::Chars`



## 1.0.1

* Added support for Rails 7



## 1.0.0 (fork)

* Added support for Rails 5.1 and 6.0
* Removed support for Rails <5.1

### Breaking changes

- Dirty attributes behaviour has changed in after_save context.
  Use `saved_change_to_ATTR?` instead of `ATTR_changed?`!
- Semi-breaking: The string is now being checked for `blank?` instead of `nil?` to prevent `***` ngrams

### Fixes

- Numbers are now supported but using a Converter is recommended
- Fixed deprecation warning regarding uniqueness validator
