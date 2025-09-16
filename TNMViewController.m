//
//  TNMViewController.m
//  Endo Tools
//
//  Created by Johnson Thomas on 7/16/13.
//  Copyright (c) 2013 Johnson Thomas. All rights reserved.
//

#import "TNMViewController.h"
@import WebKit;

@interface TNMViewController ()

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation TNMViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureWebViewIfNeeded];
    [self loadHTMLResourceNamed:@"TNM"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private helpers

- (void)configureWebViewIfNeeded
{
    if (self.webView != nil) {
        return;
    }

    WKWebView *webView = [[WKWebView alloc] initWithFrame:CGRectZero];
    webView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:webView];

    [NSLayoutConstraint activateConstraints:@[
        [webView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
        [webView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
        [webView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
        [webView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]
    ]];

    self.webView = webView;
}

- (void)loadHTMLResourceNamed:(NSString *)resourceName
{
    NSURL *fileURL = [[NSBundle mainBundle] URLForResource:resourceName withExtension:@"html"];
    if (fileURL == nil) {
        return;
    }

    if (@available(iOS 9.0, *)) {
        [self.webView loadFileURL:fileURL allowingReadAccessToURL:fileURL];
    } else {
        NSURLRequest *request = [NSURLRequest requestWithURL:fileURL];
        [self.webView loadRequest:request];
    }
}

@end
