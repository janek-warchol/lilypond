/*
  score.hh -- declare Score

  source file of the GNU LilyPond music typesetter

  (c) 1997 Han-Wen Nienhuys <hanwen@stack.nl>
*/


#ifndef SCORE_HH
#define SCORE_HH

#include "varray.hh"
#include "lily-proto.hh"
#include "plist.hh"
#include "moment.hh"
#include "assoc.hh"
#include "string.hh"
#include "input.hh"
#include "lily-proto.hh"

/// the total music def of one movement
class Score: public Input {
public:
    /// paper_, staffs_ and commands_ form the problem definition.
    Paper_def *paper_p_;
    Midi_def *midi_p_;
    Music * music_p_;
    Paper_score *pscore_p_;
    Audio_score* audio_score_p_;

    int errorlevel_i_;
    
    /* *************************************************************** */

    /// construction
    Score();
    Score(Score const&);
    ~Score();    

    /// do everything except outputting to file
    void process();
    
    /// output to file
    void output(String fn);

    ///
    void set(Midi_def* midi_p);
    ///
    void set(Paper_def* midi_p);

    void print() const;

private:
    void run_translator(Global_translator*);
    void midi_output();
    void paper_output();

    /// do midi stuff
    void midi();

    /// do paper stuff
    void paper();

    // utils:
    PCursor<Score_column*> create_cols(Moment, PCursor<Score_column*> &last);

    /**
      make the pcol_l_ fields of each Score_column point to the correct PCol,
      remove any unnecessary Score_column's
     */
    void do_cols();

    /// remove unused cols
    void clean_cols();
    
    /// add #Idealspacings# to #pscore_#
    void calc_idealspacing();
};
#endif
