JFLAGS = -g
JC = javac
JRUN = java 

.SUFFIXES: .java .class

.java.class:
	$(JC) $(JFLAGS) $ src/*.java

CLASSES = \
      src/Node.java  \

default: classes

classes: $(CLASSES:.java=.class)

clean:
	$(RM) src/*.class
