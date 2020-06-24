#Seulement trois defines sont autorisees
MODE = "w"
STDOUT = "Grace_kid.py"
PRINTABLE = "#Seulement trois defines sont autorisees{0}MODE = {1}w{1}{0}STDOUT = {1}Grace_kid.py{1}{0}PRINTABLE = {1}{2}{1}{0}with open(STDOUT, MODE) as f:{0}{3}f.write(PRINTABLE.format(chr(10), chr(34), PRINTABLE,chr(9))){0}"
with open(STDOUT, MODE) as f:
	f.write(PRINTABLE.format(chr(10), chr(34), PRINTABLE,chr(9)))
