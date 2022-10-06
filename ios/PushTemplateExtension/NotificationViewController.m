//
//  NotificationViewController.m
//  PushTemplateExtension
//
//  Created by Rohit Garg on 06/10/22.
//

#import "NotificationViewController.h"
#import <UserNotifications/UserNotifications.h>
#import <UserNotificationsUI/UserNotificationsUI.h>
#import <MoEngageRichNotification/MoEngageRichNotification.h>


@interface NotificationViewController () <UNNotificationContentExtension>

@property IBOutlet UILabel *label;

@end

@implementation NotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any required interface initialization here.
    [MORichNotification setAppGroupID:@"group.com.moengage.iphone.mainapp"];
}

- (void)didReceiveNotification:(UNNotification *)notification {
    // self.label.text = notification.request.content.body;
    [MORichNotification addPushTemplateToController:self withNotification:notification];
}

@end
