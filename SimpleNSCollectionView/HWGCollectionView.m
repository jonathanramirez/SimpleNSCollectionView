//
//  HWGCollectionView.m
//  SimpleNSCollectionView
//
//  Created by Jonathan Ramirez on 6/10/15.
//  Copyright (c) 2015 HeadWorkGames. All rights reserved.
//

#import "HWGCollectionView.h"

@implementation HWGCollectionView

@synthesize collectionViewDelegate;

- (id)init
{
    self = [super init];
    if (self) {
        self.selectable = YES;
        [self setBackgroundColors:[NSArray arrayWithObjects:[NSColor blackColor], nil]];
        currentSelection = 0;
    }
    
    return self;
}

- (NSCollectionViewItem *)newItemForRepresentedObject:(id)object
{
    NSCollectionViewItem *item = [super newItemForRepresentedObject:object];
    return item;
}

- (void)setSelectionIndexes:(NSIndexSet *)indexes
{
    [super setSelectionIndexes:indexes];
    
    NSCollectionViewItem *item = [self itemAtIndex:currentSelection];
    HWGOptionView *view = (HWGOptionView *)[item view];
    [view setSelected:NO];

    if(self.collectionViewDelegate != nil &&
       [self.collectionViewDelegate conformsToProtocol:@protocol(HWGCollectionViewDelegate)] &&
       [self.collectionViewDelegate respondsToSelector:@selector(HWGCollectionView:withView:unSelectedRow:)]) {
        [self.collectionViewDelegate HWGCollectionView:self withView:view unSelectedRow:currentSelection];
    }
    
    item = [self itemAtIndex:[indexes firstIndex]];
    view = (HWGOptionView *)[item view];
    [view setSelected:YES];
    
    currentSelection = [indexes firstIndex];
    
    if(self.collectionViewDelegate != nil &&
       [self.collectionViewDelegate conformsToProtocol:@protocol(HWGCollectionViewDelegate)] &&
       [self.collectionViewDelegate respondsToSelector:@selector(HWGCollectionView:withView:didSelectedRow:)]) {
        [self.collectionViewDelegate HWGCollectionView:self withView:view didSelectedRow:currentSelection];
    }
}

@end
