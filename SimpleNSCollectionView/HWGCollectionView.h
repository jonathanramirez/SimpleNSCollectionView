//
//  HWGCollectionView.h
//  SimpleNSCollectionView
//
//  Created by Jonathan Ramirez on 6/10/15.
//  Copyright (c) 2015 HeadWorkGames. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "HWGOptionView.h"

@class HWGCollectionView;

@protocol HWGCollectionViewDelegate <NSObject>

@optional
- (void)HWGCollectionView:(HWGCollectionView *)collectionView  withView:(HWGOptionView*)menuView didSelectedRow:(NSInteger)row;
- (void)HWGCollectionView:(HWGCollectionView *)collectionView  withView:(HWGOptionView*)menuView unSelectedRow:(NSInteger)row;
@end

@interface HWGCollectionView : NSCollectionView
{
    __weak id<HWGCollectionViewDelegate> collectionViewDelegate;
@private
    NSUInteger currentSelection;
}
@property (weak) id<HWGCollectionViewDelegate> collectionViewDelegate;
@end
