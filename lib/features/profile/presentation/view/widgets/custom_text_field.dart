import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/classes/app_styles.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint,
    required this.validator,
    required this.controller,
    this.obscure= false, required this.text, required this.icon,
  });
  final IconData icon ;
  final String text ;
  final TextEditingController controller ;
  final String hint ;
  final String? Function(String?)? validator ;
  bool obscure ;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text( "${text}",style: AppStyles.style16Grey,),
        SizedBox(height: 8.h,),
        Container(
          height: MediaQuery.of(context).size.height/12,
          child: TextFormField(
            validator: validator,
              obscureText: obscure ,
              controller: controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: hint,
                prefixIcon: Icon(icon),
                hintStyle:  TextStyle(
                    fontSize: 10,color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:BorderSide(
                      color : Colors.grey.withOpacity(0.5),
                    )),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 2,
                    color: Colors.grey.withOpacity(0.5),),),
              )
          ),

        ),
        SizedBox(height: 16.h,),
      ],
    );
  }
}
