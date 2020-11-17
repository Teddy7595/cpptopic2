APP			:= release
CCFLAGS		:= -Wall -pedantic
CC			:= g++
C			:= gcc
MKDIR		:= mkdir -p
SUBDIRS		:= $(shell find src/ -type d)
SRC			:= src
OBJ			:= obj
RLS			:= rls
OBJSUB		:= $(pathsubst $(SRC)%,$(OBJ)%,$(SUBDIRS))
ALLCPPS		:= $(shell find src/ -type f -iname *.cpp)
ALLHS		:= $(shell find src/ -type f -iname *.h)
ALLCS		:= $(shell find src/ -type f -iname *.c)
ALLOBJ		:= $(shell find obj/ -type f -iname *.o)
ALLCSOBJ	:= $(pathsubst %.c,%.o,$(ALLCS))
ALLCPPSOBJ	:= $(pathsubst %.c,%.o,$(ALLCPPS))

.PHONY: dir 

$(APP):$(OBJSUB) $(ALLCSOBJ) $(ALLCPPSOBJ)
	@echo "<<<<<<<<<<COMPILANDO RECURSOS>>>>>>>>\n"
	$(CC) $(SRC)/main.cpp -c -o $(OBJ)/main.o $(CCFLAGS)
	$(CC) $(OBJ)/main.o -o $(RLS)/$(APP).exe $(CCFLAGS)
	@echo "\n\n"
	@echo "<<<<<<<<<<EJECUTANDO RESULTADOS>>>>>>>>\n"
	$(RLS)/$(APP).exe

%.o:%.c
	$(C) -o $(pathsubst $(SRC)%,$(OBJ)%,$@) -c $^ $(CCFLAGS)

dir:
	$(info $(SUBDIRS))
	$(info $(OBJSUB))
	$(info $(ALLCPPS))
	$(info $(ALLCS))
	$(info $(ALLCPPSOBJ))
	$(info $(ALLCSOBJ))
	$(info $(ALLHS))

clean:
	rm -rf ./$(ALLOBJ)
	rm -rf ./$(RLS)/$(APP).exe

$(OBJSUB):
	$(MKDIR) $(OBJSUB)



