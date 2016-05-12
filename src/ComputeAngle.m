function ComputeAngle (firstNumber, secondNumber, thirdNumber)
    % Constants
    ANGLE = 180;
    
    % Variables
    magnitude = abs (firstNumber - secondNumber);
    distance  = abs (firstNumber - thirdNumber);
    
    % Format report about magnitude and distance
    report = sprintf('Magnitude: %d\nDistance:  %d',magnitude, distance);
    
    disp (report)
    
    % Report orientation
    if firstNumber < secondNumber
        disp('Congruent')
    else
        disp('Incogruent')
    end
    
    % Compute correct angle
    angleFromCenter = (ANGLE / magnitude) * distance;
    correctAngle = sprintf('Angle is: %0.2f', angleFromCenter);
    
    % Display correct angle
    disp (correctAngle)
end

