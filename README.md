README
======

This is a one file scenario experiment which does nearly every thing needed.
It contains code for testing and it can be easily switched to separate subroutine,
so it is quickly possibly to add or remove training trial in one file.

Then in computes by it self the correct answer so it only needs for calculation
first number and second number. For navigation it needs all of them, so first number,
second number and third - target - number. Then particular trial appears.

Experiment contains two instruction screens and one ending. Instruction screen
are set up to pressing space to proceed. End is timed on 5 sec. In future version
will be implemented porting input EEG code so Presentation by it self starts
recording EEG and at the end stops recording. But this is optional (see issues feature proposal).

Each trial is logged into terminal with unique trial number, note which trial it is
and correct answer user input, then result if it was correct or not. By calculation
it is obvious that correct and entered numbers has to the same, but in the navigation
it is considered as correct answer with 10% error.

Local wiki <https://gitlab.com/neurolab/numberlines-2/wikis/home>

Numberlines 2 experiment
========================

Alternative experiment to Michal's Berlin
experiment with mental representation of
numerical axes and manipulation in field.
<br><br>
With less visualization for the subject. It only sees three numbers
then he/she has to decide which task to use, e.g. computing the mean or
navigation in radius.

Parameters
==========
- 400 stimuli
- completely randomized
- same stimuli set as it was in Berlin
- fully adjustive code (in terms of number of stimuli)
- all the main functions are defined as subroutines
- it contains debug in terminal - tells which number were presented, what entered subject and what was correct, also if ti was correct or not
- particular EEG port codes
- this GIT repository

Port codes
----------
Due to complexity of this task it is needed to use specific coding of port codes,
because it cannot be send anything bigger than a byte 0 - 255, integer.
- <b>First number</b>
  - it is same as number it self (6 - 12 > 10) = 6
- <b>Second number</b>
  - <u>congruent</u> (8 - 12 > 10) stimuli = 2 and magnitude > 24
  - <u>incongurent</u> (12 - 6 > 9) stimuli = 3 and magnitude > 36
- <b>Third number</b>
  - computing 40 and 50; 40 for <u>congruent</u> and 50 for <u>incongruent</u>
  - navigation 6 and absolute value between first and third number for <u>congruent</u>; for <u>incongrunet</u> it is used prefix 7

How to download?
---------------
In this repository is possiblity to download whole experiment as ZIP file. It is strongly recommended to download only labeled version as stable. Otherwise we cannot garant its fully working.

How to use it?
==============
You need fully working Neurobs Presentation version <a href="www.neurobs.com">www.neurobs.com</a> and connected LPT on address LPT1, commonly on 0x378. Please, be sure you have defined this port as output port in Presentation (it should work out-of-box). Then run Numberlines2.exp.
<br>
You will be prompt for user ID and then you can start experiment.
<br>
EXPERIMENT ALSO REQUIRE a keyboard's mapped in Presentation with spacebar for proceeding the experimental task.

How subjects ID works?
----------------------
It is handy to have measured subjects named the most usefull was due to anonymization process. So in the code of subject experimentator have to code these information:
- which type of thesis is from project (bachelor, magister and doctoral)
- how many channels were used - 64 or 32 or just behavioral study
- timestamp - a day, month and year
- handedness and sex of the subject
- its personal number in project

E.g., <b>B64-02172016-RM-02</b> (bachelor project, 64 channels EEG, 2nd of January 2016, right handed male, and it was second measured subject), <b>D32-18122015-LF-11</b> (doctoral project with 32 channels EEG, measured last year, it was left handed woman and it was 11th subject in the study)

Acknowledges
============
This experiment is strictly internal and it is forbidden to be unauthorized used or modified without author approaval <michtesar@gmail.com>.
<br>
Most part of code is proprietary and comes from original experiment written by Michal Vavrecka.
<br><br>
This code was written for bachelor thesis of Petra Janickova in South Bohemia university.
