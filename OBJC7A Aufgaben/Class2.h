//
//  Class2.h
//  OBJC7A Aufgaben
//
//  Created by Magnus Kruschwitz on 31.12.18.
//  Copyright © 2018 Magnus Kruschwitz. All rights reserved.
//

@interface listenelem : NSObject

//propertys
@property (nonatomic) NSString *data;
@property listenelem *next;
@property listenelem *listStart, *listEnd;

//methods
- (void) setStart:(listenelem*) startList;
- (void) setData:(NSString*) dataNew;
- (void) markLast:(listenelem*) dataLast;
- (void) append:(NSString*) dataNew;
- (void) show;

@end
