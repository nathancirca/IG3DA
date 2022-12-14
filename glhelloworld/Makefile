#************************************************
#*                                              *
#*             (c) 2017 J. FABRIZIO             *
#*                                              *
#*                               LRDE EPITA     *
#*                                              *
#************************************************

CC = g++

CPP_FILES =
CPP_FILES +=
HXX_FILES =
HXX_FILES +=
OBJ_FILES = $(CPP_FILES:.cpp=.o)

CXX_FLAGS += -Wall -Wextra -O3 -g -std=c++11
CXX_FLAGS +=
CXX_FLAGS += -m64 -march=native
CXX_FLAGS += -fopt-info-vec-optimized #-fopt-info-vec-missed -ftree-vectorize
LDXX_FLAGS = -lGL -lGLEW -lglut

OTHER_FILES = result.png

MAIN_FILE = main.cpp
DIST = helloworld

DIST_DIR = glhelloworld

#For gcc 4.9
#CXXFLAGS+=-fdiagnostics-color=auto
export GCC_COLORS=1

define color
    if test -n "${TERM}" ; then\
	if test `tput colors` -gt 0 ; then \
	    tput setaf $(1); \
        fi;\
    fi
endef

define default_color
    if test -n "${TERM}" ; then\
	if test `tput colors` -gt 0 ; then  tput sgr0 ; fi; \
    fi
endef


all: post-build

pre-build:
	@$(call color,4)
	@echo "******** Starting Compilation ************"
	@$(call default_color)

post-build:
	@make --no-print-directory main-build ; \
	sta=$$?;	  \
	$(call color,4); \
	echo "*********** End Compilation **************"; \
	$(call default_color); \
	exit $$sta;

main-build: pre-build build

build: $(DIST)

$(DIST): $(OBJ_FILES)
	$(CC) $(MAIN_FILE) -o $@ $(OBJ_FILES) $(CXX_FLAGS) $(LDXX_FLAGS)


%.o: %.cpp %.hh
	@$(call color,2)
	@echo "[$@] $(CXX_FLAGS)"
	@$(call default_color)
	@$(CC) -c -o $@ $< $(CXX_FLAGS) ; \
	sta=$$?;	  \
	if [ $$sta -eq 0 ]; then  \
	  $(call color,2) ; \
	  echo "[$@ succes]" ; \
	  $(call default_color) ; \
	else  \
	  $(call color,1) ; \
	  echo "[$@ failure]" ; \
	  $(call default_color) ; \
	fi ;\
	exit $$sta

.PHONY: all clean pre-build post-build main-build build dist mrproper

clean:
	rm -f $(OBJ_FILES)
	rm -rf $(DIST_DIR)

mrproper: clean
	rm -f $(DIST)
	rm -f $(DIST_DIR).tar.bz2


dist:
	rm -rf $(DIST_DIR)
	mkdir -p $(DIST_DIR)
	cp $(CPP_FILES) $(HXX_FILES) $(MAIN_FILE) $(OTHER_FILES) Makefile $(DIST_DIR)
	tar -cjvf $(DIST_DIR).tar.bz2 $(DIST_DIR)
	rm -rf $(DIST_DIR)
