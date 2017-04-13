/*
 Copyright (c) 2016, Stephane Sudre
 All rights reserved.
 
 Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 
 - Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 - Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 - Neither the name of the WhiteBox nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import <Foundation/Foundation.h>

#import "PKGObjectProtocol.h"

#import "PKGFilePath.h"

extern NSString * const PKGPresentationSectionIntroductionName;
extern NSString * const PKGPresentationSectionReadMeName;
extern NSString * const PKGPresentationSectionLicenseName;
extern NSString * const PKGPresentationSectionDestinationSelectName;
extern NSString * const PKGPresentationSectionInstallationTypeName;
extern NSString * const PKGPresentationSectionInstallationName;
extern NSString * const PKGPresentationSectionSummaryName;

@interface PKGPresentationSection : NSObject <PKGObjectProtocol>

	@property (readonly) NSString * installerPluginName;

	@property (nonatomic,readonly,copy) NSString * name;

	@property PKGFilePath * pluginPath;

+ (NSArray *)defaultSectionsList;

+ (NSString *)installerPluginNameForSectionName:(NSString *)inSectionName;

- (instancetype)initWithPluginPath:(PKGFilePath *)inPath;

- (BOOL)isPlugin;

@end
