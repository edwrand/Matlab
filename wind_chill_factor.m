function [wcf] = wind_chill_factor(T, V)
    T = str2double(input("Enter a temperature in degrees Farenheit: ", 's'))
    V = str2double(input("Enter a wind speed: ", 's'))
    wcf = 35.7 + 0.6*T - 35.7 * (V.^0.16) + 0.43 * T * (V.^0.16)
end