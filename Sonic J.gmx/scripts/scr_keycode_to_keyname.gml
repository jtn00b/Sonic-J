if 48<=argument0 && argument0<=57 return string(argument0-48);
else if 65<=argument0 && argument0<=90 return chr(argument0);
else if 96<=argument0 && argument0<=105 return "NUM"+string(argument0-96);
else if 112<=argument0 && argument0<=123 return "F"+string(argument0-111);
else switch argument0{
    case 0:
        return "";
        break;
    case 8:
        return "BCKSPACE";
        break;
    case 9:
        return "TAB";
        break;
    case 13:
        return "ENTER";
        break;
    case 16:
        return "SHIFT";
        break;
    case 19:
        return "PAUSE";
        break;
    case 20:
        return "CAPSLCK";
        break;
    case 27:
        return "ESCAPE";
        break;
    case 32:
        return "SPACE";
        break;
    case 33:
        return "PGUP";
        break;
    case 34:
        return "PGDOWN";
        break;
    case 35:
        return "END";
        break;
    case 36:
        return "HOME";
        break;
    case 37:
        return "LEFT";
        break;
    case 38:
        return "UP";
        break;
    case 39:
        return "RIGHT";
        break;
    case 40:
        return "DOWN";
        break;
    case 44:
        return "PRTSCR";
        break;
    case 45:
        return "INSERT";
        break;
    case 46:
        return "DELETE";
        break;
    case 91:
        return "LWINDOWS";
        break;
    case 92:
        return "RWINDOWS";
        break;
    case 93:
        return "SELECT";
        break;
    case 106:
        return "MULTIPLY";
        break;
    case 107:
        return "ADD";
        break;
    case 109:
        return "SUBTRACT";
        break;
    case 110:
        return "DECIMAL";
        break;
    case 111:
        return "DIVIDE";
        break;
    case 144:
        return "NUMLCK";
        break;
    case 145:
        return "SCRLCK";
        break;
    case 162:
        return "LCTRL";
        break;
    case 163:
        return "RCTRL";
        break;
    case 164:
        return "LALT";
        break;
    case 165:
        return "RALT";
        break;
    case 186:
        return "SMCLN";
        break;
    case 187:
        return "EQUAL";
        break;
    case 188:
        return "COMMA";
        break;
    case 189:
        return "DASH";
        break;
    case 190:
        return "PERIOD";
        break;
    case 191:
        return "SLASH";
        break;
    case 192:
        return "QUOTE";
        break;
    case 219:
        return "LBRCKT";
        break;
    case 220:
        return "BSLASH";
        break;
    case 221:
        return "RBRCKT";
        break;
    case 222:
        return "BQUOTE";
        break;
    case 223:
        return "EXCLMTN";
        break;
}
return "UNKNOWN";
