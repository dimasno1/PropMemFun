//
//  TableViewController.h
//  PropMemFun
//
//  Created by Dimasno1 on 7/26/18.
//  Copyright © 2018 dimasno1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController {
    
    // Instance variables:
    
    NSArray* _sushiTypes;
    NSString* _lastSushiSelected;
}

- (NSArray *)getSushiTypes;
- (void)setSushiTypes: (NSArray *) sushiTypes;

- (NSString *)getLastSushiSelected;
- (void)setLastSushiSelected: (NSString *) lastSushiSelected;

@end

