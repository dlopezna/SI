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

using Microsoft.Practices.EnterpriseLibrary.Common.Configuration.ObjectBuilder;
using Microsoft.Practices.EnterpriseLibrary.Common.Instrumentation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Microsoft.Practices.EnterpriseLibrary.Common.Tests.Configuration.ObjectBuilder
{
	[TestClass]
	public class ExplicitInstrumentationAttacherFixture
	{
		[TestInitialize]
		public void ClearState()
		{
			ExplicitBinder.cachedSource = null;
			ExplicitBinder.cachedListener = null;
		}

		[TestMethod]
		public void ExplicitAttacherWillBeUsedToAttachInstrumentationInSourceAndListener()
		{
			ExplicitlyBoundSource source = new ExplicitlyBoundSource();
			object[] listenerConstructorArgs = new object[0];

			ExplicitInstrumentationAttacher attacher =
				new ExplicitInstrumentationAttacher(source,
													typeof(ListenerType), listenerConstructorArgs,
													typeof(ExplicitBinder));
			attacher.BindInstrumentation();

			Assert.AreSame(source, ExplicitBinder.cachedSource);
			Assert.IsNotNull(ExplicitBinder.cachedListener);
		}

		[InstrumentationListener(typeof(ListenerType), typeof(ExplicitBinder))]
		public class ExplicitlyBoundSource : IInstrumentationEventProvider
		{
			object IInstrumentationEventProvider.GetInstrumentationEventProvider()
			{
				return this;
			}
		}

		public class ListenerType { }

		public class ExplicitBinder : IExplicitInstrumentationBinder
		{
			public static object cachedListener;
			public static object cachedSource;

			public void Bind(object source,
							 object listener)
			{
				cachedSource = source;
				cachedListener = listener;
			}
		}
	}
}