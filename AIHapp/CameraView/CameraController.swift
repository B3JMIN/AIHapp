//
//  CameraController.swift
//  AIHapp
//
//  Created by Cai Huichuan on 2020-09-04.
//  Copyright © 2020 Cai Huichuan. All rights reserved.
//
import SwiftUI
import AVFoundation

class CameraController: NSObject {
    var captureSession: AVCaptureSession?
    
//    var currentCameraPosition: CameraPosition?

    var frontCamera: AVCaptureDevice?
    var frontCameraInput: AVCaptureDeviceInput?
    
    var photoOutput: AVCapturePhotoOutput?
    
    var rearCamera: AVCaptureDevice?
    var rearCameraInput: AVCaptureDeviceInput?
    var previewLayr: AVCaptureSession?
}
