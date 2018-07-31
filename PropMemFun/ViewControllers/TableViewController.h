//
//  TableViewController.h
//  PropMemFun
//
//  Created by Dimasno1 on 7/26/18.
//  Copyright © 2018 dimasno1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

// When generating getter and setter for properties:

// nonatomic - not to worry about multithreading

// retain - retain passed in variable before setting the instance variable
// assign - not to retain passed in variable
// copy - copy passed in variable


@property(nonatomic, retain) NSArray * sushiTypes;
@property(nonatomic, retain) NSString * lastSushiSelected;

@end


// Simple rules how to use variables:

// 1. Always make a property for every instance variable.
// 2. If it’s a class, mark it with the retain attribute. Otherwise, mark it with the assign attribute.
// 3. Whenever creating a variable, use the alloc/init/autorelease idiom.
// 4. Whenever setting a variable, always use “self.xxx = yyy” (in other words, use the property).
// 5. For each of your instance variables, call “self.xxx = nil” in dealloc. If it’s an outlet or something you created in viewDidLoad, do the same in viewDidUnload.
