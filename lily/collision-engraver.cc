/*
  collision-reg.cc -- implement Collision_engraver

  source file of the GNU LilyPond music typesetter

  (c)  1997--2000 Han-Wen Nienhuys <hanwen@cs.uu.nl>
*/

#include "note-column.hh"
#include "collision.hh"
#include "dimension-cache.hh"
#include "engraver.hh"

class Collision_engraver : public Engraver {
  Collision* col_p_;
  Link_array<Note_column> note_column_l_arr_;

protected:
  virtual void acknowledge_element (Score_element_info);
  virtual void process_acknowledged ();
  virtual void do_pre_move_processing();
public:
  VIRTUAL_COPY_CONS(Translator);
  Collision_engraver();
};


void
Collision_engraver::process_acknowledged ()
{
  if (col_p_ || note_column_l_arr_.size () < 2)
    return ;
  if (!col_p_) 
    {
      col_p_ = new Collision;
      announce_element (Score_element_info (col_p_,0));
    }
  for (int i=0; i< note_column_l_arr_.size (); i++)
    col_p_->add_column (note_column_l_arr_[i]);
}

void
Collision_engraver::acknowledge_element (Score_element_info i)
{
  if (Note_column * c = dynamic_cast<Note_column *> (i.elem_l_))
    {
      /*should check Y axis? */
      if (c->rest_b () || c->parent_l(X_AXIS))
	return ;

      note_column_l_arr_.push (c);
    }
}

void
Collision_engraver::do_pre_move_processing()
{
  if (col_p_) 
    {
      typeset_element (col_p_);
      col_p_ =0;
    }
  note_column_l_arr_.clear ();
}

Collision_engraver::Collision_engraver()
{
  col_p_ =0;
}



ADD_THIS_TRANSLATOR(Collision_engraver);
