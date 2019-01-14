rem ########################
rem we are copying the thing.jar and the thing2.jar which have a tiny difference.
rem they are going into the root dir of the repo as thing.jar.
rem will commit several changes.
rem
rem ########################

FOR /L %%A IN (1,1,10) DO (
	echo #####################
	echo updating to thing.jar %%Ax
	cp bin/thing.jar thing.jar
	git add .
	git commit -m "updating to thing.jar"
	
	echo ##################### %%Ax
	echo updating to thing2.jar
	cp bin/thing2.jar thing.jar
	git add .
	git commit -m "updating to thing2.jar"
)