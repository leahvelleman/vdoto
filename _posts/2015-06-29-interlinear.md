---
layout: post 
title: Emacs for glossed text?
tags:
 - tech
 - linguistics
---

Many linguists (especially field linguists) spend a great deal of time
editing *interlinear glossed text* --- that is, text where words are
broken down into their component parts, and where each component part
has under it a small column of notes on its etymology and grammar,
like in this Latin example:[^1]

{% highlight tex %}
Ēdormī                crapulam!
ē-   dorm  -ī         crapula  -m
out- sleep -2sg.imper hangover -acc
"Sleep off that hangover!"
{% endhighlight %}

Editing glossed text calls for special tools. (Doint it text in a word
processor or Notepad is a chore; just getting the columns to line up
properly is more trouble than it's worth.) As far as I can tell,
almost everyone uses one of two programs: [ELAN](https://tla.mpi.nl/tools/tla-tools/elan/elan-description/) if they're glossing a
text that was transcribed from audio or video and want to keep it
time-synchronized with the original recording, and [Fieldworks Language
Explorer (a.k.a. FLEx)](http://fieldworks.sil.org/flex/) if they don't care about time synchronization.

ELAN and FLEx are both good programs. But there's a few things I
dislike about them.

+ Both have a user interface that depends *heavily* on the mouse.
+ Both are inflexible in certain ways, and make it hard to automate
  repetitive tasks. 
+ Both make it hard or impossible to invoke external processes. For
  instance, if I write a freestanding program that analyzes verbs in
  some language, and want to call on it frequently while editing glossed
  text, it will be a big hassle.
+ Both make it hard to automate repetitive tasks.
+ FLEx is essentially Windows-only. [There was a major effort towards
  Linux support, but it now seems to be stalled.](http://linux.lsdev.sil.org/blog/)

At risk of taking sides in a holy war, my feeling is there's probably
one good solution to all these problems: use Emacs.[^2]

Editing glossed text *unassisted* in Emacs would be just as bad as
doing it in MS Word.  But unlike Word, Emacs is highly
extensible. Using Emacs minor mode custom-made for editing glossed
text in flat text files could be straightforward, flexible, portable,
scriptable, and mouse-free.

The other thing about ELAN and FLEx is that both are *very*
feature-rich. This creates a high bar to entry for competitors. FLEx
in particular incorporates a huge amount of domain knowledge: it
"knows about" the International Phonetic Alphabet, dozens of different
syntactic parts of speech, ISO codes and writing systems for a huge
number of languages, a complicated taxonomy for genres of text, and
so on. You wouldn't want to replicate all that in an Emacs mode (and
it would be ludicrosly difficult even if you did want to).

But Emacs is feature-rich in a different, less domain-specific way. It
already has mature and reasonably usable ways of carrying out just
about any generic operation on text: search-and-replace, autocomplete,
multilingual spell-checking, automatic formatting, concordancing,
computation of things like word counts. It's great at juggling
multiple files. It's amazingly flexible when it comes to text input,
supporting a ton of different keyboard layouts and giving you total
freedom to define your own shortcuts. It's been ported to nearly every
kind of computer that's been made, and on modern systems has a pretty
small footprint.[^3] Writing a glossed text editor as an Emacs mode means
getting all these features for free.

[^1]: Cicero, Second Philippic, 2.30.
[^2]: Actually, my very first thought was to use Vim, and there are still some ways in which I believe Vim would work better. (I'll probably talk about one in a later post: Vim's text objects would be a *killer* feature for working with glossed text.) But outside of computational linguistics, I know very few linguists who use Vim, and many who use Emacs. And anyway, Evil-mode for Emacs is now good enough that you can pretend it's Vim if you're into that.
[^3]: I find it funny that I still, by force of habit, think of Emacs as a terrible memory hog --- something that hasn't really been true since I was in high school. Cultural inertia is a strange thing.



