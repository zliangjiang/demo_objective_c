#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
    
    NSFileManager *manager;
    manager = [NSFileManager defaultManager];

    NSString *home;
    home = [@"~/Pictures" stringByExpandingTildeInPath];
   

    NSMutableArray *files;
    files = [NSMutableArray arrayWithCapacity: 42];
  
    for (NSString *fileName in [manager enumeratorAtPath: home]) {
   	if ([[fileName pathExtension]
			isEqualTo: @"jpg"]) {
	    [files addObject: fileName];
	}
    }

  
    for (NSString *fileName in files) {
 	NSLog (@"%@", fileName);
    }

    [pool drain];
    return (0);
} // main
    
