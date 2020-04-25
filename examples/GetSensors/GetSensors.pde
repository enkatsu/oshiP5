import oshiP5.*;
import oshi.*;
import oshi.hardware.*;
import java.util.Arrays;

SystemInfo si = new SystemInfo();
HardwareAbstractionLayer hard = si.getHardware();
Sensors sensor = hard.getSensors();

void setup() {
}

void draw() {
  double cpuTemp = sensor.getCpuTemperature();
  double cpuVolt = sensor.getCpuVoltage();
  int[] fanSpeeds = sensor.getFanSpeeds();
  
  println("*** info ***");
  println(cpuTemp);
  println(cpuVolt);
  println(Arrays.toString(fanSpeeds));
}