
#ifndef __PARSER_H__
#define __PARSER_H__

#define LINELENGTH 100

/* this is a linked list that contains the peerslave configuration 
 * after it has been read from the configuration file */
typedef struct config_s {
		unsigned int pid;   /* PID of peerslave, to be set/used by its parent    */
		char *memavail;
		char *cpuavail;
		char *timavail;
		char *allowhost;
		char *allowuser;
		char *allowgroup;
		char *group;
		char *hostname;
		char *matlab;
		char *timeout;
		char *smartshare;
		char *smartmem;
		char *smartcpu;
		char *udsserver;
		char *verbose;
		struct config_s *next; /* pointer to the next record */
} config_t;

int parsefile(char* fname, config_t** config);
void initconfig(config_t* config);

#endif

