import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelect, required this.color});
  final bool isSelect;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelect
        ? CircleAvatar(
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 38,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 34,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentindex = 0;
  List<Color> colors = [
    const Color(0xff433A3F),
    const Color(0xff3D5A6C),
    const Color(0xff72A98F),
    const Color(0xff8DE969),
    const Color(0xffCBEF43),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isSelect: currentindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
