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
      width: double.infinity,
      child: TextField(
        autofocus: autoFocus,
        controller: controller,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17.5),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(10.0, 1.0, 5.0, 0.0),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(13),
            child: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          suffix: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              height: 30,
              child: FilledButton(
                onPressed: () {
                  onSubmitted?.call(controller?.value.text ?? '');
                },
                style: FilledButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                child: const Text('Go'),
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17.5),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          labelStyle: const TextStyle(
            color: AppColors.lightBlack,
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
