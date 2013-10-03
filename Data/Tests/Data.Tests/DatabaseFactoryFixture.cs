//===============================================================================
// Microsoft patterns & practices Enterprise Library
// Data Access Application Block
//===============================================================================
// Copyright � Microsoft Corporation.  All rights reserved.
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY
// OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT
// LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
// FITNESS FOR A PARTICULAR PURPOSE.
//===============================================================================

using System;
using System.Data.Common;
using System.Data.SqlClient;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration.ObjectBuilder;
using Microsoft.Practices.EnterpriseLibrary.Common.Tests.Configuration.ObjectBuilder;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using Microsoft.Practices.ObjectBuilder2;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Microsoft.Practices.EnterpriseLibrary.Data.Tests
{
	[TestClass]
	public class DatabaseFactoryFixture
	{
		[TestMethod]
		public void CanCreateDatabaseForValidName()
		{
			BuilderContext context
				= new BuilderContext(
					new StrategyChain(new object[] {
						new MockFactoryStrategy(
							new DatabaseCustomFactory(),
							new SystemConfigurationSource(),
							new ConfigurationReflectionCache())}),
					null,
					null,
					new PolicyList(),
					NamedTypeBuildKey.Make<Database>("Service_Dflt"),
					null);

			object database
				= context.Strategies.ExecuteBuildUp(context);

			Assert.IsNotNull(database);
			Assert.AreSame(typeof(SqlDatabase), database.GetType());
		}

		[TestMethod]
		[ExpectedException(typeof(BuildFailedException))]
		public void CreateDatabaseForInvalidNameThrows()
		{
			BuilderContext context
				= new BuilderContext(
					new StrategyChain(new object[] {
						new MockFactoryStrategy(
							new DatabaseCustomFactory(),
							new SystemConfigurationSource(),
							new ConfigurationReflectionCache())}),
					null,
					null,
					new PolicyList(),
					NamedTypeBuildKey.Make<Database>("a bad name"),
					null);

			context.Strategies.ExecuteBuildUp(context);
		}

		[TestMethod]
		[ExpectedException(typeof(InvalidOperationException))]
		public void RequestAssemblerForDatabaseWithoutAssemblerAttributeThrows()
		{
			new DatabaseCustomFactory().GetAssembler(typeof(InvalidDatabase), "", new ConfigurationReflectionCache());
		}
	}

    class InvalidDatabase : Database
    {
        internal InvalidDatabase()
            : base("", SqlClientFactory.Instance) {}

        protected override void DeriveParameters(DbCommand discoveryCommand)
        {
            throw new Exception("The method or operation is not implemented.");
        }
    }
}