//
//  HWGCollectionViewItem.m
//  SimpleNSCollectionView
//
//  Created by Jonathan Ramirez on 6/10/15.
//  Copyright (c) 2015 HeadWorkGames. All rights reserved.
//

#import "HWGCollectionViewItem.h"
#import "HWGOptionView.h"

@interface HWGCollectionViewItem ()

@end

@implementation HWGCollectionViewItem

@synthesize selected;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setView:[[HWGOptionView alloc] initWithFrame:NSZeroRect]];
}

- (void) setRepresentedObject:(id)representedObject
{
    [super setRepresentedObject:representedObject];
    
    if (representedObject == nil)
        return;
    
    NSDictionary *dic = representedObject;
    [(HWGOptionView*)[self view] setTitle:[dic objectForKey:@"title"]];
}

@end
