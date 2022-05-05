#!/bin/bash
# brunom4ciel
# 2022-05-05

printTextColor() {
    # Color variables
    red='31'
    green='32'
    yellow='33'
    blue='34'
    magenta='35'
    cyan='36'
    # Clear the color after that
    clear='0'

    bg_red='41'
    bg_green='42'
    bg_yellow='43'
    bg_blue='44'
    bg_magenta='45'
    bg_cyan='46'
    
    msg=$1
    textColor=$2
    bgTextColor=$3
    
    if [[ ! -z $textColor ]]; then
    
        if [[ "RED,GREEN,YELLOW,BLUE,MAGENTA,CYAN,CLEAR" =~ $textColor ]]; then
            case "$textColor" in
            RED)
                textColor=$red
                ;;
            GREEN)
                textColor=$green
                ;;
            YELLOW)
                textColor=$yellow
                ;;
            BLUE)
                textColor=$blue
                ;;
            MAGENTA)
                textColor=$magenta
                ;;
            CYAN)
                textColor=$cyan
                ;;
            *)
                textColor=$clear
                ;;
            esac
        else
            textColor=$clear
        fi
    else
        textColor=''
    fi
    
    
    if [[ ! -z $bgTextColor ]]; then
        if [[ "RED,GREEN,YELLOW,BLUE,MAGENTA,CYAN,CLEAR" =~ $bgTextColor ]]; then
            case "$bgTextColor" in
            RED)
                bgTextColor=$bg_red
                ;;
            GREEN)
                bgTextColor=$bg_green
                ;;
            YELLOW)
                bgTextColor=$bg_yellow
                ;;
            BLUE)
                bgTextColor=$bg_blue
                ;;
            MAGENTA)
                bgTextColor=$bg_magenta
                ;;
            CYAN)
                bgTextColor=$bg_cyan
                ;;
            *)
                bgTextColor=$clear
                ;;
            esac
        else
            bgTextColor=$clear
        fi
    else
        bgTextColor=''
    fi
    
    if [[ -z $textColor ]]; then
        if [[ -z $bgTextColor ]]; then
            echo $msg
        else
            echo -e "\033[1;0;${bgTextColor}m${msg}\e[0m";
        fi
    else
        if [[ -z $bgTextColor ]]; then
            echo -e "\033[1;0;${textColor}m${msg}\e[0m";
        else
            echo -e "\033[1;0;$textColor;${bgTextColor}m${msg}\e[0m";
        fi
    fi
}

printTextColor 'bruno' 'CYAN' 'BLUE'

