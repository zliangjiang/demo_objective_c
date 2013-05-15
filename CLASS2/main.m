#import <Foundation/Foundation.h>
#import "Car.h"
#import "Tire.h"
#import "Engine.h"

int main (int argc, const char * argv[])
{
    Car *car = [Car new];

    Engine *engine = [Engine new];
    [car setEngine: engine];

    int i;
    for (i = 0; i < 4; i++) {
	Tire *tire = [Tire new];

	[car setTire: tire
		atIndex: i];
    }

    [car print];

    return (0);
} // main
