/*
  bar-number-grav.hh -- declare Bar_number_grav

  source file of the GNU LilyPond music typesetter

  (c) 1997 Han-Wen Nienhuys <hanwen@stack.nl>
*/


#ifndef BAR_NUMBER_GRAV_HH
#define BAR_NUMBER_GRAV_HH

#include "engraver.hh"

/**
  catch bars, and put a number over them.
 */
class Bar_number_grav : public Engraver {
    Script * script_p_;
    int number_i_;
protected:

    void acknowledge_element(Score_elem_info);
    void do_pre_move_processing();
public:
    Bar_number_grav();
    DECLARE_MY_RUNTIME_TYPEINFO;
};
#endif // BAR_NUMBER_GRAV_HH
