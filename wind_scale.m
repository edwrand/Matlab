%windscale script
windscale = randi(12)
if windscale > 0 & windscale < 12
    if windscale > 0 & windscale < 6
        disp("Windy, but not a hurricane")
    elseif windscale > 6 & windscale <= 12
        disp("Hurricane for sure hide and run")
    else
        disp("Hurricane machine broken")
    end
end
