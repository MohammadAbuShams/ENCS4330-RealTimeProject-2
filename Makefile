CC = gcc
CFLAGS = -g -Wall
UILIBS = -lglut -lGLU -lGL -lm  -lrt
LIBS = -lpthread

ARGS= arguments.txt
PRODUCTS= products.txt 
TEAMS= teams.txt

all:  project2 shelvingTeam customer

customer: customer.c
	$(CC) $(CFLAGS) -o customer customer.c utilities.c ipcs.c $(LIBS)

shelvingTeam: 
	$(CC) $(CFLAGS) -o shelvingTeam shelvingTeam.c utilities.c ipcs.c $(LIBS)


project2: project2.c utilities.c
	$(CC) $(CFLAGS) -o project2 project2.c utilities.c ipcs.c $(LIBS)



#gui: gui.c
#	$(CC) $(CFLAGS) $< -o $@ $(LIBS)
	
run: project2
	./project2 $(ARGS) $(PRODUCTS) $(TEAMS)

clean:
	rm -f project2 shelvingTeam customer
