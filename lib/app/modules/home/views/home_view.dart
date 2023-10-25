import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 388,
                height: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffebf4eb)),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                          width: 54,
                          height: 54,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffd9e9d9)))
                    ],
                  )
                ]),
              ),
              const SizedBox(
                height: 30,
              ),
              AfroTextFieldInput(),
              const SizedBox(
                height: 30,
              ),
              AfroLevelFieald(),
              const SizedBox(
                height: 30,
              ),
              AfroLanguageCheckField(),
              const SizedBox(
                height: 30,
              ),
              AfroCkeckField(),
              const SizedBox(
                height: 10,
              ),
              AfroCkeckField(
                isSelected: true,
              ),
              const SizedBox(
                height: 30,
              ),
              AfroPrimaryButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class AfroTextFieldInput extends StatelessWidget {
  const AfroTextFieldInput(
      {super.key,
      this.title,
      this.hintText,
      this.onChanged,
      this.controller,
      this.onTap,
      this.onSubmitted,
      this.obscureText = false,
      this.keyboardType,
      this.keyboardAppearance,
      this.obscuringCharacter = '•',
      this.autofocus = false,
      this.expands = false,
      this.maxLines = 1,
      this.minLines,
      this.readOnly = false,
      this.undoController,
      this.onAppPrivateCommand,
      this.onEditingComplete,
      this.maxLength,
      this.focusNode,
      this.magnifierConfiguration,
      this.enableSuggestions = true,
      this.prefix,
      this.prefixIcon,
      this.prefixText,
      this.prefixIconConstraints,
      this.suffix,
      this.suffixIcon,
      this.suffixText,
      this.suffixIconConstraints});
  final String? title;
  final String? hintText;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final void Function()? onTap;
  final void Function(String)? onSubmitted;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Brightness? keyboardAppearance;
  final String obscuringCharacter;
  final bool autofocus;
  final bool expands;
  final int? maxLines;
  final int? minLines;
  final bool readOnly;
  final UndoHistoryController? undoController;
  final void Function(String, Map<String, dynamic>)? onAppPrivateCommand;
  final void Function()? onEditingComplete;
  final int? maxLength;
  final FocusNode? focusNode;
  final TextMagnifierConfiguration? magnifierConfiguration;
  final bool enableSuggestions;
  final Widget? prefix;
  final Widget? prefixIcon;
  final String? prefixText;
  final BoxConstraints? prefixIconConstraints;
  final Widget? suffix;
  final Widget? suffixIcon;
  final String? suffixText;
  final BoxConstraints? suffixIconConstraints;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title",
          style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff202020),
            height: 10 / 14,
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  width: 1, color: const Color.fromARGB(255, 224, 224, 224)),
              borderRadius: BorderRadius.circular(12)),
          child: TextField(
            onChanged: onChanged,
            controller: controller,
            onTap: onTap,
            onSubmitted: onSubmitted,
            obscureText: obscureText,
            keyboardType: keyboardType,
            keyboardAppearance: keyboardAppearance,
            obscuringCharacter: obscuringCharacter,
            style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
              height: 10 / 14,
            ),
            autofocus: autofocus,
            expands: expands,
            maxLines: maxLines,
            minLines: minLines,
            readOnly: readOnly,
            undoController: undoController,
            onAppPrivateCommand: onAppPrivateCommand,
            onEditingComplete: onEditingComplete,
            maxLength: maxLength,
            focusNode: focusNode,
            magnifierConfiguration: magnifierConfiguration,
            enableSuggestions: enableSuggestions,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                prefix: prefix,
                prefixIcon: prefixIcon,
                prefixText: prefixText,
                prefixStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff202020),
                  height: 10 / 14,
                ),
                prefixIconConstraints: prefixIconConstraints,
                suffix: suffix,
                suffixIcon: suffixIcon,
                hintStyle: const TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff757575),
                  height: 10 / 14,
                ),
                suffixText: suffixText,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                suffixIconConstraints: suffixIconConstraints),
          ),
        )
      ],
    );
  }
}

class AfroLevelFieald extends StatelessWidget {
  const AfroLevelFieald({super.key, this.isSelected = true});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: isSelected
              ? Border.all(width: 2, color: const Color(0xfff9a54e))
              : null,
          color: isSelected ? const Color(0xfffaf3ec) : Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Débutant",
                style: const TextStyle(
                  fontFamily: "Manrope",
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff202020),
                  height: 13 / 18,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                width: 20,
                height: 20,
                // padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 1.5,
                        color: isSelected
                            ? const Color(0xfff9a54e)
                            : Colors.grey)),
                child: isSelected
                    ? Center(
                        child: Container(
                            width: 12,
                            height: 12,
                            decoration: const BoxDecoration(
                                color: Color(0xfff9a54e),
                                shape: BoxShape.circle)),
                      )
                    : null,
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Je connais quelques mots et et quelques phrases mais je ne peux pas tenir une conversation.",
            style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              fontWeight: FontWeight.normal,
              height: 11 / 7,
              color: Color(0xff454545),
            ),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}

class AfroLanguageCheckField extends StatelessWidget {
  const AfroLanguageCheckField({super.key, this.isSelected = true});
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.only(left: 5, right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: isSelected
              ? Border.all(width: 2, color: const Color(0xfff9a54e))
              : null,
          color: isSelected ? const Color(0xfffaf3ec) : Colors.white),
      child: Row(
        children: [
          Image.asset(
            "assets/images/image 23.png",
            width: 50,
            height: 50,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Lingala",
            style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color(0xff202020),
              height: 13 / 18,
            ),
            textAlign: TextAlign.left,
          ),
          Spacer(),
          Container(
            width: 20,
            height: 20,
            // padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 1.5,
                    color: isSelected ? const Color(0xfff9a54e) : Colors.grey)),
            child: isSelected
                ? Center(
                    child: Container(
                        width: 12,
                        height: 12,
                        decoration: const BoxDecoration(
                            color: Color(0xfff9a54e), shape: BoxShape.circle)),
                  )
                : null,
          )
        ],
      ),
    );
  }
}

class AfroCkeckField extends StatelessWidget {
  const AfroCkeckField({super.key, this.isSelected = false});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: isSelected
              ? Border.all(width: 2, color: const Color(0xfff9a54e))
              : null,
          color: isSelected ? const Color(0xfffaf3ec) : Colors.white),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          "Parler couramment",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff202020),
            height: 11 / 16,
          ),
          textAlign: TextAlign.left,
        ),
        Container(
          width: 20,
          height: 20,
          // padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 1.5,
                  color: isSelected ? const Color(0xfff9a54e) : Colors.grey)),
          child: isSelected
              ? Center(
                  child: Container(
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                          color: Color(0xfff9a54e), shape: BoxShape.circle)),
                )
              : null,
        )
      ]),
    );
  }
}

class AfroPrimaryButton extends StatelessWidget {
  const AfroPrimaryButton({super.key, this.isOutline = false, this.onTap});
  final bool isOutline;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        // height: 50,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            border: isOutline
                ? Border.all(width: 1.5, color: const Color(0xff010100))
                : null,
            borderRadius: BorderRadius.circular(30),
            color: isOutline ? Colors.white : const Color(0xfff9a54e)),
        child: Center(
          child: Text(
            "Commencer",
            style: TextStyle(
              fontFamily: "Manrope",
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: isOutline ? const Color(0xff010100) : Colors.white,
              height: 14.039999961853027 / 18,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
