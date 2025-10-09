/*
 Abstract:
 The file tests performance of the rendering.
 */

import HTMLKit
import XCTest

final class PerformanceTests: XCTestCase {
    
    func testPerformanceWithoutAutoEscaping() throws {
        
        let context = SampleContext(id: 0, title: "TestPage", excerpt: "Testpage", modified: Date(), posted: Date())
        
        let renderer = Renderer(features: [])
        
        measure {
            
            for _ in 0...1000 {
                _ = try! renderer.render(view: SampleView(context: context))
            }
        }
    }
    
    func testPerformanceWithAutoEscaping() throws {
        
        let context = SampleContext(id: 0, title: "TestPage", excerpt: "Testpage", modified: Date(), posted: Date())
        
        let renderer = Renderer()
        
        measure {
            
            for _ in 0...1000 {
                _ = try! renderer.render(view: SampleView(context: context))
            }
        }
    }
    
    func testPerformanceWithMarkdown() throws {
        
        let context = SampleContext(id: 0, title: "TestPage", excerpt: "Testpage", modified: Date(), posted: Date())
        
        let renderer = Renderer(features: [.escaping, .markdown])
        
        measure {
            
            for _ in 0...1000 {
                _ = try! renderer.render(view: MarkdownView(context: context))
            }
        }
    }
}
