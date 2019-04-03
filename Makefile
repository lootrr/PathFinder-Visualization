COMPILE = javac -g
PERM = src/ Controller

.SUFFIXES: .java .class

.java.class:
	$(COMPILE) $ src/*.java

CLASSES = src/PathFinder.java \
          src/Controller.java \
	        src/Node.java 

run: classes
	java -cp src/ Controller

classes: $(CLASSES:.java=.class)

clean:
	rm -f src/*.class
