import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/search_button.dart';

class CustomSearchTextFormField extends StatefulWidget {
  const CustomSearchTextFormField({super.key});

  @override
  State<CustomSearchTextFormField> createState() =>
      _CustomSearchTextFormFieldState();
}

class _CustomSearchTextFormFieldState extends State<CustomSearchTextFormField> {
  GlobalKey<FormState> formKey = GlobalKey();
  late String searchedText;
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        child: TextFormField(
          onSaved: (newValue) {
            searchedText = newValue!;
          },
          autovalidateMode: autovalidateMode,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Field is Required ...';
            }
            return null;
          },
          onChanged: (value) {
            setState(() {
              autovalidateMode = AutovalidateMode.onUserInteraction;
            });
          },
          cursorColor: Colors.grey,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
          ),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.8),
            ),
            fillColor: const Color.fromARGB(255, 15, 35, 60),
            filled: true,
            enabledBorder: buildTextFormFieldBorder(),
            focusedBorder: buildTextFormFieldBorder(),
            border: buildTextFormFieldBorder(),
            hintText: "Search For Your Book ",
            suffixIcon: SearchButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                }
              },
              backgroundColor: Colors.white.withOpacity(0.6),
              radius: 27.5,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildTextFormFieldBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 2, 28, 49),
      ),
      borderRadius: BorderRadius.circular(50),
    );
  }
}
