# Nashdown

### A human and machine readable plain text syntax for Nashville Number System chord charts. _GitHub: [alexford/nashdown](https://github.com/alexford/nashdown)_


By&nbsp;[Alex&nbsp;Ford](https://alexford.io)

---

_NOTE: All of this is considered a work in progress! There are many things that still need defined._

## What is this?

**The [Nashville Number System](https://en.wikipedia.org/wiki/Nashville_number_system)** (or Nashville Notation) is pervasive, powerful, and inherently analog: traditionally, charts are hand written, born out of the need to quickly notate and share song structure, harmony, and rhythm.

This website defines **Nashdown**: an *accessible*, *parseable*, *portable* format for digital number charts:

- *Accessible*: Like the Nashville Number System itself, Nashdown charts are meant to be easy for people to create, understand, and play.
- *Parseable*: While human readable, the Nashdown syntax can be predictably parsed in software to powerful effect. For example, Nashdown could be rendered into more traditional looking charts for printing and sharing if desired, converted to other kinds of notation, or even played digitally.
- *Portable*: Nashdown charts are plain text, so they can be viewed and edited by any system. Nashdown files (`.nd`) are a natural fit for any kind of text processing, version control, etc.

Nashdown is inspired by [Markdown](https://daringfireball.net/projects/markdown/) in spirit (and name), but is not otherwise related to that project in any way.

## What does Nashdown look like?

*(If you're not familiar with the Nashville Number System (NNS) itself, [you should read about it first!](https://en.wikipedia.org/wiki/Nashville_Number_System)*)

The building blocks of Nashdown, like the NNS itself, are chords, bars, and lines.

#### Chords

- Each chord is unsurprisingly identified by its scale degree: `1` or `4`.
- Chords can be explicitly marked as minor with a dash: `6-`
- *See "More examples and ideas" below for more proposed chord flavors*

#### Bars

- Every bar is separated by a space: `1 1 1 1` represents four bars of the "I" chord.
- Bars can contain multiple chords, using an underscore: `1_4`
	- This is meant to evoke the NNS convention of "underlining" multi-chord bars
- The number of beats for a Chord can be marked explicitly with single quote marks: `1'''_4` represents three beats of the "1" chord followed by one beat of the "4" chord (assuming 4/4 time).

#### Lines and Sections

The chart is separated into lines.

    1 1 4 5
    1 1 4 5


Lines can be as long or as short as needed, whatever fits the structure of the song:

    1 1 4 5 1 1 4 5
    1 1 4 1


Lines can be separated into sections, using a blank line between them:

    1 4 5 4
    1 4 5 4

    1 5 1 4
    1 5 1 4

Sections can optionally be named, using a `#` character:


    # Intro
    1 1 1 1

    # V1
    1 4 5 4
    1 4 5 4

    # Chorus
    1 5 1 4
    1 5 1 4

    # Ending
    1 4 1 4
    1 4 4- 1



### What's next?

_TODO_

### Contribute to Nashdown

_TODO_

### License

The Nashdown syntax itself is in the public domain. Anyone can use the idea freely including releasing software with its own implementation of Nashdown under any license, open or proprietary. I ask that any use of syntax referred to as "Nashdown" stick as closely as possible to the definition on this website (see "Contribute to Nashdown").

Any Nashdown software that I release myself will have its own license: open source, proprietary, or both.

The *content* of *this repository and website* is Copyright 2023 Alex Ford. It is not free to reproduce or include in other work without permission.

---

## More ideas for and examples of Nashdown syntax

_NOTE (again): This is a work in progress, early proposal_

#### Chord qualities
_Given a 5 chord:_

* Minor: `5-` (or `5m`?)
* Dominant 7th: `5d7` (or `57`?)
	* e.g on a minor chord: `5-7`
* Major 7th: `5M7` (or `5maj7` or `5Maj7`?)
* Diminished: `5o` or `5°`
	* Diminished 7th: `5o7` (or `5°7`?)
* Augmented 5th: `5+`
	* Augmented minor 7th: `5+-7`?
* _TODO: What about half diminished, other less common qualities?_

#### Extensions beyond 7, suspended
_Given a 4 chord:_

* Suspended: `4sus4` for sus4, `4sus2` for sus2, etc.
* Extensions: `4add2`, `4add9`

#### Inversions

    5/7


#### Accidentals

    b6 b7


#### Diamonds

    1 1 4 <5>


#### Watch

    1 1 4 <@5>


#### Marcato

    1 1 4 ^5


#### Push

    1 1 4 <5


#### Ties

    1 1 4 <5>~<5>


#### X and • ("same chord as last bar")

    1 5 1/3 x
    1 • 5 •


####  Dynamics

    mp 1 1 4 1
    f 1 1 5 1
    ff -7 5 1 1


#### Repeats

    |: 1 1 4 5
    1 1 | 4 5 :| 5 4 |    (first and last time)


#### Rehearsal marks and notes

    # Verse
    1 1 4 5
    --Bass enters--
    1 1 4 5

    # Chorus
    1 1 5 1


#### Title, key, bpm, feel

    "The Title"
    Eb, Blues, 4/4, 150bpm


#### Aspirational example of a full chart
*From page 25 of “Song charting made easy”*

    "One More Minute With You"
    Pop-Rock
    F#
    4/4
    140bpm

    # I
    --1x guitar only--
    ||: 1 1 1 1

    # V
    mp
    1 1 1 1
    4 4 4 4
    1 1 1 1
    4 4 4 4

    # Cha
    --Full band--
    mf
    <2->~<2-> <4>~<4> --Diamond 1x only!--
    <2->~<2-> 4 4

    # Ch
    f
    1 5 1/3 4
    1 4 | b3 <4> :|| b3 4 |

    # Ch
    f
    <1 5 1/3 4
    1 5 b3 4

    # Br
    mp
    b6 b6 b7 b7
    1 1
    f
    b6 b6 b7 b7
    4 4 b3 4

    # Solo
    1 5 1/3 4
    1 5 b3 4

    # Ch
    1 5 ^1/3 4
    <1 5 b3 4

    # Ch
    >1 5 1/3 4
    1 5 b3 4

    # Out
    ||: 1 5 1/3 4
    1 5 b3 4 :|| <@1>
