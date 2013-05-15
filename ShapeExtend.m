#import <Foundation/Foundation.h>

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;

typedef struct {
    int x, y, width, height;
} ShapeRect;

NSString *colorName (ShapeColor colorName)
{
    switch (colorName) {
	case kRedColor:
	    return @"red";
	    break;
   	case kGreenColor:
	    return @"green";
	    break;
	case kBlueColor:
	    return @"blue";
	    break;
    }
    return @"no clue";
}

@interface Shape: NSObject
{
    ShapeColor fillColor;
    ShapeRect  bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;
@end //Shape

@implementation Shape
- (void) setFillColor: (ShapeColor) c
{
    fillColor = c;
}//setFillColor

- (void) setBounds: (ShapeRect) b
{
    bounds = b;
}//setBounds

- (void) draw
{
}//draw
@end //Shape

@interface Circle: Shape
@end //Circle

@interface Triangle: Shape
@end //Triangle

@interface Rectangle: Shape
@end //Rectangle

@implementation Circle
- (void) draw
{
    NSLog (@"drawing a circle at (%d %d %d %d) in %@",
	    bounds.x, bounds.y,
	    bounds.width, bounds.height,
	    colorName(fillColor));
} //draw
@end //Circle

@implementation Triangle
- (void) draw
{
    NSLog(@"drawing a triangle at (%d %d %d %d) in %@",
	    bounds.x, bounds.y,
   	    bounds.width, bounds.height,
	    colorName(fillColor));
} //draw
@end //Triangle

@implementation Rectangle
- (void) draw
{
    NSLog(@"drawing rectangle at (%d %d %d %d) in %@",
	    bounds.x, bounds.y,
  	    bounds.width, bounds.height,
	    colorName(fillColor));
} //draw
@end //Rectangle

void drawShapes (id shapes[], int count)
{
    int i;

    for (i = 0; i < count; i++){
	id shape = shapes[i];
	[shape draw];
    }
}

int main (int argc, const char* argv[])
{
    id shapes[3];

    ShapeRect rect0 = { 0, 0, 10, 10 };
    shapes[0] = [Circle new];
    [shapes[0] setBounds: rect0];
    [shapes[0] setFillColor: kRedColor];

    ShapeRect rect1 = { 10, 10, 20, 20 };
    shapes[1] = [Triangle new];
    [shapes[1] setBounds: rect1];
    [shapes[1] setFillColor: kGreenColor];
    
    ShapeRect rect2 = { 20, 20, 30, 30 };
    shapes[2] = [Rectangle new];
    [shapes[2] setBounds: rect2];
    [shapes[2] setFillColor: kBlueColor];

    drawShapes (shapes, 3);
    return (0);
}
