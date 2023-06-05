import 'package:app/application/theme/ui_color.dart';
import 'package:flutter/material.dart';

class UITextInput extends StatefulWidget {
  const UITextInput({
    super.key,
    this.title,
    this.editingController,
    this.onChanged,
    this.validator,
    this.isPasswordType,
  });

  final TextEditingController? editingController;
  final Function(String value)? onChanged;
  final String? Function(String value)? validator;
  final String? title;
  final bool? isPasswordType;

  @override
  State<UITextInput> createState() => _UITextInputState();
}

class _UITextInputState extends State<UITextInput> {
  var _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title ?? '',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        TextFormField(
          controller: widget.editingController,
          onChanged: (value) {
            widget.onChanged!(value);
          },
          validator: (value) => widget.validator!(value ?? ''),
          obscureText: _passwordVisible,
          decoration: InputDecoration(
            suffixIcon: Visibility(
              visible: widget.isPasswordType ?? false,
              child: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
