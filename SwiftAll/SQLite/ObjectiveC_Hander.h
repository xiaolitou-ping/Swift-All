//
//  ObjectiveC_Hander.h
//  SwiftAll
//
//  Created by macbook on 2021/1/19.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface ObjectiveC_Hander : NSObject
+(void)runNormalSql:(NSString *)sqlString;

+(void)selectSql;
@end


