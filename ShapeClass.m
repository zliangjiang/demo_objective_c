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

@interface Circle : NSObject
{
    ShapeColor fillColor;
    ShapeRect  bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;
@end

@interface Triangle : NSObject
{
    ShapeColor fillColor;
    ShapeRect  bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;
@end

@interface Rectangle : NSObject
{
    ShapeColor fillColor;
    ShapeRect  bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;
@end

@implementation Circle

- (void) setFillColor: (ShapeColor) c
{
    fillColor = c;
}

- (void) setBounds: (ShapeRect) b
{
    bounds = b;
}

- (void) draw
{
    NSLog(@"drawing a circle at (%d %d %d %d) in %@",
	bounds.x, bounds.y,
	bounds.width, bounds.height,
	colorName(fillColor));
}
@end

@implementation Triangle
- (void) setFillColor: (ShapeColor) c
{
    fillColor = c;
}

- (void) setBounds: (ShapeRect) b
{
    bounds = b;
}

- (void) draw
{
    NSLog (@"drawing a triangle at (%d %d %d %d) in %@",
	bounds.x, bounds.y,
	bounds.width, bounds.height,
	colorName(fillColor));
}
@end

@implementation Rectangle
 
- (void) setFillColor: (ShapeColor) c
{
    fillColor = c;
}

- (void) setBounds: (ShapeRect) b
{
    bounds = b;
}

- (void) draw
{
    NSLog(@"drawing a Rectangle at (%d %d %d %d) in %@",
	bounds.x, bounds.y,
   	bounds.width, bounds.height,
	colorName(fillColor));
}
@end

void drawShapes (id shapes[], int count)
{
    int i;

    for (i = 0; i < count; i++) {
	id shape = shapes[i];
	[shape draw];
    }
}

int main (int argc, const char* argv[])
{
    id shapes[3];

    ShapeRect rect0 = { 0, 0, 10, 30 };
    shapes[0] = [Circle new];
    [shapes[0] setBounds: rect0];
    [shapes[0] setFillColor: kRedColor];
   
    ShapeRect rect1 = { 30, 40, 50, 60 };
    shapes[1] = [Rectangle new];
    [shapes[1] setBounds: rect1];
    [shapes[1] setFillColor: kGreenColor];

    ShapeRect rect2 = { 50, 60, 70, 80 };
    shapes[2] = [Triangle new];
    [shapes[2] setBounds: rect2];
    [shapes[2] setFillColor: kBlueColor];

    drawShapes (shapes, 3);

    return (0);
}
