rem ########################
rem we are copying the text1.txt and the text2.txt which have a tiny difference.
rem they are going into the root dir of the repo as text.txt.
rem will commit several changes.
rem
rem ########################

FOR /L %%A IN (1,1,10) DO (
	echo #####################
	echo updating to text1.txt %%Ax
	cp text/text1.txt text.txt
	git add .
	git commit -m "updating to text1.txt"
	
	echo #####################
	echo updating to text2.txt %%Ax
	cp text/text2.txt text.txt
	git add .
	git commit -m "updating to text2.txt"
)