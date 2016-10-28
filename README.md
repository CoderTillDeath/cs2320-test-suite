# COSC 2320 Testing Suite
---
I have made a set of scripts to make to make testing easier for those of us in this class, since our professor has not provided one himself. I have a series of scripts that you can use via the command line in order to help with testing your program. 

### Prerequisites
In order to use my test suite, you will need g++, a c++ compiler, and git. Here's the link for both:

- g++  - http://www1.cmc.edu/pages/faculty/alee/g++/g++.html
- git - https://git-scm.com/

To verify that g++ and git are installed on your computer, open up a terminal or command prompt and type **g++** or **git**: 
```
C:\Users\Benson>g++
g++: fatal error: no input files
compilation terminated.

C:\Users\Benson>git
usage: git [--version] [--help] [-C <path>] [-c name=value]
....................................................
```
If you get the above messages, then you are set. If instead you got these: 
```
C:\Users\Benson>g++
'g++' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\Benson>git
'git' is not recognized as an internal or external command,
operable program or batch file.
```
Then you may need to do some troubleshooting. Your linux box will already have these preinstalled if you want to work off of that. 
### Setup
---
Before you start using the scripts, you need to do some initial configuration. In order to make configuration easier, I have included a file called **settings.sh** in order to make things configuration easy. Here is what the settings.sh file looks like: 
```
fileName="uhstack"
testDirectory="test-cases/"
inputFileFormat="test-&.txt"
outputFileFormat="out-&.txt"
letters="a b c d e f g h i j k l m n o p q r s t"
```
The above file has all that you need to fill out in order to get the scripts to work. A brief explanation for each option

- fileName - Just put the name of the assignment file for this field. **NOT THE NAME OF THE CPP FILE**, but the name that professor has mandated. So for assignment 3, the professor has called for the file to be named **uhstack**. 
- testDirectory - This will be the folder in which you put your test cases in. I recommend downloading all of them and putting them in a folder with your cpp file, like so: 
```
hw3
|
+---> main.cpp
+---> test-cases
      |
      +--->test-a.txt
      +--->out-a.txt
      +--->test-b.txt
      +--->out-b.txt
      +--->test-c.txt
      +--->out-c.txt
```
- inputFileFormat and outputFileFormat - The format that the files follow. Put an **&** symbol where the file changes letters. So for the example I gave above, the inputFileFormat would be "test-&.txt", and the output format will be "out-&.txt".
- letters - Type out every letter test case that is in the test cases folder

---
Here are the scripts: 
- outputForFile.sh - Takes one argument for the letter of the file, and spits out the output for the given test case
- answerForFile.sh - Takes one argument for the letter of the file, and prints out the correct output for the given test case.
- inputFile.sh - Takes one argument for the letter of the file, gives you the input file.
- test.sh - Takes one argument for the letter of the file, sees if the output from your file matches the correct output
- runTests.sh - Runs test.sh for all letters

---
#### A Few Advanced Scripts
- diffOutput.sh - Gives you the diff output for a certain test case, if you prefer looking at diff
- rTestsThrough.sh - Runs test cases until a certain letter that you give. Promotes continuous integration. 

---
## Example Use Case
So, I'm gonna walk through a few key moments that I experienced while doing hw2. So, let's begin! I start by going to my linux box, creating a folder called "hw2", and cd-ing into it.

![alt text](pictures/21:02:47.png?raw=true)

Now, I'm going to get the test suite and the test cases for the homework.

![alt text](pictures/21:09:47.png?raw=true)

We have the test suite and the test cases now. Let's configure the test suite. I'm going to open the file "settings.sh" with the **nano** test editor. You can open it with notepad or whatever you use.

![alt text](pictures/16:52:21.png?raw=true)

This is what the configuration looks like: 

![alt text](pictures/20:59:25.png?raw=true)

Save it and exit. You are now set up to use the test suite! I'm gonna open up another terminal, so I can have one terminal in the test-suite folder, and one in the "hw2" folder.

![alt text](pictures/16:55:00.png?raw=true)

I'm gonna open up a file called coogsive.cpp and setup a hello world program. This is what the program looks like: 

![alt text](pictures/16:55:35.png?raw=true)

Notice that to the right, I have invoked my first script: "outputForFile.sh". What that script does is automatically feed the specified input to the c++ program. Here's a demonstration. 

![alt text](pictures/20:38:31.png?raw=true)

Notice how the input file is formatted in the same way as the config file says: 
```
inputFile="test-&.1.txt"
```

As long as you configure that option correctly, this segment should work. Then, you can start programming! Once you think you can pass a certain test, you can use the **test.sh** script to make sure your output matches the output file. Like this:

![alt text](pictures/17:03:03.png?raw=true)

You can go through and make sure that each test passes. As you approach the end of the assignment, you might want to be able to see all of the test results at one time. If you want to run all test cases automatically, then use the **runTests.sh**

![alt text](pictures/17:03:58.png?raw=true)

Let's say we're not passing test c. We need to do some debugging! I have added a few scripts to make debugging a little bit easier. 

![alt text](pictures/17:04:20.png?raw=true)

Ok, the first step, I think is to again show what the output that our program is giving. So, we do like this:

![alt text](pictures/20:48:35.png?raw=true)

Ok, that's the output our program is giving. Let's check to see what the output **should** look like, using the **answerForFile.sh** script.

![alt text](pictures/20:51:00.png?raw=true)

Ok, one more thing we can do is see what the input file looks like. We can do that with the **inputFile.sh** script.

![alt text](pictures/20:51:00.png?raw=true)

Later on I fix the bug and, the test passes. 

![alt text](pictures/20:53:37.png?raw=true)