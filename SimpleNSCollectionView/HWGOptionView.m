//
//  HWGOptionView.m
//  SimpleNSCollectionView
//
//  Created by Jonathan Ramirez on 6/10/15.
//  Copyright (c) 2015 HeadWorkGames. All rights reserved.
//

#import "HWGOptionView.h"

@implementation HWGOptionView
@synthesize title;



- (id)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:(NSRect){frameRect.origin, {200, 100}}];
    if (self) {
    }
    return self;
}


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    if (selected) {
        [[NSColor selectedControlColor] set];
        NSRectFill(dirtyRect);
    }
    
    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    style.alignment = NSCenterTextAlignment;
    NSDictionary *attr = @{NSFontAttributeName: [NSFont fontWithName: @"HelveticaNeue" size: 32], NSForegroundColorAttributeName: [NSColor whiteColor], NSParagraphStyleAttributeName: style};
    [title drawInRect:NSMakeRect(0, 0, 196, 72) withAttributes:attr];
}


- (void)setSelected:(BOOL)_selected
{
    if (_selected == selected)
        return;
    
    selected = _selected;
    [self setNeedsDisplay:YES];
}

@end
