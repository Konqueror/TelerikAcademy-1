﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34014
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DayOfWeekClient.ServiceReferenceDayOfWeekInBulgarian {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReferenceDayOfWeekInBulgarian.IDayOfWeekGetter")]
    public interface IDayOfWeekGetter {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDayOfWeekGetter/GetDayOfWeek", ReplyAction="http://tempuri.org/IDayOfWeekGetter/GetDayOfWeekResponse")]
        string GetDayOfWeek(System.DateTime date);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDayOfWeekGetter/GetDayOfWeek", ReplyAction="http://tempuri.org/IDayOfWeekGetter/GetDayOfWeekResponse")]
        System.Threading.Tasks.Task<string> GetDayOfWeekAsync(System.DateTime date);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IDayOfWeekGetterChannel : DayOfWeekClient.ServiceReferenceDayOfWeekInBulgarian.IDayOfWeekGetter, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class DayOfWeekGetterClient : System.ServiceModel.ClientBase<DayOfWeekClient.ServiceReferenceDayOfWeekInBulgarian.IDayOfWeekGetter>, DayOfWeekClient.ServiceReferenceDayOfWeekInBulgarian.IDayOfWeekGetter {
        
        public DayOfWeekGetterClient() {
        }
        
        public DayOfWeekGetterClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public DayOfWeekGetterClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public DayOfWeekGetterClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public DayOfWeekGetterClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string GetDayOfWeek(System.DateTime date) {
            return base.Channel.GetDayOfWeek(date);
        }
        
        public System.Threading.Tasks.Task<string> GetDayOfWeekAsync(System.DateTime date) {
            return base.Channel.GetDayOfWeekAsync(date);
        }
    }
}