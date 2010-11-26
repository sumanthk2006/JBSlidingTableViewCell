//
//  RegularSlidingTableViewCell.m
//  LetsSlide
//
//  Copyright 2010 Jake Boxer
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "RegularSlidingTableViewCell.h"

@implementation RegularSlidingTableViewCell

@synthesize titleLabel = titleLabel_;

#pragma mark -
#pragma mark Creation/Removal Methods

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString*)identifier {
  self = [super initWithStyle:style reuseIdentifier:identifier];

  if (nil != self) {
    self.titleLabel = [[[UILabel alloc] initWithFrame:CGRectMake(8, 14, 304, 20)] autorelease];
    self.titleLabel.font = [UIFont boldSystemFontOfSize:17];
    self.titleLabel.textColor = [UIColor blackColor];
    self.titleLabel.highlightedTextColor = [UIColor whiteColor];
    self.titleLabel.backgroundColor = [UIColor clearColor];
    [self.topDrawer addSubview:self.titleLabel];
  }

  return self;
}

- (void)dealloc {
  [titleLabel_ release];

  titleLabel_ = nil;

  [super dealloc];
}

#pragma mark -
#pragma mark JBSlidingTableViewCell Methods

- (void)bottomDrawerWillAppear {
  self.bottomDrawer.backgroundColor = [UIColor lightGrayColor];
}

@end