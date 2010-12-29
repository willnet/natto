# natto: A Tasty Ruby Binding with MeCab

## What is natto?

natto provides a Ruby binding with MeCab, 
the part-of-speech and morphological analyzer 
for the Japanese language.

## Try It! Try It!

### Requirements
natto requires the following:

* [MeCab 0.98](http://sourceforge.net/projects/mecab/files/mecab/)
* [ffi 0.6.3 or greater](http://rubygems.org/gems/ffi)
* Ruby 1.8.7 or greater

### Installation
Install natto with the following gem command:
    gem install natto

### Configuration
* natto will try to locate the <tt>mecab</tt> library based upon its runtime environment.
* In case of <tt>LoadError</tt>, please set the <tt>MECAB_PATH</tt> environment variable to the exact name/path to your <tt>mecab</tt> library.

## Usage
    require 'natto'

    m = Natto::MeCab.new
    puts m.parse("すもももももももものうち")
    すもも  名詞,一般,*,*,*,*,すもも,スモモ,スモモ
    も      助詞,係助詞,*,*,*,*,も,モ,モ
    もも    名詞,一般,*,*,*,*,もも,モモ,モモ
    も      助詞,係助詞,*,*,*,*,も,モ,モ
    もも    名詞,一般,*,*,*,*,もも,モモ,モモ
    の      助詞,連体化,*,*,*,*,の,ノ,ノ
    うち    名詞,非自立,副詞可能,*,*,*,うち,ウチ,ウチ
    EOS
    => nil

## Contributing to natto
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you must have your own version, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Changelog

- **2010/12/28**: 0.0.6 release.
    - Correction to natto.gemspec to include lib/natto/binding.rb.

- **2010/12/28**: 0.0.5 release. (yanked)
    - On-going refactoring
    - Project structure refactored for greater maintainability

- **2010/12/26**: 0.0.4 release.
    - On-going refactoring

- **2010/12/23**: 0.0.3 release.
    - On-going refactoring
    - Adding documentation via yard

- **2010/12/20**: 0.0.2 release.
    - Continuing development on proper resource deallocation
    - Adding options hash in object initializer 

- **2010/12/13**: Released version 0.0.1. The objective is to provide
  an easy-to-use, production-level Ruby binding to MeCab.
    - Initial release 


## Copyright

natto (c) 2010-2013 by Brooke M. Fujita, licensed under the new BSD license. Please see the (file:LICENSE) document for further details.
