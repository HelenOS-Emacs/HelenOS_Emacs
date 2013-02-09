

#ifndef EMACS_ATIMER_H
#define EMACS_ATIMER_H 

#include "systime.h"		
struct atimer;
	
	

enum atimer_type
{
  	
  ATIMER_ABSOLUTE,

  	
  ATIMER_RELATIVE,

  	/* Timer runs continuously.  */
  ATIMER_CONTINUOUS
};

	/* Type of timer callback functions.  */

typedef void (* atimer_callback) (struct atimer *timer);

	/* Structure describing an asynchronous timer.  */

struct atimer
{
  	/* The type of this timer.  */
  enum atimer_type type;

  	/* Time when this timer is ripe.  */
  EMACS_TIME expiration;

  	/* Interval of this timer.  */
  EMACS_TIME interval;

  	/* Function to call when timer is ripe.  Interrupt input is
     guaranteed to not be blocked when this function is called.  */
  atimer_callback fn;

  	/* Additional user-specified data to pass to FN.  */
  void *client_data;

  	/* Next in list of active or free atimers.  */
  struct atimer *next;
};

	/* Function prototypes.  */

struct atimer *start_atimer (enum atimer_type, EMACS_TIME,
                             atimer_callback, void *);
void cancel_atimer (struct atimer *);
void do_pending_atimers (void);
void init_atimer (void);
void turn_on_atimers (int);
void stop_other_atimers (struct atimer *);
Lisp_Object unwind_stop_other_atimers (Lisp_Object);

#endif 	/* EMACS_ATIMER_H */
