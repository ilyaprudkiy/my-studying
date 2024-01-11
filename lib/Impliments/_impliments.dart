
abstract class TemperatureConverter {
  double temperatureConventerCelsius(double celsius);

  double temperatureConventerFaringeit(double faringeit);
}

class SimpleTemperatureConventer implements TemperatureConverter {
  @override
  double temperatureConventerCelsius(double celsius) {
    return (celsius * 9 / 5) + 32;
  }

  @override
  double temperatureConventerFaringeit(double faringeit) {
    return (faringeit - 32) * 5 / 9;
  }
}

void main() {
  var temperatureConventer = SimpleTemperatureConventer();

  print(temperatureConventer.temperatureConventerCelsius(32));
  print(temperatureConventer.temperatureConventerFaringeit(80));
}