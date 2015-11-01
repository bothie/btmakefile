#! /bin/sh

# There are awfully broken gcc compilers out there. Check for them and refuse 
# to play with them ...

TARGETCC="$1"
TARGETDE="$2"

if test -n "$3"
then
	QUIET=true
else
	QUIET=false
fi

cat >test4sint_overflow.c <<EOF
#include <assert.h>
#include <stdio.h>
int foo(int a) { if (a+1>a) return 0; return 2; }
int main() { return foo(((unsigned)-1)>>1); }
EOF

oops=false

$TARGETCC -W -Wall test4sint_overflow.c -o test4sint_overflow.o || oops=true
$TARGETDE test4sint_overflow.o -o test4sint_overflow.elf || oops=true

if $oops || ( ./test4sint_overflow.elf ) >/dev/null 2>&1
then
	$QUIET || echo -n "\
This version of your compiler has strange meanings about what values are bigger 
than others. This error is triggered, when adding two positive numbers and 
hence causing a signed integer overflow. Caused by this error, statements such 
as assert(a+1>a) will always succeess, even if a+1 overflows and gets negative. 
Depending on the software, this may create SEVERE GAPING SECURITY HOLES, as 
exactly such statements are used, to check for buffer overflows etc, and all 
those tests will fail to work using this compiler.

Please note, that the ISO C standard as well as the ISO C++ standard say, that 
signed integer overflows cause UNDEFINED BEHAVIOR, thus this compiler behaves 
strange but is still conforming to the ISO standards. We will continue, but 
you should expect problems. If you are a developer, make sure to check wether 
you are using such tests on signed interger types. (Unsigned integer types 
doesn't have this problem, as overflowing is exactly specified by the ISO 
standards for that types.)" >&2
	rm -f test4sint_overflow.c test4sint_overflow.elf test4sint_overflow.o
	exit 1
else
	rm -f test4sint_overflow.c test4sint_overflow.elf test4sint_overflow.o
	exit 0
fi
