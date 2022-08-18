import 'package:flutter/material.dart';

class DateField extends StatefulWidget {
  final String label;
  final String? initialValue;
  final String hint;
  final bool isEnabled;
  final IconData? prefixIcon;
  final bool isPassword;
  final VoidCallback? callback;
  const DateField({
    Key? key,
    required this.label,
    this.initialValue,
    required this.hint,
    required this.isEnabled,
    this.prefixIcon,
    this.isPassword = false,
    this.callback,
  }) : super(key: key);

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 11,
          ),
        ),
        TextFormField(
          textInputAction: TextInputAction.next,
          initialValue: widget.initialValue,
          style: const TextStyle(
            fontSize: 12,
          ),
          obscureText: false,

          // cursorColor: const Color.fromRGBO(
          //   73,
          //   130,
          //   61,
          //   1,
          // ),
          readOnly: true,
          onTap: widget.callback,
          decoration: InputDecoration(
            isDense: false,
            counterText: "",
            filled: true,
            fillColor: Colors.white,
            hintText: widget.hint,
            hintStyle: const TextStyle(
              fontSize: 11,
              color: Colors.grey,
            ),
            prefixIcon: widget.prefixIcon != null
                ? Icon(
                    widget.prefixIcon,
                    // size: 20,
                    color: const Color.fromRGBO(
                      73,
                      130,
                      61,
                      1,
                    ),
                  )
                : null,
            suffixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: IconTheme(
                data: IconThemeData(
                  color: Color.fromRGBO(
                    73,
                    130,
                    61,
                    1,
                  ),
                ),
                child: Icon(Icons.calendar_month),
              ),
            ),
          ),
          // enabled: widget.isEnabled,
        ),
      ],
    );
  }
}
