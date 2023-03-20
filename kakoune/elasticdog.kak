evaluate-commands %sh{
    # ------------------------- white
    base00="rgb:edeeef" # ----  background
    base01="rgb:e0e1e1" # ---
    base02="rgb:d3d4d4" # --
    base03="rgb:c6c7c7" # -     light gray
    base04="rgb:a0a1a7" # +     dark gray
    base05="rgb:7c7e85" # ++
    base06="rgb:595e64" # +++
    base07="rgb:393f46" # ++++  foreground
    # +++++++++++++++++++++++++ black

    black="rgb:1b2229"
    black_bright="rgb:a0a1a7"   # dark gray
    red="rgb:e45649"
    red_bright="rgb:dd8844"     # orange
    green="rgb:50a14f"
    green_bright="rgb:44b9b1"   # turquoise
    yellow="rgb:c5a332"
    yellow_bright="rgb:c0d9f2"  # baby blue
    blue="rgb:275fe4"
    blue_bright="rgb:0098dd"
    magenta="rgb:a626a4"
    magenta_bright="rgb:823ff1" # violet
    cyan="rgb:005478"
    cyan_bright="rgb:0078ab"
    white="rgb:c6c7c7"          # light gray
    white_bright="rgb:fafbfc"   # white

    ## code
    echo "
        face global value ${red}
        face global type ${red_bright}
        face global variable ${base07}
        face global module ${blue}
        face global function ${cyan_bright}
        face global string ${green}
        face global keyword ${magenta}
        face global operator ${blue_bright}
        face global attribute ${cyan}
        face global comment ${base04}+i
        face global meta ${magenta_bright}
        face global builtin ${red}+b
    "

    ## markup
    echo "
        face global title ${magenta}+b
        face global header ${magenta}+b
        face global bold default+b
        face global italic default+i
        face global mono ${green}
        face global block ${green}
        face global link ${blue}
        face global bullet ${base07}+b
        face global list ${base07}+b
    "

    ## builtin
    echo "
        face global Default ${base07},default
        face global PrimarySelection ${base06},${yellow_bright}+fg
        face global SecondarySelection ${base05},${base01}+fg
        face global PrimaryCursor ${base00},${blue_bright}+fg
        face global SecondaryCursor ${base05},${yellow_bright}+fg
        face global PrimaryCursorEol ${base03},${blue_bright}+fg
        face global SecondaryCursorEol ${base01},${base03}+fg
        face global MenuForeground ${base00},${cyan}
        face global MenuBackground ${base05},${base01}
        face global MenuInfo ${base02},default
        face global Information ${base04},${base01}
        face global Error ${base00},${red}
        face global DiagnosticError ${red}
        face global DiagnosticWarning ${yellow}
        face global StatusLine ${base05},${base01}
        face global StatusLineMode ${green},default
        face global StatusLineInfo ${magenta_bright},default
        face global StatusLineValue ${cyan},default
        face global StatusCursor ${base01},${blue_bright}
        face global Prompt ${cyan_bright},${base01}
        face global BufferPadding ${base01},default
        face global LineNumbers ${base03},default
        face global LineNumberCursor ${base04},default+b
        face global LineNumbersWrapped ${base04},default+i
        face global MatchingChar default,${base01}+b
        face global Whitespace ${base01},default+f
        face global WrapMarker ${base03}
    "
}
