\version "2.16.2"

rednote = { \once\override NoteHead #'color = #red }

global = {
  {% if key %}
    \key {{ key }} \major
  {% endif %}
  {% if time %}
    \time {{ time }}
  {% endif %}
  \sacredHarpHeads
  \autoBeamOff
}

\paper {
  #(set-paper-size "a5")
}

\header {
  {% if title %}
    title     = \markup { {{ title }} }
  {% endif %}
  {% if poet %}
    poet      = \markup { {{ poet }} }
  {% endif %}
  {% if composer %}
    composer  = \markup { {{ composer }} }
  {% endif %}
  tagline   = ##f
}

\score {
  \new StaffGroup <<
    {% if treble %}
      \new Staff = "treble" { \global \relative c'' { {{ treble }} } }
    {% endif %}
    {% if alto %}
      \new Staff = "alto" { \global \relative c'' { {{ alto }} } }
    {% endif %}
    {% if tenor %}
      \new Staff = "tenor" { \global \relative c'' { {{ tenor }} } }
    {% endif %}
    {% if bass %}
      \new Staff = "bass" { \clef bass \global \relative c { {{ bass }} } }
    {% endif %}
  >>
  \layout {
    #(layout-set-staff-size 20)   
    indent = #0
    \context { \Score
      \remove "Bar_number_engraver" 
      \override SpanBar #'transparent = ##t 
      \override LyricText #'font-size = #-1.5 
      \override StanzaNumber #'font-size = #-1.5
      \override StanzaNumber #'font-series = #'medium
      \override VoltaBracket #'stencil = ##f
    }
    \context { \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      %\override BarLine #'stencil = #'with-shapenote-repeats
    }
  }
}
