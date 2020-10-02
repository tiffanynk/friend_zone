require "pry"

class Ascii
    def self.logo
        puts ' #####                                #######                    #######      '                         
        puts '#     # #    # # #####  # #      #    #       # #      #    #    #       # #    # #####  ###### #####  '
        puts '#       #    # # #    # # #      #    #       # #      ##  ##    #       # ##   # #    # #      #    # '
        puts '#  #### ###### # #####  # #      #    #####   # #      # ## #    #####   # # #  # #    # #####  #    # '
        puts '#     # #    # # #    # # #      #    #       # #      #    #    #       # #  # # #    # #      #####  '
        puts '#     # #    # # #    # # #      #    #       # #      #    #    #       # #   ## #    # #      #   #  '
        puts '#####   #    # # #####  # ###### #    #       # ###### #    #    #       # #    # #####  ###### #    # '
    end

    def self.totoro
        puts'                                                   '
        puts'                      !         !                  '
        puts'                     ! !       ! !                 '
        puts'                    ! . !     ! . !                ' 
        puts'                       ^^^^^^^^^ ^                 '
        puts'                     ^             ^               '
        puts'                   ^  (0)       (0)  ^             '
        puts'                  ^        ""         ^            '
        puts'                ^   ***************    ^           '
        puts'               ^   *                 *   ^         '
        puts'              ^   *   /\   /\   /\    *    ^       '
        puts'             ^   *                     *    ^      '
        puts'            ^   *   /\   /\   /\   /\   *    ^     '
        puts'           ^   *                         *    ^    '
        puts'           ^  *                           *   ^    '
        puts'           ^  *                           *   ^    '
        puts'            ^ *                           *  ^     '
        puts'             ^*                           * ^      '
        puts'              ^ *                        * ^       '
        puts'              ^  *                      *  ^       '
        puts'                ^  *       ) (         * ^         '
        puts'                    ^^^^^^^^ ^^^^^^^^^             '
        puts'           "Totoro" (from "My Neighbor Totoro")    '
        puts'                    --- Mabel Mak                  '
    end

    # def self.spirited
    #     puts %Q(
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''',,;;;,,,''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''',:ldkO00000OOkdo:,'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''',:oOKNNNNNNNNNNNNNNXOdc,''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''',:xKNNNNNNNNNNNNNNNNNNNNXkl,''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''';dKNNNNNNNNNNNNNNNNNNNNNNNNXk:'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''':kXNNNNNNNNNNNNNNNNNNNNNNNNNNN0c''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''':OXNNNNNNNNNNNNNNNNNNNNNNNNNNNNNKl'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.,kXXNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN0:.'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''..dXXXNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNO,.''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''..c0XXNXNNXKXNNNNNNNNNNNNNNNNNXXNNNNNNNo...''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''..'xXXXXXXXxl0NNNNNNNNNNNNNNNNXodXNNNNNN0;..''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''...:0XXXXXNO,;0NXNNNNNNNNNNNNNNXc'kNNNNNNNo...'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''....oKXXXXXXo.;0NXNNNNNNNNNNNNNNKc.cKNNNNNNk'...''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''...'xXXXXXNXOxOXNXXNNNNNNNNNNNNNN0xOXNNNNNN0;....'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''....,OXXXXOo:;;:lkXXXNNNNNNNNNNN0oc:::lONNNNXc....'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.....;OXXXXx,.....oKNXXNNNNNNNNNXx'....'dXNNNXl.....''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.....;OKXXXXK0kkOKXXXXXNNNNNNNNNNNX0OO0KNNNNNXl.....''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''......;OKKXXXKdccdKXXXXXNNNNNNNNNNNXkccdKNNNXNXl......'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''..... ,kKKXXXO;..;0XXXXXXNNNNNNNNNNKc..,ONXXXNKc......'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''..... 'xKKXXX0:..;0XXXXXXXXXNNNNNXNXc..;ONXXXN0; ......''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''...... .oKKKKXKl..:0XXXXXXXXXXXXXXXNXl..cKNXXXNk' ......''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''...... .:OKKKKXk,.:0XXXXXXXXXXXXXXXNXl.'kXXXXXXo. ......''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''........ .d0KKKKKx'cKXXXXXXXXXXXXXXXXXo,dXXXXXX0; ........'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''........ .:O0KKKKKkkKXXXXXXXXXXXXXXXXX0OKXXXXXKo. ........'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.......... .o000KKKKKKKKXXXXXXXXXXXXXXXXXXXXXXXk' . ........''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.........   'x0000KKKKKkoooooooodoookKXXXKXKKKO:.  .........''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''..........   .,xO0000000o.          .lKXKKKKKKO:.   . ........'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''........      .,dO0000000kdollllloodkKKKKKKKKk:.     .........'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.........       ..lkOO000000000KKKKKKKKKKKK0Od,.       .........''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''..........         .,okOOOOO000000000000000Od:.          ..........''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''............            .,coxkkOOOOOOOOOOOOkdc,.            .............'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.............              ..',:clodddoolc:;'..               ............'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.............                     ........                      ............''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.............                                                   ............''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.............                                                   ............''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''............                                                   ...........'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''............                                                  ............'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.............                                                .............'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''....  .......                                              ........ .....'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''....     ......                                         ........   .....''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''.'''.''......    .......                                    .......      ....'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''......     .........     ...           ....     .........     ......''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.'.......... ...........',,,,'.   ....';:::,.............. .........'''''.'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ........'''''''''''''''''''''''''''''''''''''''''''''''''''''''.''................. ...';;;;:,''',;ccccc:;'........................'.''.'.''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    #     ........'''''''.........''''''''''''''''''''''''''''''..........'.................... .',,,;;;,',,'''','....... ....................'''.'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''')
    # end

end