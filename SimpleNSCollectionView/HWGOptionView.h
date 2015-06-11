//
//  HWGOptionView.h
//  SimpleNSCollectionView
//
//  Created by Jonathan Ramirez on 6/10/15.
//  Copyright (c) 2015 HeadWorkGames. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface HWGOptionView : NSView {
    BOOL selected;
}
@property (weak) NSString *title;
- (void)setSelected:(BOOL)_selected;
@end
