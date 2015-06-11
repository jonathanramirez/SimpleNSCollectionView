//
//  MainViewController.m
//  SimpleNSCollectionView
//
//  Created by Jonathan Ramirez on 6/10/15.
//  Copyright (c) 2015 HeadWorkGames. All rights reserved.
//

#import "MainViewController.h"
#import "HWGCollectionView.h"
#import "HWGCollectionViewItem.h"

@interface MainViewController () <HWGCollectionViewDelegate>{
    NSMutableArray *dataMutableArray;
}
@property (strong) HWGCollectionView *collection;
@end

@implementation MainViewController
@synthesize collection;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.autoresizingMask = NSViewMinXMargin | NSViewMaxXMargin | NSViewMinYMargin | NSViewMaxYMargin | NSViewWidthSizable | NSViewHeightSizable;

    
    dataMutableArray = [[NSMutableArray alloc] initWithCapacity:3];
    [dataMutableArray addObject:@{@"title":@"test 1"}];
    [dataMutableArray addObject:@{@"title":@"test 2"}];
    [dataMutableArray addObject:@{@"title":@"test 3"}];
    
    

    collection =  [[HWGCollectionView alloc] init];
    collection.frame = NSMakeRect(0, 0, 200,  NSHeight(self.view.frame));
    collection.autoresizingMask =  NSViewMinYMargin ;

    [collection setItemPrototype:[HWGCollectionViewItem new]];
    collection.content = dataMutableArray;
    collection.collectionViewDelegate = self;
    [self.view addSubview:collection];
}

#pragma mark - <HWGCollectionViewDelegate>

- (void)HWGCollectionView:(HWGCollectionView *)collectionView  withView:(HWGOptionView*)menuView didSelectedRow:(NSInteger)row {

    NSLog(@"didSelectedRow %lu", row);
}

- (void)HWGCollectionView:(HWGCollectionView *)collectionView  withView:(HWGOptionView*)menuView unSelectedRow:(NSInteger)row {

    NSLog(@"unSelectedRow %lu", row);
}


@end
