/*
 * Copyright (c) 2011 Petr Koupy
 * Copyright (c) 2011 Jiri Zarevucky
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * - Redistributions of source code must retain the above copyright
 *   notice, this list of conditions and the following disclaimer.
 * - Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimer in the
 *   documentation and/or other materials provided with the distribution.
 * - The name of the author may not be used to endorse or promote products
 *   derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/** @addtogroup libposix
 * @{
 */
/** @file Time measurement support.
 */

#ifndef POSIX_TIME_H_
#define POSIX_TIME_H_

#include "sys/types.h"

#ifndef NULL
	#define NULL  ((void *) 0)
#endif

#ifndef CLOCKS_PER_SEC
	#define CLOCKS_PER_SEC (1000000L)
#endif

#ifndef __locale_t_defined
	#define __locale_t_defined
	typedef struct __posix_locale *posix_locale_t;
	#ifndef LIBPOSIX_INTERNAL
		#define locale_t posix_locale_t
	#endif
#endif

#ifndef POSIX_SIGNAL_H_
	struct posix_sigevent;
	#ifndef LIBPOSIX_INTERNAL
		#define sigevent posix_sigevent
	#endif
#endif

#undef CLOCK_REALTIME
#define CLOCK_REALTIME ((posix_clockid_t) 0)

struct posix_timespec {
	time_t tv_sec; /* Seconds. */
	long tv_nsec; /* Nanoseconds. */
};

struct posix_itimerspec {
	struct posix_timespec it_interval; /* Timer period. */
	struct posix_timespec it_value; /* Timer expiration. */
};

typedef struct __posix_timer *posix_timer_t;

/* Timezones */
extern int posix_daylight;
extern long posix_timezone;
extern char *posix_tzname[2];
extern void posix_tzset(void);

/* Broken-down Time */
extern struct tm *posix_gmtime_r(const time_t *restrict timer,
    struct tm *restrict result);
extern struct tm *posix_gmtime(const time_t *restrict timep);
extern struct tm *posix_localtime_r(const time_t *restrict timer,
    struct tm *restrict result);
extern struct tm *posix_localtime(const time_t *restrict timep);

/* Formatting Calendar Time */
extern char *posix_asctime_r(const struct tm *restrict timeptr,
    char *restrict buf);
extern char *posix_asctime(const struct tm *restrict timeptr);
extern char *posix_ctime_r(const time_t *timer, char *buf);
extern char *posix_ctime(const time_t *timer);

/* Clocks */
extern int posix_clock_getres(posix_clockid_t clock_id,
    struct posix_timespec *res);
extern int posix_clock_gettime(posix_clockid_t clock_id,
    struct posix_timespec *tp);
extern int posix_clock_settime(posix_clockid_t clock_id,
    const struct posix_timespec *tp); 
extern int posix_clock_nanosleep(posix_clockid_t clock_id, int flags,
    const struct posix_timespec *rqtp, struct posix_timespec *rmtp);

/* CPU Time */
extern posix_clock_t posix_clock(void);

#ifndef LIBPOSIX_INTERNAL
	#define timespec    posix_timespec
	#define itimerspec  posix_itimerspec
	#define timer_t     posix_timer_t

	#define daylight    posix_daylight
	#define timezone    posix_timezone
	#define tzname      posix_tzname
	#define tzset       posix_tzset

	#define gmtime_r    posix_gmtime_r
	#define gmtime      posix_gmtime
	#define localtime_r posix_localtime_r
	#define localtime   posix_localtime

	#define asctime_r   posix_asctime_r
	#define asctime     posix_asctime
	#define ctime_r     posix_ctime_r
	#define ctime       posix_ctime

	#define clock_getres posix_clock_getres
	#define clock_gettime posix_clock_gettime
	#define clock_settime posix_clock_settime
	#define clock_nanosleep posix_clock_nanosleep

	#define clock posix_clock
#endif

#endif  // POSIX_TIME_H_

/** @}
 */
