	.file	"probe.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
#APP
# 34 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_size		size	unsigned int			$4

# 0 "" 2
# 34 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned long long int	size	unsigned int	unsigned		$0

# 0 "" 2
# 34 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned long int	size	unsigned int	unsigned		$0

# 0 "" 2
# 34 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned int	size	unsigned int	unsigned		$1

# 0 "" 2
# 34 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned short int	size	unsigned int	unsigned		$0

# 0 "" 2
# 34 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned char	size	unsigned int	unsigned		$0

# 0 "" 2
# 34 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed long long int	size	unsigned int	signed		$0

# 0 "" 2
# 34 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed long int	size	unsigned int	signed		$0

# 0 "" 2
# 34 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed int	size	unsigned int	signed		$0

# 0 "" 2
# 34 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed short int	size	unsigned int	signed		$0

# 0 "" 2
# 34 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed char	size	unsigned int	signed		$0

# 0 "" 2
# 37 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_size		wchar	long int			$4

# 0 "" 2
# 37 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned long long int	wchar	long int	unsigned		$0

# 0 "" 2
# 37 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned long int	wchar	long int	unsigned		$0

# 0 "" 2
# 37 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned int	wchar	long int	unsigned		$0

# 0 "" 2
# 37 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned short int	wchar	long int	unsigned		$0

# 0 "" 2
# 37 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned char	wchar	long int	unsigned		$0

# 0 "" 2
# 37 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed long long int	wchar	long int	signed		$0

# 0 "" 2
# 37 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed long int	wchar	long int	signed		$1

# 0 "" 2
# 37 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed int	wchar	long int	signed		$0

# 0 "" 2
# 37 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed short int	wchar	long int	signed		$0

# 0 "" 2
# 37 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed char	wchar	long int	signed		$0

# 0 "" 2
# 40 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_size		wint	unsigned int			$4

# 0 "" 2
# 40 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned long long int	wint	unsigned int	unsigned		$0

# 0 "" 2
# 40 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned long int	wint	unsigned int	unsigned		$0

# 0 "" 2
# 40 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned int	wint	unsigned int	unsigned		$1

# 0 "" 2
# 40 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned short int	wint	unsigned int	unsigned		$0

# 0 "" 2
# 40 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	unsigned char	wint	unsigned int	unsigned		$0

# 0 "" 2
# 40 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed long long int	wint	unsigned int	signed		$0

# 0 "" 2
# 40 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed long int	wint	unsigned int	signed		$0

# 0 "" 2
# 40 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed int	wint	unsigned int	signed		$0

# 0 "" 2
# 40 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed short int	wint	unsigned int	signed		$0

# 0 "" 2
# 40 "probe.c" 1
	AUTOTOOL_DECLARE	builtin_sign	signed char	wint	unsigned int	signed		$0

# 0 "" 2
# 42 "probe.c" 1
	AUTOTOOL_DECLARE	intsize	unsigned	LLONG	long long int	ll	LL	$8

# 0 "" 2
# 42 "probe.c" 1
	AUTOTOOL_DECLARE	intsize	signed	LLONG	long long int	ll	LL	$8

# 0 "" 2
# 43 "probe.c" 1
	AUTOTOOL_DECLARE	intsize	unsigned	LONG	long int	l	L	$4

# 0 "" 2
# 43 "probe.c" 1
	AUTOTOOL_DECLARE	intsize	signed	LONG	long int	l	L	$4

# 0 "" 2
# 44 "probe.c" 1
	AUTOTOOL_DECLARE	intsize	unsigned	INT	int			$4

# 0 "" 2
# 44 "probe.c" 1
	AUTOTOOL_DECLARE	intsize	signed	INT	int			$4

# 0 "" 2
# 45 "probe.c" 1
	AUTOTOOL_DECLARE	intsize	unsigned	SHORT	short int	h	@	$2

# 0 "" 2
# 45 "probe.c" 1
	AUTOTOOL_DECLARE	intsize	signed	SHORT	short int	h	@	$2

# 0 "" 2
# 46 "probe.c" 1
	AUTOTOOL_DECLARE	intsize	unsigned	CHAR	char	hh	@@	$1

# 0 "" 2
# 46 "probe.c" 1
	AUTOTOOL_DECLARE	intsize	signed	CHAR	char	hh	@@	$1

# 0 "" 2
# 48 "probe.c" 1
	AUTOTOOL_DECLARE	floatsize		LONG_DOUBLE	long double			$12

# 0 "" 2
# 50 "probe.c" 1
	AUTOTOOL_DECLARE	floatsize		DOUBLE	double			$8

# 0 "" 2
# 52 "probe.c" 1
	AUTOTOOL_DECLARE	floatsize		FLOAT	float			$4

# 0 "" 2
#NO_APP
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
