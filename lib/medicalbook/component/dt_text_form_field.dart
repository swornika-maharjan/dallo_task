import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';

// ignore: must_be_immutable
class DTTextFormField extends StatefulWidget {
  final ValueChanged<dynamic> onChange;
  final String? attribute;
  final String? Function(String?)? validator;
  final dynamic initialValue;
  final Color fillColor;
  final String placeholder;
  final String hintText;
  final bool readOnly;
  final bool isPassword;
  String? prefixText;
  final double width;
  final bool isCurrency;
  final TextInputType keyboardType;
  List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final TextInputAction textInputAction;
  Widget? suffixIcon;
  Widget? prefixIcon;
  final bool obscureText;
  int? maxLength;
  final bool isNumber;
  final bool? autoFocus;
  String? errorMessage;
  EdgeInsets? contentPadding;
  final bool allowClear;
  Color? borderColor;
  double? borderWidth;
  TextStyle? hintStyle;
  int? maxLines = 1;

  // Add the controller property
  final TextEditingController? controller;

  DTTextFormField({
    super.key,
    required this.onChange,
    this.initialValue,
    this.autoFocus,
    this.fillColor = DTColor.white,
    this.maxLines,
    this.placeholder = "",
    this.isNumber = false,
    this.isCurrency = false,
    this.hintText = "",
    this.readOnly = false,
    this.isPassword = false,
    this.maxLength,
    this.errorMessage,
    this.obscureText = false,
    this.prefixText,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.prefixIcon,
    this.inputFormatters,
    this.width = double.infinity,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction = TextInputAction.next,
    this.attribute,
    this.validator,
    this.allowClear = true,
    this.contentPadding,
    this.borderColor,
    this.borderWidth = 0,
    this.hintStyle,
    this.controller,
  });

  @override
  _DTTextFormFieldState createState() => _DTTextFormFieldState();
}

class _DTTextFormFieldState extends State<DTTextFormField> {
  TextEditingController? _textCtrl;
  bool _showPassword = true;
  FocusNode focusNode = FocusNode();
  // var maskFormatter = CurrencyPtBrNepaliFormatter(maxDigits: 12);

  @override
  void dispose() {
    _textCtrl?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets? textContentPadding = widget.contentPadding;
    textContentPadding ??= const EdgeInsets.all(11);

    return FormBuilderField(
      key:
          widget.key ??
          Key("${widget.attribute ?? 'ss'} ${widget.placeholder} as"),
      name: widget.attribute!,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      builder: (FormFieldState<String> state) {
        if (state.value != widget.initialValue && widget.initialValue != null) {
          Future.delayed(const Duration(milliseconds: 100), () {
            state.didChange(widget.initialValue);
            _textCtrl?.text = widget.initialValue;
          });
        }

        return SizedBox(
          width: widget.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus!.unfocus();
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autofocus: widget.autoFocus ?? false,
                controller: _textCtrl,
                maxLines: widget.maxLines,
                onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                // inputFormatters:
                // widget.isCurrency
                // ? [...(widget.inputFormatters ?? []), maskFormatter]
                // : widget.inputFormatters,
                keyboardType: widget.keyboardType,
                obscureText: widget.isPassword ? _showPassword : false,
                maxLength: widget.maxLength,
                textCapitalization: widget.textCapitalization,
                textInputAction: widget.textInputAction,
                readOnly: widget.readOnly,
                decoration: InputDecoration(
                  contentPadding: textContentPadding,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.borderColor ?? Colors.transparent,
                      width: widget.borderWidth ?? 0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.borderColor ?? Colors.transparent,
                      width: widget.borderWidth ?? 0,
                    ),
                  ),
                  filled: true,
                  fillColor: widget.fillColor,
                  prefixIcon: widget.prefixIcon,
                  suffixIcon:
                      widget.suffixIcon ??
                      (widget.isPassword
                          ? InkWell(
                            onTap:
                                () => setState(
                                  () => _showPassword = !_showPassword,
                                ),
                            child:
                                _showPassword
                                    ? const Icon(
                                      Icons.visibility_off_outlined,
                                      size: 18.0,
                                      color: DTColor.textFieldHintColor,
                                    )
                                    : const Icon(
                                      Icons.visibility_outlined,
                                      size: 18.0,
                                      color: DTColor.textFieldHintColor,
                                    ),
                          )
                          : null),
                  prefixText: widget.prefixText,
                  counterText: "",
                  hintText: widget.hintText,
                  hintStyle: widget.hintStyle ?? hintStyleHeader,
                  labelStyle: const TextStyle(height: 1),
                ),
                onChanged: (val) {
                  if (widget.isCurrency) {
                    // val = maskFormatter.getUnmaskedDouble().toString();
                  }

                  state.didChange(val);
                  widget.onChange(val);
                },
              ),
              if (state.hasError || widget.errorMessage != null)
                Container(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    widget.errorMessage ?? state.errorText ?? "",
                    style: const TextStyle(fontSize: 12, color: Colors.red),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _textCtrl =
        widget.controller ?? TextEditingController(text: widget.initialValue);
  }
}
