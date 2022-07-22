//
//  HJLTabBarViewController.m
//  DavidOcDemos
//
//  Created by davidhuang on 2022/7/22.
//

#import "HJLTabBarViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface HJLTabBarViewController ()

@end

@implementation HJLTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = UIColor.whiteColor;

    FirstViewController *c1 = FirstViewController.new;
    c1.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
    c1.tabBarItem.title = @"语法相关";
    c1.tabBarItem.badgeValue = @"99+";
    c1.tabBarItem.badgeColor = UIColor.redColor;
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:c1];

    SecondViewController *c2 = SecondViewController.new;
    c2.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:c2];

    ThirdViewController *c3 = ThirdViewController.new;
    c3.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:3];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:c3];
    NSArray *arrC = @[nav1,nav2,nav3];
    self.viewControllers = arrC;

    self.selectedIndex = 0;
    self.tabBar.backgroundColor = UIColor.whiteColor;
}
@end
