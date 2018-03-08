# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([wrtools-core], [0], [webb@webbroberts.com])
AC_COPYRIGHT

AC_ARG_WITH([site-dir],
            [AS_HELP_STRING([--with-site-dir=dir], [Root directory of NIEM.github.io site source], 26, 79)],
            [case $withval in
               yes ) AC_MSG_ERROR([Option --with-site-dir requires argument]);;
               no ) AC_MSG_ERROR([Option --with-site-dir is required]);;
               * ) if ! test -d "$with_site_dir"
                   then AC_MSG_ERROR([Argument to --with-site-dir must be a directory])
                   elif ! fgrep --quiet NIEM.github.io "$with_site_dir"/_config.yml 2>/dev/null
                   then AC_MSG_ERROR([Argument to --with-site-dir must be root directory of the NIEM.github.io site source])
                   fi;;
              esac
              AC_SUBST([site_dir],[$with_site_dir])],
            [AC_MSG_ERROR([site-dir must be set with option --with-site-dir=dir])])

# Checks for programs.
AC_PROG_INSTALL
AC_PROG_MKDIR_P
AC_PROG_SED

dnl WR_check_prog( $command-name )
dnl   e.g., WR_check_prog(bash) will set @bash@
AC_DEFUN([WR_check_prog],[AC_PATH_PROG($1,$1)
  test "x$[]$1" = "x" && AC_MSG_ERROR([$1 not found])])dnl

dnl WR_check_prog_options( $command-short-name, $command-name-options ... )
dnl   e.g., WR_check_prog_options(cat, gcat cat) will set @cat@
AC_DEFUN([WR_check_prog_options],[AC_PATH_PROGS($1,$2)
 test "x$[]$1" = "x" && AC_MSG_ERROR([$1 not found])])dnl

# only check for commands that are really fundamental.
WR_check_prog(bash)
WR_check_prog_options(chmod,gchmod chmod)
WR_check_prog(find)
WR_check_prog_options(m4,gm4 m4)
WR_check_prog(touch)

# default_site_dir=${srcdir}/../site
# if test "x$site_dir" = "x"
# then AC_MSG_NOTICE([Variable site_dir not set. Using default ($default_site_dir)])
#  site_dir=$default_site_dir
#else AC_MSG_RESULT([site_dir set to ${site_dir}])
#     AC_SUBST([site_dir],[$site_dir])
#     if ! test -d "${site_dir}"
#     then AC_MSG_WARN([site_dir ${site_dir} does not exist])
#     fi
#fi

AC_CONFIG_FILES([Makefile], [chmod 444 Makefile])
AC_OUTPUT
