library breakpoints;

import 'package:flutter/material.dart';

enum BreakpointSize {
  xs,
  sm,
  md,
  lg,
  xl,
}

abstract class IBreakpoints {
  bool isXs(BuildContext context);

  bool isSm(BuildContext context);

  bool isMd(BuildContext context);

  bool isLg(BuildContext context);

  bool isXl(BuildContext context);

  double getScreenWidth(BuildContext context);

  double getMaxWidth(BuildContext context);

  BreakpointSize getScreenSize(BuildContext context);
}

/// Breakpoints.
class Breakpoints implements IBreakpoints {
  static final _instance = Breakpoints();

  // define the breakpoint / minimum screen width
  static double xsBreakpoint = 0;
  static double smBreakpoint = 576;
  static double mdBreakpoint = 768;
  static double lgBreakpoint = 992;
  static double xlBreakpoint = 1200;

  // declare default max width per breakpoint
  // xsMaxWidth = currentWidth;
  static const double _defaultSmMaxWidth = 540;
  static const double _defaultMdMaxWidth = 720;
  static const double _defaultLgMaxWidth = 960;
  static const double _defaultXlMaxWidth = 1140;

  double _smMaxWidth;
  double _mdMaxWidth;
  double _lgMaxWidth;
  double _xlMaxWidth;

  // customize maxWidth based on user preference
  Breakpoints({
    double? smMaxWidth,
    double? mdMaxWidth,
    double? lgMaxWidth,
    double? xlMaxWidth,
  })  : _smMaxWidth = smMaxWidth ?? Breakpoints._defaultSmMaxWidth,
        _mdMaxWidth = mdMaxWidth ?? Breakpoints._defaultMdMaxWidth,
        _lgMaxWidth = lgMaxWidth ?? Breakpoints._defaultLgMaxWidth,
        _xlMaxWidth = xlMaxWidth ?? Breakpoints._defaultXlMaxWidth;

  static double get smMaxWidth => Breakpoints._instance._smMaxWidth;

  static double get mdMaxWidth => Breakpoints._instance._mdMaxWidth;

  static double get lgMaxWidth => Breakpoints._instance._lgMaxWidth;

  static double get xlMaxWidth => Breakpoints._instance._xlMaxWidth;

  // get the current screen width
  @override
  double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  // Return the max screen size given the current breakpoint
  @override
  double getMaxWidth(BuildContext context) {
    final double width = getScreenWidth(context);

    if (width >= xlBreakpoint) return xlMaxWidth;
    if (width >= lgBreakpoint) return lgMaxWidth;
    if (width >= mdBreakpoint) return mdMaxWidth;
    if (width >= smBreakpoint) return smMaxWidth;
    return width;
  }

  // Return the current breakpoint
  @override
  BreakpointSize getScreenSize(BuildContext context) {
    final double width = getScreenWidth(context);

    if (width >= xlBreakpoint) return BreakpointSize.xl;
    if (width >= lgBreakpoint) return BreakpointSize.lg;
    if (width >= mdBreakpoint) return BreakpointSize.md;
    if (width >= smBreakpoint) return BreakpointSize.sm;
    return BreakpointSize.xs;
  }

  @override
  bool isLg(BuildContext context) => getScreenWidth(context) >= lgBreakpoint;

  @override
  bool isMd(BuildContext context) => getScreenWidth(context) >= mdBreakpoint;

  @override
  bool isSm(BuildContext context) => getScreenWidth(context) >= smBreakpoint;

  @override
  bool isXl(BuildContext context) => getScreenWidth(context) >= xlBreakpoint;

  @override
  bool isXs(BuildContext context) => getScreenWidth(context) >= xsBreakpoint;
}
