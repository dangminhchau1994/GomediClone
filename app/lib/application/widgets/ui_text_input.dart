import 'package:flutter/material.dart';

class UITextInput extends StatefulWidget {
  const UITextInput({
    super.key,
    this.title,
    this.textHint,
    this.editingController,
    this.onChanged,
    this.validator,
    this.isPasswordType = false,
    this.isEditType = false,
  });

  final TextEditingController? editingController;
  final Function(String value)? onChanged;
  final String? Function(String value)? validator;
  final String? title;
  final String? textHint;
  final bool? isPasswordType;
  final bool? isEditType;

  @override
  State<UITextInput> createState() => _UITextInputState();
}

class _UITextInputState extends State<UITextInput> {
  var _passwordVisible = false;

  Widget _suffixIcon() {
    if (widget.isEditType == true) {
      return IconButton(
        icon: const Icon(
          Icons.edit,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
    } else if (widget.isPasswordType == true) {
      return IconButton(
        icon: Icon(
          _passwordVisible ? Icons.visibility : Icons.visibility_off,
          color: Colors.black,
        ),
        onPressed: () {
          setState(() {
            _passwordVisible = !_passwordVisible;
          });
        },
      );
    } else {
      return const SizedBox(width: 20);
    }
  }

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
            hintText: widget.textHint,
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey,
                  fontSize: 14,
                ),
            suffixIcon: _suffixIcon(),
          ),
        ),
      ],
    );
  }
}
