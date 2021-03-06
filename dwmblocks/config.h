/* macro for conveniently specifying pathu and pathc below */
#define PATH(name)                      "/home/sourav/dwmblocks/blocks/"name

/* buffer size for capturing output of the programs used for updating blocks */
#define CMDOUTLENGTH                    50

/* DELIMITERENDCHAR must be less than 32.
 * At max, DELIMITERENDCHAR - 1 number of clickable blocks are allowed.
 * Raw characters larger than DELIMITERENDCHAR and smaller than ' ' in ASCII
   character set can be used for signaling color change in status.
 * The character corresponding to DELIMITERENDCHAR + 1 ('\x0b' when
   DELIMITERENDCHAR is 10) will switch the active colorscheme to the first one
   defined in colors array in dwm's config.h and so on.
 * If you wish to change DELIMITERENDCHAR, don't forget to update its value in
   dwm.c and color codes in your pathu programs. */
#define DELIMITERENDCHAR                31

/* delimiter specified as an array of characters
 * don't remove DELIMITERENDCHAR at the end */
static const char delimiter[] = { DELIMITERENDCHAR };

#include "block.h"

/* If interval of a block is set to 0, the block will only be updated once at
   startup.
 * If interval is set to a negative value, the block will never be updated in
   the main loop.
 * Set pathc to NULL if clickability is not required for the block.
 * Set signal to 0 if both clickability and signaling are not required for the
   block.
 * Signal must be less than DELIMITERENDCHAR for clickable blocks.
 * If multiple signals are pending, then the lowest numbered one will be
   delivered first. */

/* pathu - path of the program whose output is used as status text of the block
           (output of the program should be a single line of text with at most
            one newline character at the end)
 * pathc - path of the program used for handling clicks on the block */

/* 1 interval = INTERVALs seconds, INTERVALn nanoseconds */
#define INTERVALs                       0
#define INTERVALn                       100000

static Block blocks[] = {
/*      pathu                           pathc                           interval        signal */
	{ PATH("calendar.sh"),          NULL,                           1000,             1},
        { PATH("to-do.sh"),         	PATH("to-do_button.sh"),      	0,             10},
	{ PATH("weather.sh"),         	PATH("weather_button.sh"),      0,             8},
	{ PATH("market.sh"),         	PATH("market_button.sh"),        0,             9},
	{ PATH("volume.sh"),            NULL,       			1,              2},
        { PATH("cpu_temp.sh"),          PATH("cpu_temp_button.sh"),     1000,              4},
        { PATH("ram.sh"),         	NULL,                           1000,             6},
	{ PATH("battery.sh"),           PATH("battery_button.sh"),      10,             3},
       	{ PATH("wifi.sh"),           	PATH("wifi_button.sh"),      	100,             5}, 
	{ PATH("battery_notification.sh"),           	NULL,      	60000,             7}, 	
	{ NULL } /* just to mark the end of the array */
};


