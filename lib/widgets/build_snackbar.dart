import 'package:flutter/material.dart';

SnackBar showSnackBar(String text) => SnackBar(
      backgroundColor: const Color(0xFF416FDF),
      content: Text(
        text,
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    );
