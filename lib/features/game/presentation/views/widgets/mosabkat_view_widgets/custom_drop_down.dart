import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key, required this.items});
  final List<String> items;
  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: AppColors.choosingValueC1,
      value: _selectedValue,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 15, left: 5),
        border: InputBorder.none,
        filled: false,
      ),
      alignment: Alignment.center,
      icon: Icon(
        Icons.keyboard_arrow_down_outlined,
        color: Colors.white,
      ),
      iconSize: 24,
      elevation: 16,
      style: AppTextStyles.mainTextStyle.copyWith(fontSize: 16),
      items: widget.items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedValue = newValue;
        });
      },
    );
  }
}

// import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:playing_app/core/customs/custom_text_widget.dart';
// import 'package:playing_app/core/utilis/app_colors.dart';

// class DropdownButtonWidget extends StatefulWidget {
//   final List<String> items;

//   const DropdownButtonWidget({
//     super.key,
//     required this.items,
//   });

//   @override
//   State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
// }

// class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
//   String? selectedValue;

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonHideUnderline(
//       child: DropdownButton2(
//         isExpanded: true,
//         hint: Row(
//           children: [
//             Icon(
//               Icons.keyboard_arrow_down_outlined,
//               color: Colors.white,
//             ),
//             Expanded(
//               child: CustomTextWidget(
//                 weight: FontWeight.w700,
//                 text: selectedValue!,
//                 size: 16,
//                 borderColor: Colors.black,
//               ),
//             ),
//           ],
//         ),
//         items: widget.items
//             .map((item) => DropdownMenuItem<String>(
//                   value: item,
//                   child: CustomTextWidget(
//                     weight: FontWeight.w700,
//                     text: item,
//                     size: 16,
//                     borderColor: Colors.black,
//                   ),
//                 ))
//             .toList(),
//         value: selectedValue,
//         onChanged: (value) {
//           setState(() {
//             selectedValue = value as String;
//           });
//         },
//         buttonStyleData: ButtonStyleData(
//           height: 35,
//           width: 96,
//           padding: EdgeInsets.only(right: 15, left: 15),
//           decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color: AppColors.timeAndWrongListC1,
//                   blurRadius: 14.35,
//                   offset: Offset(0, 0),
//                 ),
//                 BoxShadow(
//                   color: AppColors.timeAndWrongListC1,
//                   blurRadius: 6.32,
//                   offset: Offset(0, 0),
//                   inset: true,
//                 ),
//               ],
//               borderRadius: BorderRadius.circular(23),
//               gradient: LinearGradient(colors: [
//                 AppColors.timeAndWrongListC1,
//                 AppColors.timeAndWrongListC1
//               ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
//           elevation: 2,
//         ),
//         iconStyleData: IconStyleData(
//           icon: Icon(
//             Icons.keyboard_arrow_down_sharp,
//             color: Colors.white,
//             size: 0,
//           ),
//         ),
//         dropdownStyleData: DropdownStyleData(
//           maxHeight: 130,

//           decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color: AppColors.timeAndWrongListC1,
//                   blurRadius: 14.35,
//                   offset: Offset(0, 0),
//                 ),
//                 BoxShadow(
//                   color: AppColors.timeAndWrongListC2,
//                   blurRadius: 6.32,
//                   offset: Offset(0, 0),
//                   inset: true,
//                 ),
//               ],
//               borderRadius: BorderRadius.circular(15),
//               gradient: LinearGradient(colors: [
//                 AppColors.timeAndWrongListC1,
//                 AppColors.timeAndWrongListC1
//               ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
//           elevation: 8,
//           offset: const Offset(0, 0),
//           scrollbarTheme: ScrollbarThemeData(
//             radius: Radius.circular(40),
//           ),
//         ),
//         menuItemStyleData: MenuItemStyleData(
//           height: 19,
//         ),
//       ),
//     );
//   }
// }
