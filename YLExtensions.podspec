Pod::Spec.new do |s|
  s.name         = "YLExtensions"
  s.version      = "1.0.0"
  s.summary      = "Make UITableView and UICollectionView easier to use."
  s.homepage     = "https://github.com/YuLeiFuYun/YLExtensions"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "YuLeiFuYun" => "yuleifuyunn@gmail.com" }
  s.swift_version = "5.1"
  s.platform     = :ios, "13.0"	
  s.source       = { :git => "https://github.com/YuLeiFuYun/YLExtensions.git", :tag => s.version }
  s.source_files = "Sources/*.swift"
end
