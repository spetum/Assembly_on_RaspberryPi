LDFLAG = -g
TARGET = sum_array_ref 
OBJECT = sum_array_ref.o
SOURCE = sum_array_ref.s

all : $(TARGET)

$(TARGET) : $(OBJECT)
	gcc -o $@ $+ $(LDFLAG)

$(OBJECT) : $(SOURCE)
	as -o $@ $< $(LDFLAG)

clean:
	rm -vf $(TARGET) $(OBJECT) 

