Pod::Spec.new do |s|

    s.name             = "TestFullScreenPluginPlugin"
    s.version          = '0.0.1'
    s.summary          = "An Example of full screen plugin for Zapp iOS."
    s.description      = <<-DESC
    An Example of full screen plugin for Zapp iOS.
                         DESC
    s.homepage         = "https://maheshpatil2403:8f201e1a040d5fd6a61d31e74057866e051d4d6f@github.com/maheshpatil2403/TestFullScreen.git"
    s.license          = 'MIT'
    s.author           = { "Mahesh Patil" => "mahesh.patil1@ltts.com" }
    s.source           = { :git => "https://maheshpatil2403:8f201e1a040d5fd6a61d31e74057866e051d4d6f@github.com/maheshpatil2403/TestFullScreen.git", :tag => s.version.to_s }
  
    s.ios.deployment_target  = "10.0"
    s.platform     = :ios, '10.0'
    s.requires_arc = true
    s.swift_version = '5.0'
   
    s.subspec 'Core' do |c|
      s.resources = []
      c.frameworks = 'UIKit'
      c.source_files = 'PluginClasses/*.{swift,h,m}'
      c.dependency 'ZappPlugins'
    end
                  
    s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'OTHER_LDFLAGS' => '$(inherited)',
                    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                    'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                    'SWIFT_VERSION' => '5.0'
                  }
                  
    s.default_subspec = 'Core'
                  
  end
  
