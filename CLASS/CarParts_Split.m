#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"

@interface Car : NSObject
{
    Engine *engine;
    Tire   *tires[4];
}

- (Engine *) engine;

- (void) setEngine: (Engine *) newEngine;

- (Tire *) tireAtIndex: (int) index;

- (void) setTire: (Tire *) tire
	 atIndex: (int) index;

- (void) print;

@end // Car

@implementation Car

- (Engine *) engine
{
    return (engine);
}

- (void) setEngine: (Engine *) newEngine
{
    engine = newEngine;
}

- (void) setTire: (Tire *) tire
	atIndex: (int) index
{
    if (index < 0 || index > 3) {
	NSLog (@"bad index (%d) in setTire:atIndex:", index);
	exit (1);
    }

    tires[index] = tire;
}

- (Tire *) tireAtIndex: (int) index
{
    if (index < 0 || index > 3) {
	NSLog (@"bad index (%d) in tireAtindex:", index);
	exit (1);
    }

    return (tires[index]);
}

- (void) print
{
    NSLog (@"%@", engine);
    NSLog (@"%@", tires[0]);
    NSLog (@"%@", tires[1]);
    NSLog (@"%@", tires[2]);
    NSLog (@"%@", tires[3]);
}

@end

int main (int argc, const char * argv[])
{
    Car *car= [Car new];

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
