import 'package:flutter/material.dart';
import 'package:smart_education_project/app/core/constants/app_constants.dart';

class CourseCard extends StatelessWidget {
  final String courseTitle;
  final String courseDescription;

  const CourseCard({
    Key? key,
    required this.courseTitle,
    required this.courseDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              courseTitle,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              courseDescription,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
