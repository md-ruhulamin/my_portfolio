const double Pagesize = 560;
const double mobilescreen = 550;
// const double widthbetweennavigation = 20;
// const double mh20 = 20;
// const double mh10 = 10;
// const double mh30 = 30;
// const double mh5 = 5;
// const double mh100 = 100;
// const double mw20 = 20;
// const double mw10 = 10;
// const double mw30 = 30;
// const double mw5 = 5;
// const double mw100 = 20;

// const double headingfontsize = 22;
// const double subheadingfontsize = 17;
// const double font15 = 15;
// const double font17 = 17;
// const double font11 = 13;

class Sizer {
  double currentwidth = 1650;
  double currentHeight = 750;
  Sizer(double w, double h) {
    currentwidth = w;
    currentHeight = h;
  }

  double getWidth(double value) {
    if (currentwidth < 520) {
      double ratio = 500 / value;
      return currentwidth / ratio;
    }
    double ratio = 1650 / value;
    return currentwidth / ratio;
  }

  double getHeight(double value) {
    if (currentHeight < 800) {
      double ratio = 750 / value;
      return currentwidth / ratio;
    }
    double ratio = 750 / value;
    return currentHeight / ratio;
  }
}
