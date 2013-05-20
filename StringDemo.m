#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool 
	= [ [NSAutoreleasePool alloc] init];
    
    //+ (id) stringWithFormat: (NSString *) format, ...:    
    NSString *height;
    height = [NSString stringWithFormat:
		@"Your height is %d feet, %d inches", 5, 11];

    NSLog(height);
   
    //- (unsigned int) length;
    unsigned int num = [height length];
    printf("\n %d \n", num);

 
    //- (BOOL) isEqualToString: (NSString *) aString;
    NSString *thing1 = @"hello 5";
    NSString *thing2;
    thing2 = [NSString stringWithFormat:
		@"hello %d", 5];

    if ([thing1 isEqualToString: thing2]) {
	NSLog(@"They are the same!");
    }
    
    if ([thing1 compare:thing2
		options: NSCaseInsensitiveSearch
		| NSNumericSearch]
	    == NSOrderedSame) {
	NSLog(@"They match!");
    }
    //- (NSComparisonResult) compare: (NSString *) string;
    //NSOrderedAscending = -1,NSOrderedSame,NSorderedDescending = 1
    printf("\n %d \n",[@"aardvark" compare:@"zygote"]);

    // - (BOOL) hasPrefix: (NSString *) aString;
    // - (BOOL) hasSuffix: (NSString *) aString;
    NSString *fileName = @"draft-chapter.pages";
    if ([fileName hasPrefix: @"draft"]) {
    	//this is a draft
	NSLog(@"Have a draft prefix");
    }
    if ([fileName hasSuffix: @".mov"]) {
	// this is a movie
	NSLog(@"Have a movie");
    }
    //- (NSRange) rangeOfString: (NSString *) aString;
    NSRange range;
    range = [fileName rangeOfString: @"chapter"];
    printf("rang.location is %d, range.length is %d \n", range.location, range.length);

    NSMutableString *string;
    string = [NSMutableString stringWithCapacity: 50];
    [string appendString: @"Hello there "];
    [string appendFormat: @"human %d!", 39];
    NSLog(string);
    //- (void) deleteCharactersInRange: (NSRange) range;
    NSMutableString *friends;
    friends = [NSMutableString stringWithCapacity: 50];
    [friends appendString: @"James BethLynn Jack Evan"];
    NSLog(friends);
   
    NSRange jackRange;
    jackRange = [friends rangeOfString: @"Jack"];
    jackRange.length++; // eat the space that follows
    [friends deleteCharactersInRange: jackRange];
    NSLog(friends);

    string = [NSMutableString stringWithFormat: @"jo%dy", 2];
    NSLog(string);

    NSArray *array;
    array = [NSArray arrayWithObjects: @"one", @"two", @"three", nil];
    //- (unsigned) count;
    //- (id) objectAtIndex: (unsigned int) index;
    int i;
     for (i = 0; i < [array count]; i++) {
	NSLog(@"index %d has %@.", i, [array objectAtIndex: i]);
    }
    
    NSString *str = @"oop:ack:bork:greeble:ponies";
    NSLog(str);
    NSArray *chunks = [str componentsSeparatedByString: @":"];
    //NSLog(chunks);
    str = [chunks componentsJoinedByString: @":-)"];
    NSLog(str);
    
    //+ (id) arrayWithCapacity: (unsigned) numItems;
    //NSMutableArray *array;
    //array = [NSMutableArray arrayWithCapacity: 17];
    //- (void) addObject: (id) anObject;
    //for (i = 0; i < 4; i++) {
    //	Tire *tire = [Tire new];
    //	[array addObject: tire];
    //- (void) removeObjectAtIndex: (unsigned) index;
    //  [array removeObjectAtIndex: 1];

    
    [pool drain];
    return 0;
 }
