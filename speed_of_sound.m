% speed of sound script
speed_obj = input('What is the speed of the object?: ')
speed_sound = input("What is the speed of sound?: ")
mach = speed_obj / speed_sound

if mach < '1'
    disp("Flow is subsonic")
elseif mach == '1'
    disp("Flow is transconic")
elseif mach > '1'
    disp("Flow is supersonic")
else
    disp("The zombies broke in you are dead.")