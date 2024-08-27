import 'package:flutter/material.dart';
import 'package:infinite_weather/config/style/app_colors.dart';

class SearchField extends StatelessWidget {
  const SearchField(
      {super.key,
      required this.onChanged,
      this.decoration,
      this.style,
      required this.hintText,
      this.controller,
      this.onSubmitted,
      this.onTap,
      this.autoFocus = false});

  final TextEditingController? controller;
  final Function(String) onChanged;
  final void Function(String)? onSubmitted;
  final InputDecoration? decoration;
  final TextStyle? style;
  final String hintText;
  final void Function()? onTap;
  final bool autoFocus;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: TextField(
        autofocus: autoFocus,
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.darkGrey,
          isDense: true,
          contentPadding: const EdgeInsets.fromLTRB(10.0, 1.0, 5.0, 0.0),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(13),
            child: Icon(Icons.search),
            // child: SvgPicture.asset(
            //   "assets/search_icon.svg",
            //   colorFilter:
            //   ColorFilter.mode(Theme.of(context).primaryColor, BlendMode.srcIn),
            // ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17.5),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          labelStyle: const TextStyle(
            color: AppColors.darkGrey,
          ),
          hintStyle: const TextStyle(fontSize: 17, color: AppColors.darkGrey, fontWeight: FontWeight.normal),
          hintText: hintText,
        ),
        textInputAction: TextInputAction.search,
        style: const TextStyle(),
        onChanged: (text) {
          onChanged(text);
        },
        onTap: onTap,
        onSubmitted: onSubmitted,
      ),
    );
  }
}
