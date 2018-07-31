//
//  TableViewController.m
//  PropMemFun
//
//  Created by Dimasno1 on 7/26/18.
//  Copyright © 2018 dimasno1. All rights reserved.
//


#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

@synthesize sushiTypes = _sushiTypes;
@synthesize lastSushiSelected = _lastSushiSelected;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self tableView ]registerClass: UITableViewCell.class forCellReuseIdentifier:@"cell"];
    [[self view] setBackgroundColor: UIColor.whiteColor];
    
    NSArray* sushiArray = [[[NSArray alloc] initWithObjects: @"California Roll", //After that retainCount = 1
                            @"Tuna Roll", @"Salmon Roll", @"Unagi Roll",
                            @"Philadelphia Roll", @"Rainbow Roll",
                            @"Vegetable Roll", @"Spider Roll",
                            @"Shrimp Tempura Roll", @"Cucumber Roll",
                            @"Yellowtail Roll", @"Spicy Tuna Roll",
                            @"Avocado Roll", @"Scallop Roll", nil] autorelease];
    
    [self setSushiTypes:sushiArray];
}

- (void)dealloc {
    [self setSushiTypes:nil];

//    [_sushiTypes release]; // release - decrement the retain count: retainCount -= 1
//    _sushiTypes = nil; // set the object to nil afterwards. Calling a method on a nil object does nothing

    [self setLastSushiSelected:nil];
//    [_lastSushiSelected release];
//    _lastSushiSelected = nil;
    
    [super dealloc];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _sushiTypes.count;
}

#warning Add custom cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    //    If the method name begins with init or copy, the object returned will have a retain count of 1, and no autorelease pending. Have to release it when you’re done.
    //    If the method name begins with anything else, the object returned will have a retain count of 1, and an autorelease pending. Can use the object right now, but if you want to use it later you have to retain the object.
    
    NSString* sushiName = [[self sushiTypes] objectAtIndex: indexPath.row]; // No need to release, autorelease is pending
    NSString* rowName = [[[NSString alloc] initWithFormat: @"%ld: %@", (long)indexPath.row, sushiName] autorelease];
    
    cell.textLabel.text = rowName;
    
    sushiName = nil;
    rowName = nil;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* sushiName = [_sushiTypes objectAtIndex: indexPath.row];
    NSString* message = [[[NSString alloc] initWithFormat: @"Last selected: %@:, Current: %@", [self lastSushiSelected], sushiName] autorelease];
    
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle: @"Suchi power"
                                                                             message: message
                                                                      preferredStyle: UIAlertControllerStyleAlert];
    
    
    UIAlertAction* action = [UIAlertAction actionWithTitle: @"Close"
                                                     style: UIAlertActionStyleCancel
                                                   handler:nil];
    
    [alertController addAction: action];
    [self presentViewController: alertController animated: YES completion: nil];
    alertController = nil;
    action = nil;
    
    [self setLastSushiSelected: sushiName];

//    [_lastSushiSelected release];
//    _lastSushiSelected = nil;
//    _lastSushiSelected = [sushiName retain]; // increment: retainCount += 1;
}

@end
