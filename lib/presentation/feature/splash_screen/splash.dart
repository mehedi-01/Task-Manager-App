import 'package:flutter/material.dart';
import 'package:task_manager_app/core/app_Color.dart';
import 'package:task_manager_app/core/app_String.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 82,
              width: 82,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary,
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Icon(
                  color: AppColors.textWhite,
                  Icons.check,
                  size: 40
              ),
            ),
            const SizedBox(height: 12),
            Text(AppString.appName, style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(AppString.appTagline,
            style: TextStyle(
                fontSize: 14,
              color: AppColors.primary,
            ),

            ),

          ],
        ),
      ),
    );
  }
}