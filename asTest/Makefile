LDFLAG = -g
TARGET = hello01 
OBJECT = hello01.o
SOURCE = hello01.s

all : $(TARGET)

$(TARGET) : $(OBJECT)
	gcc -o $@ $+ $(LDFLAG)

$(OBJECT) : $(SOURCE)
	as -o $@ $< $(LDFLAG)

clean:
	rm -vf $(TARGET) $(OBJECT) 

