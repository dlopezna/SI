//===============================================================================
// Microsoft patterns & practices Enterprise Library
// Data Access Application Block
//===============================================================================
// Copyright © Microsoft Corporation.  All rights reserved.
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY
// OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT
// LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
// FITNESS FOR A PARTICULAR PURPOSE.
//===============================================================================

using System.Data;
using System.Data.Common;
using System.Data.SqlServerCe;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.SqlCe;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Data.SqlCe.Tests.VSTS
{
    [TestClass]
    public class SqlCeParameterizedSqlStringFixture
    {
        Database db;

        [TestInitialize]
        public void SetUp()
        {
            TestConnectionString testConnection = new TestConnectionString();
            testConnection.CopyFile();
            db = new SqlCeDatabase(testConnection.ConnectionString);
        }

        [TestCleanup]
        public void TearDown()
        {
            SqlCeConnectionPool.CloseSharedConnections();
        }

        [TestMethod]
        public void ExecuteSqlStringCommandWithParameters()
        {
            string sql = "select * from Region where (RegionID=@Param1) and RegionDescription=@Param2";
            DbCommand cmd = db.GetSqlStringCommand(sql);
            db.AddInParameter(cmd, "@Param1", DbType.Int32, 1);
            db.AddInParameter(cmd, "@Param2", DbType.String, "Eastern");
            DataSet ds = db.ExecuteDataSet(cmd);
            Assert.AreEqual(1, ds.Tables[0].Rows.Count);
        }

        [TestMethod]
        [ExpectedException(typeof(SqlCeException))]
        public void ExecuteSqlStringCommandWithNotEnoughParameterValues()
        {
            string sql = "select * from Region where RegionID=@Param1 and RegionDescription=@Param2";
            DbCommand cmd = db.GetSqlStringCommand(sql);
            db.AddInParameter(cmd, "@Param1", DbType.Int32, 1);
            db.ExecuteDataSet(cmd);
        }

        [TestMethod]
        public void ExecuteSqlStringCommandWithTooManyParameterValues()
        {
            string sql = "select * from Region where RegionID=@Param1 and RegionDescription=@Param2";
            DbCommand cmd = db.GetSqlStringCommand(sql);
            db.AddInParameter(cmd, "@Param1", DbType.Int32, 1);
            db.AddInParameter(cmd, "@Param2", DbType.String, "Eastern");
            db.AddInParameter(cmd, "@Param2", DbType.String, "Western");
            db.ExecuteDataSet(cmd);
        }

        [TestMethod]
        public void ExecuteSqlStringCommandWithDoubleAtSymbol()
        {
            string sql = "select *, @@IDENTITY from Region where RegionID=@ID and RegionDescription=@Desc";
            DbCommand cmd = db.GetSqlStringCommand(sql);
            db.AddInParameter(cmd, "@ID", DbType.Int32, 1);
            db.AddInParameter(cmd, "@Desc", DbType.String, "Eastern");
            DataSet ds = db.ExecuteDataSet(cmd);
            Assert.AreEqual(1, ds.Tables[0].Rows.Count);
        }

        [TestMethod]
        public void ExecuteSqlStringWithoutParametersButWithValues()
        {
            string sql = "select * from Region";
            DbCommand cmd = db.GetSqlStringCommand(sql);
            db.AddInParameter(cmd, "@Param1", DbType.Int32, 1);
            db.AddInParameter(cmd, "@Param2", DbType.String, "Eastern");
            DataSet ds = db.ExecuteDataSet(cmd);
            Assert.AreEqual(4, ds.Tables[0].Rows.Count);
        }
    }
}