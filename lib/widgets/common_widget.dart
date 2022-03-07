import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starappemployee/constant/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CustomFormField extends StatelessWidget {
  final String headingText;
  final String hintText;
  final bool obsecureText;
  final Widget suffixIcon;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final TextEditingController controller;
  final int maxLines;

  const CustomFormField(
      {Key key,
      this.headingText,
      this.hintText,
      this.obsecureText,
      this.suffixIcon,
      this.textInputType,
      this.textInputAction,
      this.controller,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 0,
            right: 0,
            bottom: 5,
          ),
          child: Text(
            headingText,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 0, right: 0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 25,
                  offset: Offset(0, 8),
                ),
              ]),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 3.0),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              maxLines: maxLines,
              controller: controller,
              textInputAction: textInputAction,
              keyboardType: textInputType,
              obscureText: obsecureText,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.subtitle1,
                border: InputBorder.none,
                suffixIcon: suffixIcon,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  const CustomAppBar({Key key, this.title})
      : preferredSize = const Size.fromHeight(120.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      toolbarHeight: 100,
      title: Container(
        padding: const EdgeInsets.only(top: 60),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          color: appMainColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          // gradient: LinearGradient(
          //     colors: [Colors.red, Colors.pink],
          //     begin: Alignment.bottomCenter,
          //     end: Alignment.topCenter),
        ),
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }
}

class ElevatedButtonCustom extends StatelessWidget {
  final String text;
  final Function() onTap;

  const ElevatedButtonCustom({Key key, this.onTap, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 40,
        decoration: const BoxDecoration(
          color: Color(0xff0A103F),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class ElevatedSmallButtonCustom extends StatelessWidget {
  final String text;
  final Function() onTap;

  const ElevatedSmallButtonCustom({Key key, this.onTap, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 40,
        decoration: const BoxDecoration(
          color: Color(0xff0A103F),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class OutlineButtonCustom extends StatelessWidget {
  final String text;
  final Function() onTap;

  const OutlineButtonCustom({Key key, this.onTap, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: const BorderRadius.all(
          //   Radius.circular(20),
          // ),
          border: Border.all(
            width: 2.0,
            color: const Color(0xff0A103F),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: Color(0xff0A103F),
            ),
          ),
        ),
      ),
    );
  }
}

class OutlineSmallButtonCustom extends StatelessWidget {
  final String text;
  final Function() onTap;

  const OutlineSmallButtonCustom({Key key, this.onTap, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: const BorderRadius.all(
          //   Radius.circular(20),
          // ),
          border: Border.all(
            width: 2.0,
            color: const Color(0xff0A103F),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: Color(0xff0A103F),
            ),
          ),
        ),
      ),
    );
  }
}

// Indicator widget
class DotIndicator extends Decoration {
  const DotIndicator({
    this.color = Colors.white,
    this.radius = 4.0,
  });

  final Color color;
  final double radius;

  @override
  BoxPainter createBoxPainter([VoidCallback onChanged]) {
    return _DotPainter(
      color: color,
      radius: radius,
      onChange: onChanged,
    );
  }
}

class _DotPainter extends BoxPainter {
  _DotPainter({
    this.color,
    this.radius,
    VoidCallback onChange,
  })  : _paint = Paint()
          ..color = color
          ..style = PaintingStyle.fill,
        super(onChange);

  final Paint _paint;
  final Color color;
  final double radius;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);
    final Rect rect = offset & configuration.size;
    canvas.drawCircle(
      Offset(rect.bottomCenter.dx, rect.bottomCenter.dy - radius),
      radius,
      _paint,
    );
  }
}

class OutlineIndicator extends Decoration {
  const OutlineIndicator({
    // this.color = Colors.white,
    this.color = Colors.transparent,
    this.strokeWidth = 2,
    this.radius = const Radius.circular(24),
  });

  final Color color;
  final double strokeWidth;
  final Radius radius;

  @override
  BoxPainter createBoxPainter([VoidCallback onChanged]) {
    return _OutlinePainter(
      color: color,
      strokeWidth: strokeWidth,
      radius: radius,
      onChange: onChanged,
    );
  }
}

class _OutlinePainter extends BoxPainter {
  _OutlinePainter({
    this.color,
    this.strokeWidth,
    this.radius,
    VoidCallback onChange,
  })  : _paint = Paint()
          ..style = PaintingStyle.stroke
          ..color = color
          ..strokeWidth = strokeWidth,
        super(onChange);

  final Color color;
  final double strokeWidth;
  final Radius radius;
  final Paint _paint;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);
    var rect = offset & configuration.size;
    var rrect = RRect.fromRectAndRadius(rect, radius);
    canvas.drawRRect(rrect, _paint);
  }
}

// end indicator

// dropdown
class CustomDropdownButton2 extends StatelessWidget {
  final String hint;
  final String value;
  final List<String> dropdownItems;
  final ValueChanged<String> onChanged;
  final DropdownButtonBuilder selectedItemBuilder;
  final Alignment hintAlignment;
  final Alignment valueAlignment;
  final double buttonHeight, buttonWidth;
  final EdgeInsetsGeometry buttonPadding;
  final BoxDecoration buttonDecoration;
  final int buttonElevation;
  final Widget icon;
  final double iconSize;
  final Color iconEnabledColor;
  final Color iconDisabledColor;
  final double itemHeight;
  final EdgeInsetsGeometry itemPadding;
  final double dropdownHeight, dropdownWidth;
  final EdgeInsetsGeometry dropdownPadding;
  final BoxDecoration dropdownDecoration;
  final int dropdownElevation;
  final Radius scrollbarRadius;
  final double scrollbarThickness;
  final bool scrollbarAlwaysShow;
  final Offset offset;

  const CustomDropdownButton2({
    this.hint,
    this.value,
    this.dropdownItems,
    this.onChanged,
    this.selectedItemBuilder,
    this.hintAlignment,
    this.valueAlignment,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    this.buttonDecoration,
    this.buttonElevation,
    this.icon,
    this.iconSize,
    this.iconEnabledColor,
    this.iconDisabledColor,
    this.itemHeight,
    this.itemPadding,
    this.dropdownHeight,
    this.dropdownWidth,
    this.dropdownPadding,
    this.dropdownDecoration,
    this.dropdownElevation,
    this.scrollbarRadius,
    this.scrollbarThickness,
    this.scrollbarAlwaysShow,
    this.offset,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        //To avoid long text overflowing.
        isExpanded: true,
        hint: Container(
          alignment: hintAlignment,
          child: Text(
            hint,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
        value: value,
        items: dropdownItems
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Container(
                    alignment: valueAlignment,
                    child: Text(
                      item,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ))
            .toList(),
        onChanged: onChanged,
        selectedItemBuilder: selectedItemBuilder,
        icon: icon ?? const Icon(Icons.arrow_forward_ios_outlined),
        iconSize: iconSize ?? 12,
        iconEnabledColor: iconEnabledColor,
        iconDisabledColor: iconDisabledColor,
        buttonHeight: buttonHeight ?? 40,
        buttonWidth: buttonWidth ?? 140,
        buttonPadding:
            buttonPadding ?? const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: buttonDecoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: Colors.black45,
              ),
            ),
        buttonElevation: buttonElevation,
        itemHeight: itemHeight ?? 40,
        itemPadding: itemPadding ?? const EdgeInsets.only(left: 14, right: 14),
        //Max height for the dropdown menu & becoming scrollable if there are more items. If you pass Null it will take max height possible for the items.
        dropdownMaxHeight: dropdownHeight ?? 200,
        dropdownWidth: dropdownWidth ?? 140,
        dropdownPadding: dropdownPadding,
        dropdownDecoration: dropdownDecoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(14),
            ),
        dropdownElevation: dropdownElevation ?? 8,
        scrollbarRadius: scrollbarRadius ?? const Radius.circular(40),
        scrollbarThickness: scrollbarThickness,
        scrollbarAlwaysShow: scrollbarAlwaysShow,
        //Null or Offset(0, 0) will open just under the button. You can edit as you want.
        offset: offset,
        dropdownOverButton: false, //Default is false to show menu below button
      ),
    );
  }
}
// end dropdown
