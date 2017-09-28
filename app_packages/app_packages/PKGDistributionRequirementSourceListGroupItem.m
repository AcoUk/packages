/*
 Copyright (c) 2017, Stephane Sudre
 All rights reserved.
 
 Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 
 - Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 - Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 - Neither the name of the WhiteBox nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import "PKGDistributionRequirementSourceListGroupItem.h"

@interface PKGDistributionRequirementSourceListGroupItem ()
{
	NSString * _label;
}

	@property (readwrite) PKGRequirementType groupType;

@end

@implementation PKGDistributionRequirementSourceListGroupItem

- (instancetype)initWithGroupType:(PKGRequirementType)inGroupType
{
	self=[super init];
	
	if (self!=nil)
	{
		_groupType=inGroupType;
		
		switch(_groupType)
		{
			case PKGRequirementTypeInstallation:
				
				_label=[NSLocalizedString(@"Installation Requirements", @"") copy];
				break;
				
			case PKGRequirementTypeTarget:
				
				_label=[NSLocalizedString(@"Volume Requirements", @"") copy];
				break;
				
			case PKGRequirementTypeUndefined:
				
				NSLog(@"oh oh");
				
				break;
		}
	}
	
	return self;
}

#pragma mark -

- (NSString *)label
{
	return [_label copy];
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)inZone
{
	PKGDistributionRequirementSourceListGroupItem * nGroupItem=[[[self class] allocWithZone:inZone] init];
	
	if (nGroupItem!=nil)
	{
		nGroupItem->_label=[self->_label copyWithZone:inZone];
		
		nGroupItem.groupType=self.groupType;
	}
	
	return nGroupItem;
}

@end
