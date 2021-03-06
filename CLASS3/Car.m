#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car

- (void) setEngine: (Engine *) newEngine
{
    engine = newEngine;
} // setEngine

- (Engine *) engine
{
    return (engine);
} // engine

- (void) setTire: (Tire *) tire
	atIndex: (int) index
{
    if (index < 0 || index > 3) {
	NSLog (@"bad index (%d) in setTire:atIndex:",
	    index);
    	exit(1);
    }

    tires[index] = tire;

} // setTire:atIndex

- (Tire *) tireAtIndex: (int) index
{
    if (index < 0 || index >3) {
	NSLog(@"bad index (%d) in setTire:atIndex:",
	    index);
 	exit(1);
    }

    return (tires[index]);

} // tireAtIndex

- (void) print
{
    NSLog (@"%@", tires[0]);
    NSLog (@"%@", tires[1]);
    NSLog (@"%@", tires[2]);
    NSLog (@"%@", tires[3]);

    NSLog (@"%@", engine);

} // print

@end // Car
