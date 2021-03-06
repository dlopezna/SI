//===============================================================================
// Microsoft patterns & practices Enterprise Library
// Core
//===============================================================================
// Copyright � Microsoft Corporation.  All rights reserved.
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY
// OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT
// LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
// FITNESS FOR A PARTICULAR PURPOSE.
//===============================================================================

using System;
using System.Collections.Generic;
using System.Text;

namespace Microsoft.Practices.EnterpriseLibrary.Common.Tests.Configuration.TestObjects
{
    public class CustomPolymorphicObjectData : BasePolymorphicObjectData
    {
        public CustomPolymorphicObjectData()
            : base()
        { }

        public CustomPolymorphicObjectData(string name, Type type)
            : base(name, type)
        { }
    }
}
