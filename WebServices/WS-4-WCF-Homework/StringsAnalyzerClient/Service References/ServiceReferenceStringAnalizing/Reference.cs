﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34014
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StringsAnalyzerClient.ServiceReferenceStringAnalizing {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReferenceStringAnalizing.IStringAnalyzer")]
    public interface IStringAnalyzer {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IStringAnalyzer/CountSecondStringOccurancesInFirstString", ReplyAction="http://tempuri.org/IStringAnalyzer/CountSecondStringOccurancesInFirstStringRespon" +
            "se")]
        int CountSecondStringOccurancesInFirstString(string first, string second);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IStringAnalyzer/CountSecondStringOccurancesInFirstString", ReplyAction="http://tempuri.org/IStringAnalyzer/CountSecondStringOccurancesInFirstStringRespon" +
            "se")]
        System.Threading.Tasks.Task<int> CountSecondStringOccurancesInFirstStringAsync(string first, string second);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IStringAnalyzerChannel : StringsAnalyzerClient.ServiceReferenceStringAnalizing.IStringAnalyzer, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class StringAnalyzerClient : System.ServiceModel.ClientBase<StringsAnalyzerClient.ServiceReferenceStringAnalizing.IStringAnalyzer>, StringsAnalyzerClient.ServiceReferenceStringAnalizing.IStringAnalyzer {
        
        public StringAnalyzerClient() {
        }
        
        public StringAnalyzerClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public StringAnalyzerClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public StringAnalyzerClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public StringAnalyzerClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public int CountSecondStringOccurancesInFirstString(string first, string second) {
            return base.Channel.CountSecondStringOccurancesInFirstString(first, second);
        }
        
        public System.Threading.Tasks.Task<int> CountSecondStringOccurancesInFirstStringAsync(string first, string second) {
            return base.Channel.CountSecondStringOccurancesInFirstStringAsync(first, second);
        }
    }
}