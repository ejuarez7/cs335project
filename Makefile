LIB    = ./libggfonts.a
FLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm -Wall -Wextra
SOURCES = src/project.cpp src/ppm.cpp src/perryH.cpp src/ericS.cpp

all: project

project: $(SOURCES)
	g++ $(SOURCES) $(LIB) $(FLAGS) -o project

clean:
	rm -f project
	rm -f *.o
