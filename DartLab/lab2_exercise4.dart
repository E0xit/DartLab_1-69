void main() {
  String? middleName;
  String city = 'Nakhon Sawan';

  print(middleName?.length ?? 0);

  print(city.length);

  middleName ??= 'N/A';
  print(middleName);
}
