import re


def hex_to_rgba_string(hex_color):
    hex_color = hex_color.lstrip('#')
    if len(hex_color) == 6:
        hex_color += 'ff'
    return f"rgba({hex_color})"

def convert_colors(input_file, output_file, wallpaper_file):
    with open(wallpaper_file, 'r') as f:
        wallpaper_path = f.readline().strip()
    
    with open(input_file, 'r') as f:
        lines = f.readlines()
    
    color_mapping = {}
    for line in lines:
        match = re.match(r'(\w+)\s+#([0-9a-fA-F]{6})', line)
        if match:
            color_name = match.group(1)
            hex_color = match.group(2)
            color_mapping[color_name] = hex_to_rgba_string(hex_color)
    
    hyprland_template = """
$wallpaper = {wallpaper}
$background = {background}
$foreground = {foreground}
$cursor = {cursor}
$color0 = {color0}
$color1 = {color1}
$color2 = {color2}
$color3 = {color3}
$color4 = {color4}
$color5 = {color5}
$color6 = {color6}
$color7 = {color7}
$color8 = {color8}
$color9 = {color9}
$color10 = {color10}
$color11 = {color11}
$color12 = {color12}
$color13 = {color13}
$color14 = {color14}
$color15 = {color15}
"""

    hyprland_colors = hyprland_template.format(
        wallpaper=wallpaper_path,
        background=color_mapping['background'],
        foreground=color_mapping['foreground'],
        cursor=color_mapping['cursor'],
        color0=color_mapping['color0'],
        color1=color_mapping['color1'],
        color2=color_mapping['color2'],
        color3=color_mapping['color3'],
        color4=color_mapping['color4'],
        color5=color_mapping['color5'],
        color6=color_mapping['color6'],
        color7=color_mapping['color7'],
        color8=color_mapping['color8'],
        color9=color_mapping['color9'],
        color10=color_mapping['color10'],
        color11=color_mapping['color11'],
        color12=color_mapping['color12'],
        color13=color_mapping['color13'],
        color14=color_mapping['color14'],
        color15=color_mapping['color15']
    )

    with open(output_file, 'w') as f:
        f.write(hyprland_colors)

input_file = '/home/jake/.cache/wal/colors-kitty.conf'
output_file = '/home/jake/.config/wal/templates/colors-hyprland.conf'
wallpaper_file = '/home/jake/.cache/wal/wal'

convert_colors(input_file, output_file, wallpaper_file)
