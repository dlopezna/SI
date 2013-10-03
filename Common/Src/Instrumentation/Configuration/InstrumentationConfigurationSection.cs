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

using System.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;

namespace Microsoft.Practices.EnterpriseLibrary.Common.Instrumentation.Configuration
{
	/// <summary>
	/// Configuration object for Instrumentation. This section defines the instrumentation behavior 
	/// for the entire application
	/// </summary>
	public class InstrumentationConfigurationSection : SerializableConfigurationSection
    {
		private const string performanceCountersEnabled = "performanceCountersEnabled";
        private const string eventLoggingEnabled = "eventLoggingEnabled";
        private const string wmiEnabled = "wmiEnabled";
        private const string applicationInstanceName = "applicationInstanceName";

		/// <summary>
		/// Section name
		/// </summary>
        public const string SectionName = "instrumentationConfiguration";

		internal bool InstrumentationIsEntirelyDisabled
		{
			get { return (PerformanceCountersEnabled || EventLoggingEnabled || WmiEnabled) == false; }
		}

		/// <summary>
		/// Initializes enabled state of the three forms of instrumentation
		/// </summary>
		/// <param name="performanceCountersEnabled">True if performance counter instrumentation is to be enabled</param>
		/// <param name="eventLoggingEnabled">True if event logging instrumentation is to be enabled</param>
		/// <param name="wmiEnabled">True if wmi instrumentation is to be enabled</param>
        public InstrumentationConfigurationSection(bool performanceCountersEnabled, bool eventLoggingEnabled, bool wmiEnabled):
            this(performanceCountersEnabled, eventLoggingEnabled, wmiEnabled, "")
        {
            this.PerformanceCountersEnabled = performanceCountersEnabled;
            this.EventLoggingEnabled = eventLoggingEnabled;
            this.WmiEnabled = wmiEnabled;
        }

        /// <summary>
        /// Initializes enabled state of the three forms of instrumentation and the instance name
        /// </summary>
        /// <param name="performanceCountersEnabled">True if performance counter instrumentation is to be enabled</param>
        /// <param name="eventLoggingEnabled">True if event logging instrumentation is to be enabled</param>
        /// <param name="wmiEnabled">True if wmi instrumentation is to be enabled</param>
        /// <param name="applicationInstanceName">Value of the InstanceName</param>
        public InstrumentationConfigurationSection(bool performanceCountersEnabled, bool eventLoggingEnabled, bool wmiEnabled, string applicationInstanceName)
        {
            this.PerformanceCountersEnabled = performanceCountersEnabled;
            this.EventLoggingEnabled = eventLoggingEnabled;
            this.WmiEnabled = wmiEnabled;
            this.ApplicationInstanceName = applicationInstanceName;
        }

		/// <summary>
		/// Initializes object to default settings of all instrumentation types disabled and an empty InstanceName
		/// </summary>
        public InstrumentationConfigurationSection()
        {
        }
        
		/// <summary>
		/// Gets and sets the value of PerformanceCountersEnabled
		/// </summary>
        [ConfigurationProperty(performanceCountersEnabled, IsRequired = false, DefaultValue = false)]
        public bool PerformanceCountersEnabled
        {
            get { return (bool)this[performanceCountersEnabled]; }
            set { this[performanceCountersEnabled] = value; }
        }
		
		/// <summary>
		/// Gets and sets the value of EventLoggingEnabled
		/// </summary>
        [ConfigurationProperty(eventLoggingEnabled, IsRequired = false, DefaultValue = false)]
        public bool EventLoggingEnabled
        {
            get { return (bool)this[eventLoggingEnabled]; }
            set { this[eventLoggingEnabled] = value; }
        }

		/// <summary>
		/// Gets and sets value of WmiEnabled
		/// </summary>
        [ConfigurationProperty(wmiEnabled, IsRequired = false, DefaultValue = false)]
        public bool WmiEnabled
        {
            get { return (bool)this[wmiEnabled]; }
            set { this[wmiEnabled] = value; }
        }

        /// <summary>
        /// Gets and sets value of ApplicationInstanceName
        /// </summary>
        [ConfigurationProperty(applicationInstanceName, IsRequired = false, DefaultValue="")]
        public string ApplicationInstanceName
        {
            get { return (string)this[applicationInstanceName]; }
            set { this[applicationInstanceName] = value; }
        }
    }
}
