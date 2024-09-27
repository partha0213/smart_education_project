import 'package:flutter/material.dart';

// Define color constants
const Color primaryColor = Color(0xFF00695C); // Teal
const Color accentColor = Color(0xFF004D40); // Darker Teal
const Color backgroundColor = Color(0xFFE0F2F1); // Light Teal
const Color errorColor = Color(0xFFD32F2F); // Red

// Define text styles
const TextStyle headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: primaryColor,
);

const TextStyle subheadingStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: primaryColor,
);

const TextStyle bodyTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.normal,
  color: Colors.black87,
);

const TextStyle buttonTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

// Define spacing constants
const double defaultPadding = 16.0;
const double defaultMargin = 16.0;
const double cardElevation = 5.0;

// Define some application-specific constants
const String appName = 'Smart Education';
const String apiBaseUrl = 'https://api.smarteducation.com/';
