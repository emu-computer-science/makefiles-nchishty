# Compiler and Flags
CC = gcc
CFLAGS = -c

# Files
SRC = driver.c file1.c file2.c
OBJ = driver.o file1.o file2.o
EXEC = makefileAssignment

# Header files
HEADER = headers.h

# Default target: builds the executable
all: $(EXEC)

# Rule to create the executable from object files
$(EXEC): $(OBJ)
	$(CC) -o $(EXEC) $(OBJ)

# Rule to compile driver.c into driver.o
driver.o: driver.c $(HEADER)
	$(CC) $(CFLAGS) -o driver.o driver.c

# Rule to compile file1.c into file1.o
file1.o: file1.c $(HEADER)
	$(CC) $(CFLAGS) -o file1.o file1.c

# Rule to compile file2.c into file2.o
file2.o: file2.c $(HEADER)
	$(CC) $(CFLAGS) -o file2.o file2.c

# Clean up: removes object files and the executable
clean:
	rm -fr $(EXEC) $(OBJ)

# Phony targets
.PHONY: all clean
