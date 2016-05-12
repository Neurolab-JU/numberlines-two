#==========================#
# NUMBERLINES 2 EXPERIMENT #
#==========================#
/* Copyright (C) Michael Tesar & Michal Vavrecka 2015 - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential. */

response_matching = simple_matching;
default_font      = "Heveltica";
default_font_size = 30;
active_buttons    = 7;
button_codes      = 1,2,3,4,5,6,7;

############
#BEGIN SDL #
############

begin;

#==============#
# INSTRUCTIONS #
#==============#
# Instruction texts
picture {
	text {
		caption = "Dobrý den \n vítejte u tréninku experimentu pro mou bakalářskou
		práci. Na další obrazovce se dozvíte, jak bude experiment probíhat\n.
		Pokud máte nyní nějaké otázky, ptejte se.\n
		
		Pro pokračování stiskněte MEZERNIK.";
	} text1;
	x = 0; y = 0;
} instruction_text1;

picture {
	text {
		caption = "Instrukce\n
		Nyní uvidíte řady čísel. Pokud je poslední číslo nula, spočítejte průměr dvou
		předchozích čísel a uveďte jej jako svoji odpověď.Na odpověď máte neomezený
		čas. Pokud je poslední třetí číslo jiné než nula, představte si půlkruh,
		na kterém je vlevo první z dvou prezentovaných čísel a vpravo vyšší z 
		prezentovaných čísel. Stojíte uprostřed tohoto půlkruhu a Vaším úkolem je ukázat 
		na	poslední třetí číslo tam, kde by se ono číslo nacházelo, pokud bychom napnuli
		číselnou řadu na půlkruhu.\n

		Máte-li otázky k úloze, zeptejte se výzkumníka.\n

		Pokud je Vám vše jasné, pokračujte stiknutím MEZERNIKU.";
	} text2;
	x = 0; y = 0;
} instruction_text2;

# Experiment starts trial
trial {
	trial_duration = 3000;
	picture {
		text { caption = "Připravte se, experiment začíná."; };
		x = 0; y = 0; };
	code = "Experiment starts";
	port_code = 1;
} ExperimentStart;

# Instructions trial
trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 7;
	stimulus_event {
		picture {
			text { caption = " "; };
			x = 0; y = 0;
		} instruction_text;
		code = "Instructions";
	} instructionText;
} Instructions;

#========================#
# CALCULATION STIMULISET #
#========================#
# First number in calculation
array {
	text{caption="10";description="10";}calc_first;
	text{caption="10";description="10";};
	text{caption="9";description="9";};
	text{caption="11";description="11";};
	text{caption="9";description="9";};
	text{caption="11";description="11";};
	text{caption="9";description="9";};
	text{caption="13";description="13";};
	text{caption="11";description="11";};
	text{caption="11";description="11";};
} calculationFirstNumber;

# Second number in calculation
array {
	text{caption="16";description="26";}calc_second;
	text{caption="6";description="34";};
	text{caption="3";description="36";};
	text{caption="15";description="25";};
	text{caption="15";description="26";};
	text{caption="17";description="27";};
	text{caption="15";description="26";};
	text{caption="19";description="27";};
	text{caption="3";description="37";};
	text{caption="7";description="34";};
} calculationSecondNumber;

# Third number in calculation
array {
	text{caption="0";description="40";}calc_third;
	text{caption="0";description="50";};
	text{caption="0";description="50";};
	text{caption="0";description="40";};
	text{caption="0";description="40";};
	text{caption="0";description="40";};
	text{caption="0";description="40";};
	text{caption="0";description="40";};
	text{caption="0";description="50";};
	text{caption="0";description="50";};
} calculationThirdNumber;

#=======================#
# NAVIGATION STIMULISET #
#=======================#
# First number in navigation
array {
	text{caption="10";description="10";}nav_first;
	text{caption="10";description="10";};
	text{caption="8";description="8";};
	text{caption="8";description="8";};
	text{caption="8";description="8";};
	text{caption="12";description="12";};
	text{caption="9";description="9";};
	text{caption="9";description="9";};
	text{caption="10";description="10";};
	text{caption="12";description="12";};
} navigationFirstNumber;

# Second number in navigation
array {
	text{caption="4";description="36";}nav_second;
	text{caption="5";description="35";};
	text{caption="15";description="27";};
	text{caption="2";description="36";};
	text{caption="14";description="26";};
	text{caption="16";description="24";};
	text{caption="15";description="26";};
	text{caption="14";description="25";};
	text{caption="14";description="24";};
	text{caption="6";description="36";};
} navigationSecondNumber;

# Third number in navigation
array {
	text{caption="5";description="75";}nav_third;
	text{caption="8";description="72";};
	text{caption="12";description="64";};
	text{caption="7";description="71";};
	text{caption="13";description="65";};
	text{caption="14";description="62";};
	text{caption="11";description="62";};
	text{caption="10";description="61";};
	text{caption="13";description="63";};
	text{caption="10";description="72";};
} navigationThirdNumber;

#================#
# FIXATION TRIAL #
#================#
trial {
	trial_duration = 1500;
	picture {
		text { caption = "+"; };
		x = 0; y = 0;
	};
} fixationTrial;

#=========================#
# ENDING EXPERIMENT TRIAL #
#=========================#
trial {
	trial_duration = 10000;
	picture {
		text { caption = "Experiment je u konce. Vyčkejte na příchod
		výzkumníka, prosím.

		Děkujeme Vám za účast na tomto experimentu!"; };
	x = 0; y = 0; };
	code = "End of exepriment";
	port_code = 0;
} endTrial;

#===============#
# NUMBER TRIALS #
#===============#
trial {
	trial_duration = 2000;
	stimulus_event {
		picture {
			text { caption = "A number"; } number_caption;
			x = 0; y = 0;
		} number;
		code = "Number";
		port_code = 0;
	} presented_number;
} presentedNumber;

#==========================#
# CALCULATION ANSWER TRIAL #
#==========================#
# Feedback
trial {
	picture {
		text { caption = " ";} corNumText;
		x = 0; y = 50;
		text { caption = "Správná odpověď je: ";};
		x = 0; y = 150;
	} corNumPic;
	duration = 3000;
	code = "Feedback calculation";
} feedbackCorrectNumberTrial;

# Pick an answer
trial {
	trial_duration = 1500;
	picture {
		text { caption = " "; } text_ans;
		x = 0; y = 0;
	} answerEvent;
} answerTrial;

# Question
picture { text { caption = "Vaše odpověď je: "; };
		x = 0; y = 150;
		text { caption = " "; } entered_number;
		x = 0; y = 50;
}questionTrial;

#==================#
# DEFINE 3D OBJECT #
#==================#
# Define primitives
cylinder {
        radius = 1.0, 8.0; height = 25.0; slices = 30;
        color = 200,0,0; alpha = 1.0;
    } arrow_head;
cylinder {
        radius = 0.0, 4.0; height = 40.0; slices = 30;
        color = 200,200,200; alpha = 1.0;
    } arrow_body;
cylinder {
        radius = 1.0, 1.0; height = 100.0; slices = 10;
        color = 200,200,200; alpha = 1.0;
    } x_axis;
cylinder {
        radius = 1.0, 1.0; height = 500.0; slices = 10;
        color = 200,0,0; alpha = 0.5;
    } y_axis_long;
cylinder {
        radius = 1.0, 1.0; height = 100.0; slices = 10;
        color = 200,200,200; alpha = 1.0;
    } y_axis_short;
cylinder {
        radius = 1.0, 1.0; height = 100.0; slices = 10;
        color = 200,200,200; alpha = 1.0;
    } z_axis;
light {
	light_type = light_point;
	diffuse = 0.1, 0.1, 0.1;
	ambient = 0.1, 0.1, 0.1;
	specular = 0.0, 0.0, 0.0;
	position = 0.0, 100.0, -100.0;
	range = 10000.0;
} spot_light;

#=======================#
# ARROW SELECTION TRIAL #
#=======================#
trial {
	trial_duration = forever;
	trial_type = specific_response; terminator_button=1, 3, 5;
	stimulus_event {
		picture {
		background_color = 0,0,0;
		camera_position = 0.0, 50.0, -500.0;
		camera_lookat = 0.0, 0.0, 0.0;
		cylinder arrow_head; x = 0.0; y = 0.0; z = 0.0;
		cylinder arrow_body; x = 0.0; y = 0.0; z = 0.0;
		cylinder y_axis_short; x = 0.0; y = 0.0; z = 0.0;
		cylinder z_axis; x = 0.0; y = 0.0; z = 0.0;
		cylinder x_axis; x = 0.0; y = 0.0; z = 0.0;
		light spot_light;
		}pic4;
	}event1;
}trial_arrow;

trial {
	trial_duration = 3000;
	stimulus_event {
	picture {
		background_color = 0,0,0;
		camera_position = 0.0, 50.0, -500.0;
		camera_lookat = 0.0, 0.0, 0.0;
		cylinder arrow_head; x = 0.0; y = 0.0; z = 0.0;
		cylinder arrow_body; x = 0.0; y = 0.0; z = 0.0;
		cylinder y_axis_short; x = 0.0; y = 0.0; z = 0.0;
		cylinder z_axis; x = 0.0; y = 0.0; z = 0.0;
		cylinder y_axis_long; x = 0.0; y = 0.0; z = 0.0;
		cylinder x_axis; x = 0.0; y = 0.0; z = 0.0;
		light spot_light;
		}pic40;
	}event10;
}trial_nav_feed;

# Declare wait trial during navigation answer
trial {
	trial_duration = 1000;
	picture {
		text { caption = " "; };
		x = 0; y = 0; };
	code = "Navigation blank";
} navigationBlank;


#############
# BEGIN PCL #
#############

begin_pcl;
#==================#
# GLOBAL VARIABLES #
#==================#
int iterations = calculationFirstNumber.count();
array <int> currentNumbers[3];

array <int> sequenceTrials[iterations];
loop int i = 1 until i > iterations begin
	sequenceTrials[i] = i;
	i = i + 1;
end;
sequenceTrials.shuffle();

int navigationCorrectCounter  = 0;
int calculationCorrectCounter = 0;

#---------------------- SUBROUTINES ----------------------#
#===============================#
# METHOD FOR PRESENTING STIMULI #
#===============================#
/* First of all it generates stimuli and then it present it
 * to a subject. This method is used in code by creating
 * an instace of object trial by parameters order witch
 * determines if its first, second or third number. Next
 * parametr is string task which determines if it is navigation
 * of calculation task, e.g. PresentNumber (1, "navigation", 1);
 * present first number in navigation. And it is first
 * iteration.*/
sub PresentNumber(int order, string task, int sequence) begin
	# Navigation branch
	if task == "navigation" then
		if order == 1 then
			number.set_part(1, navigationFirstNumber[sequence]);
			presented_number.set_event_code(navigationFirstNumber[sequence].description());
			presented_number.set_port_code(11);
			currentNumbers[1] = int (navigationFirstNumber[sequence].caption());
			presentedNumber.present();
		elseif order == 2 then
			number.set_part(1, navigationSecondNumber[sequence]);
			presented_number.set_event_code(navigationSecondNumber[sequence].description());
			presented_number.set_port_code(12);
			currentNumbers[2] = int (navigationSecondNumber[sequence].caption());
			presentedNumber.present();
		elseif order == 3 then
			number.set_part(1, navigationThirdNumber[sequence]);
			presented_number.set_event_code(navigationThirdNumber[sequence].description());
			presented_number.set_port_code(13);
			currentNumbers[3] = int (navigationThirdNumber[sequence].caption());
			presentedNumber.present();
		end
	# Calculation branch
	else
		if order == 1 then
			number.set_part(1, calculationFirstNumber[sequence]);
			presented_number.set_event_code(calculationFirstNumber[sequence].description());
			presented_number.set_port_code(21);
			currentNumbers[1] = int (calculationFirstNumber[sequence].caption());
			presentedNumber.present();
		elseif order == 2 then
			number.set_part(1, calculationSecondNumber[sequence]);
			presented_number.set_event_code(calculationSecondNumber[sequence].description());
			presented_number.set_port_code(22);
			currentNumbers[2] = int (calculationSecondNumber[sequence].caption());
			presentedNumber.present();
		elseif order == 3 then
			number.set_part(1, calculationThirdNumber[sequence]);
			presented_number.set_event_code(calculationThirdNumber[sequence].description());
			presented_number.set_port_code(23);
			currentNumbers[3] = int (calculationThirdNumber[sequence].caption());
			presentedNumber.present();
		end
	end;
end;

#============================#
# METHOD FOR RANDOMIZE TASKS #
#============================#

/* Prepare vector for randomization of task method. First is
 * vector filled with boolean true or false with ration 1:1
 * after shuffling vector consists of random sequence of tasks.
 * 1 = Navigation, 0 = Calculation */

#-------------------------------#
# Declaring and intiating array #
#-------------------------------#
array <int> randomizedTasks[(iterations * 2) + 1];
loop int i = 1 until i > randomizedTasks.count() begin
	randomizedTasks[i] = 1;
	i = i + 1;
end;
loop int i = iterations until i > (iterations * 2)+ 1 begin
	randomizedTasks[i] = 0;
	i = i + 1;
end;

# Shuffle randomization vector
randomizedTasks.shuffle();

#=========================#
# METHOD FOR MOVING ARROW #
#=========================#

sub NavigationAnswer(int correctAngle) begin

	# Arrow selection
	int BUTTON_LEFT     = 1;
	int BUTTON_LEFT_UP  = 2;
	int BUTTON_RIGHT    = 3;
	int BUTTON_RIGHT_UP = 4;
	int BUTTON_END      = 5;
	int BUTTON_END_UP   = 6;
	double d            = 90;

	pic4.set_3dpart_rot(1, -double(0) , d, 90.0);
	pic4.set_3dpart_rot(2, -double(0) , d, 90.0);
	pic4.set_3dpart_rot(3, -double(0) , d, 90.0);
	pic4.set_3dpart_rot(4, -double(0) , d,  0.0);
	pic4.set_3dpart_rot(5, -double(90), d,  0.0);
	pic4.present();

	loop bool ok = false; until ok begin
		trial_arrow.present();
		int resp = response_manager.last_response_data().button();
		int curr_up_ct = response_manager.total_response_count( resp + 1 );
		loop until response_manager.total_response_count( resp + 1 ) > curr_up_ct begin
			if ( resp == BUTTON_LEFT ) then
				  d = d - 1.0;
			elseif ( resp == BUTTON_RIGHT ) then
				  d = d + 1.0;
			end;

	pic4.set_3dpart_rot(1, -double(0) , d, 90.0);
	pic4.set_3dpart_rot(2, -double(0) , d, 90.0);
	pic4.set_3dpart_rot(3, -double(0) , d, 90.0);
	pic4.set_3dpart_rot(4, -double(0) , d,  0.0);
	pic4.set_3dpart_rot(5, -double(90), d,  0.0);
	pic4.present();

	end;

	if ( resp == BUTTON_END ) then ok = true; end;

	end;

	term.print(" User entered: " + string(d) + "\n");

	if d > correctAngle - (correctAngle * 0.1) && d < correctAngle + (correctAngle * 0.10) then
		navigationCorrectCounter = navigationCorrectCounter + 1;
		term.print(" CORRECT\n");
	else
		term.print(" INCORRECT\n");
	end;
	term.print("\n");

	# Show correct angle
	pic40.set_3dpart_rot(1, -double(0) , d, 90.0 );
	pic40.set_3dpart_rot(2, -double(0) , d, 90.0 );
	pic40.set_3dpart_rot(3, -double(0) , d, 90.0 );
	pic40.set_3dpart_rot(4, -double(0) , d,  0.0);
	pic40.set_3dpart_rot(5, -double(0) , correctAngle, 90.0);
	pic40.set_3dpart_rot(6, -double(90), d,  0.0);

	# Present correct angle
	navigationBlank.present();
	trial_nav_feed.present();

end;

#===============================#
# METHOD FOR ANSWER CALCULATION #
#===============================#
sub CalculationAnswer(int correctNumber) begin
	string entered;
	# Subject's response
	string message;
	text_ans.set_caption(message);
	system_keyboard.set_delimiter('\n');
	int count = system_keyboard.keypress_count();
	entered = system_keyboard.get_input(questionTrial, entered_number);
		if system_keyboard.keypress_count() > count then
			double time = system_keyboard.get_keypress_time( count + 1);
			int char_code = system_keyboard.get_keypress_code( count + 1);
			string character = " ";
		end;

		term.print(" User answer: " + entered + "\n");
		if entered == string (correctNumber) then
			calculationCorrectCounter = calculationCorrectCounter + 1;
			term.print(" CORRECT\n");
		else
			term.print(" INCORRECT\n");
		end;
		term.print("\n");
	# Present correct answer
	fixationTrial.present();
	string answer = string(correctNumber);
	corNumText.set_caption(answer,true);
	feedbackCorrectNumberTrial.present();
end;

#----------------#
# DECLARE METHOD #
#----------------#
sub MainExperiment (array <int> randomizedArray[iterations]) begin
	loop int i = 1 until i > randomizedArray.count() begin
		term.print("TRIAL N. " + string(i) + " - ");
		int chooseCurrentTrial = randomizedArray[i];
		#------------------------#
		# Methods for navigation #
		#------------------------#
		if chooseCurrentTrial == 1 then
			fixationTrial.present();
			PresentNumber(1, "navigation", sequenceTrials[i]);
			fixationTrial.present();
			PresentNumber(2, "navigation", sequenceTrials[i]);
			fixationTrial.present();
			PresentNumber(3, "navigation", sequenceTrials[i]);
			# Calculate correct answer for navigation
			term.print("Navigation numbers: " + string(currentNumbers[1]) + ", " + string(currentNumbers[2]) + ", " + string(currentNumbers[3]) + "\n ");
			# Correct answer of navigation trial computation
			int magnitude = abs(currentNumbers[1] - currentNumbers[2]);
			int target = abs(currentNumbers[3] - currentNumbers[1]);
			double correctCurrentNavigation = ((180 / magnitude) * target);
			term.print("Navigation correct: " + string(correctCurrentNavigation) + "\n");
			NavigationAnswer(int(correctCurrentNavigation));
		#-------------------------#
		# Methods for calculation #
		#-------------------------#
		elseif chooseCurrentTrial == 0 then
			fixationTrial.present();
			PresentNumber(1, "calculation", sequenceTrials[i]);
			fixationTrial.present();
			PresentNumber(2, "calculation", sequenceTrials[i]);
			fixationTrial.present();
			PresentNumber(3, "calculation", sequenceTrials[i]);
			# Calculate correct answer for calculation
			int correctCurrentCalculation = (currentNumbers[1] + currentNumbers[2]) / 2;
			term.print("Calculation numbers: " + string(currentNumbers[1]) + ", " + string(currentNumbers[2]) + ", " + string(currentNumbers[3]) + "\n ");
			term.print("Calculation correct: " + string(correctCurrentCalculation) + "\n");
			CalculationAnswer(correctCurrentCalculation);
		end;
		# Intitate array to zeros
		currentNumbers[1] = 0; currentNumbers[2] = 0; currentNumbers[3] = 0;
		i = i + 1;
	end;
end;

#----------------------- EXPERIMENT ----------------------#

#===========================#
# Present first instruction #
#===========================#
instruction_text.set_part(1, text1);
Instructions.present();

#============================#
# Present second instruction #
#============================#
instruction_text.set_part(1, text2);
Instructions.present();

#==========================#
# Present expriment starts #
#==========================#
ExperimentStart.present();
MainExperiment(randomizedTasks);
endTrial.present();

#---------------- HOW MANY CORRECT ANSWERS ---------------#
double navigationCorrectPercentage  = (navigationCorrectCounter / iterations) * 100;
double calculationCorrectPercentage = (calculationCorrectCounter / iterations) * 100;
term.print("NAVIGATION TOTAL CORRECT: " + string(navigationCorrectPercentage) + "%\n");
term.print("CALCULATION TOTAL CORRECT: " + string(calculationCorrectPercentage) + "%\n");
