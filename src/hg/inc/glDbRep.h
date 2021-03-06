/* glDbRep.h was originally generated by the autoSql program, which also 
 * generated glDbRep.c and glDbRep.sql.  This header links the database and the RAM 
 * representation of objects. */

#ifndef GLDBREP_H
#define GLDBREP_H

struct gl
/* Fragment positions in golden path */
    {
    struct gl *next;  /* Next in singly linked list. */
    char *frag;	/* Fragment name */
    unsigned start;	/* Start position in golden path */
    unsigned end;	/* End position in golden path */
    char strand[2];	/* + or - for strand */
    };

void glStaticLoad(char **row, struct gl *ret);
/* Load a row from gl table into ret.  The contents of ret will
 * be replaced at the next call to this function. */

struct gl *glLoad(char **row);
/* Load a gl from row fetched with select * from gl
 * from database.  Dispose of this with glFree(). */

struct gl *glCommaIn(char **pS, struct gl *ret);
/* Create a gl out of a comma separated string. 
 * This will fill in ret if non-null, otherwise will
 * return a new gl */

void glFree(struct gl **pEl);
/* Free a single dynamically allocated gl such as created
 * with glLoad(). */

void glFreeList(struct gl **pList);
/* Free a list of dynamically allocated gl's */

void glOutput(struct gl *el, FILE *f, char sep, char lastSep);
/* Print out gl.  Separate fields with sep. Follow last field with lastSep. */

#define glTabOut(el,f) glOutput(el,f,'\t','\n');
/* Print out gl as a line in a tab-separated file. */

#define glCommaOut(el,f) glOutput(el,f,',',',');
/* Print out gl as a comma separated list including final comma. */

#endif /* GLDBREP_H */

