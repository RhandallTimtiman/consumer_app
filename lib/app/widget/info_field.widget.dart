import 'package:flutter/material.dart';

class InfoField extends StatefulWidget {
  final String label;
  final String? initialValue;
  final bool obscureText;
  final String hint;
  final bool isEnabled;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isPassword;
  final VoidCallback? callback;
  final bool readonly;
  final TextEditingController? controller;
  final String? errorText;
  final bool isRequired;
  final Function? validator;
  final String? responseValidator;

  const InfoField({
    Key? key,
    required this.label,
    this.initialValue,
    required this.obscureText,
    required this.hint,
    required this.isEnabled,
    this.prefixIcon,
    this.isPassword = false,
    this.callback,
    this.suffixIcon,
    this.readonly = false,
    this.controller,
    this.errorText,
    this.isRequired = false,
    this.validator,
    this.responseValidator,
  }) : super(key: key);

  @override
  State<InfoField> createState() => _InfoFieldState();
}

class _InfoFieldState extends State<InfoField> {
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
          style: const TextStyle(
            fontSize: 12,
          ),
          obscureText: widget.obscureText,
          validator: (text) {
            if (widget.isRequired && (text == null || text.isEmpty)) {
              return 'This field is required';
            }
            if (widget.validator != null && widget.validator!(text)) {
              return widget.responseValidator;
            }
            return null;
          },
          // cursorColor: const Color.fromRGBO(
          //   73,
          //   130,
          //   61,
          //   1,
          // ),
          controller: widget.controller,
          readOnly: widget.readonly,
          decoration: InputDecoration(
            contentPadding: widget.prefixIcon == null
                ? const EdgeInsets.only(top: 15, left: 45.0, bottom: 8)
                : const EdgeInsets.only(top: 15, left: 20),
            counterText: "",
            filled: true,
            fillColor: Colors.white,
            hintText: widget.hint,
            hintStyle: const TextStyle(
              fontSize: 11,
              color: Colors.grey,
            ),
            prefixIcon: widget.prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      widget.prefixIcon,
                      // size: 20,
                      color: const Color.fromRGBO(
                        73,
                        130,
                        61,
                        1,
                      ),
                    ),
                  )
                : null,
            prefixIconConstraints: const BoxConstraints(
              maxHeight: 30,
            ),
            suffixIcon: widget.isPassword
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: IconTheme(
                      data: const IconThemeData(
                        color: Color.fromRGBO(
                          73,
                          130,
                          61,
                          1,
                        ),
                      ),
                      child: IconButton(
                        icon: Icon(
                          widget.obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: widget.callback,
                      ),
                    ),
                  )
                : widget.suffixIcon != null
                    ? IconButton(
                        icon: Icon(
                          widget.suffixIcon,
                        ),
                        onPressed: widget.callback,
                      )
                    : null,
          ),
          enabled: widget.isEnabled,
        ),
      ],
    );
  }
}
