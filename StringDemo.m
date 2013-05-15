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

    [pool drain];
    return 0;
 }
