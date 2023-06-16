import 'package:flutter/material.dart';
import 'package:tr_new/main.dart';
// import 'package:tr/status.dart';
// import 'package:tr/colorpalette.dart';
// import 'package:tr/data.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MaterialApp(
    home: ColorCodeDark(),
  ));
}

class ColorCodeDark extends StatefulWidget {
  const ColorCodeDark({super.key});

  @override
  State<ColorCodeDark> createState() => _ColorCodeDarkState();
}

class _ColorCodeDarkState extends State<ColorCodeDark> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      padding: EdgeInsets.all(6),
      children: <Widget>[
        Container(
          height: 30,
          color: const Color.fromARGB(255, 128, 0, 0),
          child: const Center(
            child: AutoSizeText(
              "Maroon (128, 0, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 139, 0, 0),
          child: const Center(
            child: AutoSizeText(
              "Dark Red (139, 0, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 165, 42, 42),
          child: const Center(
            child: AutoSizeText(
              "Brown (165, 42, 42)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 178, 34, 34),
          child: const Center(
            child: AutoSizeText(
              "Fire Brick (178, 34, 34)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 220, 20, 60),
          child: const Center(
            child: AutoSizeText(
              "Crimson (220, 20, 60)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 0, 0),
          child: const Center(
            child: AutoSizeText(
              "Red (255, 0, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 205, 92, 92),
          child: const Center(
            child: AutoSizeText(
              "Indian Red (205, 92, 92)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 69, 0),
          child: const Center(
            child: AutoSizeText(
              "Orange Red (255, 69, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 140, 0),
          child: const Center(
            child: AutoSizeText(
              "Dark Orange (255, 140, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 165, 0),
          child: const Center(
            child: AutoSizeText(
              "Fire Brick (255, 165, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 184, 134, 11),
          child: const Center(
            child: AutoSizeText(
              "Dark Gold Rod (184, 134, 11)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 218, 165, 32),
          child: const Center(
            child: AutoSizeText(
              "Golden Rod (218, 165, 32)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 128, 128, 0),
          child: const Center(
            child: AutoSizeText(
              "Olive (128, 128, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 85, 107, 47),
          child: const Center(
            child: AutoSizeText(
              "Dark Olive Green (85, 107, 47)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 107, 142, 35),
          child: const Center(
            child: AutoSizeText(
              "Olive Drab (107, 142, 35)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 100, 0),
          child: const Center(
            child: AutoSizeText(
              "Dark Green (0, 100, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 128, 0),
          child: const Center(
            child: AutoSizeText(
              "Green (0, 128, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 34, 139, 34),
          child: const Center(
            child: AutoSizeText(
              "Forest Green (34, 139, 34)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 178, 34, 34),
          child: const Center(
            child: AutoSizeText(
              "Dark Sea Green (143, 188, 143)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 46, 139, 87),
          child: const Center(
            child: AutoSizeText(
              "Sea Green (46, 139, 87)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 102, 205, 170),
          child: const Center(
            child: AutoSizeText(
              "Medium Aquamarine (102, 205, 170)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 60, 179, 113),
          child: const Center(
            child: AutoSizeText(
              "Medium Sea Green (60, 179, 113)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 178, 34, 34),
          child: const Center(
            child: AutoSizeText(
              "Light Sea Green (32, 178, 170)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 47, 79, 79),
          child: const Center(
            child: AutoSizeText(
              "Dark Slate Gray (47, 79, 79)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 128, 128, 0),
          child: const Center(
            child: AutoSizeText(
              "Teal (128, 128, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 139, 139),
          child: const Center(
            child: AutoSizeText(
              "Dark Cyan (0, 139, 139)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 206, 209),
          child: const Center(
            child: AutoSizeText(
              "Dark Turquoise (0, 206, 209)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 79, 204, 206),
          child: const Center(
            child: AutoSizeText(
              "Fire Brick (79, 204, 206)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 95, 158, 160),
          child: const Center(
            child: AutoSizeText(
              "Cadet Blue (95, 158, 160)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 70, 130, 180),
          child: const Center(
            child: AutoSizeText(
              "Steel Blue (70, 130, 180)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 100, 149, 237),
          child: const Center(
            child: AutoSizeText(
              "Corn Flower Blue (100, 149, 237)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 191, 255),
          child: const Center(
            child: AutoSizeText(
              "Deep Sky Blue (0, 191, 255)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 30, 144, 255),
          child: const Center(
            child: AutoSizeText(
              "Dodger Blue (30, 144, 255)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 25, 25, 112),
          child: const Center(
            child: AutoSizeText(
              "Midnight Blue (25, 25, 112)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 0, 128),
          child: const Center(
            child: AutoSizeText(
              "Navy (0, 0, 128)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 0, 139),
          child: const Center(
            child: AutoSizeText(
              "Dark Blue (0, 0, 139)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 0, 205),
          child: const Center(
            child: AutoSizeText(
              "Medium Blue (0, 0, 205)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 0, 255),
          child: const Center(
            child: AutoSizeText(
              "Blue (0, 0, 255)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 65, 105, 205),
          child: const Center(
            child: AutoSizeText(
              "Royal Blue (65, 105, 205)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 138, 43, 226),
          child: const Center(
            child: AutoSizeText(
              "Blue Violet (138, 43, 226)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 75, 0, 130),
          child: const Center(
            child: AutoSizeText(
              "Indigo (75, 0, 130)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 72, 61, 139),
          child: const Center(
            child: AutoSizeText(
              "Dark Slate Blue (72, 61, 139)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 106, 90, 205),
          child: const Center(
            child: AutoSizeText(
              "Slate Blue (106, 90, 205)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 123, 104, 238),
          child: const Center(
            child: AutoSizeText(
              "Medium Slate Blue (123, 104, 238)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 147, 112, 219),
          child: const Center(
            child: AutoSizeText(
              "Medium Purple (147, 112, 219)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 139, 0, 139),
          child: const Center(
            child: AutoSizeText(
              "Dark Magenta (139, 0, 139)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 148, 0, 211),
          child: const Center(
            child: AutoSizeText(
              "Dark Violet (148, 0, 211)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 153, 50, 204),
          child: const Center(
            child: AutoSizeText(
              "Dark Orchid (153, 50, 204)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 186, 85, 211),
          child: const Center(
            child: AutoSizeText(
              "Medium Orchid (186, 85, 211)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 128, 0, 128),
          child: const Center(
            child: AutoSizeText(
              "Purple (128, 0, 128)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 0, 255),
          child: const Center(
            child: AutoSizeText(
              "Magenta (255, 0, 255)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 218, 112, 214),
          child: const Center(
            child: AutoSizeText(
              "Orchid (218, 112, 214)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 199, 21, 122),
          child: const Center(
            child: AutoSizeText(
              "Medium Violet Red (199, 21, 133)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 219, 112, 147),
          child: const Center(
            child: AutoSizeText(
              "Pale Violet Red (219, 112, 147)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 20, 147),
          child: const Center(
            child: AutoSizeText(
              "Deep Pink (255, 20, 147)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 255, 105, 180),
          child: const Center(
            child: AutoSizeText(
              "Hot Pink (255, 105, 180)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 139, 69, 19),
          child: const Center(
            child: AutoSizeText(
              "Saddle Brown (139, 69, 19)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 160, 82, 45),
          child: const Center(
            child: AutoSizeText(
              "Sienna (160, 82, 45)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 210, 105, 30),
          child: const Center(
            child: AutoSizeText(
              "Chocolate (210, 105, 30)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 205, 133, 63),
          child: const Center(
            child: AutoSizeText(
              "Peru (205, 133, 63)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 244, 164, 96),
          child: const Center(
            child: AutoSizeText(
              "Sandy Brown (244, 164, 96)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 222, 184, 135),
          child: const Center(
            child: AutoSizeText(
              "Burly Wood (222, 184, 135)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 210, 180, 140),
          child: const Center(
            child: AutoSizeText(
              "Tan (210, 180, 140)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 188, 143, 143),
          child: const Center(
            child: AutoSizeText(
              "Rosy Brown (188, 143, 143)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 112, 128, 144),
          child: const Center(
            child: AutoSizeText(
              "Slate Gray (112, 128, 144)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 119, 136, 153),
          child: const Center(
            child: AutoSizeText(
              "Light Slate Gray (119, 136, 153)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 176, 196, 222),
          child: const Center(
            child: AutoSizeText(
              "Light Steel Blue (176, 196, 222)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 0, 0, 0),
          child: const Center(
            child: AutoSizeText(
              "Black (0, 0, 0)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 105, 105, 105),
          child: const Center(
            child: AutoSizeText(
              "Dim Gray (105, 105, 105)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 128, 128, 128),
          child: const Center(
            child: AutoSizeText(
              "Gray (128, 128, 128)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 169, 169, 169),
          child: const Center(
            child: AutoSizeText(
              "Dark Gray (169, 169, 169)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          color: const Color.fromARGB(255, 192, 192, 192),
          child: const Center(
            child: AutoSizeText(
              "Silver (192, 192, 192)",
              minFontSize: 0,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'dancing',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
