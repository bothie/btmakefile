#.*[^\\]/.*[^\\]/.*[^\\]/.*[^\\]/.*

s/.*: In function `.*'://g
s/.*: At top level://g
s/.*: (Each undeclared identifier is reported only once//g
s/.*: for each function it appears in.)//g
s/.*: storage size of `.*' isn't known//g
s/.*: parse error before `.*'//g
s/.*: warning: unused variable `.*'//g
s/.*: warning: statement with no effect//g
s/.*: warning: no semicolon at end of struct or union//g
s/.*: warning: return-type defaults to `int'//g
s/.*: warning: control reaches end of non-void function//g
s/.*: warning: initialization from incompatible pointer type//g
s/.*: ANSI C forbids data definition with no type or storage class//g
s/.*: warning: assignment makes integer from pointer without a cast//g
s/.*: invalid type argument of `->'//g
s/.*: initializer element is not constant//g

s/.*: `AF_UNIX' undeclared (first use in this function)/#include <sys\/socket.h>/g
s/.*: `ECHO' undeclared (first use in this function)/#include <termios.h>/g
s/.*: `F_SETFL' undeclared (first use in this function)/#include <fcntl.h>/g
s/.*: `F_GETFL' undeclared (first use in this function)/#include <fcntl.h>/g
s/.*: `FD_CLOEXEC' undeclared (first use in this function)/#include <fcntl.h>/g
s/.*: `FLUSHO' undeclared (first use in this function)/#include <1.h>/g
s/.*: `ICANON' undeclared (first use in this function)/#include <termios.h>/g
s/.*: `ICRNL' undeclared (first use in this function)/#include <termios.h>/g
s/.*: `MAP_PRIVATE' undeclared (first use in this function)/#include <sys\/mman.h>/g
s/.*: `NULL' undeclared (first use in this function)/#include any of <stdio.h>,<stdlib.h>,<string.h>,<sys\/time.h>,<unistd.h>/g
s/.*: `O_NDELAY' undeclared (first use in this function)/#include <fcntl.h>/g
s/.*: `O_RDONLY' undeclared (first use in this function)/#include <fcntl.h>/g
s/.*: `SOCK_STREAM' undeclared (first use in this function)/#include <sys\/socket.h>/g
s/.*: `STDERR_FILENO' undeclared (first use in this function)/#include <unistd.h>/g
s/.*: `STDIN_FILENO' undeclared (first use in this function)/#include <unistd.h>/g
s/.*: `STDOUT_FILENO' undeclared (first use in this function)/#include <unistd.h>/g
s/.*: `TCSANOW' undeclared (first use in this function)/#include <termios.h>/g
s/.*: `TOSTOP' undeclared (first use in this function)/#include <termios.h>/g
s/.*: `VMIN' undeclared (first use in this function)/#include <termios.h>/g
s/.*: `VTIME' undeclared (first use in this function)/#include <termios.h>/g
s/.*: `WNOHANG' undeclared (first use in this function)/#include <sys\/wait.h>/g
s/.*: `EINVAL' undeclared (first use in this function)/#include <errno.h>/g

s/.*: `errno' undeclared (first use in this function)/#include <errno.h>/g
s/.*: `false' undeclared (first use in this function)/#include <stdlib.h>/g
s/.*: `fd_set' undeclared (first use in this function)/#include <sys\/time.h>/g
s/.*: `stderr' undeclared (first use in this function)/#include <stdio.h>/g
s/.*: `string' undeclared (first use in this function)/#include <bttypes.h>/g
s/.*: `termios' undeclared (first use in this function)/#include <2.h>/g
s/.*: `true' undeclared (first use in this function)/#include <stdlib.h>/g
s/.*: `va_list' undeclared (first use in this function)/#include <stdarg.h>/g

s/.*: warning: implicit declaration of function `FD_SET'/#include <sys\/time.h>/g
s/.*: warning: implicit declaration of function `FD_ZERO'/#include <sys\/time.h>/g
s/.*: warning: implicit declaration of function `MALLOC'/#include <bttypes.h>\
#include <errno.h>\
#include <stdlib.h>\
#include <string.h>/g

s/.*: warning: implicit declaration of function `atexit'/#include <stdlib.h>/g
s/.*: warning: implicit declaration of function `atoi'/#include <stdlib.h>/g
s/.*: warning: implicit declaration of function `chdir'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `close'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `closedir'/#include <sys\/types.h>\
#include <dirent.h>/g
s/.*: warning: implicit declaration of function `dup'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `dup2'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `eexit'/#include <bterror.h>/g
s/.*: warning: implicit declaration of function `eprintf'/#include <bterror.h> \/* includes stdarg.h *\//g
s/.*: warning: implicit declaration of function `execl'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `execvp'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `fcntl'/#include <fcntl.h>/g
s/.*: warning: implicit declaration of function `fdopen'/#include <stdio.h>/g
s/.*: warning: implicit declaration of function `fopen'/#include <stdio.h>/g
s/.*: warning: implicit declaration of function `fork'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `fprintf'/#include <stdio.h>/g
s/.*: warning: implicit declaration of function `free'/#include <stdlib.h>/g
s/.*: warning: implicit declaration of function `freopen'/#include <stdio.h>/g
s/.*: warning: implicit declaration of function `fstat'/#include <sys\/stat.h>/g
s/.*: warning: implicit declaration of function `getpid'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `getppid'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `ioctl'/#include <sys\/ioctl.h>/g
s/.*: warning: implicit declaration of function `malloc'/#include <stdlib.h>/g
s/.*: warning: implicit declaration of function `mmap'/#include <sys\/mman.h>/g
s/.*: warning: implicit declaration of function `mprintf'/#include <mprintf.h>/g
s/.*: warning: implicit declaration of function `munmap'/#include <sys\/mman.h>/g
s/.*: warning: implicit declaration of function `open'/#include <fcntl.h>/g
s/.*: warning: implicit declaration of function `opendir'/#include <sys\/types.h>\
#include <dirent.h>/g
s/.*: warning: implicit declaration of function `rename'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `perrorf'/#include <bterror.h>/g
s/.*: warning: implicit declaration of function `pipe'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `printf'/#include <stdio.h>/g
s/.*: warning: implicit declaration of function `raise'/#include <signal.h>/g
s/.*: warning: implicit declaration of function `read'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `readdir'/#include <sys\/types.h>\
#include <dirent.h>/g
s/.*: warning: implicit declaration of function `realloc'/#include <stdlib.h>/g
s/.*: warning: implicit declaration of function `scanf'/#include <stdio.h>/g
s/.*: warning: implicit declaration of function `select'/#include <sys\/time.h>\
#include <sys\/types.h>\
#include <unistd.h>/g
s/.*: warning: implicit declaration of function `setsid'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `sleep'/#include <unistd.h>/g
s/.*: warning: implicit declaration of function `socketpair'/#include <sys\/socket.h>/g
s/.*: warning: implicit declaration of function `sprintf'/#include <stdio.h>/g
s/.*: warning: implicit declaration of function `sqr'/## try sqrt()!/g
s/.*: warning: implicit declaration of function `sqrt'/#include <math.h>/g
s/.*: warning: implicit declaration of function `sscanf'/#include <stdio.h>/g
s/.*: warning: implicit declaration of function `strerror'/#include <string.h>/g
s/.*: warning: implicit declaration of function `tcsetattr'/#include <termios.h>/g
s/.*: warning: implicit declaration of function `tcgetattr'/#include <termios.h>/g
s/.*: warning: implicit declaration of function `va_end'/#include <stdarg.h>/g
s/.*: warning: implicit declaration of function `va_start'/#include <stdarg.h>/g
s/.*: warning: implicit declaration of function `vmprintf'/#include <mprintf.h> \/* includes stdarg.h *\//g
s/.*: warning: implicit declaration of function `vprintf'/#include <stdio.h>/g
s/.*: warning: implicit declaration of function `vsnprintf'/#define _GNU_SOURCE\
#include <stdarg.h>/g
s/.*: warning: implicit declaration of function `wait'/#include <sys\/types.h>\
#include <sys\/wait.h>/g
s/.*: warning: implicit declaration of function `waitpid'/#include <sys\/types.h>\
#include <sys\/wait.h>/g
s/.*: warning: implicit declaration of function `write'/#include <unistd.h>/g

#s/.*: warning: passing arg 2 of `signal' from incompatible pointer type
#s/.*: warning: implicit declaration of function `readline'
