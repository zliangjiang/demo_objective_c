#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
    
    NSFileManager *manager;
    manager = [NSFileManager defaultManager];

    NSString *home;
    home = [@"~" stringByExpandingTildeInPath];
   
    NSDirectoryEnumerator *direnum;
    direnum = [manager enumeratorAtPath: home];

    NSMutableArray *files;
    files = [NSMutableArray arrayWithCapacity: 42];
  
    NSString *fileName;
    while (fileName = [direnum nextObject]) {
   	if ([[fileName pathExtension]
			isEqualTo: @"jpg"]) {
	    [files addObject: fileName];
	}
    }

    NSEnumerator *fileenum;
    fileenum = [files objectEnumerator];
  
    while (fileName = [fileenum nextObject]) {
 	NSLog (@"%@", fileName);
    }

    [pool drain];
    return (0);
} // main
    
