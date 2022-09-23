import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:flutter/material.dart';

class InfoField extends StatefulWidget {
  final String label;
  final String? initialValue;
  final bool obscureText;
  final String? hint;
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
    this.hint,
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
            color: Colors.black,
          ),
        ),
        TextFormField(
          textInputAction: TextInputAction.next,
          style: TextStyle(
            fontSize: 12,
            color: widget.isEnabled ? Colors.black : Colors.grey.shade600,
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
          minLines: 1,
          maxLines: widget.obscureText ? 1 : 2,
          readOnly: widget.readonly,
          decoration: InputDecoration(
            isDense: widget.prefixIcon == null,
            contentPadding: widget.prefixIcon == null
                ? const EdgeInsets.only(top: 10, left: 45.0, bottom: 8)
                : const EdgeInsets.only(top: 10, left: 20),
            counterText: "",
            filled: true,
            fillColor: Colors.white,
            hintText: widget.hint ?? '',
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
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                : null,
            prefixIconConstraints: BoxConstraints(
              maxHeight: Screen.height(context) * 0.02,
            ),
            suffixIcon: widget.isPassword
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: IconTheme(
                      data: IconThemeData(
                        color: Theme.of(context).primaryColor,
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
                : widget.isEnabled && widget.suffixIcon != null
                    ? IconButton(
                        icon: Icon(
                          widget.suffixIcon,
                        ),
                        onPressed: widget.callback,
                      )
                    : null,
            suffixIconConstraints: BoxConstraints(
              maxHeight: Screen.height(context) * 0.02,
            ),
          ),
          enabled: widget.isEnabled,
        ),
      ],
    );
  }
}
