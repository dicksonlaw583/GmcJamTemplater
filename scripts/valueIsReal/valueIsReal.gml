///@func valueIsReal(val)
///@param val The value to check
///@desc Return whether the given string value is safe to pass into real()

var i, len, str;
i = 1;
len = string_length(argument0);
str = "";
    
//Seek to first character: +, -, or 0-9
var c;
c = string_char_at(argument0, i);
if (string_pos(c, "0123456789+-") == 0) {
    return false;
}
    
//Determine starting state
var state;
switch (c) {
    case "+": case "-":
        state = 0;
    break;
    default:
        state = 1;
    break;
}
str += c;
i += 1;
    
//Loop until no more digits found
var done;
done = false;
for (; i<=len && !done; i+=1) {
    c = string_char_at(argument0, i);
    switch (state) {
        //0: Found a sign, looking for a starting number
        case 0:
            switch (c) {
                case "0": case "1": case "2": case "3": case "4": case "5": case "6": case "7": case "8": case "9":
                    str += c;
                    state = 1;
                break;
                default:
                    return false;
                break;
            }
        break;
        //1: Found a starting digit, looking for decimal dot, e, E, or more digits
        case 1:
            switch (c) {
                case "0": case "1": case "2": case "3": case "4": case "5": case "6": case "7": case "8": case "9":
                    str += c;
                break;
                case ".":
                    str += c;
                    state = 2;
                break;
                case "e": case "E":
                    str += c;
                    state = 3;
                break;
                default:
                    return false;
                break;
            }
        break;
        //2: Found a decimal dot, looking for more digits
        case 2:
            switch (c) {
                case "0": case "1": case "2": case "3": case "4": case "5": case "6": case "7": case "8": case "9":
                    str += c;
                    state = -2;
                break;
                default:
                    return false;
                break;
            }
        break;
        //-2: Found a decimal dot and a digit after it, looking for more digits, e, or E
        case -2:
            switch (c) {
                case "0": case "1": case "2": case "3": case "4": case "5": case "6": case "7": case "8": case "9":
                    str += c;
                break;
                case "e": case "E":
                    str += c;
                    state = 3;
                break;
                default:
                    return false;
                break;
            }
        break;
        //3: Found an e/E, looking for +, - or more digits
        case 3:
            switch (c) {
                case "+": case "-":
                    str += c;
                    state = 4;
                break;
                case "0": case "1": case "2": case "3": case "4": case "5": case "6": case "7": case "8": case "9":
                    str += c;
                    state = 5;
                break;
                default:
                    return false;
                break;
            }
        break;
        //4: Found an e/E exponent sign, looking for more digits
        case 4:
            switch (c) {
                case "0": case "1": case "2": case "3": case "4": case "5": case "6": case "7": case "8": case "9":
                    str += c;
                    state = 5;
                break;
                default:
                    return false;
                break;
            }
        break;
        //5: Looking for final digits of the exponent
        case 5:
            switch (c) {
                case "0": case "1": case "2": case "3": case "4": case "5": case "6": case "7": case "8": case "9":
                    str += c;
                    state = 5;
                break;
                default:
                    return false;
                break;
            }
        break;
    }
}
    
//Ready ending?
if (state == 1) || (state == -2) || (state == 5) {
    return true
}
//Unexpected ending, can't be numeric
return false;
