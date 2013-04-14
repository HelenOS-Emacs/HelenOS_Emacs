

#include "regex.h"
#include <stdio.h>
#include <string.h>
#include <stdbool.h>


typedef struct exttype {
    char *ext_regex;
	/* The extensions that match this syntax. */
    regex_t *ext;
	/* The compiled extensions that match this syntax. */
    struct exttype *next;
	/* Next set of extensions. */
} exttype;



typedef struct colortype {
    short fg;
	/* This syntax's foreground color. */
    short bg;
	/* This syntax's background color. */
    bool bright;
	/* Is this color A_BOLD? */
    bool icase;
	/* Is this regex string case insensitive? */
    int pairnum;
	/* The color pair number used for this foreground color and
	 * background color. */
    char *start_regex;
	/* The start (or all) of the regex string. */
    regex_t *start;
	/* The compiled start (or all) of the regex string. */
    char *end_regex;
	/* The end (if any) of the regex string. */
    regex_t *end;
	/* The compiled end (if any) of the regex string. */
    struct colortype *next;
	/* Next set of colors. */
     int id;
	/* basic id for assigning to lines later */
} colortype;




typedef struct syntaxtype {
    char *desc;
	/* The name of this syntax. */
    exttype *extensions;
	/* The list of extensions that this syntax applies to. */
    exttype *headers;
	/* Regexes to match on the 'header' (1st line) of the file */
    colortype *color;
	/* The colors used in this syntax. */
    int nmultis;
	/* How many multi line strings this syntax has */
    struct syntaxtype *next;
	/* Next syntax. */
} syntaxtype;





/* Structure types. */
typedef struct filestruct {
    char *data;
	/* The text of this line. */
    ssize_t lineno;
	/* The number of this line. */
    struct filestruct *next;
	/* Next node. */
    struct filestruct *prev;
	/* Previous node. */
    short *multidata;		/* Array of which multi-line regexes apply to this line */
} filestruct;


typedef enum {
	COLOR_BLACK   = 0,
	COLOR_BLUE    = 1,
	COLOR_GREEN   = 2,
	COLOR_CYAN    = 3,
	COLOR_RED     = 4,
	COLOR_MAGENTA = 5,
	COLOR_YELLOW  = 6,
	COLOR_WHITE   = 7
} console_color_t;

typedef enum {
	CATTR_NORMAL = 0,
	CATTR_BRIGHT = 8,
	CATTR_BLINK  = 16
} console_color_attr_t;



syntaxtype *syntaxes;
char *syntaxstr;



void set_colorpairs(void);
void color_init(void);
void color_update(void);

char *parse_next_regex(char *ptr);
bool nregcomp(const char *regex, int eflags);
void parse_syntax(char *ptr);
void parse_include(char *ptr);
short color_to_short(const char *colorname, bool *bright);
void parse_colors(char *ptr, bool icase);
void reset_multis(filestruct *fileptr, bool force);
void alloc_multidata_if_needed(filestruct *fileptr);




