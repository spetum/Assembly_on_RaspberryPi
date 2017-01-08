LDFLAG = -g
<<<<<<< HEAD
TARGET = hello01 
OBJECT = hello01.o
SOURCE = hello01.s
=======
TARGET = sum_array_ref 
OBJECT = sum_array_ref.o
SOURCE = sum_array_ref.s
>>>>>>> b4d8ac4ceca16508530f3be710f26c1f83daec40

all : $(TARGET)

$(TARGET) : $(OBJECT)
	gcc -o $@ $+ $(LDFLAG)

$(OBJECT) : $(SOURCE)
	as -o $@ $< $(LDFLAG)

clean:
	rm -vf $(TARGET) $(OBJECT) 

