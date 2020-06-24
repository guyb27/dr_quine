from os import system
def main():
	i = 5
	source_code = "from os import system{0}def main():{0}{4}i = {1}{0}{4}source_code = {2}{3}{2}{0}{4}if __file__ != {2}Sully.py{2}:{0}{4}{4}i -= 1{0}{4}if i < 0:{0}{4}{4}return{0}{4}file_name = {2}Sully_{2} + str(i) + {2}.py{2}{0}{4}with open(file_name, {2}w{2}) as f:{0}{4}{4}f.write(source_code.format(chr(10), i, chr(34), source_code,chr(9))){0}{4}system({2}python3 {2} + file_name){0}if __name__ == {2}__main__{2}:{0}{4}main(){0}"
	if __file__ != "Sully.py":
		i -= 1
	if i < 0:
		return
	file_name = "Sully_" + str(i) + ".py"
	with open(file_name, "w") as f:
		f.write(source_code.format(chr(10), i, chr(34), source_code,chr(9)))
	system("python " + file_name)
if __name__ == "__main__":
	main()
