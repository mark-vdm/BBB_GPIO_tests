//============================================================================
// Name        : Basic_GPIO.cpp
// Author      : Mark VanderMeulen
// Version     :
// Copyright   : You can use this code. I am not responsible for anything it does! Use responsibly!
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
using namespace std;

#include "blacklib/BlackLib.h"
#include "blacklib/BlackPWM.h"

int main() {
	cout << "!!!Hello World!!2?!" << endl; // prints !!!Hello World!!?!

	 cout << "LED Flash Start" << endl;



	 BlackLib::BlackGPIO led1(BlackLib::GPIO_44, BlackLib::output);
	 BlackLib::BlackPWM servo1(BlackLib::P8_13); //PWM 0 is P8_13. ee BlackPWM.h
	 servo1.setDutyPercent(100); //set duty cycle percentage
	 servo1.setPeriodTime(20000, BlackLib::microsecond);
	  servo1.setDutyPercent(10); //set duty cycle percentage. Servo: 20ms period, 0.5 - 2.5ms duty time

//	servo1.setSpaceRatioTime(2000, BlackLib::microsecond);

	 for(int i=0; i<5; i++){


		 servo1.setRunState(BlackLib::run);
		 led1.setValue(BlackLib::high);
		  usleep(500000);
		 led1.setValue(BlackLib::low);
		 servo1.setRunState(BlackLib::stop);
		 //test servo on P8_13
		 //write PWM value (P8_13 is a pwm pin)


	  usleep(1000000);
	  }
	  cout << "LED Flash End" << endl;
	  servo1.setRunState(BlackLib::stop); //turn off PWM
	  return 0;
}
