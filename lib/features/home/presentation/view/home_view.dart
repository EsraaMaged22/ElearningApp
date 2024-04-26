import 'package:elearningproject/core/app_styles.dart';
import 'package:elearningproject/features/home/presentation/view/widgets/custom_categories.dart';
import 'package:elearningproject/features/home/presentation/view/widgets/courses_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/courses_info.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final List<Course> courseInfo = [
    Course(imagePath: 'https://th.bing.com/th/id/R'
        '.1cbe8a0fbb505ecdd4d15d75192acc76?rik=PIMbh2ttlORBaQ&pid=ImgRaw&r=0',
        name: 'Digital Marketing', timeAmount: '3hours'),
    Course(imagePath: 'https://th.bing.com/th/id/R'
        '.1cbe8a0fbb505ecdd4d15d75192acc76?rik=PIMbh2ttlORBaQ&pid=ImgRaw&r=0',
        name: 'C++', timeAmount: '3hours'),
    Course(imagePath: 'https://th.bing.com/th/id/R'
        '.1cbe8a0fbb505ecdd4d15d75192acc76?rik=PIMbh2ttlORBaQ&pid=ImgRaw&r=0',
        name: 'Dart', timeAmount: '4hours'),
    Course(imagePath: 'https://th.bing.com/th/id/R'
        '.1cbe8a0fbb505ecdd4d15d75192acc76?rik=PIMbh2ttlORBaQ&pid=ImgRaw&r=0',
        name: 'Java', timeAmount: '2hours'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hello,', style: AppStyles.style20Grey),
                        Icon(Icons.notifications),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Text('John Doe', style: AppStyles.style22Black),
                    SizedBox(height: 20.h),
                    ClipRRect( borderRadius: BorderRadius.circular(40.0), child: Image.network('https://t4.ftcdn'
                        ''
                        ''
                        ''
                        ''
                        '.net/jpg/03/98/77/53/360_F_398775311_Wp8oHwWgcijcfZsq3Yha2mahFPlmsmqF.jpg',width: 400,),

                    ),
                    SizedBox(height: 10.h),
                    const Text("Courses" , style: AppStyles.style25,),
                    SizedBox(height: 10.h),
                    const CategoriesWidget(),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: courseInfo.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              CourseView(
                                imageUrl: courseInfo[index].imagePath,
                                name: courseInfo[index].name,
                                timeAmount: courseInfo[index].timeAmount,
                              ),
                              const SizedBox(height: 16,),
                            ],
                          );
                        }

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}