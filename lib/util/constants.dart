import 'package:flutter/material.dart';
const Color bg =  Colors.black;
const Color titleBg = Colors.grey;

LinearGradient kCardGradientBg = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      Colors.grey.shade800,
      Colors.black54,
      // Colors.grey.shade800,
      Colors.transparent
    ]);
LinearGradient kDrawerGradientBg = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomCenter,
    colors: [
      Colors.white,
      Colors.deepOrange,
      Colors.deepPurple,
      Colors.black54,

    ]);

const LinearGradient kSpacialCard = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      Colors.white30,
      Colors.black38,
      Colors.white10,
      // Colors.white24,
      Colors.white10,
      Colors.transparent
    ]);

const LinearGradient kMemberCard = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
          Colors.white30,
          // Colors.white12,
          // Colors.white10,
          Colors.transparent,
          Colors.transparent,
          Colors.white10,
    ]);