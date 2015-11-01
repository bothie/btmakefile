#define COMPILING_WORKAROUNDS
#define _LARGEFILE64_SOURCE

#include <errno.h>
#include <fcntl.h>
#include <linux/unistd.h>
#include <stdarg.h>
#include <stdint.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

bt_off_t bt_lseek(int fd,bt_off_t offset,int whence) {
	bt_off_t retval;
	int sretval;
	
/*
	bprintf(
		">>> syscall(__NR__llseek,%i,0x%x,0x%x,&retval,%s)\n"
		,fd
		,(u32)(offset>>32)
		,(u32)(offset)
		,(whence==SEEK_SET)?"SEEK_SET":(whence==SEEK_CUR)?"SEEK_CURR":(whence==SEEK_END)?"SEEK_END":"UNKNOWN"
	);
*/
	
	sretval=syscall(__NR__llseek,fd,(uint32_t)(offset>>32),(uint32_t)(offset),&retval,whence);
	
/*
	bprintf(
		"<<< syscall(__NR__llseek,%i,0x%x,0x%x,&retval=0x%llx,%s)=%i\n"
		,fd
		,(u32)(offset>>32)
		,(u32)(offset)
		,retval
		,(whence==SEEK_SET)?"SEEK_SET":(whence==SEEK_CUR)?"SEEK_CURR":(whence==SEEK_END)?"SEEK_END":"UNKNOWN"
		,sretval
	);
*/
	
	if (sretval<0) {
		errno=-sretval;
		return -1;
	}
	
	return retval;
}

int bt_real_open(const char * pathname,int flags,mode_t mode) {
	return open(pathname,flags|O_LARGEFILE,mode);
}

int bt_open(const char * pathname,int flags,...) {
	va_list ap;
	mode_t mode;
	
	if (flags&O_CREAT) {
		va_start(ap,flags);
		
		mode=va_arg(ap,mode_t);
		
		va_end(ap);
	} else {
		mode=0;
	}
	
	return bt_real_open(pathname,flags,mode);
}
