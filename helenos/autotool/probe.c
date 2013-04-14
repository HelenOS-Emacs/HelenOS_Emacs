#define AUTOTOOL_DECLARE(category, subcategory, tag, name, strc, conc, value) \
	asm volatile ( \
		"AUTOTOOL_DECLARE\t" category "\t" subcategory "\t" tag "\t" name "\t" strc "\t" conc "\t%[val]\n" \
		: \
		: [val] "n" (value) \
	)

#define STRING(arg)      STRING_ARG(arg)
#define STRING_ARG(arg)  #arg

#define DECLARE_BUILTIN_TYPE(tag, type) \
	AUTOTOOL_DECLARE("builtin_size", "", tag, STRING(type), "", "", sizeof(type)); \
	AUTOTOOL_DECLARE("builtin_sign", "unsigned long long int", tag, STRING(type), "unsigned", "", __builtin_types_compatible_p(type, unsigned long long int)); \
	AUTOTOOL_DECLARE("builtin_sign", "unsigned long int", tag, STRING(type), "unsigned", "", __builtin_types_compatible_p(type, unsigned long int)); \
	AUTOTOOL_DECLARE("builtin_sign", "unsigned int", tag, STRING(type), "unsigned", "", __builtin_types_compatible_p(type, unsigned int)); \
	AUTOTOOL_DECLARE("builtin_sign", "unsigned short int", tag, STRING(type), "unsigned", "", __builtin_types_compatible_p(type, unsigned short int)); \
	AUTOTOOL_DECLARE("builtin_sign", "unsigned char", tag, STRING(type), "unsigned", "", __builtin_types_compatible_p(type, unsigned char)); \
	AUTOTOOL_DECLARE("builtin_sign", "signed long long int", tag, STRING(type), "signed", "", __builtin_types_compatible_p(type, signed long long int)); \
	AUTOTOOL_DECLARE("builtin_sign", "signed long int", tag, STRING(type), "signed", "", __builtin_types_compatible_p(type, signed long int)); \
	AUTOTOOL_DECLARE("builtin_sign", "signed int", tag, STRING(type), "signed", "", __builtin_types_compatible_p(type, signed int)); \
	AUTOTOOL_DECLARE("builtin_sign", "signed short int", tag, STRING(type), "signed", "", __builtin_types_compatible_p(type, signed short int)); \
	AUTOTOOL_DECLARE("builtin_sign", "signed char", tag, STRING(type), "signed", "", __builtin_types_compatible_p(type, signed char));

#define DECLARE_INTSIZE(tag, type, strc, conc) \
	AUTOTOOL_DECLARE("intsize", "unsigned", tag, #type, strc, conc, sizeof(unsigned type)); \
	AUTOTOOL_DECLARE("intsize", "signed", tag, #type, strc, conc, sizeof(signed type));

#define DECLARE_FLOATSIZE(tag, type) \
	AUTOTOOL_DECLARE("floatsize", "", tag, #type, "", "", sizeof(type));

int main(int argc, char *argv[])
{
#ifdef __SIZE_TYPE__
	DECLARE_BUILTIN_TYPE("size", __SIZE_TYPE__);
#endif
#ifdef __WCHAR_TYPE__
	DECLARE_BUILTIN_TYPE("wchar", __WCHAR_TYPE__);
#endif
#ifdef __WINT_TYPE__
	DECLARE_BUILTIN_TYPE("wint", __WINT_TYPE__);
#endif
	DECLARE_INTSIZE("LLONG", long long int, "ll", "LL");
	DECLARE_INTSIZE("LONG", long int, "l", "L");
	DECLARE_INTSIZE("INT", int, "", "");
	DECLARE_INTSIZE("SHORT", short int, "h", "@");
	DECLARE_INTSIZE("CHAR", char, "hh", "@@");

DECLARE_FLOATSIZE("LONG_DOUBLE", long double);

DECLARE_FLOATSIZE("DOUBLE", double);

DECLARE_FLOATSIZE("FLOAT", float);
}
