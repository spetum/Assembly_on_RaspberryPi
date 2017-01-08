LDFLAG = -g
TARGET = bubble_sort_cmp 
OBJECT = main2.o bubble_sort.o bubble_sort_asm.o
SOURCE = main2.c bubble_sort.c bubble_sort_asm.s

all : $(TARGET)

$(TARGET) : $(OBJECT)
	gcc -o $@ $+ $(LDFLAG)

$(OBJECT) : $(SOURCE)
	gcc -c $? $(LDFLAG)

clean:
	rm -vf $(TARGET) $(OBJECT) 

