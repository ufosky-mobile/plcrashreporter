Pod::Spec.new do |spec|
  spec.cocoapods_version = '>= 1.10'
  spec.name        = 'PLCrashReporter'
  spec.version     = '1.11.0'
  spec.summary     = 'Reliable, open-source crash reporting for iOS, macOS and tvOS.'
  spec.description = 'PLCrashReporter is a reliable open source library that provides an in-process live crash reporting framework for use on iOS, macOS and tvOS. The library detects crashes and generates reports to help your investigation and troubleshooting with the information of application, system, process, thread, etc. as well as stack traces.'

  spec.homepage    = 'https://github.com/microsoft/plcrashreporter'
  spec.license     = { :type => 'MIT', :file => 'LICENSE.txt' }
  spec.authors     = { 'Microsoft' => 'appcentersdk@microsoft.com' }

  spec.source      = { :git => 'https://github.com/ufosky-mobile/plcrashreporter.git', :tag => "#{spec.version}", :flatten => true }

  spec.ios.deployment_target    = '11.0'
  spec.osx.deployment_target    = '10.9'
  spec.tvos.deployment_target   = '11.0'
  
  spec.source_files  = 'Source/*.{h,hpp,c,cpp,m,mm,s}', 'Dependencies/protobuf-c/protobuf-c/*.{h,c}'
  
  spec.public_header_files = 'Source/*.{h,hpp}'
  spec.header_dir = 'Dependencies/protobuf-c'
  spec.header_mappings_dir = 'Dependencies/protobuf-c'
  spec.preserve_paths = 'Dependencies/**'

  spec.pod_target_xcconfig = {
      "GCC_PREPROCESSOR_DEFINITIONS" => "PLCR_PRIVATE PLCF_RELEASE_BUILD"
  }
  spec.libraries = "c++"
  spec.requires_arc = false

  spec.prefix_header_contents = '#import "PLCrashNamespace.h"'
end
