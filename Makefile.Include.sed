s#@RECURSIVE-\([^@]*\)@#\
real-\1:\
btmake-\1-pre: real-\1-pre\
btmake-\1-post: real-\1-post\
real-\1-pre:\
real-\1-post:\
\1:\
   ifdef DEBUG\
	@echo "Making btmake-\1-pre ..."\
   endif\
	@$(MAKE) -f $(MAKEFILE) $(NPD) btmake-\1-pre || { echo -e -n "$(DEFAULTCOLOR)" \&\& exit 1; }\
	\
ifdef DIRS\
   ifdef DEBUG\
	@echo "Making DIRS $(DIRS) ..."\
   endif\
	@for i in $(foreach i,$(DIRS),$(i)); do \\\
		MAKEFILE=Makefile $(MAKE) -f Makefile -C $$i $(NPD) \1 || { echo -e -n "$(DEFAULTCOLOR)" \&\& exit 1; }; \\\
	done;\
endif\
	\
ifdef SUBTARGETS\
   ifdef DEBUG\
	@echo "Making SUBTARGETS $(SUBTARGETS) ..."\
   endif\
	@for i in $(foreach i,$(SUBTARGETS),$(i)); do \\\
		$(MAKE) -f $(MAKEFILE) $(NPD) $$i-\1 || { echo -e -n "$(DEFAULTCOLOR)" \&\& exit 1; }; \\\
	done;\
endif\
	\
ifdef SUBMAKES\
   ifdef DEBUG\
	@echo "Making SUBMAKES $(SUBMAKES) ..."\
   endif\
	@for i in $(foreach i,$(SUBMAKES),$(i)); do \\\
		MAKEFILE=Makefile.$$i $(MAKE) -f Makefile.$$i $(NPD) \1 || { echo -e -n "$(DEFAULTCOLOR)" \&\& exit 1; }; \\\
	done;\
endif\
	\
	@$(MAKE) -f $(MAKEFILE) $(NPD) real-\1 || { echo -e -n "$(DEFAULTCOLOR)" \&\& exit 1; }\
	\
   ifdef DEBUG\
	@echo "Making btmake-\1-post ..."\
   endif\
	@$(MAKE) -f $(MAKEFILE) $(NPD) btmake-\1-post || { echo -e -n "$(DEFAULTCOLOR)" \&\& exit 1; }#
s#!!PATTERNRULE!\([^!]*\)!\([^!]*\)!\([^!]*\)!\([^!]*\)!\([^!]*\)!!#\
\2: \1\
ifndef PRINTFLAGS\
   ifndef PRINTSOURCES\
	@echo -e -n "$(ACTIONCOLOR)\3 $(OUTPUTCOLOR)$(THISDIR)/$@$(ACTIONCOLOR): $(ATTENTIONCOLOR)"\
   else\
	@echo -e -n "$(ACTIONCOLOR)\3 $(INPUTCOLOR)$(addprefix $(THISDIR)/,\4)$(ACTIONCOLOR) to $(OUTPUTCOLOR)$(THISDIR)/$@$(ACTIONCOLOR): $(ATTENTIONCOLOR)"\
   endif\
else\
	@echo -e -n "$(ACTIONCOLOR)\3 $(INPUTCOLOR)$(addprefix $(THISDIR)/,\4)$(ACTIONCOLOR) to $(OUTPUTCOLOR)$(THISDIR)/$@$(ACTIONCOLOR) with cmdline $(FLAGCOLOR)\5$(ACTIONCOLOR): $(ATTENTIONCOLOR)"\
endif\
	@if ! ( \5 ) 2>$(STDERROR); then \\\
		echo -e "$(FAILEDCOLOR)failed:"; \\\
		cat $(STDERROR); \\\
		echo "--» Error occured while processing makefile $(THISDIR)/$(MAKEFILE)"; \\\
		echo -e -n "$(DEFAULTCOLOR)"; \\\
		false; \\\
	else \\\
		if test -s $(STDERROR); then \\\
			echo -e "$(WARNINGCOLOR)ok, but warnings:"; \\\
			cat $(STDERROR); \\\
			echo -e -n "$(DEFAULTCOLOR)"; \\\
		else \\\
			echo -e "$(WELLCOLOR)ok.$(DEFAULTCOLOR)"; \\\
		fi; \\\
	fi#
