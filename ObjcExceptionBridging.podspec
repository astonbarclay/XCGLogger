Pod::Spec.new do |spec|

	spec.name = 'ObjcExceptionBridging'
	spec.version = '1.0.2-swift5'
	spec.summary = 'A bridge to Objective-C exception handling, for use in Swift projects.'

	spec.description = <<-DESC
						For use in XCGLogger only at this point, untested as an independent library
						DESC

	spec.homepage = 'https://github.com/astonbarclay/XCGLogger'

	spec.license = { :type => 'MIT', :file => 'LICENSE.txt' }
	spec.author = { 'Soheb Mahmood' => 'soheb@humboldt.co.uk' }
	spec.platforms = { :ios => '7.0', :watchos => '2.0', :tvos => '9.0' }
	spec.requires_arc = true

	spec.source = { :git => 'https://github.com/astonbarclay/XCGLogger.git', :tag => '5.0.5-swift5' }

	spec.ios.deployment_target = '8.0'
	spec.osx.deployment_target = '10.10'
	spec.watchos.deployment_target = '2.0'
	spec.tvos.deployment_target = '9.0'
	
	spec.default_subspecs = 'ObjcExceptionBridging'

	# ObjcExceptionBridging Framework
	spec.subspec 'ObjcExceptionBridging' do |core|
		core.source_files = 'Sources/ObjcExceptionBridging/**/*.{h,m}'
	end
end
