import 'package:flutter/material.dart';
import 'package:tr_new/main.dart';
// import 'package:tr/status.dart';
// import 'package:tr/colorpalette.dart';
// import 'package:tr/data.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MaterialApp(
    home: ColorCodeLight(),
  ));
}

class ColorCodeLight extends StatefulWidget {
  const ColorCodeLight({super.key});

  @override
  State<ColorCodeLight> createState() => _ColorCodeLightState();
}

class _ColorCodeLightState extends State<ColorCodeLight> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      padding: EdgeInsets.all(6),
      children: <Widget>[
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 99, 71),
          child: const Center(
            child: AutoSizeText(
              "Tomato (255, 99, 71)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 127, 80),
          child: const Center(
            child: AutoSizeText(
              "Coral (255, 127, 80)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 240, 128, 128),
          child: const Center(
            child: AutoSizeText(
              "Light Coral (240, 128, 128)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 233, 150, 122),
          child: const Center(
            child: AutoSizeText(
              "Dark Salmon (233, 150, 122)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 250, 128, 114),
          child: const Center(
            child: AutoSizeText(
              "Salmon (250, 128, 114)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 160, 122),
          child: const Center(
            child: AutoSizeText(
              "Light Salmon (255, 160, 122)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 215, 0),
          child: const Center(
            child: AutoSizeText(
              "Gold (255, 215, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 238, 232, 170),
          child: const Center(
            child: AutoSizeText(
              "Pale Golden Rod (238, 232, 170)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 189, 183, 107),
          child: const Center(
            child: AutoSizeText(
              "Dark Khaki (189, 183, 107)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 240, 230, 140),
          child: const Center(
            child: AutoSizeText(
              "Khaki (240, 230, 140)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 255, 0),
          child: const Center(
            child: AutoSizeText(
              "Yellow (255, 255, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 154, 205, 50),
          child: const Center(
            child: AutoSizeText(
              "Yellow Green (154, 205, 50)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 124, 252, 0),
          child: const Center(
            child: AutoSizeText(
              "Lawn Green (124, 252, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 127, 255, 0),
          child: const Center(
            child: AutoSizeText(
              "Chartreuse (127, 255, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 173, 255, 47),
          child: const Center(
            child: AutoSizeText(
              "Green Yellow (173, 255, 47)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 160, 122),
          child: const Center(
            child: AutoSizeText(
              "Lime (0, 255, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 50, 205, 50),
          child: const Center(
            child: AutoSizeText(
              "Lime Green (50, 205, 50)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 144, 238, 144),
          child: const Center(
            child: AutoSizeText(
              "Light Green (144, 238, 144)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 152, 251, 152),
          child: const Center(
            child: AutoSizeText(
              "Pale Green (152, 251, 152)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 250, 154),
          child: const Center(
            child: AutoSizeText(
              "Medium Spring Green (0, 250, 154)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 255, 127),
          child: const Center(
            child: AutoSizeText(
              "Spring Green (0, 255, 127)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 255, 255),
          child: const Center(
            child: AutoSizeText(
              "Aqua/Cyan (0, 255, 255)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 224, 255, 225),
          child: const Center(
            child: AutoSizeText(
              "Light Cyan (224, 255, 225)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 64, 224, 208),
          child: const Center(
            child: AutoSizeText(
              "Turquiose (64, 224, 208)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 175, 238, 238),
          child: const Center(
            child: AutoSizeText(
              "Pale Turquiose (175, 238, 238)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 127, 255, 212),
          child: const Center(
            child: AutoSizeText(
              "Aquamarine (127, 255, 212)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 176, 224, 230),
          child: const Center(
            child: AutoSizeText(
              "Powder Blue (176, 224, 230)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 173, 216, 230),
          child: const Center(
            child: AutoSizeText(
              "Light Blue (173, 216, 230)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 135, 206, 235),
          child: const Center(
            child: AutoSizeText(
              "Sky Blue (135, 206, 235)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 135, 206, 250),
          child: const Center(
            child: AutoSizeText(
              "Light Sky Blue (135, 206, 250)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 216, 191, 216),
          child: const Center(
            child: AutoSizeText(
              "Thistle (216, 191, 216)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 221, 160, 221),
          child: const Center(
            child: AutoSizeText(
              "Plum (221, 160, 221)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 238, 130, 238),
          child: const Center(
            child: AutoSizeText(
              "Violet (238, 130, 238)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 182, 193),
          child: const Center(
            child: AutoSizeText(
              "Light Pink (255, 182, 193)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 192, 203),
          child: const Center(
            child: AutoSizeText(
              "Pink (255, 192, 203)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 250, 235, 215),
          child: const Center(
            child: AutoSizeText(
              "Antique White (250, 235, 215)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 245, 245, 220),
          child: const Center(
            child: AutoSizeText(
              "Beige (245, 245, 220)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 228, 196),
          child: const Center(
            child: AutoSizeText(
              "Bisque (255, 228, 196)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 235, 205),
          child: const Center(
            child: AutoSizeText(
              "Blanched Almond (255, 235, 205)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 135, 206, 235),
          child: const Center(
            child: AutoSizeText(
              "Sky Blue (135, 206, 235)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 245, 222, 179),
          child: const Center(
            child: AutoSizeText(
              "Wheat (245, 222, 179)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 225, 248, 220),
          child: const Center(
            child: AutoSizeText(
              "Corn Silk (255, 248, 220)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 250, 205),
          child: const Center(
            child: AutoSizeText(
              "Lemon Chiffon (255, 250, 205)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 250, 250, 210),
          child: const Center(
            child: AutoSizeText(
              "Light Golden Rod Yellow (250, 250, 210)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 255, 224),
          child: const Center(
            child: AutoSizeText(
              "Light Yellow (255, 255, 224)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 228, 181),
          child: const Center(
            child: AutoSizeText(
              "Mocassin (255, 228, 181)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 222, 173),
          child: const Center(
            child: AutoSizeText(
              "Navajo White (255, 222, 173)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 218, 185),
          child: const Center(
            child: AutoSizeText(
              "Peach Puff (255, 218, 185)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 228, 225),
          child: const Center(
            child: AutoSizeText(
              "Misty Rose (255, 228, 225)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 240, 245),
          child: const Center(
            child: AutoSizeText(
              "Lavender Blush (255, 240, 245)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 250, 240, 230),
          child: const Center(
            child: AutoSizeText(
              "Linen (250, 240, 230)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 253, 245, 230),
          child: const Center(
            child: AutoSizeText(
              "Old Lace (253, 245, 230)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 239, 213),
          child: const Center(
            child: AutoSizeText(
              "Papaya Whip (255, 239, 213)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 245, 238),
          child: const Center(
            child: AutoSizeText(
              "Sea Shell (255, 245, 238)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 245, 255, 250),
          child: const Center(
            child: AutoSizeText(
              "Mint Cream (245, 255, 250)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 230, 230, 250),
          child: const Center(
            child: AutoSizeText(
              "Lavender (230, 230, 250)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 250, 240),
          child: const Center(
            child: AutoSizeText(
              "Floral White (255, 250, 240)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 240, 248, 255),
          child: const Center(
            child: AutoSizeText(
              "Alice Blue (240, 248, 255)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 248, 248, 255),
          child: const Center(
            child: AutoSizeText(
              "Ghost White (248, 248, 255)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 240, 255, 240),
          child: const Center(
            child: AutoSizeText(
              "Honey Dew (240, 255, 240)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 255, 240),
          child: const Center(
            child: AutoSizeText(
              "Ivory (255, 255, 240)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 240, 255, 255),
          child: const Center(
            child: AutoSizeText(
              "Azure (240, 255, 255)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 250, 250),
          child: const Center(
            child: AutoSizeText(
              "Snow (255, 250, 250)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 211, 2211, 211),
          child: const Center(
            child: AutoSizeText(
              "Light Gray (211, 211, 211)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 220, 220, 220),
          child: const Center(
            child: AutoSizeText(
              "Gainsboro (220, 220, 220)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 245, 245, 245),
          child: const Center(
            child: AutoSizeText(
              "White Smoke (245, 245, 245)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: const Center(
            child: AutoSizeText(
              "White (255, 255, 255)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
