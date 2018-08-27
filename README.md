
# Stone Flood

This is a new game that I thought up in a recent [creative incubation](https://github.com/sizezero/creative-incubation/blob/master/entries/2018-08-25/entry.md).

I was getting hung up on the theme so I decided to just start with some basic mechanics and see how they work.

# Dependencies

I had to do the following to a stock install of Ubuntu 18.04

```bash
$ sudo apt-get install ruby
$ sudo apt-get install ruby-dev
$ sudo gem install rake
$ sudo gem install squib
```

# Building

```bash
$ ruby src/action.rb
```

The results can be found in output/output.pdf  When printing be sure configure the printer not to scale the output.
