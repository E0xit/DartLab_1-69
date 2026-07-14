abstract class MilitaryVehicle {
  String _modelName;
  double _fuelLevel;
  String get modelName => _modelName;
  double get fuelLevel => _fuelLevel;
  MilitaryVehicle(this._modelName, this._fuelLevel);
  void performMission();
}

class FighterJet extends MilitaryVehicle {
  double machSpeed;
  FighterJet(super._modelName, super._fuelLevel, this.machSpeed);
  @override
  void performMission() {
    print(
      '$modelName กำลังบินด้วยความเร็ว $machSpeed Mach (น้ำมันเหลือ $fuelLevel%)',
    );
  }
}

void main(List<String> args) {
  List<MilitaryVehicle> what = [
    FighterJet('F-16XL', 6400, 1.5),
    FighterJet('F-22', 8600, 2.5),
    FighterJet('F-35', 7600, 1.6),
  ];
  for (MilitaryVehicle i in what) {
    i.performMission();
  }
}
