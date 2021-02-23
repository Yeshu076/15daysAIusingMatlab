clear all;
%%%%%%%%%%%%%%%%%%%%% NOTES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hwobj = jetson('192.168.1.10','pantech','pantech');
cfg = coder.gpuConfig('exe');
cfg.Hardware = coder.hardware('NVIDIA Jetson');
cfg.Hardware.BuildDir = '~/remoteBuildDir';
cfg.GenerateExampleMain = 'GenerateCodeAndCompile';
codegen('-config ',cfg,'sobelEdgeDetection');
hwobj.setDisplayEnvironment('0.0');
pid = runApplication(hwobj,'sobelEdgeDetection');
