//===============================================================================
// Microsoft patterns & practices Enterprise Library
// Core
//===============================================================================
// Copyright © Microsoft Corporation.  All rights reserved.
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY
// OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT
// LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
// FITNESS FOR A PARTICULAR PURPOSE.
//===============================================================================

using System;

namespace Microsoft.Practices.EnterpriseLibrary.Common.Configuration.Manageability
{
	/// <summary>
	/// 
	/// </summary>
	public static class ParseHelper
	{
		/// <summary>
		/// 
		/// </summary>
		/// <typeparam name="T"></typeparam>
		/// <param name="value"></param>
		/// <param name="throwIfInvalid"></param>
		/// <returns></returns>
		public static T ParseEnum<T>(string value, bool throwIfInvalid)
		{
			try
			{
				return (T)Enum.Parse(typeof(T), value);
			}
			catch (ArgumentException)
			{
				if (throwIfInvalid)
					throw;
			}

			return default(T);
		}

		/// <summary>
		/// 
		/// </summary>
		/// <param name="value"></param>
		/// <param name="throwIfInvalid"></param>
		/// <returns></returns>
		public static Type ParseType(string value, bool throwIfInvalid)
		{
			Type type = Type.GetType(value, false);
			if (type == null && throwIfInvalid)
			{
				throw new ArgumentException();
			}

			return type;
		}
	}
}
