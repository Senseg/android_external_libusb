#ifndef _CONFIG_H
#define _CONFIG_H 1

#define THREADS_POSIX 1
#define OS_LINUX 1

#define DEFAULT_VISIBILITY

#if !defined(TIMESPEC_TO_TIMEVAL)
#define TIMESPEC_TO_TIMEVAL(tv, ts) {			    \
	(tv)->tv_sec = (long)(ts)->tv_sec;                  \
	(tv)->tv_usec = (long)(ts)->tv_nsec / 1000;         \
}
#endif

#endif /* _CONFIG_H */
